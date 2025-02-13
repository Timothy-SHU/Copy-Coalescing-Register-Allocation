; ModuleID = 'tree-profile.c'
source_filename = "tree-profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.profile_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.anon = type { ptr, ptr, ptr, ptr }
%struct.histogram_value_t = type { %struct.anon, i32, i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"tree_profile\00", align 1
@pass_tree_profile = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @do_tree_profiling, ptr @tree_profiling, ptr null, ptr null, i32 0, i32 138, i32 12, i32 0, i32 0, i32 0, i32 17 } }, align 8
@tree_profile_hooks = dso_local local_unnamed_addr global %struct.profile_hooks { ptr @tree_init_edge_profiler, ptr @tree_gen_edge_profiler, ptr @tree_gen_interval_profiler, ptr @tree_gen_pow2_profiler, ptr @tree_gen_one_value_profiler, ptr @tree_gen_const_delta_profiler, ptr @tree_gen_ic_profiler, ptr @tree_gen_average_profiler, ptr @tree_gen_ior_profiler }, align 8
@ptr_void = internal global ptr null, align 8
@ic_gcov_type_ptr_var = internal global ptr null, align 8
@ic_void_ptr_var = internal global ptr null, align 8
@tree_ior_profiler_fn = internal global ptr null, align 8
@tree_average_profiler_fn = internal global ptr null, align 8
@tree_indirect_call_profiler_fn = internal global ptr null, align 8
@tree_one_value_profiler_fn = internal global ptr null, align 8
@tree_pow2_profiler_fn = internal global ptr null, align 8
@tree_interval_profiler_fn = internal global ptr null, align 8
@gcov_type_tmp_var = internal global ptr null, align 8
@gcov_type_node = internal global ptr null, align 8
@gt_ggc_r_gt_tree_profile_h = dso_local local_unnamed_addr constant [12 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @ptr_void, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @ic_gcov_type_ptr_var, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @ic_void_ptr_var, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_ior_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_average_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_indirect_call_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_one_value_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_pow2_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_interval_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @gcov_type_tmp_var, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @gcov_type_node, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16
@profile_arc_flag = external local_unnamed_addr global i32, align 4
@flag_test_coverage = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@cgraph_state = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@flag_profile_values = external local_unnamed_addr global i32, align 4
@flag_value_profile_transformations = external local_unnamed_addr global i32, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"tree-profile.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.4 = private unnamed_addr constant [25 x i8] c"__gcov_interval_profiler\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"__gcov_pow2_profiler\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"__gcov_one_value_profiler\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"__gcov_indirect_call_profiler\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"__gcov_average_profiler\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"__gcov_ior_profiler\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"__gcov_indirect_call_callee\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"__gcov_indirect_call_counters\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"PROF_edge_counter\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"PROF\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @do_tree_profiling() #0 !prof !38 !PGOFuncName !39 {
  %1 = load i32, ptr @profile_arc_flag, align 4, !tbaa !40
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_test_coverage, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  %6 = load i32, ptr @flag_branch_probabilities, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %10, !prof !44

9:                                                ; preds = %0
  tail call void @tree_register_profile_hooks() #8
  tail call void @gimple_register_value_prof_hooks() #8
  br label %10

10:                                               ; preds = %0, %9
  %11 = phi i8 [ 1, %9 ], [ 0, %0 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_profiling() #0 !prof !45 !PGOFuncName !46 {
  %1 = load i32, ptr @cgraph_state, align 4, !tbaa !40
  %2 = icmp eq i32 %1, 4
  br i1 %2, label %34, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 20
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 268435456
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  store ptr null, ptr @gcov_type_tmp_var, align 8, !tbaa !47
  tail call void @branch_prob() #8
  %10 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !40
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr @flag_profile_values, align 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  tail call fastcc void @tree_gen_ic_func_profiler() #9
  %16 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !40
  %17 = load i32, ptr @flag_profile_values, align 4
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i32 [ %17, %15 ], [ %12, %9 ]
  %20 = phi i32 [ %16, %15 ], [ %10, %9 ]
  %21 = icmp ne i32 %20, 0
  %22 = icmp ne i32 %19, 0
  %23 = select i1 %21, i1 %22, i1 false
  %24 = load i32, ptr @flag_value_profile_transformations, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = tail call zeroext i8 @value_profile_transformations() #8
  br label %29

29:                                               ; preds = %27, %18
  tail call void @free_dominance_info(i32 noundef 1) #8
  tail call void @free_dominance_info(i32 noundef 2) #8
  %30 = load ptr, ptr @cfun, align 8, !tbaa !47
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 20
  %32 = load i32, ptr %31, align 8
  %33 = or i32 %32, 268435456
  store i32 %33, ptr %31, align 8
  br label %34

34:                                               ; preds = %0, %3, %29
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_init_edge_profiler() #0 !prof !45 !PGOFuncName !49 {
  %1 = load ptr, ptr @gcov_type_node, align 8, !tbaa !47
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %42

3:                                                ; preds = %0
  %4 = tail call ptr @get_gcov_type() #8
  store ptr %4, ptr @gcov_type_node, align 8, !tbaa !47
  %5 = tail call ptr @build_pointer_type(ptr noundef %4) #8
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !47
  %7 = load ptr, ptr @gcov_type_node, align 8, !tbaa !47
  %8 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !47
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !47
  %10 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %6, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef null) #8
  %11 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.4, ptr noundef %10) #8
  store ptr %11, ptr @tree_interval_profiler_fn, align 8, !tbaa !47
  %12 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !47
  %13 = load ptr, ptr @gcov_type_node, align 8, !tbaa !47
  %14 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %12, ptr noundef %5, ptr noundef %13, ptr noundef null) #8
  %15 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.5, ptr noundef %14) #8
  store ptr %15, ptr @tree_pow2_profiler_fn, align 8, !tbaa !47
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !47
  %17 = load ptr, ptr @gcov_type_node, align 8, !tbaa !47
  %18 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %16, ptr noundef %5, ptr noundef %17, ptr noundef null) #8
  %19 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.6, ptr noundef %18) #8
  store ptr %19, ptr @tree_one_value_profiler_fn, align 8, !tbaa !47
  tail call fastcc void @tree_init_ic_make_global_vars() #9
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !47
  %21 = load ptr, ptr @gcov_type_node, align 8, !tbaa !47
  %22 = load ptr, ptr @ptr_void, align 8, !tbaa !47
  %23 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %20, ptr noundef %5, ptr noundef %21, ptr noundef %22, ptr noundef %22, ptr noundef null) #8
  %24 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.7, ptr noundef %23) #8
  store ptr %24, ptr @tree_indirect_call_profiler_fn, align 8, !tbaa !47
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !47
  %26 = load ptr, ptr @gcov_type_node, align 8, !tbaa !47
  %27 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %25, ptr noundef %5, ptr noundef %26, ptr noundef null) #8
  %28 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.8, ptr noundef %27) #8
  store ptr %28, ptr @tree_average_profiler_fn, align 8, !tbaa !47
  %29 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.9, ptr noundef %27) #8
  store ptr %29, ptr @tree_ior_profiler_fn, align 8, !tbaa !47
  %30 = load ptr, ptr @tree_interval_profiler_fn, align 8, !tbaa !47
  %31 = tail call ptr @decl_assembler_name(ptr noundef %30) #8
  %32 = load ptr, ptr @tree_pow2_profiler_fn, align 8, !tbaa !47
  %33 = tail call ptr @decl_assembler_name(ptr noundef %32) #8
  %34 = load ptr, ptr @tree_one_value_profiler_fn, align 8, !tbaa !47
  %35 = tail call ptr @decl_assembler_name(ptr noundef %34) #8
  %36 = load ptr, ptr @tree_indirect_call_profiler_fn, align 8, !tbaa !47
  %37 = tail call ptr @decl_assembler_name(ptr noundef %36) #8
  %38 = load ptr, ptr @tree_average_profiler_fn, align 8, !tbaa !47
  %39 = tail call ptr @decl_assembler_name(ptr noundef %38) #8
  %40 = load ptr, ptr @tree_ior_profiler_fn, align 8, !tbaa !47
  %41 = tail call ptr @decl_assembler_name(ptr noundef %40) #8
  br label %42

42:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_gen_edge_profiler(i32 noundef %0, ptr noundef %1) #0 !prof !45 !PGOFuncName !50 {
  %3 = load ptr, ptr @gcov_type_tmp_var, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @gcov_type_node, align 8, !tbaa !47
  %7 = tail call ptr @create_tmp_var(ptr noundef %6, ptr noundef nonnull @.str.12) #8
  store ptr %7, ptr @gcov_type_tmp_var, align 8, !tbaa !47
  br label %8

8:                                                ; preds = %5, %2
  %9 = tail call ptr @tree_coverage_counter_ref(i32 noundef 0, i32 noundef %0) #8
  %10 = load ptr, ptr @gcov_type_node, align 8, !tbaa !47
  %11 = tail call ptr @build_int_cst(ptr noundef %10, i64 noundef 1) #8
  %12 = load ptr, ptr @gcov_type_tmp_var, align 8, !tbaa !47
  %13 = tail call ptr @gimple_build_assign_stat(ptr noundef %12, ptr noundef %9) #8
  %14 = load ptr, ptr @gcov_type_tmp_var, align 8, !tbaa !47
  %15 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 63, ptr noundef %14, ptr noundef %14, ptr noundef %11) #8
  %16 = tail call ptr @unshare_expr(ptr noundef %9) #8
  %17 = load ptr, ptr @gcov_type_tmp_var, align 8, !tbaa !47
  %18 = tail call ptr @gimple_build_assign_stat(ptr noundef %16, ptr noundef %17) #8
  tail call void @gsi_insert_on_edge(ptr noundef %1, ptr noundef %13) #8
  tail call void @gsi_insert_on_edge(ptr noundef %1, ptr noundef %15) #8
  tail call void @gsi_insert_on_edge(ptr noundef %1, ptr noundef %18) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_gen_interval_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 !prof !45 !PGOFuncName !51 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #8
  %7 = call ptr @tree_coverage_counter_ref(i32 noundef %1, i32 noundef %2) #8
  %8 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.histogram_value_t, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !55
  %11 = sext i32 %10 to i64
  %12 = call ptr @build_int_cst_type(ptr noundef %8, i64 noundef %11) #8
  %13 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !47
  %14 = getelementptr inbounds %struct.histogram_value_t, ptr %0, i64 0, i32 3, i32 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !55
  %16 = zext i32 %15 to i64
  %17 = call ptr @build_int_cst_type(ptr noundef %13, i64 noundef %16) #8
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !47
  %19 = call ptr @build_addr(ptr noundef %7, ptr noundef %18) #8
  %20 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %19, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #8
  %21 = call fastcc ptr @prepare_instrumented_value(ptr noundef nonnull %4, ptr noundef %0) #9
  %22 = load ptr, ptr @tree_interval_profiler_fn, align 8, !tbaa !47
  %23 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %22, i32 noundef 4, ptr noundef %20, ptr noundef %21, ptr noundef %12, ptr noundef %17) #8
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %23, i32 noundef 0) #8
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_gen_pow2_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 !prof !45 !PGOFuncName !56 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #8
  %7 = call ptr @tree_coverage_counter_addr(i32 noundef %1, i32 noundef %2) #8
  %8 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #8
  %9 = call fastcc ptr @prepare_instrumented_value(ptr noundef nonnull %4, ptr noundef %0) #9
  %10 = load ptr, ptr @tree_pow2_profiler_fn, align 8, !tbaa !47
  %11 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %10, i32 noundef 2, ptr noundef %8, ptr noundef %9) #8
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 0) #8
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_gen_one_value_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 !prof !45 !PGOFuncName !57 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #8
  %7 = call ptr @tree_coverage_counter_addr(i32 noundef %1, i32 noundef %2) #8
  %8 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #8
  %9 = call fastcc ptr @prepare_instrumented_value(ptr noundef nonnull %4, ptr noundef %0) #9
  %10 = load ptr, ptr @tree_one_value_profiler_fn, align 8, !tbaa !47
  %11 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %10, i32 noundef 2, ptr noundef %8, ptr noundef %9) #8
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 0) #8
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_gen_const_delta_profiler(ptr nocapture readnone %0, i32 %1, i32 %2) #0 !prof !45 !PGOFuncName !58 {
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 398, ptr noundef nonnull @.str.2) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_gen_ic_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 !prof !45 !PGOFuncName !59 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #8
  %7 = call ptr @tree_coverage_counter_addr(i32 noundef %1, i32 noundef %2) #8
  %8 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #8
  %9 = load ptr, ptr @ptr_void, align 8, !tbaa !47
  %10 = call ptr @create_tmp_var(ptr noundef %9, ptr noundef nonnull @.str.13) #8
  %11 = load ptr, ptr @ic_gcov_type_ptr_var, align 8, !tbaa !47
  %12 = call ptr @gimple_build_assign_stat(ptr noundef %11, ptr noundef %8) #8
  %13 = load ptr, ptr %0, align 8, !tbaa !60
  %14 = call ptr @unshare_expr(ptr noundef %13) #8
  %15 = call ptr @gimple_build_assign_stat(ptr noundef %10, ptr noundef %14) #8
  %16 = load ptr, ptr @ic_void_ptr_var, align 8, !tbaa !47
  %17 = call ptr @gimple_build_assign_stat(ptr noundef %16, ptr noundef %10) #8
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %12, i32 noundef 1) #8
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %15, i32 noundef 1) #8
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %17, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_gen_average_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 !prof !45 !PGOFuncName !61 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #8
  %7 = call ptr @tree_coverage_counter_addr(i32 noundef %1, i32 noundef %2) #8
  %8 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #8
  %9 = call fastcc ptr @prepare_instrumented_value(ptr noundef nonnull %4, ptr noundef %0) #9
  %10 = load ptr, ptr @tree_average_profiler_fn, align 8, !tbaa !47
  %11 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %10, i32 noundef 2, ptr noundef %8, ptr noundef %9) #8
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 0) #8
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_gen_ior_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 !prof !45 !PGOFuncName !62 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #8
  %7 = call ptr @tree_coverage_counter_addr(i32 noundef %1, i32 noundef %2) #8
  %8 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #8
  %9 = call fastcc ptr @prepare_instrumented_value(ptr noundef nonnull %4, ptr noundef %0) #9
  %10 = load ptr, ptr @tree_ior_profiler_fn, align 8, !tbaa !47
  %11 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %10, i32 noundef 2, ptr noundef %8, ptr noundef %9) #8
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 0) #8
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #1

; Function Attrs: optsize
declare void @tree_register_profile_hooks() local_unnamed_addr #1

; Function Attrs: optsize
declare void @gimple_register_value_prof_hooks() local_unnamed_addr #1

; Function Attrs: optsize
declare void @branch_prob() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_gen_ic_func_profiler() unnamed_addr #0 !prof !45 !PGOFuncName !63 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !47
  %7 = tail call ptr @cgraph_node(ptr noundef %6) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 27
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %57, label %12

12:                                               ; preds = %0
  tail call void @tree_init_edge_profiler() #9
  %13 = load ptr, ptr @cfun, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 1
  %18 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %17) #9
  store i32 0, ptr %3, align 8, !tbaa.struct !68
  %19 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %18, ptr %19, align 8, !tbaa.struct !69
  %20 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %2) #9, !range !70
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %57, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 26
  br label %24

24:                                               ; preds = %22, %44
  %25 = load ptr, ptr %2, align 8, !tbaa !47
  %26 = call ptr @split_edge(ptr noundef %25) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %26) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  %27 = load ptr, ptr @current_function_decl, align 8, !tbaa !47
  %28 = call ptr @build_addr(ptr noundef %27, ptr noundef %27) #8
  %29 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %1, ptr noundef %28, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #8
  %30 = load ptr, ptr @gcov_type_node, align 8, !tbaa !47
  %31 = load i32, ptr %23, align 8, !tbaa !72
  %32 = sext i32 %31 to i64
  %33 = call ptr @build_int_cst(ptr noundef %30, i64 noundef %32) #8
  %34 = load ptr, ptr @tree_indirect_call_profiler_fn, align 8, !tbaa !47
  %35 = load ptr, ptr @ic_gcov_type_ptr_var, align 8, !tbaa !47
  %36 = load ptr, ptr @ic_void_ptr_var, align 8, !tbaa !47
  %37 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %34, i32 noundef 4, ptr noundef %35, ptr noundef %33, ptr noundef %29, ptr noundef %36) #8
  call void @gsi_insert_after(ptr noundef nonnull %1, ptr noundef %37, i32 noundef 0) #8
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !81
  %40 = call fastcc i32 @VEC_edge_base_length(ptr noundef %39) #9
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %44, label %42

42:                                               ; preds = %24
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 370, ptr noundef nonnull @.str.2) #8
  %43 = load ptr, ptr %38, align 8, !tbaa !81
  br label %44

44:                                               ; preds = %24, %42
  %45 = phi ptr [ %39, %24 ], [ %43, %42 ]
  %46 = call fastcc ptr @VEC_edge_base_index(ptr noundef %45, i32 noundef 0) #9
  %47 = call ptr @split_edge(ptr noundef %46) #8
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %47) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  %48 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !47
  %49 = call ptr @build_pointer_type(ptr noundef %48) #8
  %50 = call ptr @build_int_cst(ptr noundef %49, i64 noundef 0) #8
  %51 = load ptr, ptr @ic_void_ptr_var, align 8, !tbaa !47
  %52 = call ptr @gimple_build_assign_stat(ptr noundef %51, ptr noundef %50) #8
  call void @gsi_insert_after(ptr noundef nonnull %1, ptr noundef %52, i32 noundef 0) #8
  call fastcc void @ei_next(ptr noundef nonnull %3) #9
  %53 = load i32, ptr %3, align 8
  %54 = load ptr, ptr %19, align 8
  %55 = call fastcc zeroext i8 @ei_cond(i32 %53, ptr %54, ptr noundef nonnull %2) #9, !range !70
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %24, !llvm.loop !83

57:                                               ; preds = %44, %12, %0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #10
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @value_profile_transformations() local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #3 !prof !45 !PGOFuncName !85 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !45 !PGOFuncName !86 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #9, !range !70
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #9
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !47
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !45 !PGOFuncName !87 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #9
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #9
  store ptr %4, ptr %0, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !91
  ret void
}

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !45 !PGOFuncName !92 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !93
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !45 !PGOFuncName !95 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_abnormal_goto_call_edges(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 !prof !45 !PGOFuncName !96 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #9
  %3 = tail call zeroext i8 @stmt_can_make_abnormal_goto(ptr noundef %2) #8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #9, !range !70
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @gimple_bb(ptr noundef %2) #9
  %10 = tail call ptr @split_block(ptr noundef %9, ptr noundef %2) #8
  br label %11

11:                                               ; preds = %8, %5
  %12 = tail call fastcc ptr @gimple_bb(ptr noundef %2) #9
  tail call void @make_abnormal_goto_edges(ptr noundef %12, i8 noundef zeroext 1) #8
  br label %13

13:                                               ; preds = %1, %11
  ret void
}

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !45 !PGOFuncName !97 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #9
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #9
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #8
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !98
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !45 !PGOFuncName !100 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #9
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #9
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !45 !PGOFuncName !101 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #9
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #9
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !45 !PGOFuncName !102 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.2) #8
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !47
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !45 !PGOFuncName !103 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !104
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !105
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 !prof !45 !PGOFuncName !107 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !108
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !45 !PGOFuncName !110 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @stmt_can_make_abnormal_goto(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !45 !PGOFuncName !113 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !45 !PGOFuncName !114 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  ret ptr %3
}

; Function Attrs: optsize
declare void @make_abnormal_goto_edges(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_gcov_type() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_function_type_list(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_fn_decl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_init_ic_make_global_vars() unnamed_addr #0 !prof !45 !PGOFuncName !115 {
  %1 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !47
  %2 = tail call ptr @build_pointer_type(ptr noundef %1) #8
  store ptr %2, ptr @ptr_void, align 8, !tbaa !47
  %3 = tail call ptr @get_identifier(ptr noundef nonnull @.str.10) #8
  %4 = load ptr, ptr @ptr_void, align 8, !tbaa !47
  %5 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 32, ptr noundef %3, ptr noundef %4) #8
  store ptr %5, ptr @ic_void_ptr_var, align 8, !tbaa !47
  %6 = load i64, ptr %5, align 8
  %7 = or i64 %6, 67108864
  store i64 %7, ptr %5, align 8
  %8 = load ptr, ptr @ic_void_ptr_var, align 8, !tbaa !47
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, -134217729
  store i64 %10, ptr %8, align 8
  %11 = load ptr, ptr @ic_void_ptr_var, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = or i64 %13, 4096
  store i64 %14, ptr %12, align 8
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 5
  store ptr null, ptr %15, align 8, !tbaa !55
  tail call void @varpool_finalize_decl(ptr noundef %11) #8
  %16 = tail call ptr @get_gcov_type() #8
  %17 = tail call ptr @build_pointer_type(ptr noundef %16) #8
  %18 = tail call ptr @get_identifier(ptr noundef nonnull @.str.11) #8
  %19 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 32, ptr noundef %18, ptr noundef %17) #8
  store ptr %19, ptr @ic_gcov_type_ptr_var, align 8, !tbaa !47
  %20 = load i64, ptr %19, align 8
  %21 = or i64 %20, 67108864
  store i64 %21, ptr %19, align 8
  %22 = load ptr, ptr @ic_gcov_type_ptr_var, align 8, !tbaa !47
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, -134217729
  store i64 %24, ptr %22, align 8
  %25 = load ptr, ptr @ic_gcov_type_ptr_var, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = or i64 %27, 4096
  store i64 %28, ptr %26, align 8
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 5
  store ptr null, ptr %29, align 8, !tbaa !55
  tail call void @varpool_finalize_decl(ptr noundef %25) #8
  ret void
}

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @tree_coverage_counter_ref(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gsi_insert_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @prepare_instrumented_value(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !45 !PGOFuncName !116 {
  %3 = load ptr, ptr %1, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %11 [
    i16 10, label %8
    i16 12, label %8
  ]

8:                                                ; preds = %2, %2
  %9 = load ptr, ptr @sizetype_tab, align 16, !tbaa !47
  %10 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %9, ptr noundef nonnull %3) #8
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %10, %8 ], [ %3, %2 ]
  %13 = load ptr, ptr @gcov_type_node, align 8, !tbaa !47
  %14 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %13, ptr noundef %12) #8
  %15 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %14, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #8
  ret ptr %15
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @tree_coverage_counter_addr(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @do_tree_profiling, ptr @tree_register_profile_hooks, i64 3}
!36 = !{ptr @do_tree_profiling, ptr @gimple_register_value_prof_hooks, i64 3}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 40}
!39 = !{!"tree-profile.c:do_tree_profiling"}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!"branch_weights", i32 5167, i32 68921}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!"tree-profile.c:tree_profiling"}
!47 = !{!48, !48, i64 0}
!48 = !{!"any pointer", !42, i64 0}
!49 = !{!"tree-profile.c:tree_init_edge_profiler"}
!50 = !{!"tree-profile.c:tree_gen_edge_profiler"}
!51 = !{!"tree-profile.c:tree_gen_interval_profiler"}
!52 = !{!53, !48, i64 8}
!53 = !{!"histogram_value_t", !54, i64 0, !41, i64 32, !41, i64 36, !42, i64 40}
!54 = !{!"", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24}
!55 = !{!42, !42, i64 0}
!56 = !{!"tree-profile.c:tree_gen_pow2_profiler"}
!57 = !{!"tree-profile.c:tree_gen_one_value_profiler"}
!58 = !{!"tree-profile.c:tree_gen_const_delta_profiler"}
!59 = !{!"tree-profile.c:tree_gen_ic_profiler"}
!60 = !{!53, !48, i64 0}
!61 = !{!"tree-profile.c:tree_gen_average_profiler"}
!62 = !{!"tree-profile.c:tree_gen_ior_profiler"}
!63 = !{!"tree-profile.c:tree_gen_ic_func_profiler"}
!64 = !{!65, !48, i64 8}
!65 = !{!"function", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !48, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!66 = !{!67, !48, i64 0}
!67 = !{!"control_flow_graph", !48, i64 0, !48, i64 8, !48, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !48, i64 40, !41, i64 48, !42, i64 52, !42, i64 60, !41, i64 68, !41, i64 72}
!68 = !{i64 0, i64 4, !40, i64 8, i64 8, !47}
!69 = !{i64 0, i64 8, !47}
!70 = !{i8 0, i8 2}
!71 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 8, !47}
!72 = !{!73, !41, i64 304}
!73 = !{!"cgraph_node", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !48, i64 112, !48, i64 120, !48, i64 128, !48, i64 136, !74, i64 144, !77, i64 184, !78, i64 224, !79, i64 232, !80, i64 256, !76, i64 288, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 309, !41, i64 309}
!74 = !{!"cgraph_local_info", !48, i64 0, !75, i64 8, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32}
!75 = !{!"inline_summary", !76, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!76 = !{!"long", !42, i64 0}
!77 = !{!"cgraph_global_info", !76, i64 0, !76, i64 8, !48, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !42, i64 36}
!78 = !{!"cgraph_rtl_info", !41, i64 0}
!79 = !{!"cgraph_clone_info", !48, i64 0, !48, i64 8, !48, i64 16}
!80 = !{!"cgraph_thunk_info", !76, i64 0, !76, i64 8, !48, i64 16, !42, i64 24, !42, i64 25, !42, i64 26}
!81 = !{!82, !48, i64 8}
!82 = !{!"basic_block_def", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !42, i64 32, !48, i64 48, !48, i64 56, !42, i64 64, !76, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"tree-profile.c:ei_start_1"}
!86 = !{!"tree-profile.c:ei_cond"}
!87 = !{!"tree-profile.c:gsi_start_bb"}
!88 = !{!89, !48, i64 0}
!89 = !{!"", !48, i64 0, !48, i64 8, !48, i64 16}
!90 = !{!89, !48, i64 8}
!91 = !{!89, !48, i64 16}
!92 = !{!"tree-profile.c:VEC_edge_base_length"}
!93 = !{!94, !41, i64 0}
!94 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !42, i64 8}
!95 = !{!"tree-profile.c:VEC_edge_base_index"}
!96 = !{!"tree-profile.c:add_abnormal_goto_call_edges"}
!97 = !{!"tree-profile.c:ei_next"}
!98 = !{!99, !41, i64 0}
!99 = !{!"", !41, i64 0, !48, i64 8}
!100 = !{!"tree-profile.c:ei_end_p"}
!101 = !{!"tree-profile.c:ei_edge"}
!102 = !{!"tree-profile.c:ei_container"}
!103 = !{!"tree-profile.c:bb_seq"}
!104 = !{!82, !41, i64 96}
!105 = !{!106, !48, i64 0}
!106 = !{!"gimple_bb_info", !48, i64 0, !48, i64 8}
!107 = !{!"tree-profile.c:gimple_seq_first"}
!108 = !{!109, !48, i64 0}
!109 = !{!"gimple_seq_d", !48, i64 0, !48, i64 8, !48, i64 16}
!110 = !{!"tree-profile.c:gsi_stmt"}
!111 = !{!112, !48, i64 0}
!112 = !{!"gimple_seq_node_d", !48, i64 0, !48, i64 8, !48, i64 16}
!113 = !{!"tree-profile.c:gsi_end_p"}
!114 = !{!"tree-profile.c:gimple_bb"}
!115 = !{!"tree-profile.c:tree_init_ic_make_global_vars"}
!116 = !{!"tree-profile.c:prepare_instrumented_value"}
