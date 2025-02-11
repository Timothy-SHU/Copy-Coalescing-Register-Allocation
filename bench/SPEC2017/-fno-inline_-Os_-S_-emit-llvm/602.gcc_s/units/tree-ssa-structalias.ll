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
define dso_local void @debug_constraint(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call fastcc void @dump_constraint(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_constraint(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8, !tbaa !10
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
  %10 = load i32, ptr %9, align 4, !tbaa !15
  %11 = tail call fastcc ptr @get_varinfo(i32 noundef %10) #23
  %12 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  %14 = tail call i32 @fputs(ptr %13, ptr %0)
  %15 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !18
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
  %24 = load i32, ptr %23, align 8, !tbaa !19
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
  %31 = load i32, ptr %30, align 4, !tbaa !20
  %32 = tail call fastcc ptr @get_varinfo(i32 noundef %31) #23
  %33 = getelementptr inbounds %struct.variable_info, ptr %32, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !16
  %35 = tail call i32 @fputs(ptr %34, ptr %0)
  %36 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !21
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
define internal fastcc ptr @get_varinfo(i32 noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr @varmap, align 8
  %3 = tail call fastcc ptr @VEC_varinfo_t_base_index(ptr noundef %2, i32 noundef %0) #23
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_varinfo_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_constraints() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call fastcc void @dump_constraints(ptr noundef %1) #23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_constraints(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = load ptr, ptr @constraints, align 8
  %4 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #23, !range !22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !6
  tail call fastcc void @dump_constraint(ptr noundef %0, ptr noundef %8) #23
  %9 = add nuw nsw i32 %7, 1
  %10 = load ptr, ptr @constraints, align 8
  %11 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %10, i32 noundef %9, ptr noundef nonnull %2) #23, !range !22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %6, !llvm.loop !23

13:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_constraint_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !25
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !6
  ret i32 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_constraint_graph() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call fastcc void @dump_constraint_graph(ptr noundef %1) #23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_constraint_graph(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = load ptr, ptr @graph, align 8, !tbaa !6
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
  %15 = load ptr, ptr @graph, align 8, !tbaa !6
  %16 = load i32, ptr %15, align 8, !tbaa !27
  %17 = tail call i32 @llvm.umin.i32(i32 %14, i32 %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %5
  %20 = zext i32 %17 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ 0, %19 ], [ %32, %21 ]
  %23 = load ptr, ptr @graph, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.constraint_graph, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !29
  %26 = getelementptr inbounds i32, ptr %25, i64 %22
  %27 = load i32, ptr %26, align 4, !tbaa !30
  %28 = tail call fastcc ptr @get_varinfo(i32 noundef %27) #23
  %29 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !16
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %30) #23
  %32 = add nuw nsw i64 %22, 1
  %33 = icmp eq i64 %32, %20
  br i1 %33, label %34, label %21, !llvm.loop !31

34:                                               ; preds = %21, %5
  %35 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 28, i64 1, ptr %0)
  %36 = load ptr, ptr @constraints, align 8
  %37 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %36, i32 noundef 0, ptr noundef nonnull %2) #23, !range !22
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %34, %46
  %40 = phi ptr [ %47, %46 ], [ %36, %34 ]
  %41 = phi i32 [ %48, %46 ], [ 0, %34 ]
  %42 = load ptr, ptr %2, align 8, !tbaa !6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  tail call fastcc void @dump_constraint_edge(ptr noundef %0, ptr noundef nonnull %42) #23
  %45 = load ptr, ptr @constraints, align 8
  br label %46

46:                                               ; preds = %39, %44
  %47 = phi ptr [ %40, %39 ], [ %45, %44 ]
  %48 = add i32 %41, 1
  %49 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %47, i32 noundef %48, ptr noundef nonnull %2) #23, !range !22
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %39, !llvm.loop !32

51:                                               ; preds = %46, %34
  %52 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 4, i64 1, ptr %0)
  br label %53

53:                                               ; preds = %1, %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_varinfo_t_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !33
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_constraint_edge(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !19
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !20
  %9 = tail call fastcc ptr @get_varinfo(i32 noundef %8) #23
  %10 = getelementptr inbounds %struct.variable_info, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !15
  %14 = tail call fastcc ptr @get_varinfo(i32 noundef %13) #23
  %15 = getelementptr inbounds %struct.variable_info, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef %11, ptr noundef %16) #23
  %18 = load i32, ptr %1, align 8, !tbaa !10
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 18, i64 1, ptr %0)
  br label %37

22:                                               ; preds = %6
  %23 = load i32, ptr %3, align 8, !tbaa !19
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 18, i64 1, ptr %0)
  br label %37

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !21
  %30 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !18
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
define dso_local void @debug_solution_for_var(i32 noundef %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !6
  tail call fastcc void @dump_solution_for_var(ptr noundef %2, i32 noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_solution_for_var(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 {
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
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %12, ptr noundef %14) #23
  br label %34

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.variable_info, ptr %5, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !16
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef %18) #23
  %20 = getelementptr inbounds %struct.variable_info, ptr %5, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %21, ptr noundef nonnull %3) #23
  %22 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !36
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %16, %24
  %25 = load i32, ptr %3, align 4, !tbaa !30
  %26 = tail call fastcc ptr @get_varinfo(i32 noundef %25) #23
  %27 = getelementptr inbounds %struct.variable_info, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %28) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !36
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %24, !llvm.loop !37

32:                                               ; preds = %24, %16
  %33 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 2, i64 1, ptr %0)
  br label %34

34:                                               ; preds = %32, %8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find(i32 noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr @graph, align 8, !tbaa !6
  %3 = load i32, ptr %2, align 8, !tbaa !27
  %4 = icmp ugt i32 %3, %0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 520, ptr noundef nonnull @.str.27) #25
  %6 = load ptr, ptr @graph, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %2, %1 ], [ %6, %5 ]
  %9 = getelementptr inbounds %struct.constraint_graph, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !30
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %15, label %17

15:                                               ; preds = %7, %17
  %16 = phi i32 [ %18, %17 ], [ %0, %7 ]
  ret i32 %16

17:                                               ; preds = %7
  %18 = tail call fastcc i32 @find(i32 noundef %13) #23
  %19 = load ptr, ptr @graph, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.constraint_graph, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  %22 = getelementptr inbounds i32, ptr %21, i64 %11
  store i32 %18, ptr %22, align 4, !tbaa !30
  br label %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = load ptr, ptr %1, align 8, !tbaa !38
  store ptr %4, ptr %0, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !42
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !40
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !43
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !47
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !30
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !30
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !48

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !30
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !30
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !45
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !40
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !45
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !46
  store i64 %35, ptr %3, align 8, !tbaa !47
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !30
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !30
  %40 = load i32, ptr %23, align 8, !tbaa !45
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !45
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !49

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !50
  store ptr %44, ptr %0, align 8, !tbaa !40
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !43
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !30
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !47
  store i32 %16, ptr %1, align 4, !tbaa !30
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !47
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !47
  %6 = load i32, ptr %1, align 4, !tbaa !30
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !30
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_pta_stats(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 18, i64 1, ptr %0)
  %3 = load i64, ptr @pta_stats.1, align 8, !tbaa !51
  %4 = load i64, ptr @pta_stats.0, align 8, !tbaa !53
  %5 = add i64 %4, %3
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef %3, i64 noundef %5) #23
  %7 = load i64, ptr @pta_stats.3, align 8, !tbaa !54
  %8 = load i64, ptr @pta_stats.2, align 8, !tbaa !55
  %9 = add i64 %8, %7
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef %7, i64 noundef %9) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @pt_solution_reset(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pt_solution_set(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  store i64 0, ptr %0, align 8
  %5 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !56
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4) #23
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !36
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2, %16
  %9 = load i32, ptr %4, align 4, !tbaa !30
  %10 = tail call ptr @referenced_var_lookup(i32 noundef %9) #25
  %11 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %10) #23, !range !36
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load i8, ptr %0, align 8
  %15 = or i8 %14, 16
  store i8 %15, ptr %0, align 8
  br label %19

16:                                               ; preds = %8
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %17 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !36
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !llvm.loop !58

19:                                               ; preds = %16, %2, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  ret void
}

; Function Attrs: optsize
declare ptr @referenced_var_lookup(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #3 {
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @pt_solution_includes_global(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = load i8, ptr %0, align 8
  %3 = and i8 %2, 19
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load ptr, ptr @cfun, align 8
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 3
  br label %8

8:                                                ; preds = %5, %12
  %9 = phi i8 [ %2, %5 ], [ %15, %12 ]
  %10 = and i8 %9, 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %7, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.gimple_df, ptr %13, i64 0, i32 4
  %15 = load i8, ptr %14, align 8
  %16 = and i8 %15, 19
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %8, label %18

18:                                               ; preds = %12, %8, %1
  %19 = phi i8 [ 1, %1 ], [ 0, %8 ], [ 1, %12 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @pt_solution_includes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = tail call fastcc zeroext i8 @pt_solution_includes_1(ptr noundef %0, ptr noundef %1) #23, !range !36
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, ptr @pta_stats.1, ptr @pta_stats.0
  %6 = load i64, ptr %5, align 8, !tbaa !46
  %7 = add i64 %6, 1
  store i64 %7, ptr %5, align 8, !tbaa !46
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @pt_solution_includes_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load i8, ptr %0, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %2
  %7 = and i8 %3, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %1) #23, !range !36
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %9, %6
  %13 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !61
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
  %28 = load ptr, ptr @cfun, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !59
  %31 = getelementptr inbounds %struct.gimple_df, ptr %30, i64 0, i32 4
  %32 = tail call fastcc zeroext i8 @pt_solution_includes_1(ptr noundef nonnull %31, ptr noundef %1) #23, !range !36
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %23
  br label %35

35:                                               ; preds = %27, %16, %9, %2, %34
  %36 = phi i8 [ 0, %34 ], [ 1, %2 ], [ 1, %9 ], [ 1, %16 ], [ 1, %27 ]
  ret i8 %36
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @pt_solutions_intersect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = tail call fastcc zeroext i8 @pt_solutions_intersect_1(ptr noundef %0, ptr noundef %1) #23, !range !36
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, ptr @pta_stats.3, ptr @pta_stats.2
  %6 = load i64, ptr %5, align 8, !tbaa !46
  %7 = add i64 %6, 1
  store i64 %7, ptr %5, align 8, !tbaa !46
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @pt_solutions_intersect_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load i8, ptr %0, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %67

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 8
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %67

10:                                               ; preds = %6
  %11 = and i8 %3, 2
  %12 = icmp eq i8 %11, 0
  %13 = and i8 %7, 18
  %14 = icmp eq i8 %13, 0
  %15 = or i1 %12, %14
  br i1 %15, label %16, label %67

16:                                               ; preds = %10
  %17 = and i8 %7, 2
  %18 = icmp eq i8 %17, 0
  %19 = and i8 %3, 16
  %20 = icmp eq i8 %19, 0
  %21 = or i1 %20, %18
  br i1 %21, label %22, label %67

22:                                               ; preds = %16
  %23 = and i8 %3, 4
  %24 = icmp eq i8 %23, 0
  %25 = or i8 %7, %3
  %26 = and i8 %25, 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %55, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr @cfun, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = getelementptr inbounds %struct.gimple_df, ptr %31, i64 0, i32 4
  %33 = tail call fastcc zeroext i8 @pt_solution_empty_p(ptr noundef nonnull %32) #23, !range !36
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %28
  br i1 %24, label %44, label %36

36:                                               ; preds = %35
  %37 = and i8 %7, 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %36
  %40 = tail call fastcc zeroext i8 @pt_solutions_intersect_1(ptr noundef nonnull %32, ptr noundef nonnull %1) #23, !range !36
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load i8, ptr %1, align 8
  br label %44

44:                                               ; preds = %42, %35
  %45 = phi i8 [ %43, %42 ], [ %7, %35 ]
  %46 = and i8 %45, 4
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr @cfun, align 8, !tbaa !6
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !59
  %52 = getelementptr inbounds %struct.gimple_df, ptr %51, i64 0, i32 4
  %53 = tail call fastcc zeroext i8 @pt_solutions_intersect_1(ptr noundef nonnull %52, ptr noundef nonnull %0) #23, !range !36
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %22, %44, %48, %28
  %56 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !56
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !56
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

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
define internal fastcc noundef zeroext i8 @pt_solution_empty_p(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = load i8, ptr %0, align 8
  %3 = and i8 %2, 3
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !38
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %9, %5
  %13 = and i8 %2, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @cfun, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 4
  %20 = tail call fastcc zeroext i8 @pt_solution_empty_p(ptr noundef nonnull %19) #23, !range !36
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
define dso_local zeroext i8 @pt_solutions_same_restrict_base(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
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
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5087, ptr noundef nonnull @.str.27) #25
  %19 = load ptr, ptr %11, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !56
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
define dso_local void @debug_sa_points_to_info() local_unnamed_addr #6 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call fastcc void @dump_sa_points_to_info(ptr noundef %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_sa_points_to_info(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 17, i64 1, ptr %0)
  %3 = load i32, ptr @dump_flags, align 4, !tbaa !30
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 7, i64 1, ptr %0)
  %8 = load i32, ptr @stats, align 4, !tbaa !62
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %8) #23
  %10 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !64
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %10) #23
  %12 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !65
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %12) #23
  %14 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !66
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %14) #23
  %16 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 4), align 4, !tbaa !67
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %16) #23
  %18 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !68
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %18) #23
  %20 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 6), align 4, !tbaa !69
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
  br i1 %31, label %26, label %32, !llvm.loop !70

32:                                               ; preds = %26, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_alias_heapvars() local_unnamed_addr #6 {
  %1 = load ptr, ptr @heapvar_for_stmt, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @htab_delete(ptr noundef nonnull %1) #25
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @heapvar_for_stmt, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @compute_may_aliases() local_unnamed_addr #6 {
  tail call fastcc void @compute_points_to_sets() #23
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  tail call void @dump_alias_info(ptr noundef nonnull %1) #25
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !30
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @dump_referenced_vars(ptr noundef %8) #25
  br label %9

9:                                                ; preds = %3, %7, %0
  tail call fastcc void @delete_points_to_sets() #23
  %10 = load ptr, ptr @cfun, align 8, !tbaa !6
  %11 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %10) #25
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5611, ptr noundef nonnull @.str.27) #25
  br label %14

14:                                               ; preds = %9, %13
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_points_to_sets() unnamed_addr #6 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  %4 = load i8, ptr @timevar_enable, align 1, !tbaa !61
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 56) #25
  br label %7

7:                                                ; preds = %6, %0
  tail call fastcc void @init_alias_vars() #23
  tail call fastcc void @init_alias_heapvars() #23
  tail call fastcc void @intra_create_variable_infos() #23
  %8 = load ptr, ptr @cfun, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %46, label %17

17:                                               ; preds = %7, %37
  %18 = phi ptr [ %39, %37 ], [ %13, %7 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #24
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %18) #25
  %19 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !36
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17, %27
  %22 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  %23 = call fastcc ptr @gimple_phi_result(ptr noundef %22) #23
  %24 = call zeroext i8 @is_gimple_reg(ptr noundef %23) #25
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  call fastcc void @find_func_aliases(ptr noundef %22) #23
  br label %27

27:                                               ; preds = %26, %21
  call fastcc void @gsi_next(ptr noundef nonnull %2) #23
  %28 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !36
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %21, label %30, !llvm.loop !77

30:                                               ; preds = %27, %17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %18) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !36
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30, %33
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  call fastcc void @find_func_aliases(ptr noundef %34) #23
  call fastcc void @gsi_next(ptr noundef nonnull %2) #23
  %35 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !36
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %33, label %37, !llvm.loop !79

37:                                               ; preds = %33, %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #24
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !74
  %40 = load ptr, ptr @cfun, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !71
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !76
  %45 = icmp eq ptr %39, %44
  br i1 %45, label %46, label %17, !llvm.loop !80

46:                                               ; preds = %37, %7
  call fastcc void @solve_constraints() #23
  %47 = call fastcc ptr @get_varinfo(i32 noundef 3) #23
  %48 = load ptr, ptr @cfun, align 8, !tbaa !6
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !59
  %51 = getelementptr inbounds %struct.gimple_df, ptr %50, i64 0, i32 4
  call fastcc void @find_what_var_points_to(ptr noundef %47, ptr noundef nonnull %51) #23
  %52 = call fastcc ptr @get_varinfo(i32 noundef 5) #23
  %53 = load ptr, ptr @cfun, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !59
  %56 = getelementptr inbounds %struct.gimple_df, ptr %55, i64 0, i32 5
  call fastcc void @find_what_var_points_to(ptr noundef %52, ptr noundef nonnull %56) #23
  %57 = load ptr, ptr @cfun, align 8, !tbaa !6
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !59
  %60 = getelementptr inbounds %struct.gimple_df, ptr %59, i64 0, i32 4
  %61 = load i8, ptr %60, align 8
  %62 = and i8 %61, -5
  store i8 %62, ptr %60, align 8
  %63 = load ptr, ptr @varmap, align 8
  %64 = call fastcc i32 @VEC_varinfo_t_base_iterate(ptr noundef %63, i32 noundef 0, ptr noundef nonnull %1) #23, !range !22
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %76

66:                                               ; preds = %104
  %67 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %68

68:                                               ; preds = %66, %46
  %69 = phi ptr [ %67, %66 ], [ %57, %46 ]
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !59
  %72 = getelementptr inbounds %struct.gimple_df, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !81
  %74 = call fastcc i32 @VEC_tree_base_length(ptr noundef %73) #23
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %131, label %109

76:                                               ; preds = %46, %104
  %77 = phi ptr [ %105, %104 ], [ %63, %46 ]
  %78 = phi i32 [ %106, %104 ], [ 0, %46 ]
  %79 = load ptr, ptr %1, align 8, !tbaa !6
  %80 = getelementptr inbounds %struct.variable_info, ptr %79, i64 0, i32 1
  %81 = load i8, ptr %80, align 4
  %82 = and i8 %81, -80
  %83 = icmp eq i8 %82, 16
  br i1 %83, label %84, label %104

84:                                               ; preds = %76
  %85 = load ptr, ptr @cfun, align 8, !tbaa !6
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !59
  %88 = getelementptr inbounds %struct.gimple_df, ptr %87, i64 0, i32 4
  %89 = getelementptr inbounds %struct.variable_info, ptr %79, i64 0, i32 7
  %90 = load ptr, ptr %89, align 8, !tbaa !84
  %91 = call zeroext i8 @pt_solution_includes(ptr noundef nonnull %88, ptr noundef %90) #23, !range !36
  %92 = load i8, ptr %80, align 4
  %93 = shl nuw i8 %91, 7
  %94 = and i8 %92, 127
  %95 = or disjoint i8 %94, %93
  store i8 %95, ptr %80, align 4
  %96 = load ptr, ptr %89, align 8, !tbaa !84
  %97 = getelementptr inbounds %struct.tree_decl_common, ptr %96, i64 0, i32 2
  %98 = zext nneg i8 %91 to i64
  %99 = load i64, ptr %97, align 8
  %100 = shl nuw nsw i64 %98, 25
  %101 = and i64 %99, -33554433
  %102 = or disjoint i64 %101, %100
  store i64 %102, ptr %97, align 8
  %103 = load ptr, ptr @varmap, align 8
  br label %104

104:                                              ; preds = %76, %84
  %105 = phi ptr [ %77, %76 ], [ %103, %84 ]
  %106 = add i32 %78, 1
  %107 = call fastcc i32 @VEC_varinfo_t_base_iterate(ptr noundef %105, i32 noundef %106, ptr noundef nonnull %1) #23, !range !22
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %66, label %76, !llvm.loop !85

109:                                              ; preds = %68, %122
  %110 = phi ptr [ %123, %122 ], [ %69, %68 ]
  %111 = phi ptr [ %128, %122 ], [ %73, %68 ]
  %112 = phi i32 [ %124, %122 ], [ 0, %68 ]
  %113 = call fastcc ptr @VEC_tree_base_index(ptr noundef %111, i32 noundef %112) #23
  %114 = icmp eq ptr %113, null
  br i1 %114, label %122, label %115

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.tree_common, ptr %113, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !61
  %118 = load i64, ptr %117, align 8
  %119 = trunc i64 %118 to i16
  switch i16 %119, label %122 [
    i16 10, label %120
    i16 12, label %120
  ]

120:                                              ; preds = %115, %115
  call fastcc void @find_what_p_points_to(ptr noundef nonnull %113) #23
  %121 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %122

122:                                              ; preds = %115, %120, %109
  %123 = phi ptr [ %110, %115 ], [ %121, %120 ], [ %110, %109 ]
  %124 = add nuw i32 %112, 1
  %125 = getelementptr inbounds %struct.function, ptr %123, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !59
  %127 = getelementptr inbounds %struct.gimple_df, ptr %126, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !81
  %129 = call fastcc i32 @VEC_tree_base_length(ptr noundef %128) #23
  %130 = icmp ult i32 %124, %129
  br i1 %130, label %109, label %131, !llvm.loop !86

131:                                              ; preds = %122, %68
  %132 = load i8, ptr @timevar_enable, align 1, !tbaa !61
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  call void @timevar_pop_1(i32 noundef 56) #25
  br label %135

135:                                              ; preds = %134, %131
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  ret void
}

; Function Attrs: optsize
declare void @dump_alias_info(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @dump_referenced_vars(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_points_to_sets() unnamed_addr #6 {
  %1 = load ptr, ptr @shared_bitmap_table, align 8, !tbaa !6
  tail call void @htab_delete(ptr noundef %1) #25
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !30
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 7), align 4, !tbaa !87
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.81, i32 noundef %9) #23
  br label %11

11:                                               ; preds = %8, %4, %0
  %12 = load ptr, ptr @vi_for_tree, align 8, !tbaa !6
  tail call void @pointer_map_destroy(ptr noundef %12) #25
  tail call void @bitmap_obstack_release(ptr noundef nonnull @pta_obstack) #25
  tail call fastcc void @VEC_constraint_t_heap_free(ptr noundef nonnull @constraints) #23
  %13 = load ptr, ptr @graph, align 8, !tbaa !6
  %14 = load i32, ptr %13, align 8, !tbaa !27
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %11, %16
  %17 = phi i64 [ %22, %16 ], [ 0, %11 ]
  %18 = phi ptr [ %23, %16 ], [ %13, %11 ]
  %19 = getelementptr inbounds %struct.constraint_graph, ptr %18, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !88
  %21 = getelementptr inbounds ptr, ptr %20, i64 %17
  tail call fastcc void @VEC_constraint_t_heap_free(ptr noundef %21) #23
  %22 = add nuw nsw i64 %17, 1
  %23 = load ptr, ptr @graph, align 8, !tbaa !6
  %24 = load i32, ptr %23, align 8, !tbaa !27
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %16, label %27, !llvm.loop !89

27:                                               ; preds = %16, %11
  %28 = phi ptr [ %13, %11 ], [ %23, %16 ]
  %29 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !88
  tail call void @free(ptr noundef %30) #23
  %31 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !29
  tail call void @free(ptr noundef %32) #23
  %33 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !90
  tail call void @free(ptr noundef %34) #23
  %35 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !91
  tail call void @free(ptr noundef %36) #23
  %37 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !92
  tail call void @free(ptr noundef %38) #23
  %39 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !93
  tail call void @free(ptr noundef %40) #23
  tail call void @free(ptr noundef nonnull %28) #23
  tail call fastcc void @VEC_varinfo_t_heap_free() #23
  %41 = load ptr, ptr @variable_info_pool, align 8, !tbaa !6
  tail call void @free_alloc_pool(ptr noundef %41) #25
  %42 = load ptr, ptr @constraint_pool, align 8, !tbaa !6
  tail call void @free_alloc_pool(ptr noundef %42) #25
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @need_ssa_update_p(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_alias_vars() unnamed_addr #6 {
  %1 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.param_info, ptr %1, i64 95, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !94
  %4 = icmp ugt i32 %3, 1
  %5 = zext i1 %4 to i8
  store i8 %5, ptr @use_field_sensitive, align 1, !tbaa !61
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @pta_obstack) #25
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @oldpta_obstack) #25
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @predbitmap_obstack) #25
  %6 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.40, i64 noundef 32, i64 noundef 30) #25
  store ptr %6, ptr @constraint_pool, align 8, !tbaa !6
  %7 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.41, i64 noundef 72, i64 noundef 30) #25
  store ptr %7, ptr @variable_info_pool, align 8, !tbaa !6
  %8 = tail call fastcc ptr @VEC_constraint_t_heap_alloc() #23
  store ptr %8, ptr @constraints, align 8, !tbaa !6
  %9 = tail call fastcc ptr @VEC_varinfo_t_heap_alloc() #23
  store ptr %9, ptr @varmap, align 8, !tbaa !6
  %10 = tail call ptr @pointer_map_create() #25
  store ptr %10, ptr @vi_for_tree, align 8, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) @stats, i8 0, i64 32, i1 false)
  %11 = tail call ptr @htab_create(i64 noundef 511, ptr noundef nonnull @shared_bitmap_hash, ptr noundef nonnull @shared_bitmap_eq, ptr noundef nonnull @free) #25
  store ptr %11, ptr @shared_bitmap_table, align 8, !tbaa !6
  tail call fastcc void @init_base_vars() #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_alias_heapvars() unnamed_addr #6 {
  %1 = load ptr, ptr @heapvar_for_stmt, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @htab_create_alloc(i64 noundef 11, ptr noundef nonnull @tree_map_hash, ptr noundef nonnull @heapvar_map_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #25
  store ptr %4, ptr @heapvar_for_stmt, align 8, !tbaa !6
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra_create_variable_infos() unnamed_addr #6 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %89, label %5

5:                                                ; preds = %0, %85
  %6 = phi ptr [ %87, %85 ], [ %3, %0 ]
  %7 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %6) #23, !range !36
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %85, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 268435456
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %59, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !61
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
  %28 = load ptr, ptr %15, align 8, !tbaa !61
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !61
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
  %40 = load ptr, ptr @cfun, align 8, !tbaa !6
  %41 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %40) #23
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %39) #25
  br label %45

45:                                               ; preds = %43, %38
  %46 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %6) #23
  %47 = load i32, ptr %46, align 8, !tbaa !96
  %48 = zext i32 %47 to i64
  %49 = shl nuw i64 %48, 32
  %50 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %39) #23
  %51 = load i32, ptr %50, align 8, !tbaa !96
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
  br i1 %61, label %73, label %62

62:                                               ; preds = %59, %69
  %63 = phi ptr [ %71, %69 ], [ %60, %59 ]
  %64 = getelementptr inbounds %struct.variable_info, ptr %63, i64 0, i32 1
  %65 = load i8, ptr %64, align 4
  %66 = and i8 %65, 64
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  tail call fastcc void @make_constraint_from(ptr noundef nonnull %63, i32 noundef 4) #23
  br label %69

69:                                               ; preds = %62, %68
  %70 = getelementptr inbounds %struct.variable_info, ptr %63, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !97
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %62, !llvm.loop !98

73:                                               ; preds = %69, %59
  %74 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !61
  %76 = load i64, ptr %75, align 8
  %77 = trunc i64 %76 to i16
  switch i16 %77, label %85 [
    i16 10, label %78
    i16 12, label %78
  ]

78:                                               ; preds = %73, %73
  %79 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 8192
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %6) #23
  tail call fastcc void @make_constraint_from_restrict(ptr noundef %84, ptr noundef nonnull @.str.53) #23
  br label %85

85:                                               ; preds = %78, %83, %73, %5, %45
  %86 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !61
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %5, !llvm.loop !99

89:                                               ; preds = %85, %0
  %90 = load ptr, ptr @cfun, align 8, !tbaa !6
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !100
  %93 = getelementptr inbounds %struct.tree_decl_non_common, ptr %92, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !61
  %95 = icmp eq ptr %94, null
  br i1 %95, label %109, label %96

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.tree_decl_common, ptr %94, i64 0, i32 2
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 268435456
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %96
  %102 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %94) #23
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %101, %104
  %105 = phi ptr [ %107, %104 ], [ %102, %101 ]
  tail call fastcc void @make_constraint_from(ptr noundef nonnull %105, i32 noundef 4) #23
  %106 = getelementptr inbounds %struct.variable_info, ptr %105, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !97
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %104, !llvm.loop !101

109:                                              ; preds = %104, %101, %96, %89
  %110 = load ptr, ptr @cfun, align 8, !tbaa !6
  %111 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 7
  %112 = load ptr, ptr %111, align 8, !tbaa !102
  %113 = icmp eq ptr %112, null
  br i1 %113, label %122, label %114

114:                                              ; preds = %109
  %115 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %112) #23
  %116 = icmp eq ptr %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %114, %117
  %118 = phi ptr [ %120, %117 ], [ %115, %114 ]
  tail call fastcc void @make_constraint_from(ptr noundef nonnull %118, i32 noundef 4) #23
  %119 = getelementptr inbounds %struct.variable_info, ptr %118, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !97
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %117, !llvm.loop !103

122:                                              ; preds = %117, %114, %109
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !104
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !104
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_func_aliases(ptr noundef %0) unnamed_addr #6 {
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
  store ptr null, ptr %2, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %15 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !108
  %16 = icmp eq i32 %15, 16
  br i1 %16, label %17, label %72

17:                                               ; preds = %1
  %18 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #23
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = add nsw i64 %22, -15
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 3630, ptr noundef nonnull @.str.27) #25
  br label %26

26:                                               ; preds = %17, %25
  %27 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #23
  %28 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %27) #23, !range !36
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %494, label %30

30:                                               ; preds = %26
  call fastcc void @get_constraint_for(ptr noundef %27, ptr noundef nonnull %2) #23
  %31 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #23
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %494, label %33

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
  %42 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %34, i32 noundef 0, ptr noundef nonnull %4) #23, !range !22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %67, label %44

44:                                               ; preds = %35
  %45 = load ptr, ptr %3, align 8
  br label %46

46:                                               ; preds = %44, %63
  %47 = phi i32 [ 0, %44 ], [ %64, %63 ]
  %48 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %45) #23
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %4, align 8, !tbaa !6
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
  br i1 %62, label %63, label %53, !llvm.loop !109

63:                                               ; preds = %53, %46
  %64 = add i32 %47, 1
  %65 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %34, i32 noundef %64, ptr noundef nonnull %4) #23, !range !22
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %46, !llvm.loop !110

67:                                               ; preds = %63, %35
  %68 = add nuw nsw i64 %36, 1
  %69 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #23
  %70 = zext i32 %69 to i64
  %71 = icmp ult i64 %68, %70
  br i1 %71, label %35, label %494, !llvm.loop !111

72:                                               ; preds = %1
  %73 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #23, !range !36
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %263, label %75

75:                                               ; preds = %72
  %76 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #23
  %77 = icmp eq ptr %76, null
  br i1 %77, label %142, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.tree_function_decl, ptr %76, i64 0, i32 5
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 6144
  %82 = icmp eq i32 %81, 6144
  br i1 %82, label %83, label %140

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
  %104 = load ptr, ptr %2, align 8, !tbaa !6
  %105 = load ptr, ptr %3, align 8, !tbaa !6
  tail call fastcc void @process_all_all_constraints(ptr noundef %104, ptr noundef %105) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %2) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %3) #23
  br label %106

106:                                              ; preds = %103, %85
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %91, ptr noundef null, ptr noundef nonnull %2) #23
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %96, ptr noundef null, ptr noundef nonnull %3) #23
  call fastcc void @do_deref(ptr noundef nonnull %2) #23
  call fastcc void @do_deref(ptr noundef nonnull %3) #23
  %107 = load ptr, ptr %2, align 8, !tbaa !6
  %108 = load ptr, ptr %3, align 8, !tbaa !6
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
  %114 = load ptr, ptr %2, align 8, !tbaa !6
  %115 = load ptr, ptr %3, align 8, !tbaa !6
  tail call fastcc void @process_all_all_constraints(ptr noundef %114, ptr noundef %115) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %2) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %3) #23
  br label %116

116:                                              ; preds = %113, %109
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %111, ptr noundef null, ptr noundef nonnull %2) #23
  call fastcc void @do_deref(ptr noundef nonnull %2) #23
  %117 = load i32, ptr @flag_delete_null_pointer_checks, align 4, !tbaa !30
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
  %127 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %126, i32 noundef 0, ptr noundef nonnull %5) #23, !range !22
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %124, %129
  %130 = phi i32 [ %136, %129 ], [ 0, %124 ]
  %131 = load ptr, ptr %5, align 8, !tbaa !6
  %132 = load i64, ptr %131, align 8
  %133 = getelementptr inbounds { i64, i64 }, ptr %131, i64 0, i32 1
  %134 = load i64, ptr %133, align 8
  %135 = tail call fastcc ptr @new_constraint(i64 %132, i64 %134, i64 %125, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %135) #23
  %136 = add i32 %130, 1
  %137 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %126, i32 noundef %136, ptr noundef nonnull %5) #23, !range !22
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %129, !llvm.loop !112

139:                                              ; preds = %129, %124
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  br label %495

140:                                              ; preds = %83, %78
  %141 = load i1, ptr @in_ipa_mode, align 4
  br i1 %141, label %144, label %147

142:                                              ; preds = %75
  %143 = load i1, ptr @in_ipa_mode, align 4
  br i1 %143, label %175, label %147

144:                                              ; preds = %140
  %145 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef nonnull %76) #23
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %175

147:                                              ; preds = %142, %144, %140
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  store ptr null, ptr %6, align 8, !tbaa !6
  %148 = tail call i32 @gimple_call_flags(ptr noundef %0) #25
  %149 = and i32 %148, 513
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %147
  %152 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %153 = icmp eq ptr %152, null
  br i1 %153, label %164, label %154

154:                                              ; preds = %151
  %155 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %156 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %155) #23, !range !36
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %154
  call fastcc void @handle_const_call(ptr noundef %0, ptr noundef nonnull %6) #23
  br label %164

159:                                              ; preds = %147
  %160 = and i32 %148, 6
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  call fastcc void @handle_pure_call(ptr noundef %0, ptr noundef nonnull %6) #23
  br label %164

163:                                              ; preds = %159
  call fastcc void @handle_rhs_call(ptr noundef %0, ptr noundef nonnull %6) #23
  br label %164

164:                                              ; preds = %162, %163, %151, %154, %158
  %165 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %166 = icmp eq ptr %165, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %164
  %168 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %169 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %168) #23, !range !36
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %167
  %172 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %173 = load ptr, ptr %6, align 8, !tbaa !6
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
  %198 = load i32, ptr %186, align 8, !tbaa !96
  %199 = zext i32 %198 to i64
  %200 = shl nuw i64 %199, 32
  %201 = or disjoint i64 %200, 1
  br label %207

202:                                              ; preds = %189
  %203 = tail call fastcc ptr @first_vi_for_offset(ptr noundef %186, i64 noundef %190) #23
  %204 = load i32, ptr %203, align 8, !tbaa !96
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
  br i1 %220, label %221, label %213, !llvm.loop !113

221:                                              ; preds = %213, %207
  %222 = add nuw nsw i64 %190, 1
  %223 = add nuw nsw i64 %191, 1
  %224 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %225 = zext i32 %224 to i64
  %226 = icmp ult i64 %223, %225
  br i1 %226, label %189, label %227, !llvm.loop !114

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
  %237 = load i32, ptr %186, align 8, !tbaa !96
  %238 = zext i32 %237 to i64
  %239 = shl nuw i64 %238, 32
  %240 = or disjoint i64 %239, 1
  br label %246

241:                                              ; preds = %232
  %242 = tail call fastcc ptr @first_vi_for_offset(ptr noundef %186, i64 noundef %230) #23
  %243 = load i32, ptr %242, align 8, !tbaa !96
  %244 = zext i32 %243 to i64
  %245 = shl nuw i64 %244, 32
  br label %246

246:                                              ; preds = %241, %236
  %247 = phi i64 [ %230, %236 ], [ 0, %241 ]
  %248 = phi i64 [ %240, %236 ], [ %245, %241 ]
  %249 = load ptr, ptr %2, align 8
  %250 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %249, i32 noundef 0, ptr noundef nonnull %7) #23, !range !22
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %262, label %252

252:                                              ; preds = %246, %252
  %253 = phi i32 [ %259, %252 ], [ 0, %246 ]
  %254 = load ptr, ptr %7, align 8, !tbaa !6
  %255 = load i64, ptr %254, align 8
  %256 = getelementptr inbounds { i64, i64 }, ptr %254, i64 0, i32 1
  %257 = load i64, ptr %256, align 8
  %258 = tail call fastcc ptr @new_constraint(i64 %255, i64 %257, i64 %248, i64 %247) #23
  tail call fastcc void @process_constraint(ptr noundef %258) #23
  %259 = add i32 %253, 1
  %260 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %249, i32 noundef %259, ptr noundef nonnull %7) #23, !range !22
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %252, !llvm.loop !115

262:                                              ; preds = %252, %246
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  br label %494

263:                                              ; preds = %72
  %264 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #23, !range !36
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %363, label %266

266:                                              ; preds = %263
  %267 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #23
  %268 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %267) #23, !range !36
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %363, label %270

270:                                              ; preds = %266
  %271 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #23
  %272 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #23
  %273 = icmp eq i32 %272, 2
  br i1 %273, label %274, label %286

274:                                              ; preds = %270
  %275 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  %276 = icmp eq ptr %275, null
  br i1 %276, label %286, label %277

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.tree_common, ptr %271, i64 0, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !61
  %280 = load i64, ptr %279, align 8
  %281 = trunc i64 %280 to i32
  %282 = and i32 %281, 65535
  %283 = add nsw i32 %282, -15
  %284 = icmp ult i32 %283, 4
  br i1 %284, label %285, label %286

285:                                              ; preds = %277
  tail call fastcc void @do_structure_copy(ptr noundef nonnull %271, ptr noundef nonnull %275) #23
  br label %324

286:                                              ; preds = %270, %277, %274
  %287 = phi ptr [ %275, %277 ], [ null, %274 ], [ null, %270 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #24
  call fastcc void @get_constraint_for(ptr noundef %271, ptr noundef nonnull %2) #23
  %288 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #23, !range !116
  %289 = icmp eq i32 %288, 66
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  %292 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #23
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %291, ptr noundef %292, ptr noundef nonnull %3) #23
  br label %321

293:                                              ; preds = %286
  %294 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #23, !range !116
  %295 = icmp eq i32 %294, 116
  br i1 %295, label %299, label %296

296:                                              ; preds = %293
  %297 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #23, !range !116
  %298 = icmp eq i32 %297, 113
  br i1 %298, label %299, label %314

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
  %311 = load ptr, ptr %310, align 8, !tbaa !61
  %312 = load i64, ptr %311, align 8
  %313 = trunc i64 %312 to i16
  switch i16 %313, label %314 [
    i16 10, label %317
    i16 12, label %317
  ]

314:                                              ; preds = %309, %296
  %315 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #25
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %309, %309, %314, %304
  call fastcc void @get_constraint_for(ptr noundef %287, ptr noundef nonnull %3) #23
  br label %321

318:                                              ; preds = %314
  store i32 2, ptr %8, align 8, !tbaa !117
  %319 = getelementptr inbounds %struct.constraint_expr, ptr %8, i64 0, i32 1
  store i32 1, ptr %319, align 4, !tbaa !118
  %320 = getelementptr inbounds %struct.constraint_expr, ptr %8, i64 0, i32 2
  store i64 0, ptr %320, align 8, !tbaa !119
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %3, ptr noundef nonnull %8) #23
  br label %321

321:                                              ; preds = %317, %318, %290
  %322 = load ptr, ptr %2, align 8, !tbaa !6
  %323 = load ptr, ptr %3, align 8, !tbaa !6
  call fastcc void @process_all_all_constraints(ptr noundef %322, ptr noundef %323) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #24
  br label %324

324:                                              ; preds = %321, %285
  %325 = phi ptr [ %287, %321 ], [ %275, %285 ]
  %326 = call ptr @get_base_address(ptr noundef %271) #25
  %327 = icmp eq ptr %326, null
  br i1 %327, label %338, label %328

328:                                              ; preds = %324
  %329 = load i64, ptr %326, align 8
  %330 = and i64 %329, 65535
  %331 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %330
  %332 = load i32, ptr %331, align 4, !tbaa !30
  %333 = icmp eq i32 %332, 3
  br i1 %333, label %334, label %338

334:                                              ; preds = %328
  %335 = call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %326) #23, !range !36
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %338, label %337

337:                                              ; preds = %334
  call fastcc void @make_escape_constraint(ptr noundef %325) #23
  br label %494

338:                                              ; preds = %334, %328, %324
  %339 = call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) #23, !range !36
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %494, label %341

341:                                              ; preds = %338
  %342 = getelementptr inbounds %struct.tree_common, ptr %325, i64 0, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !61
  %344 = load i64, ptr %343, align 8
  %345 = trunc i64 %344 to i16
  switch i16 %345, label %494 [
    i16 10, label %346
    i16 12, label %346
  ]

346:                                              ; preds = %341, %341
  %347 = getelementptr inbounds %struct.tree_common, ptr %326, i64 0, i32 2
  %348 = load ptr, ptr %347, align 8, !tbaa !61
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
  call fastcc void @make_constraint_from_restrict(ptr noundef %362, ptr noundef nonnull @.str.59) #23
  br label %494

363:                                              ; preds = %266, %263
  %364 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) #23, !range !36
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %396, label %366

366:                                              ; preds = %363
  %367 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  %368 = getelementptr inbounds %struct.tree_common, ptr %367, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !61
  %370 = load i64, ptr %369, align 8
  %371 = and i64 %370, 65535
  %372 = icmp eq i64 %371, 10
  br i1 %372, label %380, label %373

373:                                              ; preds = %366
  %374 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  %375 = getelementptr inbounds %struct.tree_common, ptr %374, i64 0, i32 2
  %376 = load ptr, ptr %375, align 8, !tbaa !61
  %377 = load i64, ptr %376, align 8
  %378 = and i64 %377, 65535
  %379 = icmp eq i64 %378, 12
  br i1 %379, label %380, label %396

380:                                              ; preds = %373, %366
  %381 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #23
  %382 = getelementptr inbounds %struct.tree_common, ptr %381, i64 0, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !61
  %384 = load i64, ptr %383, align 8
  %385 = and i64 %384, 65535
  %386 = icmp eq i64 %385, 10
  br i1 %386, label %396, label %387

387:                                              ; preds = %380
  %388 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #23
  %389 = getelementptr inbounds %struct.tree_common, ptr %388, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !61
  %391 = load i64, ptr %390, align 8
  %392 = and i64 %391, 65535
  %393 = icmp eq i64 %392, 12
  br i1 %393, label %396, label %394

394:                                              ; preds = %387
  %395 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  tail call fastcc void @make_escape_constraint(ptr noundef %395) #23
  br label %494

396:                                              ; preds = %387, %380, %373, %363
  %397 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !108
  %398 = icmp eq i32 %397, 9
  br i1 %398, label %399, label %408

399:                                              ; preds = %396
  %400 = tail call fastcc ptr @gimple_return_retval(ptr noundef %0) #23
  %401 = icmp eq ptr %400, null
  br i1 %401, label %408, label %402

402:                                              ; preds = %399
  %403 = tail call fastcc ptr @gimple_return_retval(ptr noundef %0) #23
  %404 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %403) #23, !range !36
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %408, label %406

406:                                              ; preds = %402
  %407 = tail call fastcc ptr @gimple_return_retval(ptr noundef %0) #23
  tail call fastcc void @make_escape_constraint(ptr noundef %407) #23
  br label %494

408:                                              ; preds = %402, %399, %396
  %409 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !108
  %410 = icmp eq i32 %409, 7
  br i1 %410, label %411, label %494

411:                                              ; preds = %408
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #24
  %412 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %0) #23, !range !108
  %413 = shl nuw nsw i32 %412, 3
  %414 = zext nneg i32 %413 to i64
  %415 = alloca i8, i64 %414, align 16
  %416 = icmp eq i32 %412, 0
  br i1 %416, label %419, label %417

417:                                              ; preds = %411
  %418 = zext nneg i32 %412 to i64
  br label %422

419:                                              ; preds = %462, %411
  %420 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #23, !range !108
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %493, label %465

422:                                              ; preds = %417, %462
  %423 = phi i64 [ 0, %417 ], [ %463, %462 ]
  %424 = trunc i64 %423 to i32
  %425 = call fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %424) #23
  %426 = getelementptr inbounds %struct.tree_list, ptr %425, i64 0, i32 2
  %427 = load ptr, ptr %426, align 8, !tbaa !61
  %428 = getelementptr inbounds %struct.tree_list, ptr %425, i64 0, i32 1
  %429 = load ptr, ptr %428, align 8, !tbaa !61
  %430 = getelementptr inbounds %struct.tree_list, ptr %429, i64 0, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !61
  %432 = getelementptr inbounds %struct.tree_string, ptr %431, i64 0, i32 2
  store ptr %432, ptr %9, align 8, !tbaa !6
  %433 = getelementptr inbounds ptr, ptr %415, i64 %423
  store ptr %432, ptr %433, align 8, !tbaa !6
  %434 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %9, i32 noundef %424, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #25
  %435 = load i8, ptr %11, align 1, !tbaa !61
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
  %445 = call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %427) #23, !range !36
  %446 = icmp eq i8 %445, 0
  br i1 %446, label %462, label %447

447:                                              ; preds = %444
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #24
  store ptr null, ptr %13, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #24
  call fastcc void @get_constraint_for(ptr noundef nonnull %427, ptr noundef nonnull %13) #23
  %448 = load ptr, ptr %13, align 8
  %449 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %448, i32 noundef 0, ptr noundef nonnull %14) #23, !range !22
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %461, label %451

451:                                              ; preds = %447, %451
  %452 = phi i32 [ %458, %451 ], [ 0, %447 ]
  %453 = load ptr, ptr %14, align 8, !tbaa !6
  %454 = load i64, ptr %453, align 8
  %455 = getelementptr inbounds { i64, i64 }, ptr %453, i64 0, i32 1
  %456 = load i64, ptr %455, align 8
  %457 = call fastcc ptr @new_constraint(i64 %454, i64 %456, i64 17179869184, i64 0) #23
  call fastcc void @process_constraint(ptr noundef %457) #23
  %458 = add i32 %452, 1
  %459 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %448, i32 noundef %458, ptr noundef nonnull %14) #23, !range !22
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %451, !llvm.loop !120

461:                                              ; preds = %451, %447
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #24
  br label %462

462:                                              ; preds = %461, %444, %442
  %463 = add nuw nsw i64 %423, 1
  %464 = icmp eq i64 %463, %418
  br i1 %464, label %419, label %422, !llvm.loop !121

465:                                              ; preds = %419, %489
  %466 = phi i32 [ %490, %489 ], [ 0, %419 ]
  %467 = call fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %466) #23
  %468 = getelementptr inbounds %struct.tree_list, ptr %467, i64 0, i32 2
  %469 = load ptr, ptr %468, align 8, !tbaa !61
  %470 = getelementptr inbounds %struct.tree_list, ptr %467, i64 0, i32 1
  %471 = load ptr, ptr %470, align 8, !tbaa !61
  %472 = getelementptr inbounds %struct.tree_list, ptr %471, i64 0, i32 2
  %473 = load ptr, ptr %472, align 8, !tbaa !61
  %474 = getelementptr inbounds %struct.tree_string, ptr %473, i64 0, i32 2
  store ptr %474, ptr %9, align 8, !tbaa !6
  %475 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %9, i32 noundef 0, i32 noundef 0, i32 noundef %412, i32 noundef 0, ptr noundef nonnull %415, ptr noundef nonnull %10, ptr noundef nonnull %11) #25
  %476 = load i8, ptr %11, align 1, !tbaa !61
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
  %486 = call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %469) #23, !range !36
  %487 = icmp eq i8 %486, 0
  br i1 %487, label %489, label %488

488:                                              ; preds = %485
  call fastcc void @make_escape_constraint(ptr noundef nonnull %469) #23
  br label %489

489:                                              ; preds = %483, %485, %488, %481
  %490 = add nuw nsw i32 %466, 1
  %491 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #23, !range !108
  %492 = icmp ult i32 %490, %491
  br i1 %492, label %465, label %493, !llvm.loop !122

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
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !123
  store ptr %4, ptr %0, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #23
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #23
  store ptr %4, ptr %0, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !124
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !125
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @solve_constraints() unnamed_addr #6 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 34, i64 1, ptr nonnull %1)
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call fastcc void @dump_constraints(ptr noundef %5) #23
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 58, i64 1, ptr nonnull %6)
  br label %10

10:                                               ; preds = %0, %8, %3
  %11 = load ptr, ptr @varmap, align 8
  %12 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %11) #23
  %13 = shl i32 %12, 1
  tail call fastcc void @init_graph(i32 noundef %13) #23
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call i64 @fwrite(ptr nonnull @.str.68, i64 27, i64 1, ptr nonnull %14)
  br label %18

18:                                               ; preds = %16, %10
  tail call fastcc void @build_pred_graph() #23
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 44, i64 1, ptr nonnull %19)
  br label %23

23:                                               ; preds = %21, %18
  %24 = load ptr, ptr @graph, align 8, !tbaa !6
  %25 = tail call fastcc ptr @perform_var_substitution(ptr noundef %24) #23
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 45, i64 1, ptr nonnull %26)
  br label %30

30:                                               ; preds = %28, %23
  %31 = load ptr, ptr @graph, align 8, !tbaa !6
  tail call fastcc void @rewrite_constraints(ptr noundef %31, ptr noundef %25) #23
  tail call fastcc void @build_succ_graph() #23
  tail call fastcc void @free_var_substitution_info(ptr noundef %25) #23
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr @dump_flags, align 4, !tbaa !30
  %36 = and i32 %35, 8192
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call fastcc void @dump_constraint_graph(ptr noundef nonnull %32) #23
  br label %39

39:                                               ; preds = %38, %34, %30
  %40 = load ptr, ptr @graph, align 8, !tbaa !6
  tail call fastcc void @move_complex_constraints(ptr noundef %40) #23
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 54, i64 1, ptr nonnull %41)
  br label %45

45:                                               ; preds = %43, %39
  %46 = load ptr, ptr @graph, align 8, !tbaa !6
  tail call fastcc void @unite_pointer_equivalences(ptr noundef %46) #23
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 24, i64 1, ptr nonnull %47)
  br label %51

51:                                               ; preds = %49, %45
  %52 = load ptr, ptr @graph, align 8, !tbaa !6
  tail call fastcc void @find_indirect_cycles(ptr noundef %52) #23
  %53 = load ptr, ptr @graph, align 8, !tbaa !6
  tail call fastcc void @remove_preds_and_fake_succs(ptr noundef %53) #23
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 14, i64 1, ptr nonnull %54)
  br label %58

58:                                               ; preds = %56, %51
  %59 = load ptr, ptr @graph, align 8, !tbaa !6
  tail call fastcc void @solve_graph(ptr noundef %59) #23
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call fastcc void @dump_sa_points_to_info(ptr noundef nonnull %60) #23
  br label %63

63:                                               ; preds = %62, %58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_what_var_points_to(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %5 = load i32, ptr %0, align 8, !tbaa !96
  %6 = tail call fastcc i32 @find(i32 noundef %5) #23
  %7 = tail call fastcc ptr @get_varinfo(i32 noundef %6) #23
  %8 = getelementptr inbounds %struct.variable_info, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %9, ptr noundef nonnull %3) #23
  %10 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !36
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %50, label %12

12:                                               ; preds = %2, %47
  %13 = load i32, ptr %3, align 4, !tbaa !30
  %14 = tail call fastcc ptr @get_varinfo(i32 noundef %13) #23
  %15 = getelementptr inbounds %struct.variable_info, ptr %14, i64 0, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %12
  %20 = load i32, ptr %14, align 8, !tbaa !96
  switch i32 %20, label %31 [
    i32 0, label %21
    i32 3, label %24
    i32 5, label %27
    i32 4, label %28
  ]

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
  br i1 %35, label %40, label %36

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
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i8, ptr %1, align 8
  %46 = or i8 %45, 32
  store i8 %46, ptr %1, align 8
  br label %47

47:                                               ; preds = %44, %40
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %48 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !36
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %12, !llvm.loop !126

50:                                               ; preds = %47, %2
  %51 = load i8, ptr %1, align 8
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %62, label %54

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
  %64 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 7), align 4, !tbaa !87
  %65 = add i32 %64, 1
  store i32 %65, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 7), align 4, !tbaa !87
  %66 = load ptr, ptr %8, align 8, !tbaa !35
  tail call fastcc void @set_uids_in_ptset(ptr noundef %63, ptr noundef %66, ptr noundef nonnull %1) #23
  %67 = tail call fastcc ptr @shared_bitmap_lookup(ptr noundef %63) #23
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  tail call fastcc void @shared_bitmap_add(ptr noundef %63) #23
  %70 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  store ptr %63, ptr %70, align 8, !tbaa !56
  br label %73

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  store ptr %67, ptr %72, align 8, !tbaa !56
  tail call void @bitmap_clear(ptr noundef %63) #25
  br label %73

73:                                               ; preds = %69, %71, %54
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_varinfo_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !33
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !6
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !127
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_what_p_points_to(ptr noundef %0) unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp ne i64 %9, 34
  %11 = and i64 %2, 4294967296
  %12 = icmp eq i64 %11, 0
  %13 = or i1 %12, %10
  %14 = select i1 %13, ptr %0, ptr %7
  br label %15

15:                                               ; preds = %5, %1
  %16 = phi ptr [ %0, %1 ], [ %14, %5 ]
  %17 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef nonnull %16) #23
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

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
define internal fastcc ptr @VEC_constraint_t_heap_alloc() unnamed_addr #6 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 8) #25
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_varinfo_t_heap_alloc() unnamed_addr #6 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 8) #25
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @shared_bitmap_hash(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.shared_bitmap_info, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !129
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @shared_bitmap_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !131
  %4 = load ptr, ptr %1, align 8, !tbaa !131
  %5 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %3, ptr noundef %4) #25
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_base_vars() unnamed_addr #6 {
  %1 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.42) #23
  %2 = load i32, ptr %1, align 8, !tbaa !96
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5153, ptr noundef nonnull @.str.27) #25
  br label %5

5:                                                ; preds = %0, %4
  %6 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 3
  store i64 0, ptr %8, align 8, !tbaa !132
  %9 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 4
  %10 = or i8 %7, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 -1, i64 16, i1 false)
  store i8 %10, ptr %6, align 4
  %11 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.43) #23
  %12 = load i32, ptr %11, align 8, !tbaa !96
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5163, ptr noundef nonnull @.str.27) #25
  br label %15

15:                                               ; preds = %5, %14
  %16 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 4
  store i64 -1, ptr %18, align 8, !tbaa !133
  %19 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 2
  %20 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  store i64 -1, ptr %20, align 8, !tbaa !134
  %21 = or i8 %17, 3
  store i8 %21, ptr %16, align 4
  %22 = tail call fastcc ptr @new_constraint(i64 4294967296, i64 0, i64 4294967298, i64 0) #23
  tail call fastcc void @VEC_constraint_t_heap_safe_push(ptr noundef %22) #23
  %23 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.44) #23
  %24 = load i32, ptr %23, align 8, !tbaa !96
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5189, ptr noundef nonnull @.str.27) #25
  br label %27

27:                                               ; preds = %15, %26
  %28 = getelementptr inbounds %struct.variable_info, ptr %23, i64 0, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = getelementptr inbounds %struct.variable_info, ptr %23, i64 0, i32 3
  store i64 0, ptr %30, align 8, !tbaa !132
  %31 = getelementptr inbounds %struct.variable_info, ptr %23, i64 0, i32 4
  %32 = getelementptr inbounds %struct.variable_info, ptr %23, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 -1, i64 16, i1 false)
  store ptr null, ptr %32, align 8, !tbaa !97
  %33 = or i8 %29, 3
  store i8 %33, ptr %28, align 4
  %34 = tail call fastcc ptr @new_constraint(i64 8589934592, i64 0, i64 8589934594, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %34) #23
  %35 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.45) #23
  %36 = load i32, ptr %35, align 8, !tbaa !96
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5212, ptr noundef nonnull @.str.27) #25
  br label %39

39:                                               ; preds = %27, %38
  %40 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 1
  %41 = load i8, ptr %40, align 4
  %42 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 3
  store i64 0, ptr %42, align 8, !tbaa !132
  %43 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 4
  %44 = and i8 %41, -4
  %45 = or disjoint i8 %44, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 -1, i64 16, i1 false)
  store i8 %45, ptr %40, align 4
  %46 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.46) #23
  %47 = load i32, ptr %46, align 8, !tbaa !96
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5222, ptr noundef nonnull @.str.27) #25
  br label %50

50:                                               ; preds = %39, %49
  %51 = getelementptr inbounds %struct.variable_info, ptr %46, i64 0, i32 1
  %52 = load i8, ptr %51, align 4
  %53 = getelementptr inbounds %struct.variable_info, ptr %46, i64 0, i32 3
  store i64 0, ptr %53, align 8, !tbaa !132
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
  %62 = load i32, ptr %61, align 8, !tbaa !96
  %63 = icmp eq i32 %62, 5
  br i1 %63, label %65, label %64

64:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5276, ptr noundef nonnull @.str.27) #25
  br label %65

65:                                               ; preds = %50, %64
  %66 = getelementptr inbounds %struct.variable_info, ptr %61, i64 0, i32 1
  %67 = load i8, ptr %66, align 4
  %68 = getelementptr inbounds %struct.variable_info, ptr %61, i64 0, i32 3
  store i64 0, ptr %68, align 8, !tbaa !132
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
  %75 = load i32, ptr %74, align 8, !tbaa !96
  %76 = icmp eq i32 %75, 6
  br i1 %76, label %78, label %77

77:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5305, ptr noundef nonnull @.str.27) #25
  br label %78

78:                                               ; preds = %65, %77
  %79 = getelementptr inbounds %struct.variable_info, ptr %74, i64 0, i32 1
  %80 = load i8, ptr %79, align 4
  %81 = getelementptr inbounds %struct.variable_info, ptr %74, i64 0, i32 3
  store i64 0, ptr %81, align 8, !tbaa !132
  %82 = getelementptr inbounds %struct.variable_info, ptr %74, i64 0, i32 4
  %83 = and i8 %80, -4
  %84 = or disjoint i8 %83, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %82, i8 -1, i64 16, i1 false)
  store i8 %84, ptr %79, align 4
  %85 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.49) #23
  %86 = load i32, ptr %85, align 8, !tbaa !96
  %87 = icmp eq i32 %86, 7
  br i1 %87, label %89, label %88

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
define internal fastcc noundef ptr @new_var_info(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = load ptr, ptr @varmap, align 8
  %4 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %3) #23
  %5 = load ptr, ptr @variable_info_pool, align 8, !tbaa !6
  %6 = tail call ptr @pool_alloc(ptr noundef %5) #25
  store i32 %4, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 6
  store ptr %1, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 7
  store ptr %0, ptr %8, align 8, !tbaa !84
  %9 = icmp eq ptr %0, null
  %10 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 1
  %11 = zext i1 %9 to i8
  %12 = select i1 %9, i8 8, i8 0
  %13 = select i1 %9, i8 -128, i8 0
  %14 = or disjoint i8 %12, %11
  %15 = or disjoint i8 %14, %13
  %16 = or disjoint i8 %15, 64
  store i8 %16, ptr %10, align 4
  br i1 %9, label %28, label %17

17:                                               ; preds = %2
  %18 = load i64, ptr %0, align 8
  %19 = and i64 %18, 65535
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !30
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %0) #23, !range !36
  %25 = shl nuw i8 %24, 7
  %26 = and i8 %16, 73
  %27 = or disjoint i8 %25, %26
  store i8 %27, ptr %10, align 4
  br label %28

28:                                               ; preds = %23, %17, %2
  %29 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #25
  %30 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 8
  store ptr %29, ptr %30, align 8, !tbaa !35
  %31 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @oldpta_obstack) #25
  %32 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 9
  store ptr %31, ptr %32, align 8, !tbaa !135
  %33 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 2
  store ptr null, ptr %33, align 8, !tbaa !97
  tail call fastcc void @VEC_varinfo_t_heap_safe_push(ptr noundef nonnull %6) #23
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_constraint_t_heap_safe_push(ptr noundef %0) unnamed_addr #6 {
  tail call fastcc void @VEC_constraint_t_heap_reserve(ptr noundef nonnull @constraints) #23
  %2 = load ptr, ptr @constraints, align 8, !tbaa !6
  tail call fastcc void @VEC_constraint_t_base_quick_push(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_constraint(i64 %0, i64 %1, i64 %2, i64 %3) unnamed_addr #6 {
  %5 = load ptr, ptr @constraint_pool, align 8, !tbaa !6
  %6 = tail call ptr @pool_alloc(ptr noundef %5) #25
  store i64 %0, ptr %6, align 8, !tbaa.struct !136
  %7 = getelementptr inbounds i8, ptr %6, i64 8
  store i64 %1, ptr %7, align 8, !tbaa.struct !137
  %8 = getelementptr inbounds %struct.constraint, ptr %6, i64 0, i32 1
  store i64 %2, ptr %8, align 8, !tbaa.struct !136
  %9 = getelementptr inbounds %struct.constraint, ptr %6, i64 0, i32 1, i32 2
  store i64 %3, ptr %9, align 8, !tbaa.struct !137
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_constraint(ptr noundef %0) unnamed_addr #6 {
  br label %2

2:                                                ; preds = %40, %1
  %3 = phi ptr [ %0, %1 ], [ %49, %40 ]
  %4 = getelementptr inbounds %struct.constraint, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa.struct !136
  %6 = trunc i64 %5 to i32
  %7 = lshr i64 %5, 32
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds %struct.constraint, ptr %3, i64 0, i32 1, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa.struct !137
  %11 = load i64, ptr %3, align 8, !tbaa.struct !136
  %12 = trunc i64 %11 to i32
  %13 = lshr i64 %11, 32
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds i8, ptr %3, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa.struct !137
  %17 = load ptr, ptr @varmap, align 8
  %18 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %17) #23
  %19 = icmp ugt i32 %18, %8
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2749, ptr noundef nonnull @.str.27) #25
  %21 = load ptr, ptr @varmap, align 8
  br label %22

22:                                               ; preds = %2, %20
  %23 = phi ptr [ %17, %2 ], [ %21, %20 ]
  %24 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %23) #23
  %25 = icmp ugt i32 %24, %14
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2750, ptr noundef nonnull @.str.27) #25
  br label %27

27:                                               ; preds = %22, %26
  %28 = icmp eq i32 %12, 2
  %29 = icmp eq i32 %14, 1
  %30 = select i1 %28, i1 %29, i1 false
  %31 = select i1 %30, i32 1, i32 %12
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2760, ptr noundef nonnull @.str.27) #25
  br label %53

34:                                               ; preds = %27
  %35 = icmp eq i32 %6, 1
  %36 = icmp eq i32 %31, 1
  %37 = icmp ne i32 %8, 1
  %38 = and i1 %35, %37
  %39 = and i1 %38, %36
  br i1 %39, label %40, label %50

40:                                               ; preds = %34, %50
  %41 = phi ptr [ @.str.51, %50 ], [ @.str.50, %34 ]
  %42 = phi i64 [ 2, %50 ], [ 1, %34 ]
  %43 = tail call fastcc i64 @new_scalar_tmp_constraint_exp(ptr noundef nonnull %41) #23
  %44 = and i64 %5, -4294967296
  %45 = or disjoint i64 %44, %42
  %46 = tail call fastcc ptr @new_constraint(i64 %43, i64 0, i64 %45, i64 %10) #23
  tail call fastcc void @process_constraint(ptr noundef %46) #23
  %47 = and i64 %11, -4294967296
  %48 = or disjoint i64 %47, 1
  %49 = tail call fastcc ptr @new_constraint(i64 %48, i64 %16, i64 %43, i64 0) #23
  br label %2

50:                                               ; preds = %34
  %51 = icmp eq i32 %6, 2
  %52 = and i1 %51, %36
  br i1 %52, label %40, label %53

53:                                               ; preds = %50, %33
  %54 = icmp ne i32 %6, 2
  %55 = icmp eq i64 %10, 0
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2781, ptr noundef nonnull @.str.27) #25
  br label %58

58:                                               ; preds = %53, %57
  tail call fastcc void @VEC_constraint_t_heap_safe_push(ptr noundef nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_varinfo_t_heap_safe_push(ptr noundef %0) unnamed_addr #6 {
  tail call fastcc void @VEC_varinfo_t_heap_reserve() #23
  %2 = load ptr, ptr @varmap, align 8, !tbaa !6
  tail call fastcc void @VEC_varinfo_t_base_quick_push(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_varinfo_t_heap_reserve() unnamed_addr #6 {
  %1 = load ptr, ptr @varmap, align 8, !tbaa !6
  %2 = tail call fastcc i32 @VEC_varinfo_t_base_space(ptr noundef %1) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #25
  store ptr %5, ptr @varmap, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_varinfo_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 8, !tbaa !33
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !33
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_varinfo_t_base_space(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !138
  %6 = load i32, ptr %0, align 8, !tbaa !33
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
define internal fastcc void @VEC_constraint_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = tail call fastcc i32 @VEC_constraint_t_base_space(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #25
  store ptr %6, ptr %0, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_constraint_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 8, !tbaa !25
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !25
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constraint_t_base_space(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !139
  %6 = load i32, ptr %0, align 8, !tbaa !25
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @new_scalar_tmp_constraint_exp(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.variable_info, ptr %2, i64 0, i32 3
  store i64 0, ptr %3, align 8, !tbaa !132
  %4 = getelementptr inbounds %struct.variable_info, ptr %2, i64 0, i32 4
  %5 = getelementptr inbounds %struct.variable_info, ptr %2, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 -1, i64 16, i1 false)
  %6 = load i8, ptr %5, align 4
  %7 = or i8 %6, 8
  store i8 %7, ptr %5, align 4
  %8 = load i32, ptr %2, align 8, !tbaa !96
  %9 = zext i32 %8 to i64
  %10 = shl nuw i64 %9, 32
  ret i64 %10
}

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @tree_map_hash(ptr noundef) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @heapvar_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !140
  %4 = load ptr, ptr %1, align 8, !tbaa !140
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.heapvar_map, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !144
  %9 = getelementptr inbounds %struct.heapvar_map, ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !144
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
define internal fastcc zeroext i8 @could_have_pointers(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = tail call fastcc zeroext i8 @type_could_have_pointers(ptr noundef %3) #23, !range !36
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @heapvar_lookup(ptr noundef %0, i64 noundef %1) unnamed_addr #6 {
  %3 = alloca %struct.heapvar_map, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  store ptr %0, ptr %3, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct.heapvar_map, ptr %3, i64 0, i32 1
  store i64 %1, ptr %4, align 8, !tbaa !144
  %5 = load ptr, ptr @heapvar_for_stmt, align 8, !tbaa !6
  %6 = call fastcc i32 @heapvar_map_hash(ptr noundef nonnull %3) #23
  %7 = call ptr @htab_find_with_hash(ptr noundef %5, ptr noundef nonnull %3, i32 noundef %6) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tree_map, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !145
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @create_tmp_var_raw(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @heapvar_insert(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #6 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #25
  store ptr %0, ptr %4, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct.heapvar_map, ptr %4, i64 0, i32 1
  store i64 %1, ptr %5, align 8, !tbaa !144
  %6 = tail call fastcc i32 @heapvar_map_hash(ptr noundef nonnull %4) #23
  %7 = getelementptr inbounds %struct.tree_map, ptr %4, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !146
  %8 = getelementptr inbounds %struct.tree_map, ptr %4, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !145
  %9 = load ptr, ptr @heapvar_for_stmt, align 8, !tbaa !6
  %10 = tail call ptr @htab_find_slot_with_hash(ptr noundef %9, ptr noundef nonnull %4, i32 noundef %6, i32 noundef 1) #25
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 345, ptr noundef nonnull @.str.27) #25
  br label %14

14:                                               ; preds = %3, %13
  store ptr %4, ptr %10, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_var_ann(ptr noundef %0) unnamed_addr #6 {
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.54, i32 noundef 144, ptr noundef nonnull @.str.27) #25
  unreachable

13:                                               ; preds = %8, %6, %4
  %14 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !6
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
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !147
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_vi_for_tree(ptr noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr @vi_for_tree, align 8, !tbaa !6
  %3 = tail call ptr @pointer_map_contains(ptr noundef %2, ptr noundef %0) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @alias_get_name(ptr noundef %0) #23
  %7 = tail call fastcc i32 @create_variable_info_for(ptr noundef %0, ptr noundef %6) #23
  %8 = tail call fastcc ptr @get_varinfo(i32 noundef %7) #23
  br label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %8, %5 ], [ %10, %9 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_constraint_from(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = load i32, ptr %0, align 8, !tbaa !96
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
define internal fastcc void @make_constraint_from_restrict(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #6 {
  %3 = tail call fastcc ptr @make_constraint_from_heapvar(ptr noundef %0, ptr noundef %1) #23
  %4 = getelementptr inbounds %struct.variable_info, ptr %3, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 29
  %7 = or disjoint i8 %6, 34
  store i8 %7, ptr %4, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @type_could_have_pointers(ptr nocapture noundef readonly %0) unnamed_addr #12 {
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
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
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
define internal fastcc i32 @heapvar_map_hash(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.heapvar_map, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !144
  %4 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !6
  %5 = load ptr, ptr %0, align 8, !tbaa !140
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
define internal fastcc i32 @create_variable_info_for(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !30
  %12 = icmp eq i32 %11, 3
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 2
  %15 = select i1 %12, ptr %13, ptr %14
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !6
  %17 = tail call fastcc zeroext i8 @var_can_have_subvars(ptr noundef nonnull %0) #23, !range !36
  %18 = icmp ne i8 %17, 0
  %19 = load i8, ptr @use_field_sensitive, align 1
  %20 = icmp ne i8 %19, 0
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call fastcc i32 @push_fields_onto_fieldstack(ptr noundef %7, ptr noundef nonnull %3, i64 noundef 0) #23
  br label %24

24:                                               ; preds = %22, %2
  %25 = tail call fastcc ptr @new_var_info(ptr noundef nonnull %0, ptr noundef %1) #23
  %26 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 3
  store i64 0, ptr %26, align 8, !tbaa !132
  %27 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %0) #23, !range !36
  %28 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = shl nuw nsw i8 %27, 6
  %31 = and i8 %29, -65
  %32 = or disjoint i8 %31, %30
  store i8 %32, ptr %28, align 4
  %33 = icmp eq ptr %16, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %24
  %35 = tail call i32 @host_integerp(ptr noundef nonnull %16, i32 noundef 1) #25
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

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
  %45 = load i64, ptr %44, align 8, !tbaa !61
  %46 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 5
  store i64 %45, ptr %46, align 8, !tbaa !134
  %47 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 4
  store i64 %45, ptr %47, align 8, !tbaa !133
  br label %48

48:                                               ; preds = %43, %39
  %49 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !84
  tail call fastcc void @insert_vi_for_tree(ptr noundef %50, ptr noundef nonnull %25) #23
  %51 = load i8, ptr %28, align 4
  %52 = icmp sgt i8 %51, -1
  br i1 %52, label %73, label %53

53:                                               ; preds = %48
  %54 = load i32, ptr @flag_whole_program, align 4, !tbaa !30
  %55 = icmp ne i32 %54, 0
  %56 = load i1, ptr @in_ipa_mode, align 4
  %57 = select i1 %55, i1 %56, i1 false
  %58 = and i8 %51, 64
  %59 = icmp eq i8 %58, 0
  %60 = or i1 %59, %57
  br i1 %60, label %73, label %61

61:                                               ; preds = %53
  %62 = load ptr, ptr %6, align 8, !tbaa !61
  %63 = load i64, ptr %62, align 8
  %64 = trunc i64 %63 to i16
  switch i16 %64, label %71 [
    i16 10, label %65
    i16 12, label %65
  ]

65:                                               ; preds = %61, %61
  %66 = getelementptr inbounds %struct.tree_type, ptr %62, i64 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 8192
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  tail call fastcc void @make_constraint_from_restrict(ptr noundef nonnull %25, ptr noundef nonnull @.str.55) #23
  br label %71

71:                                               ; preds = %61, %70, %65
  tail call fastcc void @make_copy_constraint(ptr noundef nonnull %25) #23
  %72 = load i8, ptr %28, align 4
  br label %73

73:                                               ; preds = %53, %71, %48
  %74 = phi i8 [ %51, %53 ], [ %72, %71 ], [ %51, %48 ]
  %75 = load i32, ptr @stats, align 4, !tbaa !62
  %76 = add i32 %75, 1
  store i32 %76, ptr @stats, align 4, !tbaa !62
  %77 = load i8, ptr @use_field_sensitive, align 1, !tbaa !61
  %78 = icmp ne i8 %77, 0
  %79 = and i8 %74, 4
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %224

82:                                               ; preds = %73
  %83 = tail call fastcc zeroext i8 @var_can_have_subvars(ptr noundef nonnull %0) #23, !range !36
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %224, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %3, align 8
  %87 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %86) #23
  %88 = icmp ugt i32 %87, 1
  br i1 %88, label %89, label %224

89:                                               ; preds = %85
  %90 = zext i32 %87 to i64
  %91 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %92 = getelementptr inbounds %struct.param_info, ptr %91, i64 95, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !94
  %94 = sext i32 %93 to i64
  %95 = icmp ugt i64 %90, %94
  br i1 %95, label %224, label %96

96:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !6
  %97 = call fastcc i32 @VEC_fieldoff_s_base_iterate(ptr noundef %86, i32 noundef 0, ptr noundef nonnull %4) #23, !range !22
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %113, label %103

99:                                               ; preds = %110
  %100 = add i32 %104, 1
  %101 = call fastcc i32 @VEC_fieldoff_s_base_iterate(ptr noundef %86, i32 noundef %100, ptr noundef nonnull %4) #23, !range !22
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %113, label %103, !llvm.loop !148

103:                                              ; preds = %96, %99
  %104 = phi i32 [ %100, %99 ], [ 0, %96 ]
  %105 = load ptr, ptr %4, align 8, !tbaa !6
  %106 = getelementptr inbounds %struct.fieldoff, ptr %105, i64 0, i32 2
  %107 = load i8, ptr %106, align 8
  %108 = and i8 %107, 1
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i64, ptr %105, align 8, !tbaa !149
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %116, label %99

113:                                              ; preds = %99, %96
  tail call fastcc void @sort_fieldstack(ptr noundef %86) #23
  %114 = tail call fastcc zeroext i8 @check_for_overlaps(ptr noundef %86) #23, !range !36
  %115 = icmp ne i8 %114, 0
  br label %116

116:                                              ; preds = %110, %103, %113
  %117 = phi i1 [ %115, %113 ], [ true, %103 ], [ true, %110 ]
  %118 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %86) #23
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load ptr, ptr %4, align 8, !tbaa !6
  br label %124

122:                                              ; preds = %116
  %123 = tail call fastcc ptr @VEC_fieldoff_s_base_index(ptr noundef %86) #23
  store ptr %123, ptr %4, align 8, !tbaa !6
  br label %124

124:                                              ; preds = %120, %122
  %125 = phi ptr [ %121, %120 ], [ %123, %122 ]
  %126 = icmp eq ptr %125, null
  %127 = or i1 %117, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 4
  %130 = load i8, ptr %28, align 4
  %131 = or i8 %130, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %129, i8 -1, i64 16, i1 false)
  store i8 %131, ptr %28, align 4
  call fastcc void @VEC_fieldoff_s_heap_free(ptr noundef nonnull %3) #23
  %132 = load i32, ptr %25, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  br label %228

133:                                              ; preds = %124
  %134 = load <2 x i64>, ptr %125, align 8, !tbaa !46
  store <2 x i64> %134, ptr %26, align 8, !tbaa !46
  %135 = getelementptr inbounds %struct.fieldoff, ptr %125, i64 0, i32 2
  %136 = load i8, ptr %135, align 8
  %137 = load i8, ptr %28, align 4
  %138 = shl i8 %136, 5
  %139 = and i8 %138, 64
  %140 = and i8 %137, -65
  %141 = or disjoint i8 %140, %139
  store i8 %141, ptr %28, align 4
  %142 = icmp sgt i8 %137, -1
  br i1 %142, label %156, label %143

143:                                              ; preds = %133
  %144 = load i32, ptr @flag_whole_program, align 4, !tbaa !30
  %145 = icmp ne i32 %144, 0
  %146 = load i1, ptr @in_ipa_mode, align 4
  %147 = select i1 %145, i1 %146, i1 false
  %148 = and i8 %136, 2
  %149 = icmp eq i8 %148, 0
  %150 = select i1 %147, i1 true, i1 %149
  br i1 %150, label %156, label %151

151:                                              ; preds = %143
  %152 = load i8, ptr %135, align 8
  %153 = and i8 %152, 4
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %151
  tail call fastcc void @make_constraint_from_restrict(ptr noundef nonnull %25, ptr noundef nonnull @.str.55) #23
  br label %156

156:                                              ; preds = %151, %155, %143, %133
  %157 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %86) #23
  %158 = add i32 %157, -1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %223, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 6
  %162 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 5
  br label %163

163:                                              ; preds = %160, %218
  %164 = phi i32 [ %158, %160 ], [ %221, %218 ]
  %165 = call fastcc i32 @VEC_fieldoff_s_base_iterate(ptr noundef %86, i32 noundef %164, ptr noundef nonnull %4) #23, !range !22
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %223, label %167

167:                                              ; preds = %163
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %168 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %169 = icmp eq ptr %168, null
  %170 = load ptr, ptr %4, align 8, !tbaa !6
  br i1 %169, label %180, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr %161, align 8, !tbaa !16
  %173 = load i64, ptr %170, align 8, !tbaa !149
  %174 = getelementptr inbounds %struct.fieldoff, ptr %170, i64 0, i32 1
  %175 = load i64, ptr %174, align 8, !tbaa !151
  %176 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.56, ptr noundef %172, i64 noundef %173, i64 noundef %175) #25
  %177 = load ptr, ptr %5, align 8, !tbaa !6
  %178 = call ptr @ggc_alloc_string(ptr noundef %177, i32 noundef -1) #25
  %179 = load ptr, ptr %5, align 8, !tbaa !6
  call void @free(ptr noundef %179) #23
  br label %180

180:                                              ; preds = %171, %167
  %181 = phi ptr [ %178, %171 ], [ @.str.42, %167 ]
  %182 = call fastcc ptr @new_var_info(ptr noundef nonnull %0, ptr noundef %181) #23
  %183 = getelementptr inbounds %struct.variable_info, ptr %182, i64 0, i32 3
  %184 = load <2 x i64>, ptr %170, align 8, !tbaa !46
  store <2 x i64> %184, ptr %183, align 8, !tbaa !46
  %185 = load i64, ptr %162, align 8, !tbaa !134
  %186 = getelementptr inbounds %struct.variable_info, ptr %182, i64 0, i32 5
  store i64 %185, ptr %186, align 8, !tbaa !134
  %187 = getelementptr inbounds %struct.fieldoff, ptr %170, i64 0, i32 2
  %188 = load i8, ptr %187, align 8
  %189 = getelementptr inbounds %struct.variable_info, ptr %182, i64 0, i32 1
  %190 = load i8, ptr %189, align 4
  %191 = shl i8 %188, 5
  %192 = and i8 %191, 64
  %193 = and i8 %190, -65
  %194 = or disjoint i8 %193, %192
  store i8 %194, ptr %189, align 4
  call fastcc void @insert_into_field_list(ptr noundef nonnull %25, ptr noundef %182) #23
  %195 = load i8, ptr %189, align 4
  %196 = icmp sgt i8 %195, -1
  br i1 %196, label %197, label %203

197:                                              ; preds = %180
  %198 = load i64, ptr %0, align 8
  %199 = and i64 %198, 65535
  %200 = icmp ne i64 %199, 34
  %201 = icmp ult i8 %195, 64
  %202 = or i1 %201, %200
  br i1 %202, label %218, label %206

203:                                              ; preds = %180
  %204 = and i8 %195, 64
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %218, label %206

206:                                              ; preds = %197, %203
  %207 = load i8, ptr %187, align 8
  %208 = and i8 %207, 4
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %206
  call fastcc void @make_constraint_from_restrict(ptr noundef nonnull %182, ptr noundef nonnull @.str.55) #23
  %211 = load i8, ptr %189, align 4
  br label %212

212:                                              ; preds = %210, %206
  %213 = phi i8 [ %211, %210 ], [ %195, %206 ]
  %214 = icmp sgt i8 %213, -1
  %215 = load i1, ptr @in_ipa_mode, align 4
  %216 = select i1 %214, i1 true, i1 %215
  br i1 %216, label %218, label %217

217:                                              ; preds = %212
  call fastcc void @make_copy_constraint(ptr noundef nonnull %182) #23
  br label %218

218:                                              ; preds = %212, %217, %203, %197
  %219 = load i32, ptr @stats, align 4, !tbaa !62
  %220 = add i32 %219, 1
  store i32 %220, ptr @stats, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  %221 = add i32 %164, -1
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %163, !llvm.loop !152

223:                                              ; preds = %218, %163, %156
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  br label %226

224:                                              ; preds = %89, %85, %82, %73
  %225 = or i8 %74, 8
  store i8 %225, ptr %28, align 4
  br label %226

226:                                              ; preds = %223, %224
  call fastcc void @VEC_fieldoff_s_heap_free(ptr noundef nonnull %3) #23
  %227 = load i32, ptr %25, align 8, !tbaa !96
  br label %228

228:                                              ; preds = %128, %226
  %229 = phi i32 [ %227, %226 ], [ %132, %128 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret i32 %229
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alias_get_name(ptr noundef %0) unnamed_addr #6 {
  %2 = alloca ptr, align 8
  %3 = tail call ptr @get_name(ptr noundef %0) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %5
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = tail call fastcc ptr @alias_get_name(ptr noundef %14) #23
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !61
  %18 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.57, ptr noundef %15, i32 noundef %17) #25
  br label %27

19:                                               ; preds = %8
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %21 = load i32, ptr %20, align 4, !tbaa !30
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !61
  %26 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.58, i32 noundef %25) #25
  br label %27

27:                                               ; preds = %23, %12
  %28 = phi i32 [ %18, %12 ], [ %26, %23 ]
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load ptr, ptr %2, align 8, !tbaa !6
  %32 = call ptr @ggc_alloc_string(ptr noundef %31, i32 noundef -1) #25
  %33 = load ptr, ptr %2, align 8, !tbaa !6
  call void @free(ptr noundef %33) #23
  br label %34

34:                                               ; preds = %19, %27, %30, %5, %1
  %35 = phi ptr [ %3, %1 ], [ @.str.42, %5 ], [ %32, %30 ], [ @.str.42, %27 ], [ @.str.42, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret ptr %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @var_can_have_subvars(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 524288
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = and i64 %2, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !30
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !61
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
define internal fastcc i32 @push_fields_onto_fieldstack(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i64 noundef %2) unnamed_addr #6 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 16
  br i1 %6, label %7, label %139

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8, !tbaa !6
  %9 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %8) #23
  %10 = zext i32 %9 to i64
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 95, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !94
  %14 = sext i32 %13 to i64
  %15 = icmp ugt i64 %10, %14
  br i1 %15, label %139, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = icmp eq ptr %18, null
  br i1 %19, label %139, label %20

20:                                               ; preds = %16, %134
  %21 = phi ptr [ %137, %134 ], [ %18, %16 ]
  %22 = phi i32 [ %135, %134 ], [ 0, %16 ]
  %23 = load i64, ptr %21, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 31
  br i1 %25, label %26, label %134

26:                                               ; preds = %20
  %27 = tail call fastcc i64 @bitpos_of_field(ptr noundef nonnull %21) #23
  %28 = tail call fastcc zeroext i8 @var_can_have_subvars(ptr noundef nonnull %21) #23, !range !36
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !61
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
  br i1 %41, label %42, label %132

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_decl_common, ptr %21, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !61
  %45 = icmp eq ptr %44, null
  br i1 %45, label %132, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @integer_zerop(ptr noundef nonnull %44) #25
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %132

49:                                               ; preds = %26, %30, %46
  %50 = load ptr, ptr %1, align 8, !tbaa !6
  %51 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %50) #23
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call fastcc ptr @VEC_fieldoff_s_base_last(ptr noundef %50) #23
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi ptr [ null, %49 ], [ %54, %53 ]
  %57 = getelementptr inbounds %struct.tree_decl_common, ptr %21, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !61
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = tail call i32 @host_integerp(ptr noundef nonnull %58, i32 noundef 1) #25
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i1 [ false, %60 ], [ true, %63 ]
  %66 = phi i1 [ true, %60 ], [ false, %63 ]
  %67 = phi i8 [ 0, %60 ], [ 1, %63 ]
  %68 = icmp eq ptr %56, null
  br i1 %68, label %97, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.fieldoff, ptr %56, i64 0, i32 2
  %71 = load i8, ptr %70, align 8
  %72 = and i8 %71, 2
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %69
  %75 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %21) #23, !range !36
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %74
  %78 = and i8 %71, 1
  %79 = icmp ne i8 %78, 0
  %80 = or i1 %65, %79
  br i1 %80, label %97, label %81

81:                                               ; preds = %77
  %82 = load i64, ptr %56, align 8, !tbaa !149
  %83 = getelementptr inbounds %struct.fieldoff, ptr %56, i64 0, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !151
  %85 = add nsw i64 %84, %82
  %86 = add nsw i64 %27, %2
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = load ptr, ptr %1, align 8, !tbaa !6
  %90 = tail call fastcc ptr @VEC_fieldoff_s_base_last(ptr noundef %89) #23
  %91 = load ptr, ptr %57, align 8, !tbaa !61
  %92 = getelementptr inbounds %struct.tree_int_cst, ptr %91, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !61
  %94 = getelementptr inbounds %struct.fieldoff, ptr %90, i64 0, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !151
  %96 = add i64 %95, %93
  store i64 %96, ptr %94, align 8, !tbaa !151
  br label %134

97:                                               ; preds = %81, %77, %74, %69, %64
  %98 = tail call fastcc ptr @VEC_fieldoff_s_heap_safe_push(ptr noundef nonnull %1) #23
  %99 = add nsw i64 %27, %2
  store i64 %99, ptr %98, align 8, !tbaa !149
  %100 = getelementptr inbounds %struct.fieldoff, ptr %98, i64 0, i32 2
  %101 = load i8, ptr %100, align 8
  %102 = and i8 %101, -2
  %103 = or disjoint i8 %102, %67
  store i8 %103, ptr %100, align 8
  br i1 %66, label %104, label %108

104:                                              ; preds = %97
  %105 = load ptr, ptr %57, align 8, !tbaa !61
  %106 = getelementptr inbounds %struct.tree_int_cst, ptr %105, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !61
  br label %108

108:                                              ; preds = %97, %104
  %109 = phi i64 [ %107, %104 ], [ -1, %97 ]
  %110 = getelementptr inbounds %struct.fieldoff, ptr %98, i64 0, i32 1
  store i64 %109, ptr %110, align 8
  %111 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %21) #23, !range !36
  %112 = shl nuw nsw i8 %111, 1
  %113 = and i8 %103, -3
  %114 = or disjoint i8 %113, %112
  store i8 %114, ptr %100, align 8
  br i1 %66, label %115, label %127

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !61
  %118 = load i64, ptr %117, align 8
  %119 = trunc i64 %118 to i16
  switch i16 %119, label %127 [
    i16 10, label %120
    i16 12, label %120
  ]

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
  %137 = load ptr, ptr %136, align 8, !tbaa !61
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %20, !llvm.loop !153

139:                                              ; preds = %134, %16, %7, %3
  %140 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %16 ], [ %135, %134 ]
  ret i32 %140
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_vi_for_tree(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = load ptr, ptr @vi_for_tree, align 8, !tbaa !6
  %4 = tail call ptr @pointer_map_insert(ptr noundef %3, ptr noundef %0) #25
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2603, ptr noundef nonnull @.str.27) #25
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %4, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2604, ptr noundef nonnull @.str.27) #25
  br label %11

11:                                               ; preds = %7, %10
  store ptr %1, ptr %4, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_copy_constraint(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8, !tbaa !96
  %3 = zext i32 %2 to i64
  %4 = shl nuw i64 %3, 32
  %5 = tail call fastcc ptr @new_constraint(i64 %4, i64 0, i64 17179869184, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %5) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !154
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_fieldoff_s_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !154
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !6
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sort_fieldstack(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call fastcc ptr @VEC_fieldoff_s_base_address(ptr noundef %0) #23
  %3 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %0) #23
  %4 = zext i32 %3 to i64
  tail call void @spec_qsort(ptr noundef %2, i64 noundef %4, i64 noundef 24, ptr noundef nonnull @fieldoff_compare) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @check_for_overlaps(ptr noundef %0) unnamed_addr #8 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  store ptr null, ptr %2, align 8, !tbaa !6
  %3 = call fastcc i32 @VEC_fieldoff_s_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #23, !range !22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %9

5:                                                ; preds = %9
  %6 = add i32 %11, 1
  %7 = call fastcc i32 @VEC_fieldoff_s_base_iterate(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %2) #23, !range !22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9, !llvm.loop !156

9:                                                ; preds = %1, %5
  %10 = phi i64 [ %13, %5 ], [ -1, %1 ]
  %11 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %12 = load ptr, ptr %2, align 8, !tbaa !6
  %13 = load i64, ptr %12, align 8, !tbaa !149
  %14 = icmp eq i64 %13, %10
  br i1 %14, label %15, label %5

15:                                               ; preds = %9, %5, %1
  %16 = phi i8 [ 0, %1 ], [ 0, %5 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_fieldoff_s_base_index(ptr noundef readnone %0) unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_fieldoff_s_heap_free(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare i32 @asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @insert_into_field_list(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !97
  store ptr %1, ptr %3, align 8, !tbaa !97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @bitpos_of_field(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = tail call i32 @host_integerp(ptr noundef %3, i32 noundef 0) #25
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = tail call i32 @host_integerp(ptr noundef %8, i32 noundef 0) #25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !tbaa !61
  %13 = getelementptr inbounds %struct.tree_int_cst, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !61
  %15 = shl i64 %14, 3
  %16 = load ptr, ptr %7, align 8, !tbaa !61
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %16, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !61
  %19 = add i64 %18, %15
  br label %20

20:                                               ; preds = %1, %6, %11
  %21 = phi i64 [ %19, %11 ], [ -1, %6 ], [ -1, %1 ]
  ret i64 %21
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @VEC_fieldoff_s_base_last(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8, !tbaa !154
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @VEC_fieldoff_s_heap_safe_push(ptr nocapture noundef %0) unnamed_addr #6 {
  tail call fastcc void @VEC_fieldoff_s_heap_reserve(ptr noundef %0) #23
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = tail call fastcc ptr @VEC_fieldoff_s_base_quick_push(ptr noundef %2) #23
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_fieldoff_s_heap_reserve(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = tail call fastcc i32 @VEC_fieldoff_s_base_space(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 24) #25
  store ptr %6, ptr %0, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @VEC_fieldoff_s_base_quick_push(ptr noundef %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8, !tbaa !154
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !154
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_fieldoff_s_base_space(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !157
  %6 = load i32, ptr %0, align 8, !tbaa !154
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
define internal fastcc ptr @VEC_fieldoff_s_base_address(ptr noundef readnone %0) unnamed_addr #16 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @fieldoff_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load i64, ptr %0, align 8, !tbaa !149
  %4 = load i64, ptr %1, align 8, !tbaa !149
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = icmp sgt i64 %3, %4
  br i1 %7, label %17, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.fieldoff, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !151
  %11 = getelementptr inbounds %struct.fieldoff, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !151
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
define internal fastcc noundef ptr @make_constraint_from_heapvar(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !132
  %7 = tail call fastcc ptr @heapvar_lookup(ptr noundef %4, i64 noundef %6) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %11 = tail call ptr @create_tmp_var_raw(ptr noundef %10, ptr noundef %1) #25
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = or i64 %13, 33554432
  store i64 %14, ptr %12, align 8
  %15 = load ptr, ptr %3, align 8, !tbaa !84
  %16 = load i64, ptr %5, align 8, !tbaa !132
  tail call fastcc void @heapvar_insert(ptr noundef %15, i64 noundef %16, ptr noundef %11) #23
  %17 = tail call fastcc ptr @get_var_ann(ptr noundef %11) #23
  %18 = load i8, ptr %17, align 8
  %19 = or i8 %18, 16
  store i8 %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %9, %2
  %21 = phi ptr [ %11, %9 ], [ %7, %2 ]
  %22 = load ptr, ptr @cfun, align 8, !tbaa !6
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
  store i64 0, ptr %31, align 8, !tbaa !132
  %32 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 4
  %33 = or i8 %30, 29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 -1, i64 16, i1 false)
  store i8 %33, ptr %29, align 4
  tail call fastcc void @insert_vi_for_tree(ptr noundef nonnull %21, ptr noundef %28) #23
  %34 = load i32, ptr %28, align 8, !tbaa !96
  tail call fastcc void @make_constraint_from(ptr noundef nonnull %0, i32 noundef %34) #23
  ret ptr %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_constraint_for(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = load ptr, ptr %1, align 8, !tbaa !6
  %4 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %3) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 3229, ptr noundef nonnull @.str.27) #25
  br label %7

7:                                                ; preds = %2, %6
  tail call fastcc void @get_constraint_for_1(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !61
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !158
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #23
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #6 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #23
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #23
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_ce_s_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !160
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !6
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ce_s_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !160
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @VEC_ce_s_base_last(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8, !tbaa !160
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ce_s_base_pop(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8, !tbaa !160
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !160
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !108
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #23
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #23
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_constraint_for_ptr_offset(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #6 {
  %4 = alloca %struct.constraint_expr, align 8
  %5 = alloca %struct.constraint_expr, align 8
  %6 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  %7 = load i8, ptr @use_field_sensitive, align 1, !tbaa !61
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call fastcc void @get_constraint_for(ptr noundef %0, ptr noundef %2) #23
  br label %88

10:                                               ; preds = %3
  %11 = icmp eq ptr %1, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @host_integerp(ptr noundef nonnull %1, i32 noundef 0) #25
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %10
  tail call fastcc void @get_constraint_for(ptr noundef %0, ptr noundef %2) #23
  br label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !61
  %19 = shl nsw i64 %18, 3
  tail call fastcc void @get_constraint_for(ptr noundef %0, ptr noundef %2) #23
  %20 = icmp eq i64 %18, 0
  br i1 %20, label %88, label %21

21:                                               ; preds = %15, %16
  %22 = phi i64 [ -9223372036854775808, %15 ], [ %19, %16 ]
  %23 = load ptr, ptr %2, align 8, !tbaa !6
  %24 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %23) #23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %88, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 1
  %28 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 2
  %29 = icmp eq i64 %22, -9223372036854775808
  %30 = icmp slt i64 %22, 0
  %31 = getelementptr inbounds %struct.constraint_expr, ptr %6, i64 0, i32 1
  %32 = getelementptr inbounds %struct.constraint_expr, ptr %6, i64 0, i32 2
  %33 = getelementptr inbounds %struct.constraint_expr, ptr %5, i64 0, i32 1
  %34 = getelementptr inbounds %struct.constraint_expr, ptr %5, i64 0, i32 2
  br label %35

35:                                               ; preds = %26, %84
  %36 = phi i32 [ 0, %26 ], [ %86, %84 ]
  %37 = load ptr, ptr %2, align 8, !tbaa !6
  %38 = call fastcc ptr @VEC_ce_s_base_index(ptr noundef %37, i32 noundef %36) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %38, i64 16, i1 false), !tbaa.struct !136
  %39 = load i32, ptr %27, align 4, !tbaa !118
  %40 = call fastcc ptr @get_varinfo(i32 noundef %39) #23
  %41 = load i32, ptr %4, align 8, !tbaa !117
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %82

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 1
  %45 = load i8, ptr %44, align 4
  %46 = and i8 %45, 8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %43
  br i1 %29, label %49, label %63

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !84
  %52 = call fastcc ptr @lookup_vi_for_tree(ptr noundef %51) #23
  br label %53

53:                                               ; preds = %59, %49
  %54 = phi ptr [ %52, %49 ], [ %61, %59 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  %55 = load i32, ptr %54, align 8, !tbaa !96
  store i32 %55, ptr %33, align 4, !tbaa !118
  store i32 2, ptr %5, align 8, !tbaa !117
  store i64 0, ptr %34, align 8, !tbaa !119
  %56 = load i32, ptr %27, align 4, !tbaa !118
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %5) #23
  br label %59

59:                                               ; preds = %58, %53
  %60 = getelementptr inbounds %struct.variable_info, ptr %54, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  %62 = icmp eq ptr %61, null
  br i1 %62, label %84, label %53, !llvm.loop !162

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 3
  %65 = load i64, ptr %64, align 8, !tbaa !132
  %66 = add i64 %65, %22
  %67 = icmp ult i64 %65, %66
  %68 = select i1 %30, i1 %67, i1 false
  %69 = select i1 %68, i64 0, i64 %66
  %70 = call fastcc ptr @first_or_preceding_vi_for_offset(ptr noundef nonnull %40, i64 noundef %69) #23
  %71 = getelementptr inbounds %struct.variable_info, ptr %70, i64 0, i32 3
  %72 = load i64, ptr %71, align 8, !tbaa !132
  %73 = icmp eq i64 %72, %69
  br i1 %73, label %80, label %74

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.variable_info, ptr %70, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !97
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  %79 = load i32, ptr %76, align 8, !tbaa !96
  store i32 %79, ptr %31, align 4, !tbaa !118
  store i32 2, ptr %6, align 8, !tbaa !117
  store i64 0, ptr %32, align 8, !tbaa !119
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  br label %80

80:                                               ; preds = %78, %74, %63
  %81 = load i32, ptr %70, align 8, !tbaa !96
  store i32 %81, ptr %27, align 4, !tbaa !118
  br label %82

82:                                               ; preds = %35, %43, %80
  %83 = phi i64 [ 0, %80 ], [ 0, %43 ], [ %22, %35 ]
  store i64 %83, ptr %28, align 8, !tbaa !119
  br label %84

84:                                               ; preds = %59, %82
  %85 = load ptr, ptr %2, align 8, !tbaa !6
  call fastcc void @VEC_ce_s_base_replace(ptr noundef %85, i32 noundef %36, ptr noundef nonnull %4) #23
  %86 = add nuw i32 %36, 1
  %87 = icmp eq i32 %86, %24
  br i1 %87, label %88, label %35, !llvm.loop !163

88:                                               ; preds = %84, %21, %16, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_all_all_constraints(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %5 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %0) #23
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %1) #23
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %36

10:                                               ; preds = %7, %2
  %11 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #23, !range !22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %63, label %13

13:                                               ; preds = %10, %32
  %14 = phi i32 [ %33, %32 ], [ 0, %10 ]
  %15 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #23, !range !22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %3, align 8, !tbaa !6
  %19 = getelementptr inbounds { i64, i64 }, ptr %18, i64 0, i32 1
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i32 [ 0, %17 ], [ %29, %20 ]
  %22 = load ptr, ptr %4, align 8, !tbaa !6
  %23 = load i64, ptr %18, align 8
  %24 = load i64, ptr %19, align 8
  %25 = load i64, ptr %22, align 8
  %26 = getelementptr inbounds { i64, i64 }, ptr %22, i64 0, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = tail call fastcc ptr @new_constraint(i64 %23, i64 %24, i64 %25, i64 %27) #23
  tail call fastcc void @process_constraint(ptr noundef %28) #23
  %29 = add i32 %21, 1
  %30 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %1, i32 noundef %29, ptr noundef nonnull %4) #23, !range !22
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %20, !llvm.loop !164

32:                                               ; preds = %20, %13
  %33 = add i32 %14, 1
  %34 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %0, i32 noundef %33, ptr noundef nonnull %3) #23, !range !22
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %63, label %13, !llvm.loop !165

36:                                               ; preds = %7
  %37 = tail call fastcc i64 @new_scalar_tmp_constraint_exp(ptr noundef nonnull @.str.63) #23
  %38 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #23, !range !22
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %43, %36
  %41 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #23, !range !22
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %63, label %53

43:                                               ; preds = %36, %43
  %44 = phi i32 [ %50, %43 ], [ 0, %36 ]
  %45 = load ptr, ptr %4, align 8, !tbaa !6
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds { i64, i64 }, ptr %45, i64 0, i32 1
  %48 = load i64, ptr %47, align 8
  %49 = tail call fastcc ptr @new_constraint(i64 %37, i64 0, i64 %46, i64 %48) #23
  tail call fastcc void @process_constraint(ptr noundef %49) #23
  %50 = add i32 %44, 1
  %51 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %1, i32 noundef %50, ptr noundef nonnull %4) #23, !range !22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %40, label %43, !llvm.loop !166

53:                                               ; preds = %40, %53
  %54 = phi i32 [ %60, %53 ], [ 0, %40 ]
  %55 = load ptr, ptr %3, align 8, !tbaa !6
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds { i64, i64 }, ptr %55, i64 0, i32 1
  %58 = load i64, ptr %57, align 8
  %59 = tail call fastcc ptr @new_constraint(i64 %56, i64 %58, i64 %37, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %59) #23
  %60 = add i32 %54, 1
  %61 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %0, i32 noundef %60, ptr noundef nonnull %3) #23, !range !22
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %53, !llvm.loop !167

63:                                               ; preds = %53, %32, %40, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ce_s_heap_free(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_deref(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #23, !range !22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %1, %22
  %7 = phi i32 [ %23, %22 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !6
  %9 = load i32, ptr %8, align 8, !tbaa !117
  switch i32 %9, label %21 [
    i32 0, label %10
    i32 2, label %11
    i32 1, label %12
  ]

10:                                               ; preds = %6
  store i32 1, ptr %8, align 8, !tbaa !117
  br label %22

11:                                               ; preds = %6
  store i32 0, ptr %8, align 8, !tbaa !117
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
  store i32 %19, ptr %20, align 4, !tbaa !118
  br label %22

21:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 3090, ptr noundef nonnull @.str.27) #25
  br label %22

22:                                               ; preds = %10, %12, %21, %11
  %23 = add i32 %7, 1
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %24, i32 noundef %23, ptr noundef nonnull %2) #23, !range !22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %6, !llvm.loop !168

27:                                               ; preds = %22, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_vi_for_tree(ptr noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr @vi_for_tree, align 8, !tbaa !6
  %3 = tail call ptr @pointer_map_contains(ptr noundef %2, ptr noundef %0) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_const_call(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
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
  store i32 5, ptr %10, align 4, !tbaa !118
  %11 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 2
  store i64 0, ptr %11, align 8, !tbaa !119
  store i32 0, ptr %3, align 8, !tbaa !117
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #23
  br label %12

12:                                               ; preds = %8, %2
  %13 = call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %12, %31
  %16 = phi i32 [ %32, %31 ], [ 0, %12 ]
  %17 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %16) #23
  %18 = call fastcc zeroext i8 @could_have_pointers(ptr noundef %17) #23, !range !36
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call fastcc void @get_constraint_for(ptr noundef %17, ptr noundef nonnull %4) #23
  %21 = load ptr, ptr %4, align 8
  %22 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %5) #23, !range !22
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20, %24
  %25 = phi i32 [ %27, %24 ], [ 0, %20 ]
  %26 = load ptr, ptr %5, align 8, !tbaa !6
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef %26) #23
  %27 = add i32 %25, 1
  %28 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %21, i32 noundef %27, ptr noundef nonnull %5) #23, !range !22
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %24, !llvm.loop !169

30:                                               ; preds = %24, %20
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  br label %31

31:                                               ; preds = %30, %15
  %32 = add nuw i32 %16, 1
  %33 = call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %15, label %35, !llvm.loop !170

35:                                               ; preds = %31, %12
  %36 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 1
  store i32 4, ptr %36, align 4, !tbaa !118
  %37 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 2
  store i64 0, ptr %37, align 8, !tbaa !119
  store i32 2, ptr %3, align 8, !tbaa !117
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_pure_call(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %4 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2, %13
  %7 = phi i32 [ %15, %13 ], [ 0, %2 ]
  %8 = phi i8 [ %14, %13 ], [ 0, %2 ]
  %9 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %7) #23
  %10 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %9) #23, !range !36
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
  br i1 %17, label %6, label %18, !llvm.loop !171

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
  store i32 5, ptr %29, align 4, !tbaa !118
  %30 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 2
  store i64 0, ptr %30, align 8, !tbaa !119
  store i32 0, ptr %3, align 8, !tbaa !117
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #23
  br label %31

31:                                               ; preds = %21, %28, %26
  %32 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 1
  store i32 4, ptr %32, align 4, !tbaa !118
  %33 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 2
  store i64 0, ptr %33, align 8, !tbaa !119
  store i32 0, ptr %3, align 8, !tbaa !117
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_rhs_call(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = alloca %struct.constraint_expr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %6 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2, %14
  %9 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %10 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %9) #23
  %11 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %10) #23, !range !36
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @make_escape_constraint(ptr noundef %10) #23
  br label %14

14:                                               ; preds = %13, %8
  %15 = add nuw i32 %9, 1
  %16 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %8, label %18, !llvm.loop !172

18:                                               ; preds = %14, %2
  %19 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #23
  tail call fastcc void @make_escape_constraint(ptr noundef %22) #23
  br label %23

23:                                               ; preds = %21, %18
  %24 = tail call fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr noundef %0) #23, !range !36
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %52, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %28 = icmp eq ptr %27, null
  br i1 %28, label %52, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %31 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !61
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 262144
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %37 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  call fastcc void @get_constraint_for_address_of(ptr noundef %37, ptr noundef nonnull %4) #23
  %38 = load ptr, ptr %4, align 8
  %39 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %38, i32 noundef 0, ptr noundef nonnull %5) #23, !range !22
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36, %41
  %42 = phi i32 [ %48, %41 ], [ 0, %36 ]
  %43 = load ptr, ptr %5, align 8, !tbaa !6
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds { i64, i64 }, ptr %43, i64 0, i32 1
  %46 = load i64, ptr %45, align 8
  %47 = tail call fastcc ptr @new_constraint(i64 12884901888, i64 0, i64 %44, i64 %46) #23
  tail call fastcc void @process_constraint(ptr noundef %47) #23
  %48 = add i32 %42, 1
  %49 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %38, i32 noundef %48, ptr noundef nonnull %5) #23, !range !22
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %41, !llvm.loop !173

51:                                               ; preds = %41, %36
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  br label %52

52:                                               ; preds = %51, %29, %26, %23
  %53 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 1
  store i32 4, ptr %53, align 4, !tbaa !118
  %54 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 2
  store i64 0, ptr %54, align 8, !tbaa !119
  store i32 0, ptr %3, align 8, !tbaa !117
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_lhs_call(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3) unnamed_addr #6 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !6
  call fastcc void @get_constraint_for(ptr noundef %0, ptr noundef nonnull %5) #23
  %7 = and i32 %1, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @get_vi_for_tree(ptr noundef %0) #23
  %11 = tail call fastcc ptr @make_constraint_from_heapvar(ptr noundef %10, ptr noundef nonnull @.str.65) #23
  %12 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !84
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
  %37 = load i32, ptr %36, align 4, !tbaa !30
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %31) #23, !range !36
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  %43 = getelementptr inbounds %struct.constraint_expr, ptr %6, i64 0, i32 1
  store i32 3, ptr %43, align 4, !tbaa !118
  %44 = getelementptr inbounds %struct.constraint_expr, ptr %6, i64 0, i32 2
  store i64 0, ptr %44, align 8, !tbaa !119
  store i32 0, ptr %6, align 8, !tbaa !117
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  br label %45

45:                                               ; preds = %42, %39, %33, %30
  %46 = load ptr, ptr %5, align 8, !tbaa !6
  call fastcc void @process_all_all_constraints(ptr noundef %46, ptr noundef %2) #23
  br label %47

47:                                               ; preds = %21, %26, %27, %45
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #23
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_vi_for_offset(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !134
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !132
  %9 = icmp ugt i64 %8, %1
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !84
  %13 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef %12) #23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %6, %10
  %16 = phi ptr [ %0, %6 ], [ %13, %10 ]
  br label %17

17:                                               ; preds = %15, %27
  %18 = phi ptr [ %29, %27 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.variable_info, ptr %18, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !132
  %21 = icmp ugt i64 %20, %1
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = sub i64 %1, %20
  %24 = getelementptr inbounds %struct.variable_info, ptr %18, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !133
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %22, %17
  %28 = getelementptr inbounds %struct.variable_info, ptr %18, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !97
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %17, !llvm.loop !174

31:                                               ; preds = %22, %27, %10, %2
  %32 = phi ptr [ null, %2 ], [ null, %10 ], [ %18, %22 ], [ null, %27 ]
  ret ptr %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !108
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !61
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_structure_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
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
  store ptr null, ptr %4, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !6
  call fastcc void @get_constraint_for(ptr noundef %0, ptr noundef nonnull %4) #23
  call fastcc void @get_constraint_for(ptr noundef %1, ptr noundef nonnull %5) #23
  %12 = load ptr, ptr %4, align 8
  %13 = tail call fastcc ptr @VEC_ce_s_base_index(ptr noundef %12, i32 noundef 0) #23
  store ptr %13, ptr %3, align 8, !tbaa !6
  %14 = load ptr, ptr %5, align 8
  %15 = tail call fastcc ptr @VEC_ce_s_base_index(ptr noundef %14, i32 noundef 0) #23
  %16 = load i32, ptr %13, align 8, !tbaa !117
  switch i32 %16, label %21 [
    i32 1, label %27
    i32 2, label %17
  ]

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.constraint_expr, ptr %13, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !118
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %27, label %24

21:                                               ; preds = %2
  %22 = load i32, ptr %15, align 8, !tbaa !117
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %28

24:                                               ; preds = %17
  %25 = load i32, ptr %15, align 8, !tbaa !117
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
  %34 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %3) #23, !range !22
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %106, label %36

36:                                               ; preds = %31
  %37 = load i64, ptr %11, align 8, !tbaa !46
  %38 = load i64, ptr %8, align 8, !tbaa !46
  br label %39

39:                                               ; preds = %36, %101
  %40 = phi i64 [ %80, %101 ], [ %38, %36 ]
  %41 = phi i64 [ %81, %101 ], [ %37, %36 ]
  %42 = phi i32 [ %103, %101 ], [ 0, %36 ]
  %43 = phi i32 [ %102, %101 ], [ 0, %36 ]
  %44 = call fastcc ptr @VEC_ce_s_base_index(ptr noundef %14, i32 noundef %43) #23
  %45 = load ptr, ptr %3, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.constraint_expr, ptr %45, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !118
  %48 = call fastcc ptr @get_varinfo(i32 noundef %47) #23
  %49 = getelementptr inbounds %struct.constraint_expr, ptr %44, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !118
  %51 = call fastcc ptr @get_varinfo(i32 noundef %50) #23
  %52 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 1
  %53 = load i8, ptr %52, align 4
  %54 = and i8 %53, 64
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 3
  %58 = load i64, ptr %57, align 8, !tbaa !132
  %59 = add i64 %41, %58
  %60 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 4
  %61 = load i64, ptr %60, align 8, !tbaa !133
  %62 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 3
  %63 = load i64, ptr %62, align 8, !tbaa !132
  %64 = add i64 %40, %63
  %65 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 4
  %66 = load i64, ptr %65, align 8, !tbaa !133
  %67 = call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %59, i64 noundef %61, i64 noundef %64, i64 noundef %66) #23, !range !36
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
  %77 = load i64, ptr %11, align 8, !tbaa !46
  %78 = load i64, ptr %8, align 8, !tbaa !46
  br label %79

79:                                               ; preds = %69, %56, %39
  %80 = phi i64 [ %78, %69 ], [ %40, %56 ], [ %40, %39 ]
  %81 = phi i64 [ %77, %69 ], [ %41, %56 ], [ %41, %39 ]
  %82 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 3
  %83 = load i64, ptr %82, align 8, !tbaa !132
  %84 = add i64 %81, %83
  %85 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 4
  %86 = load i64, ptr %85, align 8, !tbaa !133
  %87 = add i64 %84, %86
  %88 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 3
  %89 = load i64, ptr %88, align 8, !tbaa !132
  %90 = add i64 %80, %89
  %91 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 4
  %92 = load i64, ptr %91, align 8, !tbaa !133
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
  %104 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %12, i32 noundef %103, ptr noundef nonnull %3) #23, !range !22
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
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #23, !range !116
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #23, !range !108
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

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
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #23
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #23
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !108
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
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #23, !range !116
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #25
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !6
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ce_s_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #6 {
  tail call fastcc void @VEC_ce_s_heap_reserve(ptr noundef %0) #23
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @VEC_ce_s_base_quick_push(ptr noundef %3, ptr noundef %1) #23
  ret void
}

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_escape_constraint(ptr noundef %0) unnamed_addr #6 {
  tail call fastcc void @make_constraint_to(i32 noundef 3, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #23, !range !36
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #23, !range !116
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
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_noutputs(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !61
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !61
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 2655, ptr noundef nonnull @.str.27) #25
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !61
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
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !61
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !61
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
define internal fastcc void @get_constraint_for_1(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #6 {
  %4 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  %5 = load i32, ptr @flag_delete_null_pointer_checks, align 4, !tbaa !30
  %6 = icmp eq i32 %5, 0
  %7 = load i64, ptr %0, align 8
  br i1 %6, label %24, label %8

8:                                                ; preds = %3
  %9 = and i64 %7, 65535
  %10 = icmp eq i64 %9, 23
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = tail call i32 @integer_zerop(ptr noundef nonnull %0) #25
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i64, ptr %0, align 8
  %16 = and i64 %15, 65535
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i64 [ %16, %14 ], [ %9, %8 ]
  %19 = phi i64 [ %15, %14 ], [ %7, %8 ]
  %20 = icmp eq i64 %18, 51
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %11
  %22 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 1
  store i32 0, ptr %22, align 4, !tbaa !118
  store i32 2, ptr %4, align 8, !tbaa !117
  %23 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 2
  store i64 0, ptr %23, align 8, !tbaa !119
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %4) #23
  br label %57

24:                                               ; preds = %17, %3
  %25 = phi i64 [ %19, %17 ], [ %7, %3 ]
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 28
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 1
  store i32 2, ptr %30, align 4, !tbaa !118
  store i32 0, ptr %4, align 8, !tbaa !117
  %31 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 2
  store i64 0, ptr %31, align 8, !tbaa !119
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %4) #23
  br label %57

32:                                               ; preds = %24
  %33 = and i64 %25, 65535
  %34 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !30
  switch i32 %35, label %54 [
    i32 10, label %36
    i32 4, label %41
    i32 0, label %50
    i32 3, label %53
  ]

36:                                               ; preds = %32
  %37 = icmp eq i32 %27, 121
  br i1 %37, label %38, label %54

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !61
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
  ]

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !61
  tail call fastcc void @get_constraint_for_1(ptr noundef %45, ptr noundef %1, i8 noundef zeroext %2) #23
  tail call fastcc void @do_deref(ptr noundef %1) #23
  br label %57

46:                                               ; preds = %41, %41, %41
  tail call fastcc void @get_constraint_for_component_ref(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %2) #23
  br label %57

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !61
  tail call fastcc void @get_constraint_for_1(ptr noundef %49, ptr noundef %1, i8 noundef zeroext %2) #23
  br label %57

50:                                               ; preds = %32
  %51 = icmp eq i32 %27, 141
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  tail call fastcc void @get_constraint_for_ssa_var(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %2) #23
  br label %57

53:                                               ; preds = %32
  tail call fastcc void @get_constraint_for_ssa_var(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %2) #23
  br label %57

54:                                               ; preds = %32, %50, %41, %36
  store i32 2, ptr %4, align 8, !tbaa !117
  %55 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 1
  store i32 1, ptr %55, align 4, !tbaa !118
  %56 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 2
  store i64 0, ptr %56, align 8, !tbaa !119
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %4) #23
  br label %57

57:                                               ; preds = %54, %53, %52, %47, %46, %43, %38, %29, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_constraint_for_address_of(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  tail call fastcc void @get_constraint_for_1(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #23
  %4 = load ptr, ptr %1, align 8, !tbaa !6
  %5 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %3) #23, !range !22
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %2 ]
  %9 = load ptr, ptr %3, align 8, !tbaa !6
  %10 = load i32, ptr %9, align 8, !tbaa !117
  %11 = icmp eq i32 %10, 1
  %12 = select i1 %11, i32 0, i32 2
  store i32 %12, ptr %9, align 8, !tbaa !117
  %13 = add i32 %8, 1
  %14 = load ptr, ptr %1, align 8, !tbaa !6
  %15 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %14, i32 noundef %13, ptr noundef nonnull %3) #23, !range !22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %7, !llvm.loop !175

17:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_constraint_for_component_ref(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #6 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.constraint_expr, align 8
  %8 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store i64 -1, ptr %4, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  store i64 -1, ptr %5, align 8, !tbaa !46
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
  ]

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %18 [
    i16 32, label %26
    i16 34, label %26
    i16 36, label %26
  ]

18:                                               ; preds = %13, %9
  %19 = and i64 %11, 65535
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !30
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !61
  br label %9, !llvm.loop !176

26:                                               ; preds = %13, %13, %13, %9, %9, %9, %18
  %27 = and i64 %11, 65535
  %28 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !30
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = tail call i32 @integer_zerop(ptr noundef nonnull %10) #25
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #24
  %35 = getelementptr inbounds %struct.constraint_expr, ptr %7, i64 0, i32 2
  store i64 0, ptr %35, align 8, !tbaa !119
  %36 = getelementptr inbounds %struct.constraint_expr, ptr %7, i64 0, i32 1
  store i32 7, ptr %36, align 4, !tbaa !118
  store i32 0, ptr %7, align 8, !tbaa !117
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #24
  br label %160

37:                                               ; preds = %31, %26
  %38 = call ptr @get_ref_base_and_extent(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  call fastcc void @get_constraint_for_1(ptr noundef %38, ptr noundef %1, i8 noundef zeroext 1) #23
  %39 = load ptr, ptr %1, align 8, !tbaa !6
  %40 = call fastcc i32 @VEC_ce_s_base_length(ptr noundef %39) #23
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2973, ptr noundef nonnull @.str.27) #25
  %43 = load ptr, ptr %1, align 8, !tbaa !6
  br label %44

44:                                               ; preds = %37, %42
  %45 = phi ptr [ %39, %37 ], [ %43, %42 ]
  %46 = call fastcc ptr @VEC_ce_s_base_last(ptr noundef %45) #23
  %47 = load i32, ptr %46, align 8, !tbaa !117
  switch i32 %47, label %159 [
    i32 0, label %48
    i32 2, label %156
    i32 1, label %137
  ]

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !118
  %51 = call fastcc ptr @get_varinfo(i32 noundef %50) #23
  %52 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 1
  %53 = load i8, ptr %52, align 4
  %54 = and i8 %53, 8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 2
  store i64 0, ptr %57, align 8, !tbaa !119
  br label %160

58:                                               ; preds = %48
  %59 = load i64, ptr %6, align 8, !tbaa !46
  %60 = call fastcc ptr @get_varinfo(i32 noundef %50) #23
  %61 = getelementptr inbounds %struct.variable_info, ptr %60, i64 0, i32 5
  %62 = load i64, ptr %61, align 8, !tbaa !134
  %63 = icmp ult i64 %59, %62
  %64 = load i64, ptr %5, align 8
  %65 = icmp ne i64 %64, 0
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %119

67:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #24
  %68 = load i64, ptr %46, align 8
  store i64 %68, ptr %8, align 8
  call fastcc void @VEC_ce_s_base_pop(ptr noundef %45) #23
  %69 = getelementptr inbounds %struct.constraint_expr, ptr %8, i64 0, i32 2
  store i64 0, ptr %69, align 8, !tbaa !119
  %70 = getelementptr inbounds %struct.constraint_expr, ptr %8, i64 0, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !118
  %72 = call fastcc ptr @get_varinfo(i32 noundef %71) #23
  %73 = icmp eq ptr %72, null
  br i1 %73, label %92, label %74

74:                                               ; preds = %67
  %75 = icmp eq i8 %2, 0
  br label %76

76:                                               ; preds = %74, %88
  %77 = phi ptr [ %72, %74 ], [ %90, %88 ]
  %78 = getelementptr inbounds %struct.variable_info, ptr %77, i64 0, i32 3
  %79 = load i64, ptr %78, align 8, !tbaa !132
  %80 = getelementptr inbounds %struct.variable_info, ptr %77, i64 0, i32 4
  %81 = load i64, ptr %80, align 8, !tbaa !133
  %82 = load i64, ptr %6, align 8, !tbaa !46
  %83 = load i64, ptr %5, align 8, !tbaa !46
  %84 = call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %79, i64 noundef %81, i64 noundef %82, i64 noundef %83) #23, !range !36
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %76
  %87 = load i32, ptr %77, align 8, !tbaa !96
  store i32 %87, ptr %70, align 4, !tbaa !118
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %8) #23
  br i1 %75, label %88, label %96

88:                                               ; preds = %86, %76
  %89 = getelementptr inbounds %struct.variable_info, ptr %77, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !97
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %76, !llvm.loop !177

92:                                               ; preds = %88, %67
  %93 = icmp eq i8 %2, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %92
  %95 = load ptr, ptr %1, align 8, !tbaa !6
  br label %110

96:                                               ; preds = %86, %92
  %97 = load ptr, ptr %1, align 8, !tbaa !6
  %98 = call fastcc i32 @VEC_ce_s_base_length(ptr noundef %97) #23
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load i32, ptr %70, align 4, !tbaa !118
  %102 = call fastcc ptr @get_varinfo(i32 noundef %101) #23
  br label %103

103:                                              ; preds = %103, %100
  %104 = phi ptr [ %102, %100 ], [ %106, %103 ]
  %105 = getelementptr inbounds %struct.variable_info, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !97
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %103, !llvm.loop !178

108:                                              ; preds = %103
  %109 = load i32, ptr %104, align 8, !tbaa !96
  store i32 %109, ptr %70, align 4, !tbaa !118
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %8) #23
  br label %118

110:                                              ; preds = %94, %96
  %111 = phi ptr [ %95, %94 ], [ %97, %96 ]
  %112 = call fastcc i32 @VEC_ce_s_base_length(ptr noundef %111) #23
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = call fastcc zeroext i8 @ref_contains_array_ref(ptr noundef %0) #23, !range !36
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
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %122 = icmp eq ptr %121, null
  br i1 %120, label %123, label %130

123:                                              ; preds = %119
  br i1 %122, label %160, label %124

124:                                              ; preds = %123
  %125 = load i32, ptr @dump_flags, align 4, !tbaa !30
  %126 = and i32 %125, 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %160, label %128

128:                                              ; preds = %124
  %129 = call i64 @fwrite(ptr nonnull @.str.60, i64 47, i64 1, ptr nonnull %121)
  br label %160

130:                                              ; preds = %119
  br i1 %122, label %160, label %131

131:                                              ; preds = %130
  %132 = load i32, ptr @dump_flags, align 4, !tbaa !30
  %133 = and i32 %132, 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %160, label %135

135:                                              ; preds = %131
  %136 = call i64 @fwrite(ptr nonnull @.str.61, i64 45, i64 1, ptr nonnull %121)
  br label %160

137:                                              ; preds = %44
  %138 = load i64, ptr %6, align 8, !tbaa !46
  %139 = icmp eq i64 %138, -1
  br i1 %139, label %152, label %140

140:                                              ; preds = %137
  %141 = load i64, ptr %4, align 8, !tbaa !46
  %142 = load i64, ptr %5, align 8, !tbaa !46
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !61
  %147 = load i64, ptr %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = and i32 %148, 65535
  %150 = add nsw i32 %149, -15
  %151 = icmp ult i32 %150, 4
  br i1 %151, label %152, label %154

152:                                              ; preds = %144, %140, %137
  %153 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 2
  store i64 -9223372036854775808, ptr %153, align 8, !tbaa !119
  br label %160

154:                                              ; preds = %144
  %155 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 2
  store i64 %138, ptr %155, align 8, !tbaa !119
  br label %160

156:                                              ; preds = %44
  store i32 0, ptr %46, align 8, !tbaa !117
  %157 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 1
  store i32 1, ptr %157, align 4, !tbaa !118
  %158 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 2
  store i64 0, ptr %158, align 8, !tbaa !119
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
define internal fastcc void @get_constraint_for_ssa_var(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #6 {
  %4 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %12 [
    i16 32, label %19
    i16 34, label %19
    i16 36, label %19
    i16 141, label %7
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %12 [
    i16 32, label %19
    i16 34, label %19
    i16 36, label %19
  ]

12:                                               ; preds = %7, %3
  %13 = and i64 %5, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !30
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2699, ptr noundef nonnull @.str.27) #25
  %18 = load i64, ptr %0, align 8
  br label %19

19:                                               ; preds = %7, %7, %7, %3, %3, %3, %12, %17
  %20 = phi i64 [ %5, %7 ], [ %5, %7 ], [ %5, %7 ], [ %5, %3 ], [ %5, %3 ], [ %5, %3 ], [ %5, %12 ], [ %18, %17 ]
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !61
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp ne i64 %27, 34
  %29 = and i64 %20, 4294967296
  %30 = icmp eq i64 %29, 0
  %31 = or i1 %30, %28
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  tail call fastcc void @get_constraint_for_ssa_var(ptr noundef nonnull %25, ptr noundef %1, i8 noundef zeroext %2) #23
  br label %58

33:                                               ; preds = %23, %19
  %34 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %0) #23
  %35 = load i32, ptr %34, align 8, !tbaa !96
  %36 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 1
  store i32 %35, ptr %36, align 4, !tbaa !118
  store i32 0, ptr %4, align 8, !tbaa !117
  %37 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 2
  store i64 0, ptr %37, align 8, !tbaa !119
  %38 = icmp eq i32 %35, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i64, ptr %0, align 8
  %41 = and i64 %40, 1048576
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2719, ptr noundef nonnull @.str.27) #25
  store i32 2, ptr %4, align 8, !tbaa !117
  store i32 2, ptr %36, align 4, !tbaa !118
  br label %44

44:                                               ; preds = %43, %39, %33
  %45 = icmp eq i8 %2, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.variable_info, ptr %34, i64 0, i32 1
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46, %51
  %52 = phi ptr [ %55, %51 ], [ %34, %46 ]
  %53 = load i32, ptr %52, align 8, !tbaa !96
  store i32 %53, ptr %36, align 4, !tbaa !118
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %4) #23
  %54 = getelementptr inbounds %struct.variable_info, ptr %52, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !97
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %51, !llvm.loop !179

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
define internal fastcc noundef zeroext i8 @ranges_overlap_p(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #16 {
  %5 = icmp ult i64 %0, %2
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = icmp eq i64 %3, -1
  %8 = add i64 %3, %2
  %9 = icmp ugt i64 %8, %0
  %10 = or i1 %7, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %6, %4
  %12 = icmp ult i64 %2, %0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = icmp eq i64 %1, -1
  %15 = add i64 %1, %0
  %16 = icmp ugt i64 %15, %2
  %17 = or i1 %14, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %11
  br label %19

19:                                               ; preds = %13, %6, %18
  %20 = phi i8 [ 0, %18 ], [ 1, %6 ], [ 1, %13 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ref_contains_array_ref(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #23, !range !36
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
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  %14 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %13) #23, !range !36
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %6, !llvm.loop !180

16:                                               ; preds = %11, %6
  %17 = phi i8 [ 1, %6 ], [ 0, %11 ]
  ret i8 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
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
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 3103, ptr noundef nonnull @.str.27) #25
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !36
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #23
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !108
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #23
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !46
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.27) #25
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !108
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #23
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #16 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !30
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_ce_s_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #16 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_or_preceding_vi_for_offset(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !132
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !84
  %9 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef %8) #23
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi ptr [ %0, %2 ], [ %9, %6 ]
  br label %12

12:                                               ; preds = %10, %21
  %13 = phi ptr [ %15, %21 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.variable_info, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.variable_info, ptr %13, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !132
  %20 = icmp ugt i64 %19, %1
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = sub i64 %1, %19
  %23 = getelementptr inbounds %struct.variable_info, ptr %13, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !133
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %12, !llvm.loop !181

26:                                               ; preds = %17, %12, %21
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ce_s_base_replace(ptr noundef writeonly %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #5 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 2, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !136
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_chain(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_constraint_to(i32 noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %5 = zext nneg i32 %0 to i64
  %6 = shl nuw nsw i64 %5, 32
  call fastcc void @get_constraint_for(ptr noundef %1, ptr noundef nonnull %3) #23
  %7 = load ptr, ptr %3, align 8
  %8 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %4) #23, !range !22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2, %10
  %11 = phi i32 [ %17, %10 ], [ 0, %2 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !6
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, ptr %12, i64 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = tail call fastcc ptr @new_constraint(i64 %6, i64 0, i64 %13, i64 %15) #23
  tail call fastcc void @process_constraint(ptr noundef %16) #23
  %17 = add i32 %11, 1
  %18 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %7, i32 noundef %17, ptr noundef nonnull %4) #23, !range !22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %10, !llvm.loop !182

20:                                               ; preds = %10, %2
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 18
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !108
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1446, ptr noundef nonnull @.str.27) #25
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #16 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !61
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ce_s_heap_reserve(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = tail call fastcc i32 @VEC_ce_s_base_space(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 16) #25
  store ptr %6, ptr %0, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ce_s_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 8, !tbaa !160
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !160
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !136
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ce_s_base_space(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !183
  %6 = load i32, ptr %0, align 8, !tbaa !160
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !184
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !185
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !187
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_graph(i32 noundef %0) unnamed_addr #6 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 128) #25
  store ptr %2, ptr @graph, align 8, !tbaa !6
  store i32 %0, ptr %2, align 8, !tbaa !27
  %3 = zext i32 %0 to i64
  %4 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 8) #25
  %5 = load ptr, ptr @graph, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %5, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !90
  %7 = load i32, ptr %5, align 8, !tbaa !27
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  %10 = tail call ptr @xmalloc(i64 noundef %9) #25
  %11 = load ptr, ptr @graph, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.constraint_graph, ptr %11, i64 0, i32 4
  store ptr %10, ptr %12, align 8, !tbaa !93
  %13 = load i32, ptr %11, align 8, !tbaa !27
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 2
  %16 = tail call ptr @xmalloc(i64 noundef %15) #25
  %17 = load ptr, ptr @graph, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.constraint_graph, ptr %17, i64 0, i32 5
  store ptr %16, ptr %18, align 8, !tbaa !29
  %19 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 8) #25
  %20 = load ptr, ptr @graph, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.constraint_graph, ptr %20, i64 0, i32 15
  store ptr %19, ptr %21, align 8, !tbaa !88
  %22 = load i32, ptr %20, align 8, !tbaa !27
  %23 = zext i32 %22 to i64
  %24 = tail call ptr @xcalloc(i64 noundef %23, i64 noundef 4) #25
  %25 = load ptr, ptr @graph, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.constraint_graph, ptr %25, i64 0, i32 7
  store ptr %24, ptr %26, align 8, !tbaa !91
  %27 = load i32, ptr %25, align 8, !tbaa !27
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 2
  %30 = tail call ptr @xmalloc(i64 noundef %29) #25
  %31 = load ptr, ptr @graph, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct.constraint_graph, ptr %31, i64 0, i32 8
  store ptr %30, ptr %32, align 8, !tbaa !92
  %33 = load i32, ptr %31, align 8, !tbaa !27
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.constraint_graph, ptr %31, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !29
  %38 = getelementptr inbounds %struct.constraint_graph, ptr %31, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !93
  br label %40

40:                                               ; preds = %35, %40
  %41 = phi i64 [ 0, %35 ], [ %46, %40 ]
  %42 = getelementptr inbounds i32, ptr %37, i64 %41
  %43 = trunc i64 %41 to i32
  store i32 %43, ptr %42, align 4, !tbaa !30
  %44 = getelementptr inbounds i32, ptr %30, i64 %41
  store i32 -1, ptr %44, align 4, !tbaa !30
  %45 = getelementptr inbounds i32, ptr %39, i64 %41
  store i32 -1, ptr %45, align 4, !tbaa !30
  %46 = add nuw nsw i64 %41, 1
  %47 = load i32, ptr %31, align 8, !tbaa !27
  %48 = zext i32 %47 to i64
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %40, label %50, !llvm.loop !189

50:                                               ; preds = %40, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_pred_graph() unnamed_addr #6 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  %2 = load ptr, ptr @graph, align 8, !tbaa !6
  %3 = load i32, ptr %2, align 8, !tbaa !27
  %4 = zext i32 %3 to i64
  %5 = tail call ptr @xcalloc(i64 noundef %4, i64 noundef 8) #25
  %6 = load ptr, ptr @graph, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.constraint_graph, ptr %6, i64 0, i32 2
  store ptr %5, ptr %7, align 8, !tbaa !190
  %8 = load i32, ptr %6, align 8, !tbaa !27
  %9 = zext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 8) #25
  %11 = load ptr, ptr @graph, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.constraint_graph, ptr %11, i64 0, i32 3
  store ptr %10, ptr %12, align 8, !tbaa !191
  %13 = load i32, ptr %11, align 8, !tbaa !27
  %14 = zext i32 %13 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 4) #25
  %16 = load ptr, ptr @graph, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.constraint_graph, ptr %16, i64 0, i32 9
  store ptr %15, ptr %17, align 8, !tbaa !192
  %18 = load i32, ptr %16, align 8, !tbaa !27
  %19 = zext i32 %18 to i64
  %20 = tail call ptr @xcalloc(i64 noundef %19, i64 noundef 4) #25
  %21 = load ptr, ptr @graph, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.constraint_graph, ptr %21, i64 0, i32 10
  store ptr %20, ptr %22, align 8, !tbaa !193
  %23 = load i32, ptr %21, align 8, !tbaa !27
  %24 = zext i32 %23 to i64
  %25 = tail call ptr @xcalloc(i64 noundef %24, i64 noundef 8) #25
  %26 = load ptr, ptr @graph, align 8, !tbaa !6
  %27 = getelementptr inbounds %struct.constraint_graph, ptr %26, i64 0, i32 11
  store ptr %25, ptr %27, align 8, !tbaa !194
  %28 = load i32, ptr %26, align 8, !tbaa !27
  %29 = zext i32 %28 to i64
  %30 = tail call ptr @xcalloc(i64 noundef %29, i64 noundef 8) #25
  %31 = load ptr, ptr @graph, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct.constraint_graph, ptr %31, i64 0, i32 12
  store ptr %30, ptr %32, align 8, !tbaa !195
  %33 = load i32, ptr %31, align 8, !tbaa !27
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 2
  %36 = tail call ptr @xmalloc(i64 noundef %35) #25
  %37 = load ptr, ptr @graph, align 8, !tbaa !6
  %38 = getelementptr inbounds %struct.constraint_graph, ptr %37, i64 0, i32 6
  store ptr %36, ptr %38, align 8, !tbaa !196
  %39 = load i32, ptr %37, align 8, !tbaa !27
  %40 = tail call ptr @sbitmap_alloc(i32 noundef %39) #25
  %41 = load ptr, ptr @graph, align 8, !tbaa !6
  %42 = getelementptr inbounds %struct.constraint_graph, ptr %41, i64 0, i32 13
  store ptr %40, ptr %42, align 8, !tbaa !197
  %43 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %44 = load ptr, ptr @graph, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.constraint_graph, ptr %44, i64 0, i32 14
  store ptr %43, ptr %45, align 8, !tbaa !198
  %46 = getelementptr inbounds %struct.constraint_graph, ptr %44, i64 0, i32 13
  %47 = load ptr, ptr %46, align 8, !tbaa !197
  tail call void @sbitmap_zero(ptr noundef %47) #25
  %48 = load ptr, ptr @varmap, align 8
  %49 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %48) #23
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %72, %0
  %52 = phi ptr [ %48, %0 ], [ %73, %72 ]
  %53 = load ptr, ptr @graph, align 8, !tbaa !6
  %54 = load i32, ptr %53, align 8, !tbaa !27
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.constraint_graph, ptr %53, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !196
  br label %87

59:                                               ; preds = %0, %72
  %60 = phi ptr [ %73, %72 ], [ %48, %0 ]
  %61 = phi i32 [ %74, %72 ], [ 0, %0 ]
  %62 = tail call fastcc ptr @get_varinfo(i32 noundef %61) #23
  %63 = getelementptr inbounds %struct.variable_info, ptr %62, i64 0, i32 1
  %64 = load i8, ptr %63, align 4
  %65 = and i8 %64, 2
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load ptr, ptr @graph, align 8, !tbaa !6
  %69 = getelementptr inbounds %struct.constraint_graph, ptr %68, i64 0, i32 13
  %70 = load ptr, ptr %69, align 8, !tbaa !197
  tail call fastcc void @SET_BIT(ptr noundef %70, i32 noundef %61) #23
  %71 = load ptr, ptr @varmap, align 8
  br label %72

72:                                               ; preds = %59, %67
  %73 = phi ptr [ %60, %59 ], [ %71, %67 ]
  %74 = add nuw i32 %61, 1
  %75 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %73) #23
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %59, label %51, !llvm.loop !199

77:                                               ; preds = %87
  %78 = load ptr, ptr @varmap, align 8
  br label %79

79:                                               ; preds = %77, %51
  %80 = phi ptr [ %78, %77 ], [ %52, %51 ]
  %81 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %80) #23
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.constraint_graph, ptr %53, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !93
  %86 = load ptr, ptr @varmap, align 8
  br label %98

87:                                               ; preds = %56, %87
  %88 = phi i64 [ 0, %56 ], [ %90, %87 ]
  %89 = getelementptr inbounds i32, ptr %58, i64 %88
  store i32 -1, ptr %89, align 4, !tbaa !30
  %90 = add nuw nsw i64 %88, 1
  %91 = load i32, ptr %53, align 8, !tbaa !27
  %92 = zext i32 %91 to i64
  %93 = icmp ult i64 %90, %92
  br i1 %93, label %87, label %77, !llvm.loop !200

94:                                               ; preds = %98, %79
  %95 = load ptr, ptr @constraints, align 8
  %96 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %95, i32 noundef 0, ptr noundef nonnull %1) #23, !range !22
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %251, label %105

98:                                               ; preds = %83, %98
  %99 = phi i64 [ 0, %83 ], [ %101, %98 ]
  %100 = getelementptr inbounds i32, ptr %85, i64 %99
  store i32 -1, ptr %100, align 4, !tbaa !30
  %101 = add nuw nsw i64 %99, 1
  %102 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %86) #23
  %103 = zext i32 %102 to i64
  %104 = icmp ult i64 %101, %103
  br i1 %104, label %98, label %94, !llvm.loop !201

105:                                              ; preds = %94, %246
  %106 = phi i32 [ %247, %246 ], [ 0, %94 ]
  %107 = load ptr, ptr %1, align 8, !tbaa !6
  %108 = load i32, ptr %107, align 8, !tbaa.struct !136
  %109 = getelementptr inbounds i8, ptr %107, i64 4
  %110 = load i32, ptr %109, align 4, !tbaa.struct !202
  %111 = getelementptr inbounds i8, ptr %107, i64 8
  %112 = load i64, ptr %111, align 8, !tbaa.struct !137
  %113 = getelementptr inbounds %struct.constraint, ptr %107, i64 0, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa.struct !136
  %115 = getelementptr inbounds %struct.constraint, ptr %107, i64 0, i32 1, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa.struct !202
  %117 = getelementptr inbounds %struct.constraint, ptr %107, i64 0, i32 1, i32 2
  %118 = load i64, ptr %117, align 8, !tbaa.struct !137
  %119 = icmp eq i32 %108, 1
  br i1 %119, label %120, label %131

120:                                              ; preds = %105
  %121 = icmp eq i64 %118, 0
  %122 = icmp eq i64 %112, 0
  %123 = select i1 %121, i1 %122, i1 false
  %124 = icmp eq i32 %114, 0
  %125 = select i1 %123, i1 %124, i1 false
  br i1 %125, label %126, label %246

126:                                              ; preds = %120
  %127 = load ptr, ptr @graph, align 8, !tbaa !6
  %128 = load ptr, ptr @varmap, align 8
  %129 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %128) #23
  %130 = add i32 %129, %110
  tail call fastcc void @add_pred_graph_edge(ptr noundef %127, i32 noundef %130, i32 noundef %116) #23
  br label %246

131:                                              ; preds = %105
  switch i32 %114, label %217 [
    i32 1, label %132
    i32 2, label %146
  ]

132:                                              ; preds = %131
  %133 = icmp eq i64 %118, 0
  %134 = icmp eq i64 %112, 0
  %135 = select i1 %133, i1 %134, i1 false
  %136 = icmp eq i32 %108, 0
  %137 = and i1 %136, %135
  %138 = load ptr, ptr @graph, align 8, !tbaa !6
  br i1 %137, label %139, label %143

139:                                              ; preds = %132
  %140 = load ptr, ptr @varmap, align 8
  %141 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %140) #23
  %142 = add i32 %141, %116
  tail call fastcc void @add_pred_graph_edge(ptr noundef %138, i32 noundef %110, i32 noundef %142) #23
  br label %246

143:                                              ; preds = %132
  %144 = getelementptr inbounds %struct.constraint_graph, ptr %138, i64 0, i32 13
  %145 = load ptr, ptr %144, align 8, !tbaa !197
  tail call fastcc void @RESET_BIT(ptr noundef %145, i32 noundef %110) #23
  br label %246

146:                                              ; preds = %131
  %147 = load ptr, ptr @graph, align 8, !tbaa !6
  %148 = getelementptr inbounds %struct.constraint_graph, ptr %147, i64 0, i32 12
  %149 = load ptr, ptr %148, align 8, !tbaa !195
  %150 = zext i32 %110 to i64
  %151 = getelementptr inbounds ptr, ptr %149, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !6
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %163

154:                                              ; preds = %146
  %155 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %156 = load ptr, ptr @graph, align 8, !tbaa !6
  %157 = getelementptr inbounds %struct.constraint_graph, ptr %156, i64 0, i32 12
  %158 = load ptr, ptr %157, align 8, !tbaa !195
  %159 = getelementptr inbounds ptr, ptr %158, i64 %150
  store ptr %155, ptr %159, align 8, !tbaa !6
  %160 = load ptr, ptr %157, align 8, !tbaa !195
  %161 = getelementptr inbounds ptr, ptr %160, i64 %150
  %162 = load ptr, ptr %161, align 8, !tbaa !6
  br label %163

163:                                              ; preds = %154, %146
  %164 = phi ptr [ %162, %154 ], [ %152, %146 ]
  %165 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %164, i32 noundef %116) #25
  %166 = load ptr, ptr @graph, align 8, !tbaa !6
  %167 = getelementptr inbounds %struct.constraint_graph, ptr %166, i64 0, i32 11
  %168 = load ptr, ptr %167, align 8, !tbaa !194
  %169 = zext i32 %116 to i64
  %170 = getelementptr inbounds ptr, ptr %168, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !6
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %182

173:                                              ; preds = %163
  %174 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %175 = load ptr, ptr @graph, align 8, !tbaa !6
  %176 = getelementptr inbounds %struct.constraint_graph, ptr %175, i64 0, i32 11
  %177 = load ptr, ptr %176, align 8, !tbaa !194
  %178 = getelementptr inbounds ptr, ptr %177, i64 %169
  store ptr %174, ptr %178, align 8, !tbaa !6
  %179 = load ptr, ptr %176, align 8, !tbaa !194
  %180 = getelementptr inbounds ptr, ptr %179, i64 %169
  %181 = load ptr, ptr %180, align 8, !tbaa !6
  br label %182

182:                                              ; preds = %173, %163
  %183 = phi ptr [ %181, %173 ], [ %171, %163 ]
  %184 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %183, i32 noundef %110) #25
  %185 = load ptr, ptr @graph, align 8, !tbaa !6
  %186 = load ptr, ptr @varmap, align 8
  %187 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %186) #23
  %188 = add i32 %187, %110
  tail call fastcc void @add_implicit_graph_edge(ptr noundef %185, i32 noundef %188, i32 noundef %116) #23
  %189 = load ptr, ptr @graph, align 8, !tbaa !6
  %190 = getelementptr inbounds %struct.constraint_graph, ptr %189, i64 0, i32 13
  %191 = load ptr, ptr %190, align 8, !tbaa !197
  tail call fastcc void @RESET_BIT(ptr noundef %191, i32 noundef %116) #23
  %192 = tail call fastcc ptr @get_varinfo(i32 noundef %116) #23
  %193 = getelementptr inbounds %struct.variable_info, ptr %192, i64 0, i32 1
  %194 = load i8, ptr %193, align 4
  %195 = and i8 %194, 8
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %182
  %198 = load ptr, ptr @graph, align 8, !tbaa !6
  br label %212

199:                                              ; preds = %182
  %200 = getelementptr inbounds %struct.variable_info, ptr %192, i64 0, i32 7
  %201 = load ptr, ptr %200, align 8, !tbaa !84
  %202 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef %201) #23
  %203 = load ptr, ptr @graph, align 8, !tbaa !6
  %204 = getelementptr inbounds %struct.constraint_graph, ptr %203, i64 0, i32 13
  br label %205

205:                                              ; preds = %205, %199
  %206 = phi ptr [ %202, %199 ], [ %210, %205 ]
  %207 = load ptr, ptr %204, align 8, !tbaa !197
  %208 = load i32, ptr %206, align 8, !tbaa !96
  tail call fastcc void @RESET_BIT(ptr noundef %207, i32 noundef %208) #23
  %209 = getelementptr inbounds %struct.variable_info, ptr %206, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !97
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %205, !llvm.loop !203

212:                                              ; preds = %205, %197
  %213 = phi ptr [ %198, %197 ], [ %203, %205 ]
  %214 = getelementptr inbounds %struct.constraint_graph, ptr %213, i64 0, i32 14
  %215 = load ptr, ptr %214, align 8, !tbaa !198
  %216 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %215, i32 noundef %116) #25
  br label %246

217:                                              ; preds = %131
  %218 = icmp ugt i32 %110, 1
  br i1 %218, label %219, label %232

219:                                              ; preds = %217
  %220 = icmp ne i32 %110, %116
  %221 = icmp eq i64 %112, 0
  %222 = select i1 %220, i1 %221, i1 false
  %223 = icmp eq i64 %118, 0
  %224 = select i1 %222, i1 %223, i1 false
  br i1 %224, label %225, label %232

225:                                              ; preds = %219
  %226 = load ptr, ptr @graph, align 8, !tbaa !6
  tail call fastcc void @add_pred_graph_edge(ptr noundef %226, i32 noundef %110, i32 noundef %116) #23
  %227 = load ptr, ptr @graph, align 8, !tbaa !6
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
  br i1 %235, label %236, label %246

236:                                              ; preds = %232
  br i1 %234, label %237, label %241

237:                                              ; preds = %236
  %238 = load ptr, ptr @graph, align 8, !tbaa !6
  %239 = getelementptr inbounds %struct.constraint_graph, ptr %238, i64 0, i32 13
  %240 = load ptr, ptr %239, align 8, !tbaa !197
  tail call fastcc void @RESET_BIT(ptr noundef %240, i32 noundef %110) #23
  br label %246

241:                                              ; preds = %236
  br i1 %233, label %242, label %246

242:                                              ; preds = %241
  %243 = load ptr, ptr @graph, align 8, !tbaa !6
  %244 = getelementptr inbounds %struct.constraint_graph, ptr %243, i64 0, i32 13
  %245 = load ptr, ptr %244, align 8, !tbaa !197
  tail call fastcc void @RESET_BIT(ptr noundef %245, i32 noundef %116) #23
  br label %246

246:                                              ; preds = %143, %139, %225, %237, %242, %241, %232, %212, %120, %126
  %247 = add nuw nsw i32 %106, 1
  %248 = load ptr, ptr @constraints, align 8
  %249 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %248, i32 noundef %247, ptr noundef nonnull %1) #23, !range !22
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %105, !llvm.loop !204

251:                                              ; preds = %246, %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @perform_var_substitution(ptr noundef %0) unnamed_addr #6 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = load i32, ptr %0, align 8, !tbaa !27
  %5 = zext i32 %4 to i64
  %6 = tail call fastcc ptr @init_scc_info(i64 noundef %5) #23
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @iteration_obstack) #25
  %7 = tail call ptr @htab_create(i64 noundef 511, ptr noundef nonnull @equiv_class_label_hash, ptr noundef nonnull @equiv_class_label_eq, ptr noundef nonnull @free) #25
  store ptr %7, ptr @pointer_equiv_class_table, align 8, !tbaa !6
  %8 = tail call ptr @htab_create(i64 noundef 511, ptr noundef nonnull @equiv_class_label_hash, ptr noundef nonnull @equiv_class_label_eq, ptr noundef nonnull @free) #25
  store ptr %8, ptr @location_equiv_class_table, align 8, !tbaa !6
  store i32 1, ptr @pointer_equiv_class, align 4, !tbaa !30
  store i32 1, ptr @location_equiv_class, align 4, !tbaa !30
  %9 = load ptr, ptr @varmap, align 8
  %10 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %9) #23
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.scc_info, ptr %6, i64 0, i32 3
  br label %14

14:                                               ; preds = %12, %32
  %15 = phi ptr [ %9, %12 ], [ %33, %32 ]
  %16 = phi i64 [ 0, %12 ], [ %34, %32 ]
  %17 = load ptr, ptr %6, align 8, !tbaa !205
  %18 = load ptr, ptr %13, align 8, !tbaa !207
  %19 = getelementptr inbounds i32, ptr %18, i64 %16
  %20 = load i32, ptr %19, align 4, !tbaa !30
  %21 = lshr i32 %20, 6
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !46
  %25 = and i32 %20, 63
  %26 = zext nneg i32 %25 to i64
  %27 = shl nuw i64 1, %26
  %28 = and i64 %27, %24
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

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
  br i1 %37, label %14, label %38, !llvm.loop !208

38:                                               ; preds = %32, %1
  %39 = load ptr, ptr %6, align 8, !tbaa !205
  tail call void @sbitmap_zero(ptr noundef %39) #25
  %40 = load ptr, ptr @varmap, align 8
  %41 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %40) #23
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.scc_info, ptr %6, i64 0, i32 3
  br label %54

45:                                               ; preds = %72, %38
  %46 = phi ptr [ %40, %38 ], [ %73, %72 ]
  %47 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %46) #23
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %145, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 11
  %51 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  %52 = getelementptr inbounds %struct.scc_info, ptr %6, i64 0, i32 3
  %53 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 10
  br label %78

54:                                               ; preds = %43, %72
  %55 = phi ptr [ %40, %43 ], [ %73, %72 ]
  %56 = phi i64 [ 0, %43 ], [ %74, %72 ]
  %57 = load ptr, ptr %6, align 8, !tbaa !205
  %58 = load ptr, ptr %44, align 8, !tbaa !207
  %59 = getelementptr inbounds i32, ptr %58, i64 %56
  %60 = load i32, ptr %59, align 4, !tbaa !30
  %61 = lshr i32 %60, 6
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds %struct.simple_bitmap_def, ptr %57, i64 0, i32 3, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !46
  %65 = and i32 %60, 63
  %66 = zext nneg i32 %65 to i64
  %67 = shl nuw i64 1, %66
  %68 = and i64 %67, %64
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

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
  br i1 %77, label %54, label %45, !llvm.loop !209

78:                                               ; preds = %49, %139
  %79 = phi ptr [ %46, %49 ], [ %140, %139 ]
  %80 = phi i64 [ 0, %49 ], [ %141, %139 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %81 = load ptr, ptr %50, align 8, !tbaa !194
  %82 = getelementptr inbounds ptr, ptr %81, i64 %80
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = icmp eq ptr %83, null
  br i1 %84, label %139, label %85

85:                                               ; preds = %78
  %86 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @iteration_obstack) #25
  %87 = load ptr, ptr %50, align 8, !tbaa !194
  %88 = getelementptr inbounds ptr, ptr %87, i64 %80
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %89, ptr noundef nonnull %3) #23
  %90 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #23, !range !36
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %85, %92
  %93 = load ptr, ptr %51, align 8, !tbaa !192
  %94 = load ptr, ptr %52, align 8, !tbaa !207
  %95 = load i32, ptr %3, align 4, !tbaa !30
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %94, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !30
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %93, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !30
  %102 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %86, i32 noundef %101) #25
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #23
  %103 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #23, !range !36
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %92, !llvm.loop !210

105:                                              ; preds = %92
  %106 = load ptr, ptr %50, align 8, !tbaa !194
  %107 = getelementptr inbounds ptr, ptr %106, i64 %80
  %108 = load ptr, ptr %107, align 8, !tbaa !6
  br label %109

109:                                              ; preds = %105, %85
  %110 = phi ptr [ %108, %105 ], [ %89, %85 ]
  tail call void @bitmap_obstack_free(ptr noundef %110) #25
  %111 = load ptr, ptr %50, align 8, !tbaa !194
  %112 = getelementptr inbounds ptr, ptr %111, i64 %80
  store ptr null, ptr %112, align 8, !tbaa !6
  %113 = load ptr, ptr @location_equiv_class_table, align 8, !tbaa !6
  %114 = tail call fastcc i32 @equiv_class_lookup(ptr noundef %113, ptr noundef %86) #23
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load i32, ptr @location_equiv_class, align 4, !tbaa !30
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr @location_equiv_class, align 4, !tbaa !30
  %119 = load ptr, ptr @location_equiv_class_table, align 8, !tbaa !6
  tail call fastcc void @equiv_class_add(ptr noundef %119, i32 noundef %117, ptr noundef %86) #23
  br label %134

120:                                              ; preds = %109
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %122 = icmp eq ptr %121, null
  br i1 %122, label %133, label %123

123:                                              ; preds = %120
  %124 = load i32, ptr @dump_flags, align 4, !tbaa !30
  %125 = and i32 %124, 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  %128 = trunc i64 %80 to i32
  %129 = tail call fastcc ptr @get_varinfo(i32 noundef %128) #23
  %130 = getelementptr inbounds %struct.variable_info, ptr %129, i64 0, i32 6
  %131 = load ptr, ptr %130, align 8, !tbaa !16
  %132 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %121, ptr noundef nonnull @.str.74, ptr noundef %131) #23
  br label %133

133:                                              ; preds = %127, %123, %120
  tail call void @bitmap_obstack_free(ptr noundef %86) #25
  br label %134

134:                                              ; preds = %133, %116
  %135 = phi i32 [ %117, %116 ], [ %114, %133 ]
  %136 = load ptr, ptr %53, align 8, !tbaa !193
  %137 = getelementptr inbounds i32, ptr %136, i64 %80
  store i32 %135, ptr %137, align 4, !tbaa !30
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
  br i1 %144, label %78, label %145, !llvm.loop !211

145:                                              ; preds = %139, %45
  %146 = phi ptr [ %46, %45 ], [ %140, %139 ]
  %147 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %148 = icmp eq ptr %147, null
  br i1 %148, label %193, label %149

149:                                              ; preds = %145
  %150 = load i32, ptr @dump_flags, align 4, !tbaa !30
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
  %163 = load ptr, ptr %157, align 8, !tbaa !197
  %164 = trunc i64 %162 to i32
  %165 = lshr i64 %162, 6
  %166 = getelementptr inbounds %struct.simple_bitmap_def, ptr %163, i64 0, i32 3, i64 %165
  %167 = load i64, ptr %166, align 8, !tbaa !46
  %168 = and i64 %162, 63
  %169 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %170 = shl nuw i64 1, %168
  %171 = and i64 %167, %170
  %172 = icmp eq i64 %171, 0
  %173 = select i1 %172, ptr @.str.77, ptr @.str.76
  %174 = tail call fastcc ptr @get_varinfo(i32 noundef %164) #23
  %175 = getelementptr inbounds %struct.variable_info, ptr %174, i64 0, i32 6
  %176 = load ptr, ptr %175, align 8, !tbaa !16
  %177 = load ptr, ptr %158, align 8, !tbaa !192
  %178 = load ptr, ptr %159, align 8, !tbaa !207
  %179 = getelementptr inbounds i32, ptr %178, i64 %162
  %180 = load i32, ptr %179, align 4, !tbaa !30
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, ptr %177, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !30
  %184 = load ptr, ptr %160, align 8, !tbaa !193
  %185 = getelementptr inbounds i32, ptr %184, i64 %181
  %186 = load i32, ptr %185, align 4, !tbaa !30
  %187 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef nonnull @.str.75, ptr noundef nonnull %173, i32 noundef %164, ptr noundef %176, i32 noundef %183, i32 noundef %186) #23
  %188 = add nuw nsw i64 %162, 1
  %189 = load ptr, ptr @varmap, align 8
  %190 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %189) #23
  %191 = zext i32 %190 to i64
  %192 = icmp ult i64 %188, %191
  br i1 %192, label %161, label %193, !llvm.loop !212

193:                                              ; preds = %161, %153, %149, %145
  %194 = phi ptr [ %146, %153 ], [ %146, %149 ], [ %146, %145 ], [ %189, %161 ]
  %195 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %194) #23
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %233, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.scc_info, ptr %6, i64 0, i32 3
  %199 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  br label %200

200:                                              ; preds = %197, %227
  %201 = phi ptr [ %194, %197 ], [ %228, %227 ]
  %202 = phi i64 [ 0, %197 ], [ %229, %227 ]
  %203 = load ptr, ptr %198, align 8, !tbaa !207
  %204 = getelementptr inbounds i32, ptr %203, i64 %202
  %205 = load i32, ptr %204, align 4, !tbaa !30
  %206 = load ptr, ptr %199, align 8, !tbaa !192
  %207 = zext i32 %205 to i64
  %208 = getelementptr inbounds i32, ptr %206, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !30
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %227

211:                                              ; preds = %200
  %212 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %213 = icmp eq ptr %212, null
  br i1 %213, label %223, label %214

214:                                              ; preds = %211
  %215 = load i32, ptr @dump_flags, align 4, !tbaa !30
  %216 = and i32 %215, 8
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %214
  %219 = tail call fastcc ptr @get_varinfo(i32 noundef %205) #23
  %220 = getelementptr inbounds %struct.variable_info, ptr %219, i64 0, i32 6
  %221 = load ptr, ptr %220, align 8, !tbaa !16
  %222 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %212, ptr noundef nonnull @.str.78, ptr noundef %221) #23
  br label %223

223:                                              ; preds = %218, %214, %211
  %224 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !64
  %225 = add i32 %224, 1
  store i32 %225, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !64
  tail call fastcc void @clear_edges_for_node(ptr noundef nonnull %0, i32 noundef %205) #23
  %226 = load ptr, ptr @varmap, align 8
  br label %227

227:                                              ; preds = %223, %200
  %228 = phi ptr [ %226, %223 ], [ %201, %200 ]
  %229 = add nuw nsw i64 %202, 1
  %230 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %228) #23
  %231 = zext i32 %230 to i64
  %232 = icmp ult i64 %229, %231
  br i1 %232, label %200, label %233, !llvm.loop !213

233:                                              ; preds = %227, %193
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_constraints(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %4 = load i32, ptr %0, align 8, !tbaa !27
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %18, %2
  %7 = load ptr, ptr @constraints, align 8
  %8 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %3) #23, !range !22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %86, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  br label %22

13:                                               ; preds = %2, %18
  %14 = phi i32 [ %19, %18 ], [ 0, %2 ]
  %15 = tail call fastcc i32 @find(i32 noundef %14) #23
  %16 = icmp eq i32 %15, %14
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2347, ptr noundef nonnull @.str.27) #25
  br label %18

18:                                               ; preds = %13, %17
  %19 = add nuw i32 %14, 1
  %20 = load i32, ptr %0, align 8, !tbaa !27
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %13, label %6, !llvm.loop !214

22:                                               ; preds = %10, %81
  %23 = phi i32 [ 0, %10 ], [ %82, %81 ]
  %24 = load ptr, ptr %3, align 8, !tbaa !6
  %25 = getelementptr inbounds i8, ptr %24, i64 4
  %26 = load i32, ptr %25, align 4, !tbaa.struct !202
  %27 = getelementptr inbounds %struct.constraint, ptr %24, i64 0, i32 1, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa.struct !202
  %29 = tail call fastcc i32 @find(i32 noundef %26) #23
  %30 = tail call fastcc i32 @find(i32 noundef %28) #23
  %31 = load ptr, ptr %11, align 8, !tbaa !207
  %32 = zext i32 %29 to i64
  %33 = getelementptr inbounds i32, ptr %31, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !30
  %35 = zext i32 %30 to i64
  %36 = getelementptr inbounds i32, ptr %31, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !30
  %38 = load ptr, ptr %12, align 8, !tbaa !192
  %39 = zext i32 %34 to i64
  %40 = getelementptr inbounds i32, ptr %38, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !30
  %42 = zext i32 %37 to i64
  %43 = getelementptr inbounds i32, ptr %38, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !30
  %45 = icmp eq i32 %41, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %22
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr @dump_flags, align 4, !tbaa !30
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = tail call fastcc ptr @get_varinfo(i32 noundef %26) #23
  %55 = getelementptr inbounds %struct.variable_info, ptr %54, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !16
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %47, ptr noundef nonnull @.str.79, ptr noundef %56) #23
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call fastcc void @dump_constraint(ptr noundef %58, ptr noundef nonnull %24) #23
  br label %59

59:                                               ; preds = %53, %49, %46
  %60 = load ptr, ptr @constraints, align 8
  tail call fastcc void @VEC_constraint_t_base_replace(ptr noundef %60, i32 noundef %23) #23
  br label %81

61:                                               ; preds = %22
  %62 = icmp eq i32 %44, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %61
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr @dump_flags, align 4, !tbaa !30
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = tail call fastcc ptr @get_varinfo(i32 noundef %28) #23
  %72 = getelementptr inbounds %struct.variable_info, ptr %71, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !16
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %64, ptr noundef nonnull @.str.79, ptr noundef %73) #23
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call fastcc void @dump_constraint(ptr noundef %75, ptr noundef nonnull %24) #23
  br label %76

76:                                               ; preds = %70, %66, %63
  %77 = load ptr, ptr @constraints, align 8
  tail call fastcc void @VEC_constraint_t_base_replace(ptr noundef %77, i32 noundef %23) #23
  br label %81

78:                                               ; preds = %61
  %79 = tail call fastcc i32 @find_equivalent_node(ptr noundef nonnull %0, i32 noundef %29, i32 noundef %41) #23
  %80 = tail call fastcc i32 @find_equivalent_node(ptr noundef nonnull %0, i32 noundef %30, i32 noundef %44) #23
  store i32 %79, ptr %25, align 4, !tbaa !15
  store i32 %80, ptr %27, align 4, !tbaa !20
  br label %81

81:                                               ; preds = %78, %76, %59
  %82 = add nuw nsw i32 %23, 1
  %83 = load ptr, ptr @constraints, align 8
  %84 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %83, i32 noundef %82, ptr noundef nonnull %3) #23, !range !22
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %22, !llvm.loop !215

86:                                               ; preds = %81, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_succ_graph() unnamed_addr #6 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  %2 = load ptr, ptr @constraints, align 8
  %3 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #23, !range !22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %74, label %5

5:                                                ; preds = %0, %69
  %6 = phi i32 [ %70, %69 ], [ 0, %0 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %69, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa.struct !136
  %11 = getelementptr inbounds i8, ptr %7, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa.struct !202
  %13 = getelementptr inbounds i8, ptr %7, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa.struct !137
  %15 = getelementptr inbounds %struct.constraint, ptr %7, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa.struct !136
  %17 = getelementptr inbounds %struct.constraint, ptr %7, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa.struct !202
  %19 = getelementptr inbounds %struct.constraint, ptr %7, i64 0, i32 1, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa.struct !137
  %21 = tail call fastcc i32 @find(i32 noundef %12) #23
  %22 = tail call fastcc i32 @find(i32 noundef %18) #23
  %23 = icmp eq i32 %10, 1
  br i1 %23, label %24, label %36

24:                                               ; preds = %9
  %25 = icmp eq i64 %20, 0
  %26 = icmp eq i64 %14, 0
  %27 = select i1 %25, i1 %26, i1 false
  %28 = icmp eq i32 %16, 0
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %69

30:                                               ; preds = %24
  %31 = load ptr, ptr @graph, align 8, !tbaa !6
  %32 = load ptr, ptr @varmap, align 8
  %33 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %32) #23
  %34 = add i32 %33, %21
  %35 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %31, i32 noundef %34, i32 noundef %22) #23, !range !36
  br label %69

36:                                               ; preds = %9
  switch i32 %16, label %58 [
    i32 1, label %37
    i32 2, label %49
  ]

37:                                               ; preds = %36
  %38 = icmp eq i64 %20, 0
  %39 = icmp eq i64 %14, 0
  %40 = select i1 %38, i1 %39, i1 false
  %41 = icmp eq i32 %10, 0
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %69

43:                                               ; preds = %37
  %44 = load ptr, ptr @graph, align 8, !tbaa !6
  %45 = load ptr, ptr @varmap, align 8
  %46 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %45) #23
  %47 = add i32 %46, %22
  %48 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %44, i32 noundef %21, i32 noundef %47) #23, !range !36
  br label %69

49:                                               ; preds = %36
  %50 = tail call fastcc i32 @find(i32 noundef %18) #23
  %51 = icmp eq i32 %50, %18
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1263, ptr noundef nonnull @.str.27) #25
  br label %53

53:                                               ; preds = %49, %52
  %54 = tail call fastcc ptr @get_varinfo(i32 noundef %21) #23
  %55 = getelementptr inbounds %struct.variable_info, ptr %54, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !35
  %57 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %56, i32 noundef %22) #25
  br label %69

58:                                               ; preds = %36
  %59 = icmp ugt i32 %21, 1
  br i1 %59, label %60, label %69

60:                                               ; preds = %58
  %61 = icmp ne i32 %21, %22
  %62 = icmp eq i64 %14, 0
  %63 = select i1 %61, i1 %62, i1 false
  %64 = icmp eq i64 %20, 0
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load ptr, ptr @graph, align 8, !tbaa !6
  %68 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %67, i32 noundef %21, i32 noundef %22) #23, !range !36
  br label %69

69:                                               ; preds = %30, %24, %53, %66, %60, %58, %37, %43, %5
  %70 = add i32 %6, 1
  %71 = load ptr, ptr @constraints, align 8
  %72 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %71, i32 noundef %70, ptr noundef nonnull %1) #23, !range !22
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %5, !llvm.loop !216

74:                                               ; preds = %69, %0
  %75 = tail call fastcc i32 @find(i32 noundef 6) #23
  %76 = load ptr, ptr @varmap, align 8
  %77 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %76) #23
  %78 = icmp ugt i32 %77, 8
  %79 = load ptr, ptr @graph, align 8, !tbaa !6
  br i1 %78, label %80, label %112

80:                                               ; preds = %74, %106
  %81 = phi ptr [ %107, %106 ], [ %76, %74 ]
  %82 = phi ptr [ %108, %106 ], [ %79, %74 ]
  %83 = phi i32 [ %109, %106 ], [ 8, %74 ]
  %84 = getelementptr inbounds %struct.constraint_graph, ptr %82, i64 0, i32 13
  %85 = load ptr, ptr %84, align 8, !tbaa !197
  %86 = lshr i32 %83, 6
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds %struct.simple_bitmap_def, ptr %85, i64 0, i32 3, i64 %87
  %89 = load i64, ptr %88, align 8, !tbaa !46
  %90 = and i32 %83, 63
  %91 = zext nneg i32 %90 to i64
  %92 = shl nuw i64 1, %91
  %93 = and i64 %89, %92
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %80
  %96 = tail call fastcc ptr @get_varinfo(i32 noundef %83) #23
  %97 = getelementptr inbounds %struct.variable_info, ptr %96, i64 0, i32 1
  %98 = load i8, ptr %97, align 4
  %99 = and i8 %98, 64
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %95
  %102 = tail call fastcc i32 @find(i32 noundef %83) #23
  %103 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef nonnull %82, i32 noundef %102, i32 noundef %75) #23, !range !36
  %104 = load ptr, ptr @graph, align 8, !tbaa !6
  %105 = load ptr, ptr @varmap, align 8
  br label %106

106:                                              ; preds = %80, %95, %101
  %107 = phi ptr [ %81, %80 ], [ %81, %95 ], [ %105, %101 ]
  %108 = phi ptr [ %82, %80 ], [ %82, %95 ], [ %104, %101 ]
  %109 = add nuw i32 %83, 1
  %110 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %107) #23
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %80, label %112, !llvm.loop !217

112:                                              ; preds = %106, %74
  %113 = phi ptr [ %79, %74 ], [ %108, %106 ]
  %114 = tail call fastcc i32 @find(i32 noundef 3) #23
  %115 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %113, i32 noundef %114, i32 noundef %75) #23, !range !36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_var_substitution_info(ptr nocapture noundef %0) unnamed_addr #6 {
  tail call fastcc void @free_scc_info(ptr noundef %0) #23
  %2 = load ptr, ptr @graph, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !192
  tail call void @free(ptr noundef %4) #23
  %5 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !193
  tail call void @free(ptr noundef %6) #23
  %7 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !194
  tail call void @free(ptr noundef %8) #23
  %9 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !195
  tail call void @free(ptr noundef %10) #23
  %11 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !196
  tail call void @free(ptr noundef %12) #23
  %13 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !197
  %15 = load ptr, ptr %14, align 8, !tbaa !218
  tail call void @free(ptr noundef %15) #23
  %16 = load ptr, ptr %13, align 8, !tbaa !197
  tail call void @free(ptr noundef %16) #23
  %17 = load ptr, ptr @pointer_equiv_class_table, align 8, !tbaa !6
  tail call void @htab_delete(ptr noundef %17) #25
  %18 = load ptr, ptr @location_equiv_class_table, align 8, !tbaa !6
  tail call void @htab_delete(ptr noundef %18) #25
  tail call void @bitmap_obstack_release(ptr noundef nonnull @iteration_obstack) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_complex_constraints(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = load ptr, ptr @constraints, align 8
  %4 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #23, !range !22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %46, label %6

6:                                                ; preds = %1, %41
  %7 = phi i32 [ %42, %41 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa.struct !136
  %12 = getelementptr inbounds i8, ptr %8, i64 4
  %13 = load i32, ptr %12, align 4, !tbaa.struct !202
  %14 = getelementptr inbounds i8, ptr %8, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa.struct !137
  %16 = getelementptr inbounds %struct.constraint, ptr %8, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa.struct !136
  %18 = getelementptr inbounds %struct.constraint, ptr %8, i64 0, i32 1, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa.struct !202
  %20 = getelementptr inbounds %struct.constraint, ptr %8, i64 0, i32 1, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa.struct !137
  %22 = icmp eq i32 %11, 1
  br i1 %22, label %39, label %23

23:                                               ; preds = %10
  %24 = icmp eq i32 %17, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %23
  %26 = tail call fastcc ptr @get_varinfo(i32 noundef %13) #23
  %27 = getelementptr inbounds %struct.variable_info, ptr %26, i64 0, i32 1
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, 2
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %39, label %41

31:                                               ; preds = %23
  %32 = icmp ne i32 %17, 2
  %33 = icmp ugt i32 %13, 1
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = icmp ne i64 %15, 0
  %37 = icmp ne i64 %21, 0
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %25, %10
  %40 = phi i32 [ %13, %10 ], [ %19, %25 ], [ %19, %35 ]
  tail call fastcc void @insert_into_complex(ptr noundef %0, i32 noundef %40, ptr noundef nonnull %8) #23
  br label %41

41:                                               ; preds = %39, %31, %35, %25, %6
  %42 = add nuw nsw i32 %7, 1
  %43 = load ptr, ptr @constraints, align 8
  %44 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %43, i32 noundef %42, ptr noundef nonnull %2) #23, !range !22
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %6, !llvm.loop !220

46:                                               ; preds = %41, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unite_pointer_equivalences(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr @varmap, align 8
  %3 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 7
  %7 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 8
  br label %8

8:                                                ; preds = %5, %29
  %9 = phi i64 [ 0, %5 ], [ %30, %29 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !91
  %11 = getelementptr inbounds i32, ptr %10, i64 %9
  %12 = load i32, ptr %11, align 4, !tbaa !30
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %7, align 8, !tbaa !92
  %16 = zext i32 %12 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !30
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %29, label %20

20:                                               ; preds = %14
  %21 = tail call fastcc i32 @find(i32 noundef %18) #23
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = trunc i64 %9 to i32
  %25 = tail call fastcc i32 @find(i32 noundef %24) #23
  %26 = tail call fastcc zeroext i8 @unite(i32 noundef %21, i32 noundef %25) #23, !range !36
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call fastcc void @unify_nodes(ptr noundef nonnull %0, i32 noundef %21, i32 noundef %24, i8 noundef zeroext 0) #23
  br label %29

29:                                               ; preds = %28, %23, %20, %14, %8
  %30 = add nuw nsw i64 %9, 1
  %31 = load ptr, ptr @varmap, align 8
  %32 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %31) #23
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %8, label %35, !llvm.loop !221

35:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_indirect_cycles(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8, !tbaa !27
  %3 = zext i32 %2 to i64
  %4 = tail call fastcc ptr @init_scc_info(i64 noundef %3) #23
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %1, %22
  %7 = phi i32 [ %23, %22 ], [ 0, %1 ]
  %8 = load ptr, ptr %4, align 8, !tbaa !205
  %9 = lshr i32 %7, 6
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !46
  %13 = and i32 %7, 63
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = and i64 %12, %15
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = tail call fastcc i32 @find(i32 noundef %7) #23
  %20 = icmp eq i32 %19, %7
  br i1 %20, label %21, label %22

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
  br i1 %29, label %6, label %30, !llvm.loop !222

30:                                               ; preds = %22, %1
  tail call fastcc void @free_scc_info(ptr noundef %4) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_preds_and_fake_succs(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr @varmap, align 8
  %3 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  br label %15

7:                                                ; preds = %26, %1
  %8 = phi ptr [ %2, %1 ], [ %27, %26 ]
  %9 = phi i32 [ 0, %1 ], [ %29, %26 ]
  %10 = load i32, ptr %0, align 8, !tbaa !27
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %14 = zext i32 %9 to i64
  br label %32

15:                                               ; preds = %5, %26
  %16 = phi ptr [ %2, %5 ], [ %27, %26 ]
  %17 = phi i64 [ 0, %5 ], [ %28, %26 ]
  %18 = phi i32 [ %3, %5 ], [ %29, %26 ]
  %19 = load ptr, ptr %6, align 8, !tbaa !90
  %20 = getelementptr inbounds ptr, ptr %19, i64 %17
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

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
  br i1 %31, label %15, label %7, !llvm.loop !223

32:                                               ; preds = %12, %43
  %33 = phi i32 [ %10, %12 ], [ %44, %43 ]
  %34 = phi i64 [ %14, %12 ], [ %45, %43 ]
  %35 = load ptr, ptr %13, align 8, !tbaa !90
  %36 = getelementptr inbounds ptr, ptr %35, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  tail call void @bitmap_obstack_free(ptr noundef nonnull %37) #25
  %40 = load ptr, ptr %13, align 8, !tbaa !90
  %41 = getelementptr inbounds ptr, ptr %40, i64 %34
  store ptr null, ptr %41, align 8, !tbaa !6
  %42 = load i32, ptr %0, align 8, !tbaa !27
  br label %43

43:                                               ; preds = %32, %39
  %44 = phi i32 [ %33, %32 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %34, 1
  %46 = zext i32 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %32, label %48, !llvm.loop !224

48:                                               ; preds = %43
  %49 = load ptr, ptr @varmap, align 8
  br label %50

50:                                               ; preds = %48, %7
  %51 = phi ptr [ %49, %48 ], [ %8, %7 ]
  %52 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %51) #23
  store i32 %52, ptr %0, align 8, !tbaa !27
  %53 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !90
  %55 = zext i32 %52 to i64
  %56 = shl nuw nsw i64 %55, 3
  %57 = tail call ptr @xrealloc(ptr noundef %54, i64 noundef %56) #25
  store ptr %57, ptr %53, align 8, !tbaa !90
  %58 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !190
  tail call void @free(ptr noundef %59) #23
  store ptr null, ptr %58, align 8, !tbaa !190
  %60 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !191
  tail call void @free(ptr noundef %61) #23
  store ptr null, ptr %60, align 8, !tbaa !191
  tail call void @bitmap_obstack_release(ptr noundef nonnull @predbitmap_obstack) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @solve_graph(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = load i32, ptr %0, align 8, !tbaa !27
  store i32 0, ptr @changed_count, align 4, !tbaa !30
  %6 = tail call ptr @sbitmap_alloc(i32 noundef %5) #25
  store ptr %6, ptr @changed, align 8, !tbaa !6
  tail call void @sbitmap_zero(ptr noundef %6) #25
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %45, label %8

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
  br i1 %18, label %19, label %42

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.variable_info, ptr %15, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %9, align 8, !tbaa !90
  %26 = getelementptr inbounds ptr, ptr %25, i64 %13
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %27, align 8, !tbaa !38
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29, %24
  %33 = load ptr, ptr %10, align 8, !tbaa !88
  %34 = getelementptr inbounds ptr, ptr %33, i64 %13
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = tail call fastcc i32 @VEC_constraint_t_base_length(ptr noundef %35) #23
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32, %29
  %39 = load ptr, ptr @changed, align 8, !tbaa !6
  tail call fastcc void @SET_BIT(ptr noundef %39, i32 noundef %14) #23
  %40 = load i32, ptr @changed_count, align 4, !tbaa !30
  %41 = add i32 %40, 1
  store i32 %41, ptr @changed_count, align 4, !tbaa !30
  br label %42

42:                                               ; preds = %38, %32, %19, %12
  %43 = add nuw nsw i64 %13, 1
  %44 = icmp eq i64 %43, %11
  br i1 %44, label %45, label %12, !llvm.loop !225

45:                                               ; preds = %42, %1
  %46 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #25
  %47 = load i32, ptr @changed_count, align 4, !tbaa !30
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %187, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 15
  %51 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  br label %52

52:                                               ; preds = %49, %184
  %53 = tail call fastcc ptr @init_topo_info() #23
  %54 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 4), align 4, !tbaa !67
  %55 = add i32 %54, 1
  store i32 %55, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 4), align 4, !tbaa !67
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @iteration_obstack) #25
  tail call fastcc void @compute_topo_order(ptr noundef nonnull %0, ptr noundef %53) #23
  %56 = getelementptr inbounds %struct.topo_info, ptr %53, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !226
  %58 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %57) #23
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %184, label %60

60:                                               ; preds = %52, %180
  %61 = phi ptr [ %181, %180 ], [ %57, %52 ]
  %62 = tail call fastcc i32 @VEC_unsigned_base_pop(ptr noundef %61) #23
  %63 = tail call fastcc i32 @find(i32 noundef %62) #23
  %64 = icmp eq i32 %63, %62
  br i1 %64, label %65, label %180

65:                                               ; preds = %60
  %66 = tail call fastcc zeroext i8 @eliminate_indirect_cycles(i32 noundef %62) #23, !range !36
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = tail call fastcc i32 @find(i32 noundef %62) #23
  %70 = icmp eq i32 %69, %62
  br i1 %70, label %71, label %180

71:                                               ; preds = %68, %65
  %72 = load ptr, ptr @changed, align 8, !tbaa !6
  %73 = lshr i32 %62, 6
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds %struct.simple_bitmap_def, ptr %72, i64 0, i32 3, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !46
  %77 = and i32 %62, 63
  %78 = zext nneg i32 %77 to i64
  %79 = shl nuw i64 1, %78
  %80 = and i64 %76, %79
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %180, label %82

82:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %83 = load ptr, ptr %50, align 8, !tbaa !88
  %84 = zext i32 %62 to i64
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !6
  tail call fastcc void @RESET_BIT(ptr noundef nonnull %72, i32 noundef %62) #23
  %87 = load i32, ptr @changed_count, align 4, !tbaa !30
  %88 = add i32 %87, -1
  store i32 %88, ptr @changed_count, align 4, !tbaa !30
  %89 = tail call fastcc ptr @get_varinfo(i32 noundef %62) #23
  %90 = getelementptr inbounds %struct.variable_info, ptr %89, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  %92 = getelementptr inbounds %struct.variable_info, ptr %89, i64 0, i32 9
  %93 = load ptr, ptr %92, align 8, !tbaa !135
  %94 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %46, ptr noundef %91, ptr noundef %93) #25
  %95 = load ptr, ptr %46, align 8, !tbaa !38
  %96 = icmp eq ptr %95, null
  br i1 %96, label %179, label %97, !llvm.loop !228

97:                                               ; preds = %82
  %98 = tail call fastcc ptr @get_varinfo(i32 noundef %62) #23
  %99 = getelementptr inbounds %struct.variable_info, ptr %98, i64 0, i32 9
  %100 = load ptr, ptr %99, align 8, !tbaa !135
  %101 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %100, ptr noundef nonnull %46) #25
  %102 = tail call fastcc ptr @get_varinfo(i32 noundef %62) #23
  %103 = getelementptr inbounds %struct.variable_info, ptr %102, i64 0, i32 8
  %104 = load ptr, ptr %103, align 8, !tbaa !35
  %105 = load ptr, ptr %104, align 8, !tbaa !38
  %106 = icmp eq ptr %105, null
  %107 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %86, i32 noundef 0, ptr noundef nonnull %3) #23, !range !22
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %128, label %109

109:                                              ; preds = %97, %122
  %110 = phi i32 [ %123, %122 ], [ 0, %97 ]
  %111 = load ptr, ptr %3, align 8, !tbaa !6
  %112 = getelementptr inbounds %struct.constraint_expr, ptr %111, i64 0, i32 1
  %113 = load i32, ptr %112, align 4, !tbaa !15
  %114 = tail call fastcc i32 @find(i32 noundef %113) #23
  store i32 %114, ptr %112, align 4, !tbaa !15
  %115 = getelementptr inbounds %struct.constraint, ptr %111, i64 0, i32 1, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !20
  %117 = tail call fastcc i32 @find(i32 noundef %116) #23
  store i32 %117, ptr %115, align 4, !tbaa !20
  br i1 %106, label %118, label %121

118:                                              ; preds = %109
  %119 = load i32, ptr %111, align 8, !tbaa !10
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %122, label %121

121:                                              ; preds = %118, %109
  tail call fastcc void @do_complex_constraint(ptr noundef nonnull %0, ptr noundef nonnull %111, ptr noundef nonnull %46) #23
  br label %122

122:                                              ; preds = %118, %121
  %123 = add i32 %110, 1
  %124 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %86, i32 noundef %123, ptr noundef nonnull %3) #23, !range !22
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %109, !llvm.loop !229

126:                                              ; preds = %122
  %127 = load ptr, ptr %104, align 8, !tbaa !38
  br label %128

128:                                              ; preds = %126, %97
  %129 = phi ptr [ %105, %97 ], [ %127, %126 ]
  %130 = phi i32 [ 0, %97 ], [ %123, %126 ]
  store i32 %130, ptr %2, align 4, !tbaa !30
  %131 = icmp eq ptr %129, null
  br i1 %131, label %178, label %132

132:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %133 = tail call fastcc i32 @find(i32 noundef 3) #23
  %134 = load ptr, ptr %51, align 8, !tbaa !90
  %135 = getelementptr inbounds ptr, ptr %134, i64 %84
  %136 = load ptr, ptr %135, align 8, !tbaa !6
  %137 = icmp eq ptr %136, null
  br i1 %137, label %177, label %138

138:                                              ; preds = %132
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %136, ptr noundef nonnull %2) #23
  %139 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #23, !range !36
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %177, label %141

141:                                              ; preds = %138
  %142 = icmp eq i32 %62, %133
  br label %143

143:                                              ; preds = %141, %174
  %144 = load i32, ptr %2, align 4, !tbaa !30
  %145 = tail call fastcc i32 @find(i32 noundef %144) #23
  %146 = tail call fastcc ptr @get_varinfo(i32 noundef %145) #23
  %147 = getelementptr inbounds %struct.variable_info, ptr %146, i64 0, i32 8
  %148 = load ptr, ptr %147, align 8, !tbaa !35
  %149 = icmp eq i32 %145, %62
  br i1 %149, label %174, label %150

150:                                              ; preds = %143
  br i1 %142, label %151, label %153

151:                                              ; preds = %150
  %152 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %148, i32 noundef 3) #25
  br label %155

153:                                              ; preds = %150
  %154 = tail call fastcc zeroext i8 @set_union_with_increment(ptr noundef %148, ptr noundef nonnull %46, i64 noundef 0) #23
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i8 [ %152, %151 ], [ %154, %153 ]
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %174, label %158

158:                                              ; preds = %155
  %159 = tail call fastcc ptr @get_varinfo(i32 noundef %145) #23
  %160 = getelementptr inbounds %struct.variable_info, ptr %159, i64 0, i32 8
  store ptr %148, ptr %160, align 8, !tbaa !35
  %161 = load ptr, ptr @changed, align 8, !tbaa !6
  %162 = lshr i32 %145, 6
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds %struct.simple_bitmap_def, ptr %161, i64 0, i32 3, i64 %163
  %165 = load i64, ptr %164, align 8, !tbaa !46
  %166 = and i32 %145, 63
  %167 = zext nneg i32 %166 to i64
  %168 = shl nuw i64 1, %167
  %169 = and i64 %165, %168
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %158
  tail call fastcc void @SET_BIT(ptr noundef nonnull %161, i32 noundef %145) #23
  %172 = load i32, ptr @changed_count, align 4, !tbaa !30
  %173 = add i32 %172, 1
  store i32 %173, ptr @changed_count, align 4, !tbaa !30
  br label %174

174:                                              ; preds = %155, %171, %158, %143
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #23
  %175 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #23, !range !36
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %143, !llvm.loop !230

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
  %181 = load ptr, ptr %56, align 8, !tbaa !226
  %182 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %181) #23
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %60, !llvm.loop !228

184:                                              ; preds = %180, %52
  tail call fastcc void @free_topo_info(ptr noundef nonnull %53) #23
  tail call void @bitmap_obstack_release(ptr noundef nonnull @iteration_obstack) #25
  %185 = load i32, ptr @changed_count, align 4, !tbaa !30
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %52, !llvm.loop !231

187:                                              ; preds = %184, %45
  tail call void @bitmap_obstack_free(ptr noundef %46) #25
  %188 = load ptr, ptr @changed, align 8, !tbaa !6
  %189 = load ptr, ptr %188, align 8, !tbaa !218
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
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #18 {
  %3 = load ptr, ptr %0, align 8, !tbaa !218
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

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
  %15 = load i64, ptr %14, align 8, !tbaa !46
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !61
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !61
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !46
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_pred_graph_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !191
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %12 = load ptr, ptr %4, align 8, !tbaa !191
  %13 = getelementptr inbounds ptr, ptr %12, i64 %6
  store ptr %11, ptr %13, align 8, !tbaa !6
  %14 = load ptr, ptr %4, align 8, !tbaa !191
  %15 = getelementptr inbounds ptr, ptr %14, i64 %6
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %10, %3
  %18 = phi ptr [ %16, %10 ], [ %8, %3 ]
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %2) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #18 {
  %3 = load ptr, ptr %0, align 8, !tbaa !218
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

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
  %15 = load i64, ptr %14, align 8, !tbaa !46
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !61
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !61
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !46
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_implicit_graph_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = icmp eq i32 %1, %2
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !190
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %14 = load ptr, ptr %6, align 8, !tbaa !190
  %15 = getelementptr inbounds ptr, ptr %14, i64 %8
  store ptr %13, ptr %15, align 8, !tbaa !6
  %16 = load ptr, ptr %6, align 8, !tbaa !190
  %17 = getelementptr inbounds ptr, ptr %16, i64 %8
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %12, %5
  %20 = phi ptr [ %18, %12 ], [ %10, %5 ]
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %20, i32 noundef %2) #25
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 6), align 4, !tbaa !69
  %25 = add i32 %24, 1
  store i32 %25, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 6), align 4, !tbaa !69
  br label %26

26:                                               ; preds = %3, %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @init_scc_info(i64 noundef %0) unnamed_addr #6 {
  %2 = tail call ptr @xmalloc(i64 noundef 48) #25
  %3 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 4
  store i32 0, ptr %3, align 8, !tbaa !232
  %4 = trunc i64 %0 to i32
  %5 = tail call ptr @sbitmap_alloc(i32 noundef %4) #25
  store ptr %5, ptr %2, align 8, !tbaa !205
  tail call void @sbitmap_zero(ptr noundef %5) #25
  %6 = tail call ptr @sbitmap_alloc(i32 noundef %4) #25
  %7 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !233
  tail call void @sbitmap_zero(ptr noundef %6) #25
  %8 = shl nuw nsw i64 %0, 2
  %9 = tail call ptr @xmalloc(i64 noundef %8) #25
  %10 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 3
  store ptr %9, ptr %10, align 8, !tbaa !207
  %11 = tail call ptr @xcalloc(i64 noundef %0, i64 noundef 4) #25
  %12 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !234
  %13 = icmp eq i64 %0, 0
  br i1 %13, label %51, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr %10, align 8, !tbaa !207
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
  store i32 %24, ptr %28, align 4, !tbaa !30
  br label %29

29:                                               ; preds = %27, %21
  %30 = extractelement <4 x i1> %25, i64 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = or disjoint i64 %22, 1
  %33 = getelementptr inbounds i32, ptr %15, i64 %32
  %34 = or disjoint i32 %24, 1
  store i32 %34, ptr %33, align 4, !tbaa !30
  br label %35

35:                                               ; preds = %31, %29
  %36 = extractelement <4 x i1> %25, i64 2
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = or disjoint i64 %22, 2
  %39 = getelementptr inbounds i32, ptr %15, i64 %38
  %40 = or disjoint i32 %24, 2
  store i32 %40, ptr %39, align 4, !tbaa !30
  br label %41

41:                                               ; preds = %37, %35
  %42 = extractelement <4 x i1> %25, i64 3
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = or disjoint i64 %22, 3
  %45 = getelementptr inbounds i32, ptr %15, i64 %44
  %46 = or disjoint i32 %24, 3
  store i32 %46, ptr %45, align 4, !tbaa !30
  br label %47

47:                                               ; preds = %43, %41
  %48 = add i64 %22, 4
  %49 = add <4 x i64> %23, <i64 4, i64 4, i64 4, i64 4>
  %50 = icmp eq i64 %48, %17
  br i1 %50, label %51, label %21, !llvm.loop !235

51:                                               ; preds = %47, %1
  %52 = tail call fastcc ptr @VEC_unsigned_heap_alloc() #23
  %53 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 5
  store ptr %52, ptr %53, align 8, !tbaa !238
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @equiv_class_label_hash(ptr nocapture noundef readonly %0) #3 {
  %2 = load i32, ptr %0, align 8, !tbaa !239
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @equiv_class_label_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load i32, ptr %0, align 8, !tbaa !239
  %4 = load i32, ptr %1, align 8, !tbaa !239
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.equiv_class_label, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !241
  %9 = getelementptr inbounds %struct.equiv_class_label, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !241
  %11 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %8, ptr noundef %10) #25
  %12 = icmp ne i8 %11, 0
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ 0, %2 ], [ %13, %6 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @condense_visit(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %6 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !207
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !30
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1979, ptr noundef nonnull @.str.27) #25
  br label %13

13:                                               ; preds = %3, %12
  %14 = load ptr, ptr %1, align 8, !tbaa !205
  tail call fastcc void @SET_BIT(ptr noundef %14, i32 noundef %2) #23
  %15 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !232
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 8, !tbaa !232
  %18 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !234
  %20 = getelementptr inbounds i32, ptr %19, i64 %8
  store i32 %16, ptr %20, align 4, !tbaa !30
  %21 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !191
  %23 = getelementptr inbounds ptr, ptr %22, i64 %8
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %80, label %26

26:                                               ; preds = %13
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %24, ptr noundef nonnull %4) #23
  %27 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !36
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %80, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  br label %31

31:                                               ; preds = %29, %76
  %32 = phi ptr [ %19, %29 ], [ %77, %76 ]
  %33 = load ptr, ptr %6, align 8, !tbaa !207
  %34 = load i32, ptr %4, align 4, !tbaa !30
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %33, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !30
  %38 = load ptr, ptr %30, align 8, !tbaa !233
  %39 = lshr i32 %37, 6
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds %struct.simple_bitmap_def, ptr %38, i64 0, i32 3, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !46
  %43 = and i32 %37, 63
  %44 = zext nneg i32 %43 to i64
  %45 = shl nuw i64 1, %44
  %46 = and i64 %45, %42
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %31
  %49 = load ptr, ptr %1, align 8, !tbaa !205
  %50 = getelementptr inbounds %struct.simple_bitmap_def, ptr %49, i64 0, i32 3, i64 %40
  %51 = load i64, ptr %50, align 8, !tbaa !46
  %52 = and i64 %51, %45
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  tail call fastcc void @condense_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %37) #23
  %55 = load ptr, ptr %6, align 8, !tbaa !207
  br label %56

56:                                               ; preds = %54, %48
  %57 = phi ptr [ %55, %54 ], [ %33, %48 ]
  %58 = zext i32 %37 to i64
  %59 = getelementptr inbounds i32, ptr %57, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !30
  %61 = getelementptr inbounds i32, ptr %57, i64 %8
  %62 = load i32, ptr %61, align 4, !tbaa !30
  %63 = icmp eq i32 %62, %2
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1997, ptr noundef nonnull @.str.27) #25
  br label %65

65:                                               ; preds = %56, %64
  %66 = load ptr, ptr %18, align 8, !tbaa !234
  %67 = zext i32 %60 to i64
  %68 = getelementptr inbounds i32, ptr %66, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !30
  %70 = zext i32 %62 to i64
  %71 = getelementptr inbounds i32, ptr %66, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !30
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = getelementptr inbounds i32, ptr %66, i64 %8
  store i32 %69, ptr %75, align 4, !tbaa !30
  br label %76

76:                                               ; preds = %65, %74, %31
  %77 = phi ptr [ %66, %65 ], [ %66, %74 ], [ %32, %31 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %78 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !36
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %31, !llvm.loop !242

80:                                               ; preds = %76, %26, %13
  %81 = phi ptr [ %19, %26 ], [ %19, %13 ], [ %77, %76 ]
  %82 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !190
  %84 = getelementptr inbounds ptr, ptr %83, i64 %8
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = icmp eq ptr %85, null
  br i1 %86, label %141, label %87

87:                                               ; preds = %80
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %85, ptr noundef nonnull %4) #23
  %88 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !36
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %141, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  br label %92

92:                                               ; preds = %90, %137
  %93 = phi ptr [ %81, %90 ], [ %138, %137 ]
  %94 = load ptr, ptr %6, align 8, !tbaa !207
  %95 = load i32, ptr %4, align 4, !tbaa !30
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %94, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !30
  %99 = load ptr, ptr %91, align 8, !tbaa !233
  %100 = lshr i32 %98, 6
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds %struct.simple_bitmap_def, ptr %99, i64 0, i32 3, i64 %101
  %103 = load i64, ptr %102, align 8, !tbaa !46
  %104 = and i32 %98, 63
  %105 = zext nneg i32 %104 to i64
  %106 = shl nuw i64 1, %105
  %107 = and i64 %106, %103
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %137

109:                                              ; preds = %92
  %110 = load ptr, ptr %1, align 8, !tbaa !205
  %111 = getelementptr inbounds %struct.simple_bitmap_def, ptr %110, i64 0, i32 3, i64 %101
  %112 = load i64, ptr %111, align 8, !tbaa !46
  %113 = and i64 %112, %106
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  tail call fastcc void @condense_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %98) #23
  %116 = load ptr, ptr %6, align 8, !tbaa !207
  br label %117

117:                                              ; preds = %115, %109
  %118 = phi ptr [ %116, %115 ], [ %94, %109 ]
  %119 = zext i32 %98 to i64
  %120 = getelementptr inbounds i32, ptr %118, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !30
  %122 = getelementptr inbounds i32, ptr %118, i64 %8
  %123 = load i32, ptr %122, align 4, !tbaa !30
  %124 = icmp eq i32 %123, %2
  br i1 %124, label %126, label %125

125:                                              ; preds = %117
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2017, ptr noundef nonnull @.str.27) #25
  br label %126

126:                                              ; preds = %117, %125
  %127 = load ptr, ptr %18, align 8, !tbaa !234
  %128 = zext i32 %121 to i64
  %129 = getelementptr inbounds i32, ptr %127, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !30
  %131 = zext i32 %123 to i64
  %132 = getelementptr inbounds i32, ptr %127, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !30
  %134 = icmp ult i32 %130, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = getelementptr inbounds i32, ptr %127, i64 %8
  store i32 %130, ptr %136, align 4, !tbaa !30
  br label %137

137:                                              ; preds = %126, %135, %92
  %138 = phi ptr [ %127, %126 ], [ %127, %135 ], [ %93, %92 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %139 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !36
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %92, !llvm.loop !243

141:                                              ; preds = %137, %87, %80
  %142 = phi ptr [ %81, %87 ], [ %81, %80 ], [ %138, %137 ]
  %143 = getelementptr inbounds i32, ptr %142, i64 %8
  %144 = load i32, ptr %143, align 4, !tbaa !30
  %145 = icmp eq i32 %144, %16
  %146 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 5
  br i1 %145, label %147, label %251

147:                                              ; preds = %141
  %148 = load ptr, ptr %146, align 8, !tbaa !238
  %149 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %148) #23
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %248, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 13
  %153 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 12
  br label %154

154:                                              ; preds = %151, %244
  %155 = phi ptr [ %148, %151 ], [ %245, %244 ]
  %156 = load ptr, ptr %18, align 8, !tbaa !234
  %157 = tail call fastcc i32 @VEC_unsigned_base_last(ptr noundef %155) #23
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, ptr %156, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !30
  %161 = icmp ult i32 %160, %16
  br i1 %161, label %248, label %162

162:                                              ; preds = %154
  %163 = tail call fastcc i32 @VEC_unsigned_base_pop(ptr noundef %155) #23
  %164 = load ptr, ptr %6, align 8, !tbaa !207
  %165 = zext i32 %163 to i64
  %166 = getelementptr inbounds i32, ptr %164, i64 %165
  store i32 %2, ptr %166, align 4, !tbaa !30
  %167 = load ptr, ptr %152, align 8, !tbaa !197
  %168 = lshr i32 %163, 6
  %169 = zext nneg i32 %168 to i64
  %170 = getelementptr inbounds %struct.simple_bitmap_def, ptr %167, i64 0, i32 3, i64 %169
  %171 = load i64, ptr %170, align 8, !tbaa !46
  %172 = and i32 %163, 63
  %173 = zext nneg i32 %172 to i64
  %174 = shl nuw i64 1, %173
  %175 = and i64 %171, %174
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %162
  tail call fastcc void @RESET_BIT(ptr noundef nonnull %167, i32 noundef %2) #23
  br label %178

178:                                              ; preds = %177, %162
  %179 = load ptr, ptr %21, align 8, !tbaa !191
  %180 = getelementptr inbounds ptr, ptr %179, i64 %165
  %181 = load ptr, ptr %180, align 8, !tbaa !6
  %182 = icmp eq ptr %181, null
  br i1 %182, label %200, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds ptr, ptr %179, i64 %8
  %185 = load ptr, ptr %184, align 8, !tbaa !6
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %196

187:                                              ; preds = %183
  %188 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %189 = load ptr, ptr %21, align 8, !tbaa !191
  %190 = getelementptr inbounds ptr, ptr %189, i64 %8
  store ptr %188, ptr %190, align 8, !tbaa !6
  %191 = load ptr, ptr %21, align 8, !tbaa !191
  %192 = getelementptr inbounds ptr, ptr %191, i64 %8
  %193 = load ptr, ptr %192, align 8, !tbaa !6
  %194 = getelementptr inbounds ptr, ptr %191, i64 %165
  %195 = load ptr, ptr %194, align 8, !tbaa !6
  br label %196

196:                                              ; preds = %187, %183
  %197 = phi ptr [ %195, %187 ], [ %181, %183 ]
  %198 = phi ptr [ %193, %187 ], [ %185, %183 ]
  %199 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %198, ptr noundef %197) #25
  br label %200

200:                                              ; preds = %196, %178
  %201 = load ptr, ptr %82, align 8, !tbaa !190
  %202 = getelementptr inbounds ptr, ptr %201, i64 %165
  %203 = load ptr, ptr %202, align 8, !tbaa !6
  %204 = icmp eq ptr %203, null
  br i1 %204, label %222, label %205

205:                                              ; preds = %200
  %206 = getelementptr inbounds ptr, ptr %201, i64 %8
  %207 = load ptr, ptr %206, align 8, !tbaa !6
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %218

209:                                              ; preds = %205
  %210 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %211 = load ptr, ptr %82, align 8, !tbaa !190
  %212 = getelementptr inbounds ptr, ptr %211, i64 %8
  store ptr %210, ptr %212, align 8, !tbaa !6
  %213 = load ptr, ptr %82, align 8, !tbaa !190
  %214 = getelementptr inbounds ptr, ptr %213, i64 %8
  %215 = load ptr, ptr %214, align 8, !tbaa !6
  %216 = getelementptr inbounds ptr, ptr %213, i64 %165
  %217 = load ptr, ptr %216, align 8, !tbaa !6
  br label %218

218:                                              ; preds = %209, %205
  %219 = phi ptr [ %217, %209 ], [ %203, %205 ]
  %220 = phi ptr [ %215, %209 ], [ %207, %205 ]
  %221 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %220, ptr noundef %219) #25
  br label %222

222:                                              ; preds = %218, %200
  %223 = load ptr, ptr %153, align 8, !tbaa !195
  %224 = getelementptr inbounds ptr, ptr %223, i64 %165
  %225 = load ptr, ptr %224, align 8, !tbaa !6
  %226 = icmp eq ptr %225, null
  br i1 %226, label %244, label %227

227:                                              ; preds = %222
  %228 = getelementptr inbounds ptr, ptr %223, i64 %8
  %229 = load ptr, ptr %228, align 8, !tbaa !6
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %240

231:                                              ; preds = %227
  %232 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %233 = load ptr, ptr %153, align 8, !tbaa !195
  %234 = getelementptr inbounds ptr, ptr %233, i64 %8
  store ptr %232, ptr %234, align 8, !tbaa !6
  %235 = load ptr, ptr %153, align 8, !tbaa !195
  %236 = getelementptr inbounds ptr, ptr %235, i64 %8
  %237 = load ptr, ptr %236, align 8, !tbaa !6
  %238 = getelementptr inbounds ptr, ptr %235, i64 %165
  %239 = load ptr, ptr %238, align 8, !tbaa !6
  br label %240

240:                                              ; preds = %231, %227
  %241 = phi ptr [ %239, %231 ], [ %225, %227 ]
  %242 = phi ptr [ %237, %231 ], [ %229, %227 ]
  %243 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %242, ptr noundef %241) #25
  br label %244

244:                                              ; preds = %240, %222
  %245 = load ptr, ptr %146, align 8, !tbaa !238
  %246 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %245) #23
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %154, !llvm.loop !244

248:                                              ; preds = %154, %244, %147
  %249 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !233
  tail call fastcc void @SET_BIT(ptr noundef %250, i32 noundef %2) #23
  br label %252

251:                                              ; preds = %141
  tail call fastcc void @VEC_unsigned_heap_safe_push(ptr noundef nonnull %146, i32 noundef %2) #23
  br label %252

252:                                              ; preds = %251, %248
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @label_visit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %6 = load ptr, ptr %1, align 8, !tbaa !205
  tail call fastcc void @SET_BIT(ptr noundef %6, i32 noundef %2) #23
  %7 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !195
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %15 = load ptr, ptr %7, align 8, !tbaa !195
  %16 = getelementptr inbounds ptr, ptr %15, i64 %9
  store ptr %14, ptr %16, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %13, %3
  %18 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !191
  %20 = getelementptr inbounds ptr, ptr %19, i64 %9
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %66, label %23

23:                                               ; preds = %17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %21, ptr noundef nonnull %4) #23
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !36
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %66, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 3
  %28 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  br label %29

29:                                               ; preds = %26, %63
  %30 = load ptr, ptr %27, align 8, !tbaa !207
  %31 = load i32, ptr %4, align 4, !tbaa !30
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %30, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !30
  %35 = load ptr, ptr %1, align 8, !tbaa !205
  %36 = lshr i32 %34, 6
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds %struct.simple_bitmap_def, ptr %35, i64 0, i32 3, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !46
  %40 = and i32 %34, 63
  %41 = zext nneg i32 %40 to i64
  %42 = shl nuw i64 1, %41
  %43 = and i64 %42, %39
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  tail call fastcc void @label_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %34) #23
  br label %46

46:                                               ; preds = %45, %29
  %47 = icmp eq i32 %34, %2
  br i1 %47, label %63, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %28, align 8, !tbaa !192
  %50 = zext i32 %34 to i64
  %51 = getelementptr inbounds i32, ptr %49, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !30
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %48
  %55 = load ptr, ptr %7, align 8, !tbaa !195
  %56 = getelementptr inbounds ptr, ptr %55, i64 %50
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds ptr, ptr %55, i64 %9
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %61, ptr noundef nonnull %57) #25
  br label %63

63:                                               ; preds = %54, %59, %46, %48
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %64 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !36
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %29, !llvm.loop !245

66:                                               ; preds = %63, %23, %17
  %67 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 13
  %68 = load ptr, ptr %67, align 8, !tbaa !197
  %69 = lshr i32 %2, 6
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds %struct.simple_bitmap_def, ptr %68, i64 0, i32 3, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !46
  %73 = and i32 %2, 63
  %74 = zext nneg i32 %73 to i64
  %75 = shl nuw i64 1, %74
  %76 = and i64 %72, %75
  %77 = icmp eq i64 %76, 0
  %78 = load ptr, ptr %7, align 8, !tbaa !195
  br i1 %77, label %79, label %87

79:                                               ; preds = %66
  %80 = getelementptr inbounds ptr, ptr %78, i64 %9
  %81 = load ptr, ptr %80, align 8, !tbaa !6
  %82 = load ptr, ptr @varmap, align 8
  %83 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %82) #23
  %84 = add i32 %83, %2
  %85 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %81, i32 noundef %84) #25
  %86 = load ptr, ptr %7, align 8, !tbaa !195
  br label %87

87:                                               ; preds = %79, %66
  %88 = phi ptr [ %86, %79 ], [ %78, %66 ]
  %89 = getelementptr inbounds ptr, ptr %88, i64 %9
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  %91 = load ptr, ptr %90, align 8, !tbaa !38
  %92 = icmp eq ptr %91, null
  br i1 %92, label %109, label %93

93:                                               ; preds = %87
  %94 = load ptr, ptr @pointer_equiv_class_table, align 8, !tbaa !6
  %95 = tail call fastcc i32 @equiv_class_lookup(ptr noundef %94, ptr noundef nonnull %90) #23
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i32, ptr @pointer_equiv_class, align 4, !tbaa !30
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr @pointer_equiv_class, align 4, !tbaa !30
  %100 = load ptr, ptr @pointer_equiv_class_table, align 8, !tbaa !6
  %101 = load ptr, ptr %7, align 8, !tbaa !195
  %102 = getelementptr inbounds ptr, ptr %101, i64 %9
  %103 = load ptr, ptr %102, align 8, !tbaa !6
  tail call fastcc void @equiv_class_add(ptr noundef %100, i32 noundef %98, ptr noundef %103) #23
  br label %104

104:                                              ; preds = %97, %93
  %105 = phi i32 [ %95, %93 ], [ %98, %97 ]
  %106 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  %107 = load ptr, ptr %106, align 8, !tbaa !192
  %108 = getelementptr inbounds i32, ptr %107, i64 %9
  store i32 %105, ptr %108, align 4, !tbaa !30
  br label %109

109:                                              ; preds = %104, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @equiv_class_lookup(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = alloca %struct.equiv_class_label, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %4 = getelementptr inbounds %struct.equiv_class_label, ptr %3, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !241
  %5 = tail call i32 @bitmap_hash(ptr noundef %1) #25
  store i32 %5, ptr %3, align 8, !tbaa !239
  %6 = call ptr @htab_find_slot_with_hash(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %5, i32 noundef 0) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.equiv_class_label, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !246
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @equiv_class_add(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 {
  %4 = tail call ptr @xmalloc(i64 noundef 16) #25
  %5 = getelementptr inbounds %struct.equiv_class_label, ptr %4, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !241
  %6 = getelementptr inbounds %struct.equiv_class_label, ptr %4, i64 0, i32 1
  store i32 %1, ptr %6, align 4, !tbaa !246
  %7 = tail call i32 @bitmap_hash(ptr noundef %2) #25
  store i32 %7, ptr %4, align 8, !tbaa !239
  %8 = tail call ptr @htab_find_slot_with_hash(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %7, i32 noundef 1) #25
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1916, ptr noundef nonnull @.str.27) #25
  br label %12

12:                                               ; preds = %3, %11
  store ptr %4, ptr %8, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_edges_for_node(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  tail call void @bitmap_obstack_free(ptr noundef nonnull %7) #25
  %10 = load ptr, ptr %3, align 8, !tbaa !90
  %11 = getelementptr inbounds ptr, ptr %10, i64 %5
  store ptr null, ptr %11, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_unsigned_heap_alloc() unnamed_addr #6 {
  %1 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 1, i64 noundef 8, i64 noundef 4) #25
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !247
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_last(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 4, !tbaa !247
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !30
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @VEC_unsigned_base_pop(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 4, !tbaa !247
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 4, !tbaa !247
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !30
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 {
  tail call fastcc void @VEC_unsigned_heap_reserve(ptr noundef %0) #23
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @VEC_unsigned_base_quick_push(ptr noundef %3, i32 noundef %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_reserve(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = tail call fastcc i32 @VEC_unsigned_base_space(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #25
  store ptr %6, ptr %0, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_unsigned_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !247
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !247
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_space(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !249
  %6 = load i32, ptr %0, align 4, !tbaa !247
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
define internal fastcc void @VEC_constraint_t_base_replace(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 2, i64 %3
  store ptr null, ptr %4, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_equivalent_node(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !198
  %6 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %1) #25
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr %0, align 8, !tbaa !27
  %9 = icmp ugt i32 %8, %2
  br i1 %7, label %10, label %34

10:                                               ; preds = %3
  br i1 %9, label %12, label %11

11:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2246, ptr noundef nonnull @.str.27) #25
  br label %12

12:                                               ; preds = %10, %11
  %13 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !196
  %15 = zext i32 %2 to i64
  %16 = getelementptr inbounds i32, ptr %14, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !30
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %30, label %19

19:                                               ; preds = %12
  %20 = tail call fastcc zeroext i8 @unite(i32 noundef %17, i32 noundef %1) #23, !range !36
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %13, align 8, !tbaa !196
  %24 = getelementptr inbounds i32, ptr %23, i64 %15
  %25 = load i32, ptr %24, align 4, !tbaa !30
  tail call fastcc void @unify_nodes(ptr noundef nonnull %0, i32 noundef %25, i32 noundef %1, i8 noundef zeroext 0) #23
  br label %26

26:                                               ; preds = %22, %19
  %27 = load ptr, ptr %13, align 8, !tbaa !196
  %28 = getelementptr inbounds i32, ptr %27, i64 %15
  %29 = load i32, ptr %28, align 4, !tbaa !30
  br label %48

30:                                               ; preds = %12
  store i32 %1, ptr %16, align 4, !tbaa !30
  %31 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !92
  %33 = getelementptr inbounds i32, ptr %32, i64 %15
  store i32 %1, ptr %33, align 4, !tbaa !30
  br label %48

34:                                               ; preds = %3
  br i1 %9, label %36, label %35

35:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2263, ptr noundef nonnull @.str.27) #25
  br label %36

36:                                               ; preds = %34, %35
  %37 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !91
  %39 = zext i32 %1 to i64
  %40 = getelementptr inbounds i32, ptr %38, i64 %39
  store i32 %2, ptr %40, align 4, !tbaa !30
  %41 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !92
  %43 = zext i32 %2 to i64
  %44 = getelementptr inbounds i32, ptr %42, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !30
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 %1, ptr %44, align 4, !tbaa !30
  br label %48

48:                                               ; preds = %30, %47, %36, %26
  %49 = phi i32 [ %29, %26 ], [ %1, %36 ], [ %1, %47 ], [ %1, %30 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @unite(i32 noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = load ptr, ptr @graph, align 8, !tbaa !6
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %5 = icmp ugt i32 %4, %0
  %6 = icmp ugt i32 %4, %1
  %7 = and i1 %5, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 534, ptr noundef nonnull @.str.27) #25
  br label %9

9:                                                ; preds = %2, %8
  %10 = icmp eq i32 %0, %1
  br i1 %10, label %20, label %11

11:                                               ; preds = %9
  %12 = load ptr, ptr @graph, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.constraint_graph, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !29
  %15 = zext i32 %1 to i64
  %16 = getelementptr inbounds i32, ptr %14, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !30
  %18 = icmp eq i32 %17, %0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  store i32 %0, ptr %16, align 4, !tbaa !30
  br label %20

20:                                               ; preds = %9, %11, %19
  %21 = phi i8 [ 1, %19 ], [ 0, %11 ], [ 0, %9 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unify_nodes(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #6 {
  %5 = icmp eq i32 %1, %2
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc i32 @find(i32 noundef %1) #23
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1404, ptr noundef nonnull @.str.27) #25
  br label %10

10:                                               ; preds = %6, %9
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !30
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %19 = getelementptr inbounds %struct.variable_info, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !16
  %21 = tail call fastcc ptr @get_varinfo(i32 noundef %1) #23
  %22 = getelementptr inbounds %struct.variable_info, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %11, ptr noundef nonnull @.str.80, ptr noundef %20, ptr noundef %23) #23
  br label %25

25:                                               ; preds = %17, %13, %10
  %26 = icmp eq i8 %3, 0
  %27 = select i1 %26, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 2), ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 3)
  %28 = load i32, ptr %27, align 4, !tbaa !30
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !30
  tail call fastcc void @merge_graph_nodes(ptr noundef %0, i32 noundef %1, i32 noundef %2) #23
  tail call fastcc void @merge_node_constraints(ptr noundef %0, i32 noundef %1, i32 noundef %2) #23
  %30 = icmp ne i8 %3, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %25
  %32 = load ptr, ptr @changed, align 8, !tbaa !6
  %33 = lshr i32 %2, 6
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds %struct.simple_bitmap_def, ptr %32, i64 0, i32 3, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !46
  %37 = and i32 %2, 63
  %38 = zext nneg i32 %37 to i64
  %39 = shl nuw i64 1, %38
  %40 = and i64 %36, %39
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %31
  tail call fastcc void @RESET_BIT(ptr noundef nonnull %32, i32 noundef %2) #23
  %43 = lshr i32 %1, 6
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds %struct.simple_bitmap_def, ptr %32, i64 0, i32 3, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !46
  %47 = and i32 %1, 63
  %48 = zext nneg i32 %47 to i64
  %49 = shl nuw i64 1, %48
  %50 = and i64 %46, %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  tail call fastcc void @SET_BIT(ptr noundef nonnull %32, i32 noundef %1) #23
  br label %61

53:                                               ; preds = %42
  %54 = load i32, ptr @changed_count, align 4, !tbaa !30
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1428, ptr noundef nonnull @.str.27) #25
  %57 = load i32, ptr @changed_count, align 4, !tbaa !30
  br label %58

58:                                               ; preds = %53, %56
  %59 = phi i32 [ %54, %53 ], [ %57, %56 ]
  %60 = add i32 %59, -1
  store i32 %60, ptr @changed_count, align 4, !tbaa !30
  br label %61

61:                                               ; preds = %52, %58, %31, %25
  %62 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %63 = getelementptr inbounds %struct.variable_info, ptr %62, i64 0, i32 8
  %64 = load ptr, ptr %63, align 8, !tbaa !35
  %65 = icmp eq ptr %64, null
  br i1 %65, label %109, label %66

66:                                               ; preds = %61
  %67 = tail call fastcc ptr @get_varinfo(i32 noundef %1) #23
  %68 = getelementptr inbounds %struct.variable_info, ptr %67, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !35
  %70 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %69, ptr noundef nonnull %64) #25
  %71 = icmp ne i8 %70, 0
  %72 = and i1 %30, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = load ptr, ptr @changed, align 8, !tbaa !6
  %75 = lshr i32 %1, 6
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds %struct.simple_bitmap_def, ptr %74, i64 0, i32 3, i64 %76
  %78 = load i64, ptr %77, align 8, !tbaa !46
  %79 = and i32 %1, 63
  %80 = zext nneg i32 %79 to i64
  %81 = shl nuw i64 1, %80
  %82 = and i64 %78, %81
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  tail call fastcc void @SET_BIT(ptr noundef nonnull %74, i32 noundef %1) #23
  %85 = load i32, ptr @changed_count, align 4, !tbaa !30
  %86 = add i32 %85, 1
  store i32 %86, ptr @changed_count, align 4, !tbaa !30
  br label %87

87:                                               ; preds = %73, %84, %66
  %88 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %89 = getelementptr inbounds %struct.variable_info, ptr %88, i64 0, i32 8
  %90 = load ptr, ptr %89, align 8, !tbaa !35
  tail call void @bitmap_obstack_free(ptr noundef %90) #25
  %91 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %92 = getelementptr inbounds %struct.variable_info, ptr %91, i64 0, i32 8
  store ptr null, ptr %92, align 8, !tbaa !35
  %93 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %94 = getelementptr inbounds %struct.variable_info, ptr %93, i64 0, i32 9
  %95 = load ptr, ptr %94, align 8, !tbaa !135
  tail call void @bitmap_obstack_free(ptr noundef %95) #25
  %96 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %97 = getelementptr inbounds %struct.variable_info, ptr %96, i64 0, i32 9
  store ptr null, ptr %97, align 8, !tbaa !135
  %98 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 4), align 4, !tbaa !67
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %87
  %101 = tail call fastcc ptr @get_varinfo(i32 noundef %1) #23
  %102 = getelementptr inbounds %struct.variable_info, ptr %101, i64 0, i32 9
  %103 = load ptr, ptr %102, align 8, !tbaa !135
  tail call void @bitmap_obstack_free(ptr noundef %103) #25
  %104 = tail call fastcc ptr @get_varinfo(i32 noundef %1) #23
  %105 = getelementptr inbounds %struct.variable_info, ptr %104, i64 0, i32 9
  store ptr null, ptr %105, align 8, !tbaa !135
  %106 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @oldpta_obstack) #25
  %107 = tail call fastcc ptr @get_varinfo(i32 noundef %1) #23
  %108 = getelementptr inbounds %struct.variable_info, ptr %107, i64 0, i32 9
  store ptr %106, ptr %108, align 8, !tbaa !135
  br label %109

109:                                              ; preds = %87, %100, %61
  %110 = tail call fastcc zeroext i8 @valid_graph_edge(ptr noundef %0, i32 noundef %1, i32 noundef %1) #23, !range !36
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !90
  %115 = zext i32 %1 to i64
  %116 = getelementptr inbounds ptr, ptr %114, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !6
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %112
  %120 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %117, i32 noundef %1) #25
  br label %121

121:                                              ; preds = %112, %119, %109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_graph_nodes(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !30
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %5, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !30
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 %8, ptr %12, align 4, !tbaa !30
  br label %16

16:                                               ; preds = %10, %15, %3
  %17 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !90
  %19 = getelementptr inbounds ptr, ptr %18, i64 %6
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %16
  %23 = zext i32 %1 to i64
  %24 = getelementptr inbounds ptr, ptr %18, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #25
  %29 = load ptr, ptr %17, align 8, !tbaa !90
  %30 = getelementptr inbounds ptr, ptr %29, i64 %23
  store ptr %28, ptr %30, align 8, !tbaa !6
  %31 = load ptr, ptr %17, align 8, !tbaa !90
  %32 = getelementptr inbounds ptr, ptr %31, i64 %23
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = getelementptr inbounds ptr, ptr %31, i64 %6
  %35 = load ptr, ptr %34, align 8, !tbaa !6
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
define internal fastcc void @merge_node_constraints(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %5 = tail call fastcc i32 @find(i32 noundef %2) #23
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 969, ptr noundef nonnull @.str.27) #25
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = zext i32 %2 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %4) #23, !range !22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %8, %31
  %17 = phi i32 [ %33, %31 ], [ 0, %8 ]
  %18 = load ptr, ptr %4, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.constraint, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !19
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.constraint, ptr %18, i64 0, i32 1, i32 1
  br label %31

24:                                               ; preds = %16
  %25 = load i32, ptr %18, align 8, !tbaa !10
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
  store i32 %1, ptr %32, align 4, !tbaa !30
  %33 = add i32 %17, 1
  %34 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %13, i32 noundef %33, ptr noundef nonnull %4) #23, !range !22
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %16, !llvm.loop !250

36:                                               ; preds = %31, %8
  %37 = zext i32 %1 to i64
  %38 = getelementptr inbounds ptr, ptr %10, i64 %37
  tail call fastcc void @constraint_set_union(ptr noundef %38, ptr noundef nonnull %12) #23
  %39 = load ptr, ptr %9, align 8, !tbaa !88
  %40 = getelementptr inbounds ptr, ptr %39, i64 %11
  tail call fastcc void @VEC_constraint_t_heap_free(ptr noundef %40) #23
  %41 = load ptr, ptr %9, align 8, !tbaa !88
  %42 = getelementptr inbounds ptr, ptr %41, i64 %11
  store ptr null, ptr %42, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @valid_graph_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

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
define internal fastcc void @constraint_set_union(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %4 = load ptr, ptr %1, align 8, !tbaa !6
  %5 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %3) #23, !range !22
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2, %17
  %8 = phi ptr [ %18, %17 ], [ %4, %2 ]
  %9 = phi i32 [ %19, %17 ], [ 0, %2 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  %11 = load ptr, ptr %3, align 8, !tbaa !6
  %12 = tail call fastcc ptr @constraint_vec_find(ptr noundef %10, ptr noundef byval(%struct.constraint) align 8 %11) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = tail call fastcc i32 @VEC_constraint_t_base_lower_bound(ptr noundef %10, ptr noundef %11) #23
  tail call fastcc void @VEC_constraint_t_heap_safe_insert(ptr noundef nonnull %0, i32 noundef %15, ptr noundef %11) #23
  %16 = load ptr, ptr %1, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi ptr [ %8, %7 ], [ %16, %14 ]
  %19 = add nuw nsw i32 %9, 1
  %20 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %18, i32 noundef %19, ptr noundef nonnull %3) #23, !range !22
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %7, !llvm.loop !251

22:                                               ; preds = %17, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_constraint_t_heap_free(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @constraint_vec_find(ptr noundef readonly %0, ptr nocapture noundef readonly byval(%struct.constraint) align 8 %1) unnamed_addr #12 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = call fastcc i32 @VEC_constraint_t_base_lower_bound(ptr noundef nonnull %0, ptr noundef nonnull %1) #23
  %6 = tail call fastcc i32 @VEC_constraint_t_base_length(ptr noundef nonnull %0) #23
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @VEC_constraint_t_base_index(ptr noundef nonnull %0, i32 noundef %5) #23
  %10 = tail call fastcc zeroext i8 @constraint_equal(ptr noundef byval(%struct.constraint) align 8 %9, ptr noundef nonnull byval(%struct.constraint) align 8 %1) #23, !range !36
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, ptr null, ptr %9
  br label %13

13:                                               ; preds = %8, %4, %2
  %14 = phi ptr [ null, %2 ], [ null, %4 ], [ %12, %8 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @VEC_constraint_t_base_lower_bound(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = tail call fastcc i32 @VEC_constraint_t_base_length(ptr noundef %0) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %2, %5
  %6 = phi i32 [ %17, %5 ], [ %3, %2 ]
  %7 = phi i32 [ %16, %5 ], [ 0, %2 ]
  %8 = lshr i32 %6, 1
  %9 = add i32 %8, %7
  %10 = tail call fastcc ptr @VEC_constraint_t_base_index(ptr noundef %0, i32 noundef %9) #23
  %11 = tail call fastcc zeroext i8 @constraint_less(ptr noundef %10, ptr noundef %1) #23, !range !36
  %12 = icmp eq i8 %11, 0
  %13 = add i32 %9, 1
  %14 = xor i32 %8, -1
  %15 = add i32 %6, %14
  %16 = select i1 %12, i32 %7, i32 %13
  %17 = select i1 %12, i32 %8, i32 %15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %5, !llvm.loop !252

19:                                               ; preds = %5, %2
  %20 = phi i32 [ 0, %2 ], [ %16, %5 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @constraint_less(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load i64, ptr %0, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = load i64, ptr %1, align 8
  %7 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = tail call fastcc zeroext i8 @constraint_expr_less(i64 %3, i64 %5, i64 %6, i64 %8) #23, !range !36
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = tail call fastcc zeroext i8 @constraint_expr_less(i64 %6, i64 %8, i64 %3, i64 %5) #23, !range !36
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1
  %17 = load i64, ptr %15, align 8
  %18 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = load i64, ptr %16, align 8
  %21 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = tail call fastcc zeroext i8 @constraint_expr_less(i64 %17, i64 %19, i64 %20, i64 %22) #23, !range !36
  br label %24

24:                                               ; preds = %11, %2, %14
  %25 = phi i8 [ %23, %14 ], [ 1, %2 ], [ 0, %11 ]
  ret i8 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_constraint_t_heap_safe_insert(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 {
  tail call fastcc void @VEC_constraint_t_heap_reserve(ptr noundef %0) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @VEC_constraint_t_base_quick_insert(ptr noundef %4, i32 noundef %1, ptr noundef %2) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constraint_t_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !25
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_constraint_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @constraint_equal(ptr nocapture noundef readonly byval(%struct.constraint) align 8 %0, ptr nocapture noundef readonly byval(%struct.constraint) align 8 %1) unnamed_addr #3 {
  %3 = load i64, ptr %0, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = load i64, ptr %1, align 8
  %7 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = tail call fastcc zeroext i8 @constraint_expr_equal(i64 %3, i64 %5, i64 %6, i64 %8) #23, !range !36
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1
  %14 = load i64, ptr %12, align 8
  %15 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = load i64, ptr %13, align 8
  %18 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = tail call fastcc zeroext i8 @constraint_expr_equal(i64 %14, i64 %16, i64 %17, i64 %19) #23, !range !36
  br label %21

21:                                               ; preds = %11, %2
  %22 = phi i8 [ 0, %2 ], [ %20, %11 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @constraint_expr_equal(i64 %0, i64 %1, i64 %2, i64 %3) unnamed_addr #16 {
  %5 = icmp eq i64 %0, %2
  %6 = icmp eq i64 %1, %3
  %7 = select i1 %5, i1 %6, i1 false
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @constraint_expr_less(i64 %0, i64 %1, i64 %2, i64 %3) unnamed_addr #16 {
  %5 = trunc i64 %0 to i32
  %6 = lshr i64 %0, 32
  %7 = trunc i64 %2 to i32
  %8 = lshr i64 %2, 32
  %9 = icmp eq i32 %5, %7
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = icmp eq i64 %6, %8
  br i1 %11, label %12, label %14

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
define internal fastcc void @VEC_constraint_t_base_quick_insert(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 {
  %4 = load i32, ptr %0, align 8, !tbaa !25
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 2, i64 %5
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = add i32 %4, 1
  store i32 %8, ptr %0, align 8, !tbaa !25
  %9 = sub i32 %4, %1
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %6, i64 %11, i1 false)
  store ptr %2, ptr %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @add_graph_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = icmp eq i32 %1, %2
  br i1 %4, label %32, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #25
  %14 = load ptr, ptr %6, align 8, !tbaa !90
  %15 = getelementptr inbounds ptr, ptr %14, i64 %8
  store ptr %13, ptr %15, align 8, !tbaa !6
  %16 = load ptr, ptr %6, align 8, !tbaa !90
  %17 = getelementptr inbounds ptr, ptr %16, i64 %8
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %12, %5
  %20 = phi ptr [ %18, %12 ], [ %10, %5 ]
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %20, i32 noundef %1) #25
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @varmap, align 8
  %25 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %24) #23
  %26 = icmp ugt i32 %25, %1
  %27 = icmp ugt i32 %25, %2
  %28 = and i1 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !68
  %31 = add i32 %30, 1
  store i32 %31, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !68
  br label %32

32:                                               ; preds = %19, %29, %23, %3
  %33 = phi i8 [ 0, %3 ], [ 1, %29 ], [ 1, %23 ], [ 0, %19 ]
  ret i8 %33
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @free_scc_info(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = load ptr, ptr %0, align 8, !tbaa !205
  %3 = load ptr, ptr %2, align 8, !tbaa !218
  tail call void @free(ptr noundef %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !205
  tail call void @free(ptr noundef %4) #23
  %5 = getelementptr inbounds %struct.scc_info, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !233
  %7 = load ptr, ptr %6, align 8, !tbaa !218
  tail call void @free(ptr noundef %7) #23
  %8 = load ptr, ptr %5, align 8, !tbaa !233
  tail call void @free(ptr noundef %8) #23
  %9 = getelementptr inbounds %struct.scc_info, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !207
  tail call void @free(ptr noundef %10) #23
  %11 = getelementptr inbounds %struct.scc_info, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !234
  tail call void @free(ptr noundef %12) #23
  %13 = getelementptr inbounds %struct.scc_info, ptr %0, i64 0, i32 5
  tail call fastcc void @VEC_unsigned_heap_free(ptr noundef nonnull %13) #23
  tail call void @free(ptr noundef %0) #23
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_unsigned_heap_free(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_into_complex(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = tail call fastcc i32 @VEC_constraint_t_base_lower_bound(ptr noundef %8, ptr noundef %2) #23
  %10 = tail call fastcc i32 @VEC_constraint_t_base_length(ptr noundef %8) #23
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = tail call fastcc ptr @VEC_constraint_t_base_index(ptr noundef %8, i32 noundef %9) #23
  %14 = tail call fastcc zeroext i8 @constraint_equal(ptr noundef byval(%struct.constraint) align 8 %2, ptr noundef byval(%struct.constraint) align 8 %13) #23, !range !36
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %3
  tail call fastcc void @VEC_constraint_t_heap_safe_insert(ptr noundef nonnull %7, i32 noundef %9, ptr noundef %2) #23
  br label %17

17:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scc_visit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %7 = load ptr, ptr %1, align 8, !tbaa !205
  tail call fastcc void @SET_BIT(ptr noundef %7, i32 noundef %2) #23
  %8 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !232
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !232
  %11 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !234
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  store i32 %9, ptr %14, align 4, !tbaa !30
  %15 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !90
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %75, label %20

20:                                               ; preds = %3
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %18, ptr noundef nonnull %4) #23
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !36
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %75, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  br label %25

25:                                               ; preds = %23, %67
  %26 = load i32, ptr %4, align 4, !tbaa !30
  %27 = load ptr, ptr @varmap, align 8
  %28 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %27) #23
  %29 = shl i32 %28, 1
  %30 = add i32 %29, -1
  %31 = icmp ugt i32 %26, %30
  br i1 %31, label %70, label %32

32:                                               ; preds = %25
  %33 = tail call fastcc i32 @find(i32 noundef %26) #23
  %34 = load ptr, ptr %24, align 8, !tbaa !233
  %35 = lshr i32 %33, 6
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds %struct.simple_bitmap_def, ptr %34, i64 0, i32 3, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !46
  %39 = and i32 %33, 63
  %40 = zext nneg i32 %39 to i64
  %41 = shl nuw i64 1, %40
  %42 = and i64 %41, %38
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %32
  %45 = load ptr, ptr %1, align 8, !tbaa !205
  %46 = getelementptr inbounds %struct.simple_bitmap_def, ptr %45, i64 0, i32 3, i64 %36
  %47 = load i64, ptr %46, align 8, !tbaa !46
  %48 = and i64 %47, %41
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  tail call fastcc void @scc_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %33) #23
  br label %51

51:                                               ; preds = %50, %44
  %52 = tail call fastcc i32 @find(i32 noundef %33) #23
  %53 = tail call fastcc i32 @find(i32 noundef %2) #23
  %54 = icmp eq i32 %53, %2
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1344, ptr noundef nonnull @.str.27) #25
  br label %56

56:                                               ; preds = %51, %55
  %57 = load ptr, ptr %11, align 8, !tbaa !234
  %58 = zext i32 %52 to i64
  %59 = getelementptr inbounds i32, ptr %57, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !30
  %61 = zext i32 %53 to i64
  %62 = getelementptr inbounds i32, ptr %57, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !30
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = getelementptr inbounds i32, ptr %57, i64 %13
  store i32 %60, ptr %66, align 4, !tbaa !30
  br label %67

67:                                               ; preds = %32, %65, %56
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %68 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !36
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %25, !llvm.loop !253

70:                                               ; preds = %67, %25
  %71 = load ptr, ptr %11, align 8, !tbaa !234
  %72 = getelementptr inbounds i32, ptr %71, i64 %13
  %73 = load i32, ptr %72, align 4, !tbaa !30
  %74 = icmp eq i32 %73, %9
  br i1 %74, label %75, label %141

75:                                               ; preds = %3, %20, %70
  %76 = phi ptr [ %71, %70 ], [ %12, %20 ], [ %12, %3 ]
  %77 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !238
  %79 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %78) #23
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %138, label %81

81:                                               ; preds = %75
  %82 = tail call fastcc i32 @VEC_unsigned_base_last(ptr noundef %78) #23
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, ptr %76, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !30
  %86 = icmp ult i32 %85, %9
  br i1 %86, label %138, label %87

87:                                               ; preds = %81
  %88 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #24
  %89 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %88, i32 noundef %2) #25
  %90 = load ptr, ptr %77, align 8, !tbaa !238
  %91 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %90) #23
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %87, %101
  %94 = phi ptr [ %104, %101 ], [ %90, %87 ]
  %95 = load ptr, ptr %11, align 8, !tbaa !234
  %96 = tail call fastcc i32 @VEC_unsigned_base_last(ptr noundef %94) #23
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, ptr %95, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !30
  %100 = icmp ult i32 %99, %9
  br i1 %100, label %107, label %101

101:                                              ; preds = %93
  %102 = tail call fastcc i32 @VEC_unsigned_base_pop(ptr noundef %94) #23
  %103 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %88, i32 noundef %102) #25
  %104 = load ptr, ptr %77, align 8, !tbaa !238
  %105 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %104) #23
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %93, !llvm.loop !254

107:                                              ; preds = %93, %101, %87
  %108 = tail call i32 @bitmap_first_set_bit(ptr noundef %88) #25
  %109 = load ptr, ptr @varmap, align 8
  %110 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %109) #23
  %111 = icmp ult i32 %108, %110
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1372, ptr noundef nonnull @.str.27) #25
  br label %113

113:                                              ; preds = %107, %112
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %88, ptr noundef nonnull %4) #23
  %114 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %4) #23, !range !36
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %137, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 4
  br label %118

118:                                              ; preds = %116, %134
  %119 = load i32, ptr %4, align 4, !tbaa !30
  %120 = load ptr, ptr @varmap, align 8
  %121 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %120) #23
  %122 = icmp ult i32 %119, %121
  %123 = tail call fastcc zeroext i8 @unite(i32 noundef %108, i32 noundef %119) #23, !range !36
  br i1 %122, label %124, label %127

124:                                              ; preds = %118
  %125 = icmp eq i8 %123, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %124
  tail call fastcc void @unify_nodes(ptr noundef %0, i32 noundef %108, i32 noundef %119, i8 noundef zeroext 0) #23
  br label %134

127:                                              ; preds = %118
  %128 = load ptr, ptr %117, align 8, !tbaa !93
  %129 = load ptr, ptr @varmap, align 8
  %130 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %129) #23
  %131 = sub i32 %119, %130
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %128, i64 %132
  store i32 %108, ptr %133, align 4, !tbaa !30
  br label %134

134:                                              ; preds = %127, %126, %124
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %4) #23
  %135 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %4) #23, !range !36
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %118, !llvm.loop !255

137:                                              ; preds = %134, %113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #24
  br label %138

138:                                              ; preds = %137, %81, %75
  %139 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !233
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
define internal fastcc ptr @init_topo_info() unnamed_addr #6 {
  %1 = load ptr, ptr @graph, align 8, !tbaa !6
  %2 = load i32, ptr %1, align 8, !tbaa !27
  %3 = tail call ptr @xmalloc(i64 noundef 16) #25
  %4 = tail call ptr @sbitmap_alloc(i32 noundef %2) #25
  store ptr %4, ptr %3, align 8, !tbaa !256
  tail call void @sbitmap_zero(ptr noundef %4) #25
  %5 = tail call fastcc ptr @VEC_unsigned_heap_alloc() #23
  %6 = getelementptr inbounds %struct.topo_info, ptr %3, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !226
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_topo_order(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = load i32, ptr %0, align 8, !tbaa !27
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %2, %21
  %6 = phi i32 [ %22, %21 ], [ 0, %2 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !256
  %8 = lshr i32 %6, 6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !46
  %12 = and i32 %6, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = and i64 %11, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = tail call fastcc i32 @find(i32 noundef %6) #23
  %19 = icmp eq i32 %18, %6
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call fastcc void @topo_visit(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %6) #23
  br label %21

21:                                               ; preds = %5, %17, %20
  %22 = add nuw i32 %6, 1
  %23 = icmp eq i32 %22, %3
  br i1 %23, label %24, label %5, !llvm.loop !257

24:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @eliminate_indirect_cycles(i32 noundef %0) unnamed_addr #6 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = load ptr, ptr @graph, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !30
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %52, label %12

12:                                               ; preds = %1
  %13 = tail call fastcc ptr @get_varinfo(i32 noundef %0) #23
  %14 = getelementptr inbounds %struct.variable_info, ptr %13, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = icmp eq ptr %16, null
  br i1 %17, label %52, label %18

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !6
  %19 = tail call fastcc i32 @find(i32 noundef %10) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %20 = tail call fastcc ptr @get_varinfo(i32 noundef %0) #23
  %21 = getelementptr inbounds %struct.variable_info, ptr %20, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %22, ptr noundef nonnull %2) #23
  %23 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #23, !range !36
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %31

25:                                               ; preds = %41
  %26 = load ptr, ptr %3, align 8
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi ptr [ %26, %25 ], [ null, %18 ]
  %29 = call fastcc i32 @VEC_unsigned_base_iterate(ptr noundef %28, i32 noundef 0, ptr noundef nonnull %2) #23, !range !22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %51, label %44

31:                                               ; preds = %18, %41
  %32 = load i32, ptr %2, align 4, !tbaa !30
  %33 = tail call fastcc i32 @find(i32 noundef %32) #23
  %34 = icmp ne i32 %33, %32
  %35 = icmp eq i32 %32, %19
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = tail call fastcc zeroext i8 @unite(i32 noundef %19, i32 noundef %32) #23, !range !36
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  call fastcc void @VEC_unsigned_heap_safe_push(ptr noundef nonnull %3, i32 noundef %32) #23
  br label %41

41:                                               ; preds = %31, %40, %37
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #23
  %42 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #23, !range !36
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %25, label %31, !llvm.loop !258

44:                                               ; preds = %27, %44
  %45 = phi i32 [ %48, %44 ], [ 0, %27 ]
  %46 = load ptr, ptr @graph, align 8, !tbaa !6
  %47 = load i32, ptr %2, align 4, !tbaa !30
  tail call fastcc void @unify_nodes(ptr noundef %46, i32 noundef %19, i32 noundef %47, i8 noundef zeroext 1) #23
  %48 = add nuw nsw i32 %45, 1
  %49 = call fastcc i32 @VEC_unsigned_base_iterate(ptr noundef %28, i32 noundef %48, ptr noundef nonnull %2) #23, !range !22
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %44, !llvm.loop !259

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
define internal fastcc void @do_complex_constraint(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #6 {
  %4 = load i32, ptr %1, align 8, !tbaa !10
  %5 = icmp eq i32 %4, 1
  %6 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !19
  br i1 %5, label %8, label %12

8:                                                ; preds = %3
  %9 = icmp eq i32 %7, 2
  br i1 %9, label %10, label %11

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
  ]

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !15
  %16 = tail call fastcc ptr @get_varinfo(i32 noundef %15) #23
  %17 = getelementptr inbounds %struct.variable_info, ptr %16, i64 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %13
  tail call fastcc void @do_sd_constraint(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #23
  br label %57

22:                                               ; preds = %12
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %12, %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1749, ptr noundef nonnull @.str.27) #25
  br label %25

25:                                               ; preds = %22, %24
  %26 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !20
  %28 = tail call fastcc ptr @get_varinfo(i32 noundef %27) #23
  %29 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !15
  %33 = tail call fastcc ptr @get_varinfo(i32 noundef %32) #23
  %34 = getelementptr inbounds %struct.variable_info, ptr %33, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !21
  %38 = tail call fastcc zeroext i8 @set_union_with_increment(ptr noundef %35, ptr noundef %30, i64 noundef %37) #23
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %25
  %41 = load i32, ptr %31, align 4, !tbaa !15
  %42 = tail call fastcc ptr @get_varinfo(i32 noundef %41) #23
  %43 = getelementptr inbounds %struct.variable_info, ptr %42, i64 0, i32 8
  store ptr %35, ptr %43, align 8, !tbaa !35
  %44 = load ptr, ptr @changed, align 8, !tbaa !6
  %45 = lshr i32 %41, 6
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds %struct.simple_bitmap_def, ptr %44, i64 0, i32 3, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !46
  %49 = and i32 %41, 63
  %50 = zext nneg i32 %49 to i64
  %51 = shl nuw i64 1, %50
  %52 = and i64 %48, %51
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %40
  tail call fastcc void @SET_BIT(ptr noundef nonnull %44, i32 noundef %41) #23
  %55 = load i32, ptr @changed_count, align 4, !tbaa !30
  %56 = add i32 %55, 1
  store i32 %56, ptr @changed_count, align 4, !tbaa !30
  br label %57

57:                                               ; preds = %25, %54, %40, %21, %13, %10, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @set_union_with_increment(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #6 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %7

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
define internal fastcc void @free_topo_info(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = load ptr, ptr %0, align 8, !tbaa !256
  %3 = load ptr, ptr %2, align 8, !tbaa !218
  tail call void @free(ptr noundef %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !256
  tail call void @free(ptr noundef %4) #23
  %5 = getelementptr inbounds %struct.topo_info, ptr %0, i64 0, i32 1
  tail call fastcc void @VEC_unsigned_heap_free(ptr noundef nonnull %5) #23
  tail call void @free(ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @topo_visit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  %6 = load ptr, ptr %1, align 8, !tbaa !256
  tail call fastcc void @SET_BIT(ptr noundef %6, i32 noundef %2) #23
  %7 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %3
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef nonnull %5) #23
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #23, !range !36
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %13, %29
  %17 = load ptr, ptr %1, align 8, !tbaa !256
  %18 = load i32, ptr %5, align 4, !tbaa !30
  %19 = lshr i32 %18, 6
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !46
  %23 = and i32 %18, 63
  %24 = zext nneg i32 %23 to i64
  %25 = shl nuw i64 1, %24
  %26 = and i64 %25, %22
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  tail call fastcc void @topo_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %18) #23
  br label %29

29:                                               ; preds = %16, %28
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #23, !range !36
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %16, !llvm.loop !260

32:                                               ; preds = %29, %13, %3
  %33 = getelementptr inbounds %struct.topo_info, ptr %1, i64 0, i32 1
  tail call fastcc void @VEC_unsigned_heap_safe_push(ptr noundef nonnull %33, i32 noundef %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_unsigned_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !247
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !30
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !30
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_ds_constraint(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #6 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !20
  %7 = tail call fastcc ptr @get_varinfo(i32 noundef %6) #23
  %8 = getelementptr inbounds %struct.variable_info, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %10 = getelementptr inbounds %struct.constraint_expr, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !21
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1624, ptr noundef nonnull @.str.27) #25
  br label %16

16:                                               ; preds = %2, %15
  %17 = tail call i32 @bitmap_bit_p(ptr noundef %9, i32 noundef 1) #25
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = tail call fastcc i32 @find(i32 noundef 1) #23
  %21 = tail call fastcc ptr @get_varinfo(i32 noundef %20) #23
  %22 = getelementptr inbounds %struct.variable_info, ptr %21, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi ptr [ %23, %19 ], [ %9, %16 ]
  %26 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef 1) #25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %24
  %29 = tail call fastcc i32 @find(i32 noundef 6) #23
  %30 = load ptr, ptr @graph, align 8, !tbaa !6
  %31 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %30, i32 noundef %29, i32 noundef %6) #23, !range !36
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %157, label %33

33:                                               ; preds = %28
  %34 = tail call fastcc ptr @get_varinfo(i32 noundef %29) #23
  %35 = getelementptr inbounds %struct.variable_info, ptr %34, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  %37 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %36, ptr noundef %25) #25
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %157, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr @changed, align 8, !tbaa !6
  %41 = lshr i32 %29, 6
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds %struct.simple_bitmap_def, ptr %40, i64 0, i32 3, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !46
  %45 = and i32 %29, 63
  %46 = zext nneg i32 %45 to i64
  %47 = shl nuw i64 1, %46
  %48 = and i64 %44, %47
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %157

50:                                               ; preds = %39
  tail call fastcc void @SET_BIT(ptr noundef nonnull %40, i32 noundef %29) #23
  %51 = load i32, ptr @changed_count, align 4, !tbaa !30
  %52 = add i32 %51, 1
  store i32 %52, ptr @changed_count, align 4, !tbaa !30
  br label %157

53:                                               ; preds = %24
  %54 = icmp eq i64 %11, -9223372036854775808
  br i1 %54, label %55, label %56

55:                                               ; preds = %53
  tail call fastcc void @solution_set_expand(ptr noundef %1, ptr noundef %1) #23
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i64 [ 0, %55 ], [ %11, %53 ]
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #23
  %58 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !36
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %157, label %60

60:                                               ; preds = %56
  %61 = icmp eq i64 %57, 0
  br label %62

62:                                               ; preds = %60, %154
  %63 = load i32, ptr %3, align 4, !tbaa !30
  %64 = tail call fastcc ptr @get_varinfo(i32 noundef %63) #23
  %65 = getelementptr inbounds %struct.variable_info, ptr %64, i64 0, i32 3
  %66 = load i64, ptr %65, align 8, !tbaa !132
  %67 = add i64 %66, %57
  %68 = getelementptr inbounds %struct.variable_info, ptr %64, i64 0, i32 1
  %69 = load i8, ptr %68, align 4
  %70 = icmp sgt i8 %69, -1
  br i1 %70, label %96, label %71

71:                                               ; preds = %62
  %72 = tail call fastcc i32 @find(i32 noundef 3) #23
  %73 = load ptr, ptr @graph, align 8, !tbaa !6
  %74 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %73, i32 noundef %72, i32 noundef %6) #23, !range !36
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %96, label %76

76:                                               ; preds = %71
  %77 = tail call fastcc ptr @get_varinfo(i32 noundef %72) #23
  %78 = getelementptr inbounds %struct.variable_info, ptr %77, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !35
  %80 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %79, ptr noundef %25) #25
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %76
  %83 = load ptr, ptr @changed, align 8, !tbaa !6
  %84 = lshr i32 %72, 6
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds %struct.simple_bitmap_def, ptr %83, i64 0, i32 3, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !46
  %88 = and i32 %72, 63
  %89 = zext nneg i32 %88 to i64
  %90 = shl nuw i64 1, %89
  %91 = and i64 %87, %90
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  tail call fastcc void @SET_BIT(ptr noundef nonnull %83, i32 noundef %72) #23
  %94 = load i32, ptr @changed_count, align 4, !tbaa !30
  %95 = add i32 %94, 1
  store i32 %95, ptr @changed_count, align 4, !tbaa !30
  br label %96

96:                                               ; preds = %71, %76, %82, %93, %62
  %97 = load i8, ptr %68, align 4
  %98 = and i8 %97, 2
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %154

100:                                              ; preds = %96
  %101 = and i8 %97, 8
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  br i1 %61, label %111, label %104

104:                                              ; preds = %103
  %105 = tail call fastcc ptr @first_vi_for_offset(ptr noundef nonnull %64, i64 noundef %67) #23
  %106 = icmp eq ptr %105, null
  br i1 %106, label %154, label %111

107:                                              ; preds = %100, %152
  %108 = phi ptr [ %153, %152 ], [ %65, %100 ]
  %109 = phi ptr [ %150, %152 ], [ %64, %100 ]
  %110 = load i64, ptr %108, align 8, !tbaa !132
  br label %111

111:                                              ; preds = %107, %104, %103
  %112 = phi ptr [ %105, %104 ], [ %64, %103 ], [ %109, %107 ]
  %113 = phi i64 [ %67, %104 ], [ %67, %103 ], [ %110, %107 ]
  %114 = getelementptr inbounds %struct.variable_info, ptr %112, i64 0, i32 1
  %115 = load i8, ptr %114, align 4
  %116 = and i8 %115, 64
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %144, label %118

118:                                              ; preds = %111
  %119 = load i32, ptr %112, align 8, !tbaa !96
  %120 = tail call fastcc i32 @find(i32 noundef %119) #23
  %121 = load ptr, ptr @graph, align 8, !tbaa !6
  %122 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %121, i32 noundef %120, i32 noundef %6) #23, !range !36
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %144, label %124

124:                                              ; preds = %118
  %125 = tail call fastcc ptr @get_varinfo(i32 noundef %120) #23
  %126 = getelementptr inbounds %struct.variable_info, ptr %125, i64 0, i32 8
  %127 = load ptr, ptr %126, align 8, !tbaa !35
  %128 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %127, ptr noundef %25) #25
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %144, label %130

130:                                              ; preds = %124
  %131 = load ptr, ptr @changed, align 8, !tbaa !6
  %132 = lshr i32 %120, 6
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds %struct.simple_bitmap_def, ptr %131, i64 0, i32 3, i64 %133
  %135 = load i64, ptr %134, align 8, !tbaa !46
  %136 = and i32 %120, 63
  %137 = zext nneg i32 %136 to i64
  %138 = shl nuw i64 1, %137
  %139 = and i64 %135, %138
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %130
  tail call fastcc void @SET_BIT(ptr noundef nonnull %131, i32 noundef %120) #23
  %142 = load i32, ptr @changed_count, align 4, !tbaa !30
  %143 = add i32 %142, 1
  store i32 %143, ptr @changed_count, align 4, !tbaa !30
  br label %144

144:                                              ; preds = %118, %124, %130, %141, %111
  %145 = getelementptr inbounds %struct.variable_info, ptr %112, i64 0, i32 3
  %146 = load i64, ptr %145, align 8, !tbaa !132
  %147 = icmp eq i64 %146, %113
  br i1 %147, label %154, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.variable_info, ptr %112, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !97
  %151 = icmp eq ptr %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.variable_info, ptr %150, i64 0, i32 3
  br label %107

154:                                              ; preds = %148, %144, %104, %96
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %155 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !36
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %62, !llvm.loop !261

157:                                              ; preds = %154, %56, %28, %39, %50, %33
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_sd_constraint(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #6 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !15
  %8 = tail call fastcc ptr @get_varinfo(i32 noundef %7) #23
  %9 = getelementptr inbounds %struct.variable_info, ptr %8, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %11 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !18
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1535, ptr noundef nonnull @.str.27) #25
  br label %17

17:                                               ; preds = %3, %16
  %18 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef 1) #25
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %10, i32 noundef 1) #25
  br label %97

22:                                               ; preds = %17
  %23 = icmp eq i64 %12, -9223372036854775808
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call fastcc void @solution_set_expand(ptr noundef %2, ptr noundef %2) #23
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i64 [ 0, %24 ], [ %12, %22 ]
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #23
  %27 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !36
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %116, label %29

29:                                               ; preds = %25
  %30 = icmp eq i64 %26, 0
  br label %31

31:                                               ; preds = %29, %93
  %32 = phi i8 [ 0, %29 ], [ %94, %93 ]
  %33 = load i32, ptr %4, align 4, !tbaa !30
  %34 = tail call fastcc ptr @get_varinfo(i32 noundef %33) #23
  %35 = getelementptr inbounds %struct.variable_info, ptr %34, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !132
  %37 = add i64 %36, %26
  %38 = getelementptr inbounds %struct.variable_info, ptr %34, i64 0, i32 1
  %39 = load i8, ptr %38, align 4
  %40 = and i8 %39, 8
  %41 = icmp ne i8 %40, 0
  %42 = select i1 %41, i1 true, i1 %30
  %43 = select i1 %41, i64 %36, i64 %37
  br i1 %42, label %47, label %44

44:                                               ; preds = %31
  %45 = tail call fastcc ptr @first_vi_for_offset(ptr noundef nonnull %34, i64 noundef %37) #23
  %46 = icmp eq ptr %45, null
  br i1 %46, label %93, label %47

47:                                               ; preds = %31, %44
  %48 = phi ptr [ %34, %31 ], [ %45, %44 ]
  %49 = phi i64 [ %43, %31 ], [ %37, %44 ]
  br label %50

50:                                               ; preds = %47, %90
  %51 = phi ptr [ %88, %90 ], [ %48, %47 ]
  %52 = phi i64 [ %92, %90 ], [ %49, %47 ]
  %53 = phi i8 [ %82, %90 ], [ %32, %47 ]
  %54 = load i32, ptr %51, align 8, !tbaa !96
  %55 = tail call fastcc i32 @find(i32 noundef %54) #23
  %56 = tail call fastcc ptr @get_varinfo(i32 noundef %55) #23
  %57 = getelementptr inbounds %struct.variable_info, ptr %56, i64 0, i32 1
  %58 = load i8, ptr %57, align 4
  %59 = and i8 %58, 2
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.variable_info, ptr %56, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !35
  %64 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %10, ptr noundef %63) #25
  %65 = or i8 %64, %53
  br label %81

66:                                               ; preds = %50
  %67 = load i32, ptr %51, align 8, !tbaa !96
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %10, i32 noundef 3) #25
  %71 = or i8 %70, %53
  br label %81

72:                                               ; preds = %66
  %73 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %0, i32 noundef %7, i32 noundef %55) #23, !range !36
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = tail call fastcc ptr @get_varinfo(i32 noundef %55) #23
  %77 = getelementptr inbounds %struct.variable_info, ptr %76, i64 0, i32 8
  %78 = load ptr, ptr %77, align 8, !tbaa !35
  %79 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %10, ptr noundef %78) #25
  %80 = or i8 %79, %53
  br label %81

81:                                               ; preds = %69, %75, %72, %61
  %82 = phi i8 [ %65, %61 ], [ %71, %69 ], [ %80, %75 ], [ %53, %72 ]
  %83 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 3
  %84 = load i64, ptr %83, align 8, !tbaa !132
  %85 = icmp eq i64 %84, %52
  br i1 %85, label %93, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !97
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.variable_info, ptr %88, i64 0, i32 3
  %92 = load i64, ptr %91, align 8, !tbaa !132
  br label %50

93:                                               ; preds = %86, %81, %44
  %94 = phi i8 [ %32, %44 ], [ %82, %81 ], [ %82, %86 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %95 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !36
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %31, !llvm.loop !262

97:                                               ; preds = %93, %20
  %98 = phi i8 [ %21, %20 ], [ %94, %93 ]
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %97
  %101 = tail call fastcc ptr @get_varinfo(i32 noundef %7) #23
  %102 = getelementptr inbounds %struct.variable_info, ptr %101, i64 0, i32 8
  store ptr %10, ptr %102, align 8, !tbaa !35
  %103 = load ptr, ptr @changed, align 8, !tbaa !6
  %104 = lshr i32 %7, 6
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds %struct.simple_bitmap_def, ptr %103, i64 0, i32 3, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !46
  %108 = and i32 %7, 63
  %109 = zext nneg i32 %108 to i64
  %110 = shl nuw i64 1, %109
  %111 = and i64 %107, %110
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %100
  tail call fastcc void @SET_BIT(ptr noundef nonnull %103, i32 noundef %7) #23
  %114 = load i32, ptr @changed_count, align 4, !tbaa !30
  %115 = add i32 %114, 1
  store i32 %115, ptr @changed_count, align 4, !tbaa !30
  br label %116

116:                                              ; preds = %25, %100, %113, %97
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @solution_set_expand(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4) #23
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !36
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %2, %26
  %8 = phi ptr [ %27, %26 ], [ null, %2 ]
  %9 = load i32, ptr %4, align 4, !tbaa !30
  %10 = tail call fastcc ptr @get_varinfo(i32 noundef %9) #23
  %11 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !84
  %18 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef %17) #23
  %19 = icmp eq ptr %8, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #25
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi ptr [ %21, %20 ], [ %8, %15 ]
  %24 = load i32, ptr %18, align 8, !tbaa !96
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %23, i32 noundef %24) #25
  br label %26

26:                                               ; preds = %7, %22
  %27 = phi ptr [ %23, %22 ], [ %8, %7 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %28 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !36
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %7, !llvm.loop !263

30:                                               ; preds = %26
  %31 = icmp eq ptr %27, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %30
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %27, ptr noundef nonnull %4) #23
  %33 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !36
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %32, %46
  %36 = load i32, ptr %4, align 4, !tbaa !30
  %37 = tail call fastcc ptr @get_varinfo(i32 noundef %36) #23
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %44, %39 ], [ %37, %35 ]
  %41 = load i32, ptr %40, align 8, !tbaa !96
  %42 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %41) #25
  %43 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !97
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %39, !llvm.loop !264

46:                                               ; preds = %39, %35
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %47 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !36
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %35, !llvm.loop !265

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
define internal fastcc void @solution_set_add(ptr noundef %0, i64 noundef %1) unnamed_addr #6 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @iteration_obstack) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %6 = icmp eq i64 %1, -9223372036854775808
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call fastcc void @solution_set_expand(ptr noundef %0, ptr noundef %0) #23
  br label %46

8:                                                ; preds = %2
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %3) #23
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !36
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %8
  %12 = icmp slt i64 %1, 0
  br label %13

13:                                               ; preds = %11, %42
  %14 = load i32, ptr %3, align 4, !tbaa !30
  %15 = tail call fastcc ptr @get_varinfo(i32 noundef %14) #23
  %16 = getelementptr inbounds %struct.variable_info, ptr %15, i64 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 13
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.variable_info, ptr %15, i64 0, i32 3
  %22 = load i64, ptr %21, align 8, !tbaa !132
  %23 = add i64 %22, %1
  %24 = icmp ugt i64 %23, %22
  %25 = select i1 %12, i1 %24, i1 false
  %26 = select i1 %25, i64 0, i64 %23
  %27 = tail call fastcc ptr @first_or_preceding_vi_for_offset(ptr noundef nonnull %15, i64 noundef %26) #23
  %28 = load i32, ptr %27, align 8, !tbaa !96
  %29 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %28) #25
  %30 = getelementptr inbounds %struct.variable_info, ptr %27, i64 0, i32 3
  %31 = load i64, ptr %30, align 8, !tbaa !132
  %32 = icmp eq i64 %31, %26
  br i1 %32, label %42, label %33

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.variable_info, ptr %27, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !97
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %35, align 8, !tbaa !96
  br label %39

39:                                               ; preds = %13, %37
  %40 = phi i32 [ %38, %37 ], [ %14, %13 ]
  %41 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %40) #25
  br label %42

42:                                               ; preds = %39, %20, %33
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %43 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !36
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %13, !llvm.loop !266

45:                                               ; preds = %42, %8
  tail call void @bitmap_copy(ptr noundef %0, ptr noundef %5) #25
  tail call void @bitmap_obstack_free(ptr noundef %5) #25
  br label %46

46:                                               ; preds = %45, %7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_uids_in_ptset(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #6 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %4) #23
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !36
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %3, %29
  %9 = load i32, ptr %4, align 4, !tbaa !30
  %10 = tail call fastcc ptr @get_varinfo(i32 noundef %9) #23
  %11 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 17
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %29, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !84
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %29 [
    i16 32, label %20
    i16 34, label %20
    i16 36, label %20
  ]

20:                                               ; preds = %15, %15, %15
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !61
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %22) #25
  %24 = load i8, ptr %11, align 4
  %25 = icmp sgt i8 %24, -1
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i8, ptr %2, align 8
  %28 = or i8 %27, 16
  store i8 %28, ptr %2, align 8
  br label %29

29:                                               ; preds = %26, %20, %15, %8
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !36
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %8, !llvm.loop !267

32:                                               ; preds = %29, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @shared_bitmap_lookup(ptr noundef %0) unnamed_addr #6 {
  %2 = alloca %struct.shared_bitmap_info, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #24
  store ptr %0, ptr %2, align 8, !tbaa !131
  %3 = tail call i32 @bitmap_hash(ptr noundef %0) #25
  %4 = getelementptr inbounds %struct.shared_bitmap_info, ptr %2, i64 0, i32 1
  store i32 %3, ptr %4, align 8, !tbaa !129
  %5 = load ptr, ptr @shared_bitmap_table, align 8, !tbaa !6
  %6 = call ptr @htab_find_slot_with_hash(ptr noundef %5, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 0) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %6, align 8, !tbaa !6
  %10 = load ptr, ptr %9, align 8, !tbaa !131
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %10, %8 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #24
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shared_bitmap_add(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call ptr @xmalloc(i64 noundef 16) #25
  store ptr %0, ptr %2, align 8, !tbaa !131
  %3 = tail call i32 @bitmap_hash(ptr noundef %0) #25
  %4 = getelementptr inbounds %struct.shared_bitmap_info, ptr %2, i64 0, i32 1
  store i32 %3, ptr %4, align 8, !tbaa !129
  %5 = load ptr, ptr @shared_bitmap_table, align 8, !tbaa !6
  %6 = tail call ptr @htab_find_slot_with_hash(ptr noundef %5, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 1) #25
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 4754, ptr noundef nonnull @.str.27) #25
  br label %10

10:                                               ; preds = %1, %9
  store ptr %2, ptr %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @get_ptr_info(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_varinfo_t_heap_free() unnamed_addr #17 {
  %1 = load ptr, ptr @varmap, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #23
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @varmap, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_pta() #19 {
  %1 = load i32, ptr @flag_tree_pta, align 4, !tbaa !30
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_ipa_pta() #2 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !30
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_ipa_pta, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %16

6:                                                ; preds = %0
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 4
  %9 = load i32, ptr %8, align 8, !tbaa !30
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 5
  %13 = load i32, ptr %12, align 4, !tbaa !30
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %6, %11, %0
  %17 = phi i8 [ 0, %0 ], [ 0, %6 ], [ %15, %11 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ipa_pta_execute() #6 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  store i1 true, ptr @in_ipa_mode, align 4
  tail call fastcc void @init_alias_heapvars() #23
  tail call fastcc void @init_alias_vars() #23
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %96, label %8

5:                                                ; preds = %25
  %6 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %96, label %29

8:                                                ; preds = %0, %25
  %9 = phi ptr [ %27, %25 ], [ %3, %0 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !268
  %11 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %10) #25
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !276
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 18, i32 2
  %19 = load i8, ptr %18, align 8
  %20 = and i8 %19, 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load ptr, ptr %9, align 8, !tbaa !268
  %24 = tail call ptr @cgraph_node_name(ptr noundef nonnull %9) #25
  tail call fastcc void @create_function_info_for(ptr noundef %23, ptr noundef %24) #23
  br label %25

25:                                               ; preds = %17, %8, %13, %22
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %5, label %8, !llvm.loop !277

29:                                               ; preds = %5, %92
  %30 = phi ptr [ %94, %92 ], [ %6, %5 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !268
  %32 = call zeroext i8 @gimple_has_body_p(ptr noundef %31) #25
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %92, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.cgraph_node, ptr %30, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !276
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %92

38:                                               ; preds = %34
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = call ptr @cgraph_node_name(ptr noundef nonnull %30) #25
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %39, ptr noundef nonnull @.str.85, ptr noundef %42) #23
  br label %44

44:                                               ; preds = %41, %38
  %45 = load ptr, ptr %30, align 8, !tbaa !268
  %46 = getelementptr inbounds %struct.tree_function_decl, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !61
  %48 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  call void @push_cfun(ptr noundef %47) #25
  %49 = load ptr, ptr %30, align 8, !tbaa !268
  store ptr %49, ptr @current_function_decl, align 8, !tbaa !6
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
  %57 = load ptr, ptr %56, align 8, !tbaa !71
  %58 = load ptr, ptr %57, align 8, !tbaa !72
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !74
  %61 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !76
  %63 = icmp eq ptr %60, %62
  br i1 %63, label %91, label %64

64:                                               ; preds = %55, %84
  %65 = phi ptr [ %86, %84 ], [ %60, %55 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #24
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %65) #25
  %66 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !36
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
  %75 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !36
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %68, label %77, !llvm.loop !278

77:                                               ; preds = %74, %64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #24
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %65) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #24
  %78 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !36
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77, %80
  %81 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23
  call fastcc void @find_func_aliases(ptr noundef %81) #23
  call fastcc void @gsi_next(ptr noundef nonnull %1) #23
  %82 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !36
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %80, label %84, !llvm.loop !279

84:                                               ; preds = %80, %77
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #24
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !74
  %87 = load ptr, ptr %56, align 8, !tbaa !71
  %88 = getelementptr inbounds %struct.control_flow_graph, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !76
  %90 = icmp eq ptr %86, %89
  br i1 %90, label %91, label %64, !llvm.loop !280

91:                                               ; preds = %84, %55
  store ptr %48, ptr @current_function_decl, align 8, !tbaa !6
  call void @pop_cfun() #25
  br label %92

92:                                               ; preds = %29, %34, %91
  %93 = getelementptr inbounds %struct.cgraph_node, ptr %30, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %29, !llvm.loop !281

96:                                               ; preds = %92, %0, %5
  call fastcc void @solve_constraints() #23
  call fastcc void @delete_points_to_sets() #23
  store i1 false, ptr @in_ipa_mode, align 4
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @gimple_has_body_p(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_function_info_for(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #24
  store i8 0, ptr %3, align 1, !tbaa !61
  %6 = tail call fastcc ptr @new_var_info(ptr noundef %0, ptr noundef %1) #23
  %7 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 3
  store i64 0, ptr %7, align 8, !tbaa !132
  %8 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 4
  store i64 1, ptr %8, align 8, !tbaa !133
  %9 = call fastcc i32 @count_num_arguments(ptr noundef %0, ptr noundef nonnull %3) #23
  %10 = add i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 5
  store i64 %11, ptr %12, align 8, !tbaa !134
  %13 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !84
  tail call fastcc void @insert_vi_for_tree(ptr noundef %14, ptr noundef %6) #23
  %15 = load i32, ptr @stats, align 4, !tbaa !62
  %16 = add i32 %15, 1
  store i32 %16, ptr @stats, align 4, !tbaa !62
  %17 = load i8, ptr %3, align 1, !tbaa !61
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
  %24 = load i64, ptr %12, align 8, !tbaa !134
  %25 = icmp ugt i64 %24, 1
  br i1 %25, label %26, label %59

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !61
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
  %37 = load ptr, ptr %4, align 8, !tbaa !6
  %38 = call ptr @ggc_alloc_string(ptr noundef %37, i32 noundef -1) #25
  %39 = load ptr, ptr %4, align 8, !tbaa !6
  call void @free(ptr noundef %39) #23
  %40 = call fastcc ptr @new_var_info(ptr noundef %34, ptr noundef %38) #23
  %41 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 3
  store i64 %30, ptr %41, align 8, !tbaa !132
  %42 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 4
  store i64 1, ptr %42, align 8, !tbaa !133
  %43 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 1
  %44 = load i8, ptr %43, align 4
  %45 = or i8 %44, 8
  store i8 %45, ptr %43, align 4
  %46 = load i64, ptr %12, align 8, !tbaa !134
  %47 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 5
  store i64 %46, ptr %47, align 8, !tbaa !134
  call fastcc void @insert_into_field_list_sorted(ptr noundef nonnull %6, ptr noundef %40) #23
  %48 = load i32, ptr @stats, align 4, !tbaa !62
  %49 = add i32 %48, 1
  store i32 %49, ptr @stats, align 4, !tbaa !62
  br i1 %33, label %53, label %50

50:                                               ; preds = %29
  call fastcc void @insert_vi_for_tree(ptr noundef nonnull %31, ptr noundef nonnull %40) #23
  %51 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !61
  br label %53

53:                                               ; preds = %50, %29
  %54 = phi ptr [ %52, %50 ], [ null, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  %55 = add i32 %32, 1
  %56 = zext i32 %55 to i64
  %57 = load i64, ptr %12, align 8, !tbaa !134
  %58 = icmp ugt i64 %57, %56
  br i1 %58, label %29, label %59, !llvm.loop !282

59:                                               ; preds = %53, %23
  %60 = phi i64 [ 1, %23 ], [ %56, %53 ]
  %61 = phi i64 [ %24, %23 ], [ %57, %53 ]
  %62 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !61
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !61
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !61
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 19
  br i1 %72, label %96, label %73

73:                                               ; preds = %65, %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %74 = add nuw nsw i64 %61, 1
  store i64 %74, ptr %12, align 8, !tbaa !134
  %75 = load ptr, ptr %62, align 8, !tbaa !61
  %76 = icmp eq ptr %75, null
  %77 = select i1 %76, ptr %0, ptr %75
  %78 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.87, ptr noundef %1) #25
  %79 = load ptr, ptr %5, align 8, !tbaa !6
  %80 = call ptr @ggc_alloc_string(ptr noundef %79, i32 noundef -1) #25
  %81 = load ptr, ptr %5, align 8, !tbaa !6
  call void @free(ptr noundef %81) #23
  %82 = call fastcc ptr @new_var_info(ptr noundef %77, ptr noundef %80) #23
  %83 = getelementptr inbounds %struct.variable_info, ptr %82, i64 0, i32 3
  store i64 %60, ptr %83, align 8, !tbaa !132
  %84 = getelementptr inbounds %struct.variable_info, ptr %82, i64 0, i32 4
  store i64 1, ptr %84, align 8, !tbaa !133
  %85 = load i64, ptr %12, align 8, !tbaa !134
  %86 = getelementptr inbounds %struct.variable_info, ptr %82, i64 0, i32 5
  store i64 %85, ptr %86, align 8, !tbaa !134
  %87 = getelementptr inbounds %struct.variable_info, ptr %82, i64 0, i32 1
  %88 = load i8, ptr %87, align 4
  %89 = or i8 %88, 8
  store i8 %89, ptr %87, align 4
  call fastcc void @insert_into_field_list_sorted(ptr noundef nonnull %6, ptr noundef %82) #23
  %90 = load i32, ptr @stats, align 4, !tbaa !62
  %91 = add i32 %90, 1
  store i32 %91, ptr @stats, align 4, !tbaa !62
  %92 = load ptr, ptr %62, align 8, !tbaa !61
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
define internal fastcc i32 @count_num_arguments(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %2 ]
  %8 = phi i32 [ %9, %6 ], [ 0, %2 ]
  %9 = add i32 %8, 1
  %10 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !283

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %9, %6 ]
  %15 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  br label %26

22:                                               ; preds = %26
  %23 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26, !llvm.loop !284

26:                                               ; preds = %20, %22
  %27 = phi ptr [ %18, %20 ], [ %24, %22 ]
  %28 = getelementptr inbounds %struct.tree_list, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !61
  %30 = icmp eq ptr %29, %21
  br i1 %30, label %32, label %22

31:                                               ; preds = %22, %13
  store i8 1, ptr %1, align 1, !tbaa !61
  br label %32

32:                                               ; preds = %26, %31
  ret i32 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @insert_into_field_list_sorted(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !132
  %9 = getelementptr inbounds %struct.variable_info, ptr %4, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !132
  %11 = icmp ugt i64 %8, %10
  br i1 %11, label %18, label %23

12:                                               ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !97
  %13 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !97
  br label %28

14:                                               ; preds = %18
  %15 = getelementptr inbounds %struct.variable_info, ptr %21, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !132
  %17 = icmp ugt i64 %8, %16
  br i1 %17, label %18, label %23, !llvm.loop !285

18:                                               ; preds = %6, %14
  %19 = phi ptr [ %21, %14 ], [ %4, %6 ]
  %20 = getelementptr inbounds %struct.variable_info, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !llvm.loop !285

23:                                               ; preds = %14, %18, %6
  %24 = phi ptr [ %4, %6 ], [ %21, %14 ], [ null, %18 ]
  %25 = phi ptr [ %0, %6 ], [ %19, %18 ], [ %19, %14 ]
  %26 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 2
  %27 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 2
  store ptr %24, ptr %27, align 8, !tbaa !97
  store ptr %1, ptr %26, align 8, !tbaa !97
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
!10 = !{!11, !13, i64 0}
!11 = !{!"constraint", !12, i64 0, !12, i64 16}
!12 = !{!"constraint_expr", !13, i64 0, !13, i64 4, !14, i64 8}
!13 = !{!"int", !8, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!11, !13, i64 4}
!16 = !{!17, !7, i64 40}
!17 = !{!"variable_info", !13, i64 0, !13, i64 4, !13, i64 4, !13, i64 4, !13, i64 4, !13, i64 4, !13, i64 4, !13, i64 4, !13, i64 4, !7, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64}
!18 = !{!11, !14, i64 8}
!19 = !{!11, !13, i64 16}
!20 = !{!11, !13, i64 20}
!21 = !{!11, !14, i64 24}
!22 = !{i32 0, i32 2}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!26, !13, i64 0}
!26 = !{!"VEC_constraint_t_base", !13, i64 0, !13, i64 4, !8, i64 8}
!27 = !{!28, !13, i64 0}
!28 = !{!"constraint_graph", !13, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120}
!29 = !{!28, !7, i64 40}
!30 = !{!13, !13, i64 0}
!31 = distinct !{!31, !24}
!32 = distinct !{!32, !24}
!33 = !{!34, !13, i64 0}
!34 = !{!"VEC_varinfo_t_base", !13, i64 0, !13, i64 4, !8, i64 8}
!35 = !{!17, !7, i64 56}
!36 = !{i8 0, i8 2}
!37 = distinct !{!37, !24}
!38 = !{!39, !7, i64 0}
!39 = !{!"bitmap_head_def", !7, i64 0, !7, i64 8, !13, i64 16, !7, i64 24}
!40 = !{!41, !7, i64 0}
!41 = !{!"", !7, i64 0, !7, i64 8, !13, i64 16, !14, i64 24}
!42 = !{!41, !7, i64 8}
!43 = !{!44, !13, i64 16}
!44 = !{!"bitmap_element_def", !7, i64 0, !7, i64 8, !13, i64 16, !8, i64 24}
!45 = !{!41, !13, i64 16}
!46 = !{!14, !14, i64 0}
!47 = !{!41, !14, i64 24}
!48 = distinct !{!48, !24}
!49 = distinct !{!49, !24}
!50 = !{!44, !7, i64 0}
!51 = !{!52, !14, i64 8}
!52 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!53 = !{!52, !14, i64 0}
!54 = !{!52, !14, i64 24}
!55 = !{!52, !14, i64 16}
!56 = !{!57, !7, i64 8}
!57 = !{!"pt_solution", !13, i64 0, !13, i64 0, !13, i64 0, !13, i64 0, !13, i64 0, !13, i64 0, !7, i64 8}
!58 = distinct !{!58, !24}
!59 = !{!60, !7, i64 24}
!60 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !13, i64 104, !13, i64 108, !13, i64 112, !13, i64 116, !13, i64 120, !13, i64 124, !7, i64 128, !13, i64 136, !13, i64 137, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139}
!61 = !{!8, !8, i64 0}
!62 = !{!63, !13, i64 0}
!63 = !{!"constraint_stats", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28}
!64 = !{!63, !13, i64 4}
!65 = !{!63, !13, i64 8}
!66 = !{!63, !13, i64 12}
!67 = !{!63, !13, i64 16}
!68 = !{!63, !13, i64 20}
!69 = !{!63, !13, i64 24}
!70 = distinct !{!70, !24}
!71 = !{!60, !7, i64 8}
!72 = !{!73, !7, i64 0}
!73 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !7, i64 40, !13, i64 48, !8, i64 52, !8, i64 60, !13, i64 68, !13, i64 72}
!74 = !{!75, !7, i64 56}
!75 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !14, i64 72, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96}
!76 = !{!73, !7, i64 8}
!77 = distinct !{!77, !24}
!78 = !{i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !6}
!79 = distinct !{!79, !24}
!80 = distinct !{!80, !24}
!81 = !{!82, !7, i64 16}
!82 = !{!"gimple_df", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !57, i64 32, !57, i64 48, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !13, i64 96, !83, i64 104}
!83 = !{!"ssa_operands", !7, i64 0, !13, i64 8, !13, i64 12, !8, i64 16, !7, i64 24, !7, i64 32}
!84 = !{!17, !7, i64 48}
!85 = distinct !{!85, !24}
!86 = distinct !{!86, !24}
!87 = !{!63, !13, i64 28}
!88 = !{!28, !7, i64 120}
!89 = distinct !{!89, !24}
!90 = !{!28, !7, i64 8}
!91 = !{!28, !7, i64 56}
!92 = !{!28, !7, i64 64}
!93 = !{!28, !7, i64 32}
!94 = !{!95, !13, i64 8}
!95 = !{!"param_info", !7, i64 0, !13, i64 8, !8, i64 12, !13, i64 16, !13, i64 20, !7, i64 24}
!96 = !{!17, !13, i64 0}
!97 = !{!17, !7, i64 8}
!98 = distinct !{!98, !24}
!99 = distinct !{!99, !24}
!100 = !{!60, !7, i64 48}
!101 = distinct !{!101, !24}
!102 = !{!60, !7, i64 56}
!103 = distinct !{!103, !24}
!104 = !{!105, !7, i64 0}
!105 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!106 = !{!107, !7, i64 0}
!107 = !{!"gimple_seq_node_d", !7, i64 0, !7, i64 8, !7, i64 16}
!108 = !{i32 0, i32 256}
!109 = distinct !{!109, !24}
!110 = distinct !{!110, !24}
!111 = distinct !{!111, !24}
!112 = distinct !{!112, !24}
!113 = distinct !{!113, !24}
!114 = distinct !{!114, !24}
!115 = distinct !{!115, !24}
!116 = !{i32 0, i32 65536}
!117 = !{!12, !13, i64 0}
!118 = !{!12, !13, i64 4}
!119 = !{!12, !14, i64 8}
!120 = distinct !{!120, !24}
!121 = distinct !{!121, !24}
!122 = distinct !{!122, !24}
!123 = !{!107, !7, i64 16}
!124 = !{!105, !7, i64 8}
!125 = !{!105, !7, i64 16}
!126 = distinct !{!126, !24}
!127 = !{!128, !13, i64 0}
!128 = !{!"VEC_tree_base", !13, i64 0, !13, i64 4, !8, i64 8}
!129 = !{!130, !13, i64 8}
!130 = !{!"shared_bitmap_info", !7, i64 0, !13, i64 8}
!131 = !{!130, !7, i64 0}
!132 = !{!17, !14, i64 16}
!133 = !{!17, !14, i64 24}
!134 = !{!17, !14, i64 32}
!135 = !{!17, !7, i64 64}
!136 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 8, !46}
!137 = !{i64 0, i64 8, !46}
!138 = !{!34, !13, i64 4}
!139 = !{!26, !13, i64 4}
!140 = !{!141, !7, i64 0}
!141 = !{!"heapvar_map", !142, i64 0, !14, i64 24}
!142 = !{!"tree_map", !143, i64 0, !13, i64 8, !7, i64 16}
!143 = !{!"tree_map_base", !7, i64 0}
!144 = !{!141, !14, i64 24}
!145 = !{!141, !7, i64 16}
!146 = !{!141, !13, i64 8}
!147 = !{!82, !7, i64 0}
!148 = distinct !{!148, !24}
!149 = !{!150, !14, i64 0}
!150 = !{!"fieldoff", !14, i64 0, !14, i64 8, !13, i64 16, !13, i64 16, !13, i64 16}
!151 = !{!150, !14, i64 8}
!152 = distinct !{!152, !24}
!153 = distinct !{!153, !24}
!154 = !{!155, !13, i64 0}
!155 = !{!"VEC_fieldoff_s_base", !13, i64 0, !13, i64 4, !8, i64 8}
!156 = distinct !{!156, !24}
!157 = !{!155, !13, i64 4}
!158 = !{!159, !7, i64 24}
!159 = !{!"ssa_use_operand_d", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24}
!160 = !{!161, !13, i64 0}
!161 = !{!"VEC_ce_s_base", !13, i64 0, !13, i64 4, !8, i64 8}
!162 = distinct !{!162, !24}
!163 = distinct !{!163, !24}
!164 = distinct !{!164, !24}
!165 = distinct !{!165, !24}
!166 = distinct !{!166, !24}
!167 = distinct !{!167, !24}
!168 = distinct !{!168, !24}
!169 = distinct !{!169, !24}
!170 = distinct !{!170, !24}
!171 = distinct !{!171, !24}
!172 = distinct !{!172, !24}
!173 = distinct !{!173, !24}
!174 = distinct !{!174, !24}
!175 = distinct !{!175, !24}
!176 = distinct !{!176, !24}
!177 = distinct !{!177, !24}
!178 = distinct !{!178, !24}
!179 = distinct !{!179, !24}
!180 = distinct !{!180, !24}
!181 = distinct !{!181, !24}
!182 = distinct !{!182, !24}
!183 = !{!161, !13, i64 4}
!184 = !{!75, !13, i64 96}
!185 = !{!186, !7, i64 0}
!186 = !{!"gimple_bb_info", !7, i64 0, !7, i64 8}
!187 = !{!188, !7, i64 0}
!188 = !{!"gimple_seq_d", !7, i64 0, !7, i64 8, !7, i64 16}
!189 = distinct !{!189, !24}
!190 = !{!28, !7, i64 16}
!191 = !{!28, !7, i64 24}
!192 = !{!28, !7, i64 72}
!193 = !{!28, !7, i64 80}
!194 = !{!28, !7, i64 88}
!195 = !{!28, !7, i64 96}
!196 = !{!28, !7, i64 48}
!197 = !{!28, !7, i64 104}
!198 = !{!28, !7, i64 112}
!199 = distinct !{!199, !24}
!200 = distinct !{!200, !24}
!201 = distinct !{!201, !24}
!202 = !{i64 0, i64 4, !30, i64 4, i64 8, !46}
!203 = distinct !{!203, !24}
!204 = distinct !{!204, !24}
!205 = !{!206, !7, i64 0}
!206 = !{!"scc_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !13, i64 32, !7, i64 40}
!207 = !{!206, !7, i64 24}
!208 = distinct !{!208, !24}
!209 = distinct !{!209, !24}
!210 = distinct !{!210, !24}
!211 = distinct !{!211, !24}
!212 = distinct !{!212, !24}
!213 = distinct !{!213, !24}
!214 = distinct !{!214, !24}
!215 = distinct !{!215, !24}
!216 = distinct !{!216, !24}
!217 = distinct !{!217, !24}
!218 = !{!219, !7, i64 0}
!219 = !{!"simple_bitmap_def", !7, i64 0, !13, i64 8, !13, i64 12, !8, i64 16}
!220 = distinct !{!220, !24}
!221 = distinct !{!221, !24}
!222 = distinct !{!222, !24}
!223 = distinct !{!223, !24}
!224 = distinct !{!224, !24}
!225 = distinct !{!225, !24}
!226 = !{!227, !7, i64 8}
!227 = !{!"topo_info", !7, i64 0, !7, i64 8}
!228 = distinct !{!228, !24}
!229 = distinct !{!229, !24}
!230 = distinct !{!230, !24}
!231 = distinct !{!231, !24}
!232 = !{!206, !13, i64 32}
!233 = !{!206, !7, i64 8}
!234 = !{!206, !7, i64 16}
!235 = distinct !{!235, !24, !236, !237}
!236 = !{!"llvm.loop.isvectorized", i32 1}
!237 = !{!"llvm.loop.unroll.runtime.disable"}
!238 = !{!206, !7, i64 40}
!239 = !{!240, !13, i64 0}
!240 = !{!"equiv_class_label", !13, i64 0, !13, i64 4, !7, i64 8}
!241 = !{!240, !7, i64 8}
!242 = distinct !{!242, !24}
!243 = distinct !{!243, !24}
!244 = distinct !{!244, !24}
!245 = distinct !{!245, !24}
!246 = !{!240, !13, i64 4}
!247 = !{!248, !13, i64 0}
!248 = !{!"VEC_unsigned_base", !13, i64 0, !13, i64 4, !8, i64 8}
!249 = !{!248, !13, i64 4}
!250 = distinct !{!250, !24}
!251 = distinct !{!251, !24}
!252 = distinct !{!252, !24}
!253 = distinct !{!253, !24}
!254 = distinct !{!254, !24}
!255 = distinct !{!255, !24}
!256 = !{!227, !7, i64 0}
!257 = distinct !{!257, !24}
!258 = distinct !{!258, !24}
!259 = distinct !{!259, !24}
!260 = distinct !{!260, !24}
!261 = distinct !{!261, !24}
!262 = distinct !{!262, !24}
!263 = distinct !{!263, !24}
!264 = distinct !{!264, !24}
!265 = distinct !{!265, !24}
!266 = distinct !{!266, !24}
!267 = distinct !{!267, !24}
!268 = !{!269, !7, i64 0}
!269 = !{!"cgraph_node", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !270, i64 144, !272, i64 184, !273, i64 224, !274, i64 232, !275, i64 256, !14, i64 288, !13, i64 296, !13, i64 300, !13, i64 304, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 309, !13, i64 309}
!270 = !{!"cgraph_local_info", !7, i64 0, !271, i64 8, !13, i64 32, !13, i64 32, !13, i64 32, !13, i64 32, !13, i64 32, !13, i64 32, !13, i64 32, !13, i64 32}
!271 = !{!"inline_summary", !14, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!272 = !{!"cgraph_global_info", !14, i64 0, !14, i64 8, !7, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !8, i64 36}
!273 = !{!"cgraph_rtl_info", !13, i64 0}
!274 = !{!"cgraph_clone_info", !7, i64 0, !7, i64 8, !7, i64 16}
!275 = !{!"cgraph_thunk_info", !14, i64 0, !14, i64 8, !7, i64 16, !8, i64 24, !8, i64 25, !8, i64 26}
!276 = !{!269, !7, i64 96}
!277 = distinct !{!277, !24}
!278 = distinct !{!278, !24}
!279 = distinct !{!279, !24}
!280 = distinct !{!280, !24}
!281 = distinct !{!281, !24}
!282 = distinct !{!282, !24}
!283 = distinct !{!283, !24}
!284 = distinct !{!284, !24}
!285 = distinct !{!285, !24}
