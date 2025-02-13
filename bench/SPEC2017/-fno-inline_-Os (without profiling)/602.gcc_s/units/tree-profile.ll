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
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.anon = type { ptr, ptr, ptr, ptr }
%struct.histogram_value_t = type { %struct.anon, i32, i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32, i32 }

@pass_tree_profile = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @do_tree_profiling, ptr @tree_profiling, ptr null, ptr null, i32 0, i32 138, i32 12, i32 0, i32 0, i32 0, i32 17 } }, align 8
@.str = private unnamed_addr constant [13 x i8] c"tree_profile\00", align 1
@profile_arc_flag = external local_unnamed_addr global i32, align 4
@flag_test_coverage = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@cgraph_state = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@gcov_type_tmp_var = internal global ptr null, align 8
@flag_profile_values = external local_unnamed_addr global i32, align 4
@flag_value_profile_transformations = external local_unnamed_addr global i32, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@gcov_type_node = internal global ptr null, align 8
@tree_indirect_call_profiler_fn = internal global ptr null, align 8
@ic_gcov_type_ptr_var = internal global ptr null, align 8
@ic_void_ptr_var = internal global ptr null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"tree-profile.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.3 = private unnamed_addr constant [25 x i8] c"__gcov_interval_profiler\00", align 1
@tree_interval_profiler_fn = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"__gcov_pow2_profiler\00", align 1
@tree_pow2_profiler_fn = internal global ptr null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"__gcov_one_value_profiler\00", align 1
@tree_one_value_profiler_fn = internal global ptr null, align 8
@ptr_void = internal global ptr null, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"__gcov_indirect_call_profiler\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"__gcov_average_profiler\00", align 1
@tree_average_profiler_fn = internal global ptr null, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"__gcov_ior_profiler\00", align 1
@tree_ior_profiler_fn = internal global ptr null, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"__gcov_indirect_call_callee\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"__gcov_indirect_call_counters\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@tree_profile_hooks = dso_local local_unnamed_addr global %struct.profile_hooks { ptr @tree_init_edge_profiler, ptr @tree_gen_edge_profiler, ptr @tree_gen_interval_profiler, ptr @tree_gen_pow2_profiler, ptr @tree_gen_one_value_profiler, ptr @tree_gen_const_delta_profiler, ptr @tree_gen_ic_profiler, ptr @tree_gen_average_profiler, ptr @tree_gen_ior_profiler }, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"PROF_edge_counter\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"PROF\00", align 1
@gt_ggc_r_gt_tree_profile_h = dso_local local_unnamed_addr constant [12 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @ptr_void, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @ic_gcov_type_ptr_var, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @ic_void_ptr_var, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_ior_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_average_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_indirect_call_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_one_value_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_pow2_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_interval_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @gcov_type_tmp_var, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @gcov_type_node, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @do_tree_profiling() #0 {
  %1 = load i32, ptr @profile_arc_flag, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_test_coverage, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  %6 = load i32, ptr @flag_branch_probabilities, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  tail call void @tree_register_profile_hooks() #8
  tail call void @gimple_register_value_prof_hooks() #8
  br label %10

10:                                               ; preds = %0, %9
  %11 = phi i8 [ 1, %9 ], [ 0, %0 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_profiling() #0 {
  %1 = load i32, ptr @cgraph_state, align 4, !tbaa !6
  %2 = icmp eq i32 %1, 4
  br i1 %2, label %34, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 20
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 268435456
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  store ptr null, ptr @gcov_type_tmp_var, align 8, !tbaa !10
  tail call void @branch_prob() #8
  %10 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !6
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr @flag_profile_values, align 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  tail call fastcc void @tree_gen_ic_func_profiler() #9
  %16 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !6
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
  %30 = load ptr, ptr @cfun, align 8, !tbaa !10
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 20
  %32 = load i32, ptr %31, align 8
  %33 = or i32 %32, 268435456
  store i32 %33, ptr %31, align 8
  br label %34

34:                                               ; preds = %0, %3, %29
  ret i32 0
}

; Function Attrs: optsize
declare void @tree_register_profile_hooks() local_unnamed_addr #1

; Function Attrs: optsize
declare void @gimple_register_value_prof_hooks() local_unnamed_addr #1

; Function Attrs: optsize
declare void @branch_prob() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_gen_ic_func_profiler() unnamed_addr #0 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
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
  %13 = load ptr, ptr @cfun, align 8, !tbaa !10
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 1
  %18 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %17) #9
  store i32 0, ptr %3, align 8, !tbaa.struct !16
  %19 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %18, ptr %19, align 8, !tbaa.struct !17
  %20 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %2) #9, !range !18
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %57, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 26
  br label %24

24:                                               ; preds = %22, %44
  %25 = load ptr, ptr %2, align 8, !tbaa !10
  %26 = call ptr @split_edge(ptr noundef %25) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %26) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  %27 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %28 = call ptr @build_addr(ptr noundef %27, ptr noundef %27) #8
  %29 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %1, ptr noundef %28, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #8
  %30 = load ptr, ptr @gcov_type_node, align 8, !tbaa !10
  %31 = load i32, ptr %23, align 8, !tbaa !20
  %32 = sext i32 %31 to i64
  %33 = call ptr @build_int_cst(ptr noundef %30, i64 noundef %32) #8
  %34 = load ptr, ptr @tree_indirect_call_profiler_fn, align 8, !tbaa !10
  %35 = load ptr, ptr @ic_gcov_type_ptr_var, align 8, !tbaa !10
  %36 = load ptr, ptr @ic_void_ptr_var, align 8, !tbaa !10
  %37 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %34, i32 noundef 4, ptr noundef %35, ptr noundef %33, ptr noundef %29, ptr noundef %36) #8
  call void @gsi_insert_after(ptr noundef nonnull %1, ptr noundef %37, i32 noundef 0) #8
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !29
  %40 = call fastcc i32 @VEC_edge_base_length(ptr noundef %39) #9
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %44, label %42

42:                                               ; preds = %24
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 370, ptr noundef nonnull @.str.2) #8
  %43 = load ptr, ptr %38, align 8, !tbaa !29
  br label %44

44:                                               ; preds = %24, %42
  %45 = phi ptr [ %39, %24 ], [ %43, %42 ]
  %46 = call fastcc ptr @VEC_edge_base_index(ptr noundef %45, i32 noundef 0) #9
  %47 = call ptr @split_edge(ptr noundef %46) #8
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %47) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  %48 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !10
  %49 = call ptr @build_pointer_type(ptr noundef %48) #8
  %50 = call ptr @build_int_cst(ptr noundef %49, i64 noundef 0) #8
  %51 = load ptr, ptr @ic_void_ptr_var, align 8, !tbaa !10
  %52 = call ptr @gimple_build_assign_stat(ptr noundef %51, ptr noundef %50) #8
  call void @gsi_insert_after(ptr noundef nonnull %1, ptr noundef %52, i32 noundef 0) #8
  call fastcc void @ei_next(ptr noundef nonnull %3) #9
  %53 = load i32, ptr %3, align 8
  %54 = load ptr, ptr %19, align 8
  %55 = call fastcc zeroext i8 @ei_cond(i32 %53, ptr %54, ptr noundef nonnull %2) #9, !range !18
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %24, !llvm.loop !31

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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_init_edge_profiler() #0 {
  %1 = load ptr, ptr @gcov_type_node, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %42

3:                                                ; preds = %0
  %4 = tail call ptr @get_gcov_type() #8
  store ptr %4, ptr @gcov_type_node, align 8, !tbaa !10
  %5 = tail call ptr @build_pointer_type(ptr noundef %4) #8
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !10
  %7 = load ptr, ptr @gcov_type_node, align 8, !tbaa !10
  %8 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !10
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !10
  %10 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %6, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef null) #8
  %11 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.3, ptr noundef %10) #8
  store ptr %11, ptr @tree_interval_profiler_fn, align 8, !tbaa !10
  %12 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !10
  %13 = load ptr, ptr @gcov_type_node, align 8, !tbaa !10
  %14 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %12, ptr noundef %5, ptr noundef %13, ptr noundef null) #8
  %15 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.4, ptr noundef %14) #8
  store ptr %15, ptr @tree_pow2_profiler_fn, align 8, !tbaa !10
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !10
  %17 = load ptr, ptr @gcov_type_node, align 8, !tbaa !10
  %18 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %16, ptr noundef %5, ptr noundef %17, ptr noundef null) #8
  %19 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.5, ptr noundef %18) #8
  store ptr %19, ptr @tree_one_value_profiler_fn, align 8, !tbaa !10
  tail call fastcc void @tree_init_ic_make_global_vars() #9
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !10
  %21 = load ptr, ptr @gcov_type_node, align 8, !tbaa !10
  %22 = load ptr, ptr @ptr_void, align 8, !tbaa !10
  %23 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %20, ptr noundef %5, ptr noundef %21, ptr noundef %22, ptr noundef %22, ptr noundef null) #8
  %24 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.6, ptr noundef %23) #8
  store ptr %24, ptr @tree_indirect_call_profiler_fn, align 8, !tbaa !10
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !10
  %26 = load ptr, ptr @gcov_type_node, align 8, !tbaa !10
  %27 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %25, ptr noundef %5, ptr noundef %26, ptr noundef null) #8
  %28 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.7, ptr noundef %27) #8
  store ptr %28, ptr @tree_average_profiler_fn, align 8, !tbaa !10
  %29 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.8, ptr noundef %27) #8
  store ptr %29, ptr @tree_ior_profiler_fn, align 8, !tbaa !10
  %30 = load ptr, ptr @tree_interval_profiler_fn, align 8, !tbaa !10
  %31 = tail call ptr @decl_assembler_name(ptr noundef %30) #8
  %32 = load ptr, ptr @tree_pow2_profiler_fn, align 8, !tbaa !10
  %33 = tail call ptr @decl_assembler_name(ptr noundef %32) #8
  %34 = load ptr, ptr @tree_one_value_profiler_fn, align 8, !tbaa !10
  %35 = tail call ptr @decl_assembler_name(ptr noundef %34) #8
  %36 = load ptr, ptr @tree_indirect_call_profiler_fn, align 8, !tbaa !10
  %37 = tail call ptr @decl_assembler_name(ptr noundef %36) #8
  %38 = load ptr, ptr @tree_average_profiler_fn, align 8, !tbaa !10
  %39 = tail call ptr @decl_assembler_name(ptr noundef %38) #8
  %40 = load ptr, ptr @tree_ior_profiler_fn, align 8, !tbaa !10
  %41 = tail call ptr @decl_assembler_name(ptr noundef %40) #8
  br label %42

42:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #3 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #9, !range !18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #9
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !10
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #9
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #9
  store ptr %4, ptr %0, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !36
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
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !37
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_abnormal_goto_call_edges(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #9
  %3 = tail call zeroext i8 @stmt_can_make_abnormal_goto(ptr noundef %2) #8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #9, !range !18
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
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.2) #8
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !39
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !39
  ret void
}

; Function Attrs: optsize
declare ptr @get_gcov_type() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_function_type_list(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_fn_decl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_init_ic_make_global_vars() unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !10
  %2 = tail call ptr @build_pointer_type(ptr noundef %1) #8
  store ptr %2, ptr @ptr_void, align 8, !tbaa !10
  %3 = tail call ptr @get_identifier(ptr noundef nonnull @.str.9) #8
  %4 = load ptr, ptr @ptr_void, align 8, !tbaa !10
  %5 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 32, ptr noundef %3, ptr noundef %4) #8
  store ptr %5, ptr @ic_void_ptr_var, align 8, !tbaa !10
  %6 = load i64, ptr %5, align 8
  %7 = or i64 %6, 67108864
  store i64 %7, ptr %5, align 8
  %8 = load ptr, ptr @ic_void_ptr_var, align 8, !tbaa !10
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, -134217729
  store i64 %10, ptr %8, align 8
  %11 = load ptr, ptr @ic_void_ptr_var, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = or i64 %13, 4096
  store i64 %14, ptr %12, align 8
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 5
  store ptr null, ptr %15, align 8, !tbaa !41
  tail call void @varpool_finalize_decl(ptr noundef %11) #8
  %16 = tail call ptr @get_gcov_type() #8
  %17 = tail call ptr @build_pointer_type(ptr noundef %16) #8
  %18 = tail call ptr @get_identifier(ptr noundef nonnull @.str.10) #8
  %19 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 32, ptr noundef %18, ptr noundef %17) #8
  store ptr %19, ptr @ic_gcov_type_ptr_var, align 8, !tbaa !10
  %20 = load i64, ptr %19, align 8
  %21 = or i64 %20, 67108864
  store i64 %21, ptr %19, align 8
  %22 = load ptr, ptr @ic_gcov_type_ptr_var, align 8, !tbaa !10
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, -134217729
  store i64 %24, ptr %22, align 8
  %25 = load ptr, ptr @ic_gcov_type_ptr_var, align 8, !tbaa !10
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = or i64 %27, 4096
  store i64 %28, ptr %26, align 8
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 5
  store ptr null, ptr %29, align 8, !tbaa !41
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
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
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 687, ptr noundef nonnull @.str.2) #8
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !43
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !45
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !33
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @stmt_can_make_abnormal_goto(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !33
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  ret ptr %3
}

; Function Attrs: optsize
declare void @make_abnormal_goto_edges(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_gen_edge_profiler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @gcov_type_tmp_var, align 8, !tbaa !10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @gcov_type_node, align 8, !tbaa !10
  %7 = tail call ptr @create_tmp_var(ptr noundef %6, ptr noundef nonnull @.str.12) #8
  store ptr %7, ptr @gcov_type_tmp_var, align 8, !tbaa !10
  br label %8

8:                                                ; preds = %5, %2
  %9 = tail call ptr @tree_coverage_counter_ref(i32 noundef 0, i32 noundef %0) #8
  %10 = load ptr, ptr @gcov_type_node, align 8, !tbaa !10
  %11 = tail call ptr @build_int_cst(ptr noundef %10, i64 noundef 1) #8
  %12 = load ptr, ptr @gcov_type_tmp_var, align 8, !tbaa !10
  %13 = tail call ptr @gimple_build_assign_stat(ptr noundef %12, ptr noundef %9) #8
  %14 = load ptr, ptr @gcov_type_tmp_var, align 8, !tbaa !10
  %15 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 63, ptr noundef %14, ptr noundef %14, ptr noundef %11) #8
  %16 = tail call ptr @unshare_expr(ptr noundef %9) #8
  %17 = load ptr, ptr @gcov_type_tmp_var, align 8, !tbaa !10
  %18 = tail call ptr @gimple_build_assign_stat(ptr noundef %16, ptr noundef %17) #8
  tail call void @gsi_insert_on_edge(ptr noundef %1, ptr noundef %13) #8
  tail call void @gsi_insert_on_edge(ptr noundef %1, ptr noundef %15) #8
  tail call void @gsi_insert_on_edge(ptr noundef %1, ptr noundef %18) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_gen_interval_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #8
  %7 = call ptr @tree_coverage_counter_ref(i32 noundef %1, i32 noundef %2) #8
  %8 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.histogram_value_t, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !41
  %11 = sext i32 %10 to i64
  %12 = call ptr @build_int_cst_type(ptr noundef %8, i64 noundef %11) #8
  %13 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !10
  %14 = getelementptr inbounds %struct.histogram_value_t, ptr %0, i64 0, i32 3, i32 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !41
  %16 = zext i32 %15 to i64
  %17 = call ptr @build_int_cst_type(ptr noundef %13, i64 noundef %16) #8
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %19 = call ptr @build_addr(ptr noundef %7, ptr noundef %18) #8
  %20 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %19, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #8
  %21 = call fastcc ptr @prepare_instrumented_value(ptr noundef nonnull %4, ptr noundef %0) #9
  %22 = load ptr, ptr @tree_interval_profiler_fn, align 8, !tbaa !10
  %23 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %22, i32 noundef 4, ptr noundef %20, ptr noundef %21, ptr noundef %12, ptr noundef %17) #8
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %23, i32 noundef 0) #8
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_gen_pow2_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #8
  %7 = call ptr @tree_coverage_counter_addr(i32 noundef %1, i32 noundef %2) #8
  %8 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #8
  %9 = call fastcc ptr @prepare_instrumented_value(ptr noundef nonnull %4, ptr noundef %0) #9
  %10 = load ptr, ptr @tree_pow2_profiler_fn, align 8, !tbaa !10
  %11 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %10, i32 noundef 2, ptr noundef %8, ptr noundef %9) #8
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 0) #8
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_gen_one_value_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #8
  %7 = call ptr @tree_coverage_counter_addr(i32 noundef %1, i32 noundef %2) #8
  %8 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #8
  %9 = call fastcc ptr @prepare_instrumented_value(ptr noundef nonnull %4, ptr noundef %0) #9
  %10 = load ptr, ptr @tree_one_value_profiler_fn, align 8, !tbaa !10
  %11 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %10, i32 noundef 2, ptr noundef %8, ptr noundef %9) #8
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 0) #8
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_gen_const_delta_profiler(ptr nocapture readnone %0, i32 %1, i32 %2) #0 {
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 398, ptr noundef nonnull @.str.2) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_gen_ic_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #8
  %7 = call ptr @tree_coverage_counter_addr(i32 noundef %1, i32 noundef %2) #8
  %8 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #8
  %9 = load ptr, ptr @ptr_void, align 8, !tbaa !10
  %10 = call ptr @create_tmp_var(ptr noundef %9, ptr noundef nonnull @.str.13) #8
  %11 = load ptr, ptr @ic_gcov_type_ptr_var, align 8, !tbaa !10
  %12 = call ptr @gimple_build_assign_stat(ptr noundef %11, ptr noundef %8) #8
  %13 = load ptr, ptr %0, align 8, !tbaa !52
  %14 = call ptr @unshare_expr(ptr noundef %13) #8
  %15 = call ptr @gimple_build_assign_stat(ptr noundef %10, ptr noundef %14) #8
  %16 = load ptr, ptr @ic_void_ptr_var, align 8, !tbaa !10
  %17 = call ptr @gimple_build_assign_stat(ptr noundef %16, ptr noundef %10) #8
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %12, i32 noundef 1) #8
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %15, i32 noundef 1) #8
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %17, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_gen_average_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #8
  %7 = call ptr @tree_coverage_counter_addr(i32 noundef %1, i32 noundef %2) #8
  %8 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #8
  %9 = call fastcc ptr @prepare_instrumented_value(ptr noundef nonnull %4, ptr noundef %0) #9
  %10 = load ptr, ptr @tree_average_profiler_fn, align 8, !tbaa !10
  %11 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %10, i32 noundef 2, ptr noundef %8, ptr noundef %9) #8
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 0) #8
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tree_gen_ior_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #8
  %7 = call ptr @tree_coverage_counter_addr(i32 noundef %1, i32 noundef %2) #8
  %8 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #8
  %9 = call fastcc ptr @prepare_instrumented_value(ptr noundef nonnull %4, ptr noundef %0) #9
  %10 = load ptr, ptr @tree_ior_profiler_fn, align 8, !tbaa !10
  %11 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %10, i32 noundef 2, ptr noundef %8, ptr noundef %9) #8
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 0) #8
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

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
define internal fastcc ptr @prepare_instrumented_value(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %11 [
    i16 10, label %8
    i16 12, label %8
  ]

8:                                                ; preds = %2, %2
  %9 = load ptr, ptr @sizetype_tab, align 16, !tbaa !10
  %10 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %9, ptr noundef nonnull %3) #8
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %10, %8 ], [ %3, %2 ]
  %13 = load ptr, ptr @gcov_type_node, align 8, !tbaa !10
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

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #1

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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !11, i64 8}
!13 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !11, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!14 = !{!15, !11, i64 0}
!15 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !11, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!16 = !{i64 0, i64 4, !6, i64 8, i64 8, !10}
!17 = !{i64 0, i64 8, !10}
!18 = !{i8 0, i8 2}
!19 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !10}
!20 = !{!21, !7, i64 304}
!21 = !{!"cgraph_node", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !22, i64 144, !25, i64 184, !26, i64 224, !27, i64 232, !28, i64 256, !24, i64 288, !7, i64 296, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 309, !7, i64 309}
!22 = !{!"cgraph_local_info", !11, i64 0, !23, i64 8, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32}
!23 = !{!"inline_summary", !24, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!24 = !{!"long", !8, i64 0}
!25 = !{!"cgraph_global_info", !24, i64 0, !24, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !8, i64 36}
!26 = !{!"cgraph_rtl_info", !7, i64 0}
!27 = !{!"cgraph_clone_info", !11, i64 0, !11, i64 8, !11, i64 16}
!28 = !{!"cgraph_thunk_info", !24, i64 0, !24, i64 8, !11, i64 16, !8, i64 24, !8, i64 25, !8, i64 26}
!29 = !{!30, !11, i64 8}
!30 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !11, i64 48, !11, i64 56, !8, i64 64, !24, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!34, !11, i64 0}
!34 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!35 = !{!34, !11, i64 8}
!36 = !{!34, !11, i64 16}
!37 = !{!38, !7, i64 0}
!38 = !{!"VEC_edge_base", !7, i64 0, !7, i64 4, !8, i64 8}
!39 = !{!40, !7, i64 0}
!40 = !{!"", !7, i64 0, !11, i64 8}
!41 = !{!8, !8, i64 0}
!42 = !{!30, !7, i64 96}
!43 = !{!44, !11, i64 0}
!44 = !{!"gimple_bb_info", !11, i64 0, !11, i64 8}
!45 = !{!46, !11, i64 0}
!46 = !{!"gimple_seq_d", !11, i64 0, !11, i64 8, !11, i64 16}
!47 = !{!48, !11, i64 0}
!48 = !{!"gimple_seq_node_d", !11, i64 0, !11, i64 8, !11, i64 16}
!49 = !{!50, !11, i64 8}
!50 = !{!"histogram_value_t", !51, i64 0, !7, i64 32, !7, i64 36, !8, i64 40}
!51 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!52 = !{!50, !11, i64 0}
