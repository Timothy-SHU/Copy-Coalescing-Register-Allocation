; ModuleID = 'tree-scalar-evolution.c'
source_filename = "tree-scalar-evolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.real_value = type { i32, [3 x i64] }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.scev_info_str = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.chrec_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.loop_iterator = type { ptr, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }

@chrec_not_analyzed_yet = dso_local local_unnamed_addr global ptr null, align 8
@chrec_dont_know = dso_local local_unnamed_addr global ptr null, align 8
@chrec_known = dso_local local_unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [29 x i8] c"(get_loop_exit_condition \0A  \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"(analyze_scalar_evolution \0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"  (loop_nb = %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"  (scalar = \00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"(get_scalar_evolution \0A\00", align 1
@nb_get_scev = internal unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"  (scalar_evolution = \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"))\0A\00", align 1
@scalar_evolution_info = internal global ptr null, align 8
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"tree-scalar-evolution.c\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"(analyze_initial_condition \0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"  (loop_phi_node = \0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"  (init_cond = \00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"(analyze_evolution_in_loop \0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"  (loop_phi_node = \00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"  (evolution_function = \00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [20 x i8] c"(add_to_evolution \0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"  (chrec_before = \00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c")\0A  (to_add = \00", align 1
@dconstm1 = external global %struct.real_value, align 8
@.str.20 = private unnamed_addr constant [10 x i8] c"  (res = \00", align 1
@dconst0 = external global %struct.real_value, align 8
@.str.21 = private unnamed_addr constant [15 x i8] c"./tree-chrec.h\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"(set_scalar_evolution \0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"  instantiated_below = %d \0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c")\0A  (scalar_evolution = \00", align 1
@nb_set_scev = internal unnamed_addr global i32 0, align 4
@.str.25 = private unnamed_addr constant [20 x i8] c"(instantiate_scev \0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"  (instantiate_below = %d)\0A\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"  (evolution_loop = %d)\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"  (chrec = \00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"(number_of_iterations_in_loop\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"  (set_nb_iterations_in_loop = \00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"(classify_chrec \00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"  affine_univariate\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"  affine_multivariate\0A\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"  higher_degree_polynomial\0A\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"  undetermined\0A\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"\0A(\0A\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"-----------------------------------------\0A\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"%d\09affine univariate chrecs\0A\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"%d\09affine multivariate chrecs\0A\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"%d\09degree greater than 2 polynomials\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"%d\09chrec_dont_know chrecs\0A\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"%d\09total chrecs\0A\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"%d\09with undetermined coefficients\0A\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"%d\09chrecs in the scev database\0A\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"%d\09sets in the scev database\0A\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"%d\09gets in the scev database\0A\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c")\0A\0A\00", align 1
@flag_wrapv = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@flag_strict_overflow = external local_unnamed_addr global i32, align 4
@.str.49 = private unnamed_addr constant [29 x i8] c"%d\09nb_chrec_dont_know_loops\0A\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"%d\09nb_static_loops\0A\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"%d\09nb_total_loops\0A\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@gt_ggc_r_gt_tree_scalar_evolution_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @scalar_evolution_info, i64 1, i64 8, ptr @gt_ggc_m_P13scev_info_str4htab, ptr @gt_pch_n_P13scev_info_str4htab }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %2
  %5 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %4
  %8 = load i64, ptr %0, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %22 [
    i16 32, label %36
    i16 34, label %36
    i16 29, label %36
    i16 30, label %36
    i16 36, label %36
    i16 31, label %36
    i16 141, label %10
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %12) #18
  %14 = tail call fastcc ptr @get_loop(i32 noundef %1) #18
  %15 = icmp eq ptr %13, null
  br i1 %15, label %36, label %16

16:                                               ; preds = %10
  %17 = icmp eq ptr %14, %13
  br i1 %17, label %36, label %18

18:                                               ; preds = %16
  %19 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %14, ptr noundef nonnull %13) #17
  %20 = icmp ne i8 %19, 0
  %21 = zext i1 %20 to i8
  br label %36

22:                                               ; preds = %7
  %23 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %0) #18
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = zext nneg i32 %23 to i64
  br label %30

27:                                               ; preds = %30
  %28 = add nuw nsw i64 %31, 1
  %29 = icmp eq i64 %28, %26
  br i1 %29, label %36, label %30, !llvm.loop !9

30:                                               ; preds = %25, %27
  %31 = phi i64 [ 0, %25 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %33, i32 noundef %1) #18, !range !11
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %27, label %36

36:                                               ; preds = %30, %27, %22, %18, %10, %16, %7, %7, %7, %7, %7, %7, %4, %2
  %37 = phi i8 [ 0, %2 ], [ 0, %4 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 0, %10 ], [ 1, %16 ], [ %21, %18 ], [ 0, %22 ], [ 1, %30 ], [ 0, %27 ]
  ret i8 %37
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !17
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #18
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !22
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !6
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !6
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @compute_overall_effect_of_inner_loop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  store i8 0, ptr %3, align 1, !tbaa !6
  %4 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 146
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @get_chrec_loop(ptr noundef nonnull %1) #18
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %0, ptr noundef %11) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %13, %10
  %17 = tail call ptr @number_of_latch_executions(ptr noundef %11) #18
  %18 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %11, align 8, !tbaa !23
  %22 = tail call ptr @chrec_apply(i32 noundef %21, ptr noundef nonnull %1, ptr noundef %17) #17
  %23 = load i32, ptr %0, align 8, !tbaa !23
  %24 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %22, i32 noundef %23) #18, !range !11
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = tail call fastcc ptr @instantiate_parameters(ptr noundef nonnull %0, ptr noundef %22) #18
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi ptr [ %27, %26 ], [ %22, %20 ]
  %30 = tail call ptr @compute_overall_effect_of_inner_loop(ptr noundef nonnull %0, ptr noundef %29) #18
  br label %40

31:                                               ; preds = %6
  %32 = load i32, ptr %0, align 8, !tbaa !23
  %33 = call fastcc zeroext i8 @no_evolution_in_loop_p(ptr noundef nonnull %1, i32 noundef %32, ptr noundef nonnull %3) #18, !range !11
  %34 = icmp ne i8 %33, 0
  %35 = load i8, ptr %3, align 1
  %36 = icmp ne i8 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  %38 = load ptr, ptr @chrec_dont_know, align 8
  %39 = select i1 %37, ptr %1, ptr %38
  br label %40

40:                                               ; preds = %31, %16, %28, %13, %2
  %41 = phi ptr [ %1, %2 ], [ %30, %28 ], [ %17, %16 ], [ %1, %13 ], [ %39, %31 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret ptr %41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_chrec_loop(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !6
  %6 = trunc i64 %5 to i32
  %7 = tail call fastcc ptr @get_loop(i32 noundef %6) #18
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @number_of_latch_executions(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.tree_niter_desc, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #19
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 30, i64 1, ptr nonnull %8)
  br label %16

16:                                               ; preds = %14, %10, %6
  %17 = tail call ptr @single_exit(ptr noundef nonnull %0) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %16
  %20 = call zeroext i8 @number_of_iterations_exit(ptr noundef nonnull %0, ptr noundef nonnull %17, ptr noundef nonnull %2, i8 noundef zeroext 0) #17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !28
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !31
  %29 = call i32 @integer_nonzerop(ptr noundef %28) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = call ptr @build_int_cst(ptr noundef %26, i64 noundef 0) #17
  br label %41

33:                                               ; preds = %22
  %34 = load ptr, ptr %27, align 8, !tbaa !31
  %35 = call i32 @integer_zerop(ptr noundef %34) #17
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %23, align 8, !tbaa !28
  br label %41

39:                                               ; preds = %33
  %40 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %41

41:                                               ; preds = %31, %39, %37, %19, %16
  %42 = phi ptr [ %32, %31 ], [ %38, %37 ], [ %40, %39 ], [ %7, %19 ], [ %7, %16 ]
  %43 = call fastcc ptr @set_nb_iterations_in_loop(ptr noundef nonnull %0, ptr noundef %42) #18
  br label %44

44:                                               ; preds = %1, %41
  %45 = phi ptr [ %42, %41 ], [ %4, %1 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #19
  ret ptr %45
}

; Function Attrs: optsize
declare ptr @chrec_apply(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @instantiate_parameters(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @block_before_loop(ptr noundef %0) #18
  %4 = tail call ptr @instantiate_scev(ptr noundef %3, ptr noundef %0, ptr noundef %1) #18
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @no_evolution_in_loop_p(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !17
  %5 = icmp eq ptr %4, %0
  %6 = load ptr, ptr @chrec_dont_know, align 8
  %7 = icmp eq ptr %6, %0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %0, i32 noundef %1) #18, !range !11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #17
  %14 = tail call ptr @hide_evolution_in_other_loops_than_loop(ptr noundef %13, i32 noundef %1) #17
  %15 = tail call fastcc zeroext i8 @tree_is_chrec(ptr noundef %14) #18, !range !11
  %16 = xor i8 %15, 1
  store i8 %16, ptr %2, align 1, !tbaa !6
  br label %17

17:                                               ; preds = %3, %9, %12
  %18 = phi i8 [ 1, %12 ], [ 0, %9 ], [ 0, %3 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @instantiate_scev(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @hash_scev_info, ptr noundef nonnull @eq_scev_info, ptr noundef nonnull @del_scev_info) #17
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 19, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !32
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.26, i32 noundef %15) #18
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %18 = load i32, ptr %1, align 8, !tbaa !23
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.27, i32 noundef %18) #18
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %21 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 11, i64 1, ptr %20)
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %22, ptr noundef %2, i32 noundef 0) #17
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %24 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr %23)
  br label %25

25:                                               ; preds = %11, %7, %3
  %26 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0, ptr noundef %4, i32 noundef 0) #18
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 9, i64 1, ptr nonnull %27)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %35, ptr noundef %26, i32 noundef 0) #17
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %37 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 3, i64 1, ptr %36)
  br label %38

38:                                               ; preds = %33, %29, %25
  tail call void @htab_delete(ptr noundef %4) #17
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @block_before_loop(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @loop_preheader_edge(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !33
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @hide_evolution_in_other_loops_than_loop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @tree_is_chrec(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 146
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef nonnull %0) #18, !range !11
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %5 ]
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef readnone %0) unnamed_addr #5 {
  %2 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %3 = icmp eq ptr %2, %0
  %4 = load ptr, ptr @chrec_known, align 8
  %5 = icmp eq ptr %4, %0
  %6 = select i1 %3, i1 true, i1 %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @chrec_is_positive(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  %6 = load i64, ptr %0, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %46 [
    i16 146, label %8
    i16 23, label %39
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = call zeroext i8 @chrec_is_positive(ptr noundef %11, ptr noundef nonnull %3) #18, !range !11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = call zeroext i8 @chrec_is_positive(ptr noundef %16, ptr noundef nonnull %4) #18, !range !11
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %46, label %19

19:                                               ; preds = %14
  %20 = load i8, ptr %3, align 1, !tbaa !6
  %21 = load i8, ptr %4, align 1, !tbaa !6
  %22 = icmp eq i8 %20, %21
  br i1 %22, label %43, label %23

23:                                               ; preds = %19
  %24 = tail call fastcc zeroext i8 @evolution_function_is_affine_p(ptr noundef nonnull %0) #18, !range !11
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @get_chrec_loop(ptr noundef nonnull %0) #18
  %28 = tail call ptr @number_of_latch_executions(ptr noundef %27) #18
  %29 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %28) #17
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load ptr, ptr %9, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.tree_int_cst, ptr %32, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !6
  %35 = trunc i64 %34 to i32
  %36 = tail call ptr @chrec_apply(i32 noundef %35, ptr noundef nonnull %0, ptr noundef %28) #17
  %37 = call zeroext i8 @chrec_is_positive(ptr noundef %36, ptr noundef nonnull %5) #18, !range !11
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %46, label %43

39:                                               ; preds = %2
  %40 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %0) #17
  %41 = icmp eq i32 %40, 1
  %42 = zext i1 %41 to i8
  br label %43

43:                                               ; preds = %31, %19, %39
  %44 = phi i8 [ %42, %39 ], [ %20, %19 ], [ %20, %31 ]
  %45 = phi i8 [ 1, %39 ], [ 1, %19 ], [ 0, %31 ]
  store i8 %44, ptr %1, align 1, !tbaa !6
  br label %46

46:                                               ; preds = %43, %2, %31, %26, %23, %8, %14
  %47 = phi i8 [ 0, %14 ], [ 0, %8 ], [ 0, %23 ], [ 0, %26 ], [ 0, %31 ], [ 0, %2 ], [ %45, %43 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @evolution_function_is_affine_p(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 146
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = load ptr, ptr %8, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.tree_int_cst, ptr %11, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !6
  %14 = trunc i64 %13 to i32
  %15 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %10, i32 noundef %14) #17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = load ptr, ptr %8, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.tree_int_cst, ptr %20, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !6
  %23 = trunc i64 %22 to i32
  %24 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %19, i32 noundef %23) #17
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17, %7
  br label %27

27:                                               ; preds = %3, %17, %1, %26
  %28 = phi i8 [ 0, %26 ], [ 0, %1 ], [ 1, %17 ], [ 0, %3 ]
  ret i8 %28
}

; Function Attrs: optsize
declare zeroext i8 @chrec_contains_undetermined(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @evolution_function_is_invariant_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_loop_exit_condition(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @single_exit(ptr noundef %0) #17
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr nonnull %3)
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = icmp eq ptr %2, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %2, align 8, !tbaa !34
  %15 = tail call ptr @last_stmt(ptr noundef %14) #17
  %16 = tail call fastcc i32 @gimple_code(ptr noundef %15) #18, !range !36
  %17 = icmp eq i32 %16, 1
  %18 = select i1 %17, ptr %15, ptr null
  br label %19

19:                                               ; preds = %13, %11
  %20 = phi ptr [ %18, %13 ], [ null, %11 ]
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  tail call void @print_gimple_stmt(ptr noundef nonnull %21, ptr noundef %20, i32 noundef 0, i32 noundef 0) #17
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %29 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr %28)
  br label %30

30:                                               ; preds = %27, %23, %19
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @single_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 27, i64 1, ptr nonnull %3)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %12 = load i32, ptr %0, align 8, !tbaa !23
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef %12) #18
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %15 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 12, i64 1, ptr %14)
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %16, ptr noundef %1, i32 noundef 0) #17
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %18 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr %17)
  br label %19

19:                                               ; preds = %9, %5, %2
  %20 = tail call fastcc ptr @block_before_loop(ptr noundef %0) #18
  %21 = tail call fastcc ptr @get_scalar_evolution(ptr noundef %20, ptr noundef %1) #18
  %22 = tail call fastcc ptr @analyze_scalar_evolution_1(ptr noundef %0, ptr noundef %1, ptr noundef %21) #18
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr nonnull %23)
  br label %31

31:                                               ; preds = %29, %25, %19
  ret ptr %22
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_scalar_evolution(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 23, i64 1, ptr nonnull %3)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %12 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 12, i64 1, ptr %11)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %13, ptr noundef %1, i32 noundef 0) #17
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %15 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr %14)
  %16 = load i32, ptr @dump_flags, align 4, !tbaa !22
  br label %17

17:                                               ; preds = %9, %5
  %18 = phi i32 [ %16, %9 ], [ %6, %5 ]
  %19 = and i32 %18, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr @nb_get_scev, align 4, !tbaa !22
  %23 = add i32 %22, 1
  store i32 %23, ptr @nb_get_scev, align 4, !tbaa !22
  br label %24

24:                                               ; preds = %17, %21, %2
  %25 = load i64, ptr %1, align 8
  %26 = trunc i64 %25 to i16
  switch i16 %26, label %30 [
    i16 141, label %27
    i16 24, label %32
    i16 25, label %32
    i16 23, label %32
  ]

27:                                               ; preds = %24
  %28 = tail call fastcc ptr @find_var_scev_info(ptr noundef %0, ptr noundef nonnull %1) #18
  %29 = load ptr, ptr %28, align 8, !tbaa !17
  br label %32

30:                                               ; preds = %24
  %31 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !17
  br label %32

32:                                               ; preds = %24, %24, %24, %30, %27
  %33 = phi ptr [ %31, %30 ], [ %29, %27 ], [ %1, %24 ], [ %1, %24 ], [ %1, %24 ]
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr nonnull %34)
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %42, ptr noundef %33, i32 noundef 0) #17
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %44 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 3, i64 1, ptr %43)
  br label %45

45:                                               ; preds = %40, %36, %32
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @analyze_scalar_evolution_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 14
  br i1 %10, label %11, label %13

11:                                               ; preds = %5, %3
  %12 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %73

13:                                               ; preds = %5
  %14 = load i64, ptr %1, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @interpret_expr(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  br label %73

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = tail call fastcc ptr @gimple_bb(ptr noundef %21) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %63, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %0, ptr noundef nonnull %22) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %63, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !17
  %31 = icmp eq ptr %30, %2
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %25, align 8, !tbaa !12
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %63, label %35

35:                                               ; preds = %32
  %36 = tail call ptr @find_common_loop(ptr noundef nonnull %0, ptr noundef %33) #17
  %37 = load ptr, ptr %25, align 8, !tbaa !12
  %38 = tail call fastcc ptr @compute_scalar_evolution_in_loop(ptr noundef %36, ptr noundef %37, ptr noundef %2) #18
  br label %63

39:                                               ; preds = %29
  %40 = icmp eq ptr %26, %0
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  %42 = tail call fastcc ptr @analyze_scalar_evolution_1(ptr noundef %26, ptr noundef nonnull %1, ptr noundef %2) #18
  %43 = tail call fastcc ptr @compute_scalar_evolution_in_loop(ptr noundef nonnull %0, ptr noundef %26, ptr noundef %42) #18
  br label %63

44:                                               ; preds = %39
  %45 = tail call fastcc i32 @gimple_code(ptr noundef %21) #18, !range !36
  %46 = trunc i32 %45 to i8
  switch i8 %46, label %56 [
    i8 6, label %47
    i8 16, label %49
  ]

47:                                               ; preds = %44
  %48 = tail call fastcc ptr @interpret_gimple_assign(ptr noundef nonnull %0, ptr noundef %21) #18
  br label %58

49:                                               ; preds = %44
  %50 = tail call fastcc zeroext i8 @loop_phi_node_p(ptr noundef %21) #18, !range !11
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = tail call fastcc ptr @interpret_loop_phi(ptr noundef nonnull %0, ptr noundef %21) #18
  br label %58

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @interpret_condition_phi(ptr noundef nonnull %0, ptr noundef %21) #18
  br label %58

56:                                               ; preds = %44
  %57 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %58

58:                                               ; preds = %56, %52, %54, %47
  %59 = phi ptr [ %48, %47 ], [ %55, %54 ], [ %53, %52 ], [ %57, %56 ]
  %60 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %61 = icmp eq ptr %59, %60
  %62 = select i1 %61, ptr %1, ptr %59
  br label %70

63:                                               ; preds = %19, %24, %32, %35, %41
  %64 = phi ptr [ %26, %35 ], [ %26, %32 ], [ %26, %41 ], [ %26, %24 ], [ null, %19 ]
  %65 = phi ptr [ %38, %35 ], [ %2, %32 ], [ %43, %41 ], [ %1, %24 ], [ %1, %19 ]
  %66 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %67 = icmp eq ptr %65, %66
  %68 = select i1 %67, ptr %1, ptr %65
  %69 = icmp eq ptr %64, %0
  br i1 %69, label %70, label %73

70:                                               ; preds = %58, %63
  %71 = phi ptr [ %62, %58 ], [ %68, %63 ]
  %72 = tail call fastcc ptr @block_before_loop(ptr noundef nonnull %0) #18
  tail call fastcc void @set_scalar_evolution(ptr noundef %72, ptr noundef nonnull %1, ptr noundef %71) #18
  br label %73

73:                                               ; preds = %63, %70, %17, %11
  %74 = phi ptr [ %12, %11 ], [ %18, %17 ], [ %71, %70 ], [ %68, %63 ]
  ret ptr %74
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @find_var_scev_info(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.scev_info_str, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.scev_info_str, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !37
  store ptr %0, ptr %3, align 8, !tbaa !39
  %5 = load ptr, ptr @scalar_evolution_info, align 8, !tbaa !17
  %6 = call ptr @htab_find_slot(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 1) #17
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call fastcc ptr @new_scev_info_str(ptr noundef %0, ptr noundef %1) #18
  store ptr %10, ptr %6, align 8, !tbaa !17
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ %7, %2 ]
  %13 = getelementptr inbounds %struct.scev_info_str, ptr %12, i64 0, i32 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_scev_info_str(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #17
  %4 = getelementptr inbounds %struct.scev_info_str, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !37
  %5 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.scev_info_str, ptr %3, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !40
  store ptr %0, ptr %3, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @interpret_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %8 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %1) #18, !range !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 146
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %21

16:                                               ; preds = %10
  call void @extract_ops_from_tree(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %17 = load ptr, ptr %4, align 8, !tbaa !17
  %18 = load i32, ptr %3, align 4, !tbaa !22
  %19 = load ptr, ptr %5, align 8, !tbaa !17
  %20 = call fastcc ptr @interpret_rhs_expr(ptr noundef %0, ptr noundef null, ptr noundef %7, ptr noundef %17, i32 noundef %18, ptr noundef %19) #18
  br label %21

21:                                               ; preds = %2, %16, %14
  %22 = phi ptr [ %15, %14 ], [ %20, %16 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret ptr %22
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compute_scalar_evolution_in_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = tail call fastcc i32 @loop_depth(ptr noundef %0) #18
  %7 = add i32 %6, 1
  %8 = tail call ptr @superloop_at_depth(ptr noundef %1, i32 noundef %7) #17
  %9 = tail call ptr @compute_overall_effect_of_inner_loop(ptr noundef %8, ptr noundef %2) #18
  %10 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !17
  %11 = tail call fastcc ptr @analyze_scalar_evolution_1(ptr noundef %0, ptr noundef %9, ptr noundef %10) #18
  br label %12

12:                                               ; preds = %3, %5
  %13 = phi ptr [ %11, %5 ], [ %2, %3 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @find_common_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @interpret_gimple_assign(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #18
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #18, !range !41
  %7 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #18
  %8 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #18
  %9 = tail call fastcc ptr @interpret_rhs_expr(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %7, i32 noundef %6, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @loop_phi_node_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.loop, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #18
  %6 = icmp eq ptr %4, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @interpret_loop_phi(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %1) #18
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %1) #18
  %7 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %6) #18
  %8 = tail call ptr @analyze_scalar_evolution(ptr noundef %3, ptr noundef %7) #18
  %9 = tail call fastcc i32 @loop_depth(ptr noundef %0) #18
  %10 = add i32 %9, 1
  %11 = tail call ptr @superloop_at_depth(ptr noundef %3, i32 noundef %10) #17
  %12 = tail call ptr @compute_overall_effect_of_inner_loop(ptr noundef %11, ptr noundef %8) #18
  br label %51

13:                                               ; preds = %2
  %14 = tail call fastcc ptr @analyze_initial_condition(ptr noundef %1) #18
  %15 = tail call fastcc ptr @analyze_evolution_in_loop(ptr noundef %1, ptr noundef %14) #18
  %16 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %50, label %18

18:                                               ; preds = %13
  %19 = load i64, ptr %15, align 8
  %20 = trunc i64 %19 to i16
  switch i16 %20, label %33 [
    i16 116, label %21
    i16 113, label %21
  ]

21:                                               ; preds = %18, %18
  %22 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 146
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %29, ptr noundef %31) #17
  br label %39

33:                                               ; preds = %18, %21
  %34 = and i64 %19, 65535
  %35 = icmp eq i64 %34, 146
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  br label %39

39:                                               ; preds = %33, %36, %27
  %40 = phi ptr [ %32, %27 ], [ %38, %36 ], [ %15, %33 ]
  %41 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %40) #17
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 146
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1657, ptr noundef nonnull @.str.9) #17
  br label %46

46:                                               ; preds = %39, %45
  %47 = tail call i32 @operand_equal_p(ptr noundef %14, ptr noundef nonnull %41, i32 noundef 0) #17
  %48 = icmp eq i32 %47, 0
  %49 = load ptr, ptr @chrec_dont_know, align 8
  br i1 %48, label %51, label %50

50:                                               ; preds = %46, %13
  br label %51

51:                                               ; preds = %46, %50, %5
  %52 = phi ptr [ %12, %5 ], [ %15, %50 ], [ %49, %46 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @interpret_condition_phi(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #18
  %4 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !17
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %2, %13
  %7 = phi i32 [ %18, %13 ], [ 0, %2 ]
  %8 = phi ptr [ %17, %13 ], [ %4, %2 ]
  %9 = tail call fastcc zeroext i8 @backedge_phi_arg_p(ptr noundef %1, i32 noundef %7) #18, !range !11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %20

13:                                               ; preds = %6
  %14 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %1, i32 noundef %7) #18
  %15 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %14) #18
  %16 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %15) #18
  %17 = tail call ptr @chrec_merge(ptr noundef %8, ptr noundef %16) #17
  %18 = add nuw nsw i32 %7, 1
  %19 = icmp eq i32 %18, %3
  br i1 %19, label %20, label %6, !llvm.loop !43

20:                                               ; preds = %13, %2, %11
  %21 = phi ptr [ %12, %11 ], [ %4, %2 ], [ %17, %13 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_scalar_evolution(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @find_var_scev_info(ptr noundef %0, ptr noundef nonnull %1) #18
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 23, i64 1, ptr nonnull %9)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !32
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.23, i32 noundef %19) #18
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %22 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 12, i64 1, ptr %21)
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %23, ptr noundef nonnull %1, i32 noundef 0) #17
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %25 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 24, i64 1, ptr %24)
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %26, ptr noundef %2, i32 noundef 0) #17
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %28 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 3, i64 1, ptr %27)
  %29 = load i32, ptr @dump_flags, align 4, !tbaa !22
  br label %30

30:                                               ; preds = %15, %11
  %31 = phi i32 [ %29, %15 ], [ %12, %11 ]
  %32 = and i32 %31, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr @nb_set_scev, align 4, !tbaa !22
  %36 = add i32 %35, 1
  store i32 %36, ptr @nb_set_scev, align 4, !tbaa !22
  br label %37

37:                                               ; preds = %30, %34, %7
  store ptr %2, ptr %8, align 8, !tbaa !17
  br label %38

38:                                               ; preds = %3, %37
  ret void
}

; Function Attrs: optsize
declare void @extract_ops_from_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @interpret_rhs_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %4) #18, !range !36
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %3) #17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %3, ptr noundef %1) #17
  br label %68

14:                                               ; preds = %9
  switch i32 %4, label %23 [
    i32 141, label %15
    i32 148, label %18
  ]

15:                                               ; preds = %14
  %16 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %3) #18
  %17 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %16, ptr noundef %1) #17
  br label %68

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %20) #18
  %22 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %21, ptr noundef %1) #17
  br label %68

23:                                               ; preds = %14
  %24 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %68

25:                                               ; preds = %6
  switch i32 %4, label %66 [
    i32 66, label %26
    i32 63, label %33
    i32 64, label %39
    i32 79, label %45
    i32 90, label %51
    i32 65, label %57
    i32 116, label %63
    i32 113, label %63
  ]

26:                                               ; preds = %25
  %27 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %3) #18
  %28 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %5) #18
  %29 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %27, ptr noundef %1) #17
  %30 = load ptr, ptr @sizetype_tab, align 16, !tbaa !17
  %31 = tail call ptr @chrec_convert(ptr noundef %30, ptr noundef %28, ptr noundef %1) #17
  %32 = tail call ptr @chrec_fold_plus(ptr noundef %2, ptr noundef %29, ptr noundef %31) #17
  br label %68

33:                                               ; preds = %25
  %34 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %3) #18
  %35 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %5) #18
  %36 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %34, ptr noundef %1) #17
  %37 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %35, ptr noundef %1) #17
  %38 = tail call ptr @chrec_fold_plus(ptr noundef %2, ptr noundef %36, ptr noundef %37) #17
  br label %68

39:                                               ; preds = %25
  %40 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %3) #18
  %41 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %5) #18
  %42 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %40, ptr noundef %1) #17
  %43 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %41, ptr noundef %1) #17
  %44 = tail call ptr @chrec_fold_minus(ptr noundef %2, ptr noundef %42, ptr noundef %43) #17
  br label %68

45:                                               ; preds = %25
  %46 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %3) #18
  %47 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %46, ptr noundef %1) #17
  %48 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !17
  %49 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %2, ptr noundef %48) #17
  %50 = tail call ptr @chrec_fold_multiply(ptr noundef %2, ptr noundef %47, ptr noundef %49) #17
  br label %68

51:                                               ; preds = %25
  %52 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %3) #18
  %53 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %52, ptr noundef %1) #17
  %54 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !17
  %55 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %2, ptr noundef %54) #17
  %56 = tail call ptr @chrec_fold_minus(ptr noundef %2, ptr noundef %55, ptr noundef %53) #17
  br label %68

57:                                               ; preds = %25
  %58 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %3) #18
  %59 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %5) #18
  %60 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %58, ptr noundef %1) #17
  %61 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %59, ptr noundef %1) #17
  %62 = tail call ptr @chrec_fold_multiply(ptr noundef %2, ptr noundef %60, ptr noundef %61) #17
  br label %68

63:                                               ; preds = %25, %25
  %64 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %3) #18
  %65 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %64, ptr noundef %1) #17
  br label %68

66:                                               ; preds = %25
  %67 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %68

68:                                               ; preds = %26, %33, %39, %45, %51, %57, %63, %66, %23, %18, %15, %12
  %69 = phi ptr [ %13, %12 ], [ %17, %15 ], [ %22, %18 ], [ %24, %23 ], [ %67, %66 ], [ %65, %63 ], [ %62, %57 ], [ %56, %51 ], [ %50, %45 ], [ %44, %39 ], [ %38, %33 ], [ %32, %26 ]
  ret ptr %69
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #7 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !6
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @chrec_convert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @chrec_fold_plus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @chrec_fold_minus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @chrec_fold_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @superloop_at_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #18
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !45
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #18, !range !41
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #18, !range !36
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #18
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #18
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #18
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !36
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !47
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.9) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !36
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #18
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #7 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !22
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !36
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1446, ptr noundef nonnull @.str.9) #17
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !6
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @analyze_initial_condition(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !17
  %3 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %0) #18
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 28, i64 1, ptr nonnull %4)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %13 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 20, i64 1, ptr %12)
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_gimple_stmt(ptr noundef %14, ptr noundef %0, i32 noundef 0, i32 noundef 0) #17
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %16 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr %15)
  br label %17

17:                                               ; preds = %10, %6, %1
  %18 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #18
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = zext nneg i32 %18 to i64
  br label %22

22:                                               ; preds = %20, %43
  %23 = phi i64 [ 0, %20 ], [ %45, %43 ]
  %24 = phi ptr [ %2, %20 ], [ %44, %43 ]
  %25 = trunc i64 %23 to i32
  %26 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %25) #18
  %27 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %26) #18
  %28 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %0, i64 noundef %23) #18
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %3, ptr noundef %29) #17
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %22
  %33 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !17
  %34 = icmp eq ptr %24, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = load i64, ptr %27, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @chrec_merge(ptr noundef %24, ptr noundef nonnull %27) #17
  br label %43

41:                                               ; preds = %35
  %42 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %47

43:                                               ; preds = %39, %22, %32
  %44 = phi ptr [ %27, %32 ], [ %24, %22 ], [ %40, %39 ]
  %45 = add nuw nsw i64 %23, 1
  %46 = icmp eq i64 %45, %21
  br i1 %46, label %47, label %22, !llvm.loop !48

47:                                               ; preds = %43, %17, %41
  %48 = phi ptr [ %42, %41 ], [ %2, %17 ], [ %44, %43 ]
  %49 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !17
  %50 = icmp eq ptr %48, %49
  %51 = load ptr, ptr @chrec_dont_know, align 8
  %52 = select i1 %50, ptr %51, ptr %48
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 141
  br i1 %55, label %56, label %68

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = tail call fastcc i32 @gimple_code(ptr noundef %58) #18, !range !36
  %60 = icmp eq i32 %59, 16
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = tail call ptr @degenerate_phi_result(ptr noundef %58) #17
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %62) #17
  %66 = icmp eq i8 %65, 0
  %67 = select i1 %66, ptr %52, ptr %62
  br label %68

68:                                               ; preds = %64, %56, %61, %47
  %69 = phi ptr [ %52, %47 ], [ %52, %61 ], [ %52, %56 ], [ %67, %64 ]
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %74 = and i32 %73, 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 15, i64 1, ptr nonnull %70)
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %78, ptr noundef nonnull %69, i32 noundef 0) #17
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %80 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 3, i64 1, ptr %79)
  br label %81

81:                                               ; preds = %76, %72, %68
  ret ptr %69
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @analyze_evolution_in_loop(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #18
  %6 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !17
  %7 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %0) #18
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 28, i64 1, ptr nonnull %8)
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %17 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 19, i64 1, ptr %16)
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_gimple_stmt(ptr noundef %18, ptr noundef %0, i32 noundef 0, i32 noundef 0) #17
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %20 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr %19)
  br label %21

21:                                               ; preds = %14, %10, %2
  %22 = icmp sgt i32 %5, 0
  br i1 %22, label %23, label %71

23:                                               ; preds = %21
  %24 = zext nneg i32 %5 to i64
  br label %25

25:                                               ; preds = %23, %67
  %26 = phi i64 [ 0, %23 ], [ %69, %67 ]
  %27 = phi ptr [ %6, %23 ], [ %68, %67 ]
  %28 = trunc i64 %26 to i32
  %29 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %28) #18
  %30 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %29) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %31 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %0, i64 noundef %26) #18
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %7, ptr noundef %32) #17
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %67, label %35

35:                                               ; preds = %25
  %36 = load i64, ptr %30, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %62

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  store i8 0, ptr %4, align 1, !tbaa !6
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  store ptr %1, ptr %3, align 8, !tbaa !17
  %42 = call fastcc i32 @follow_ssa_edge(ptr noundef %7, ptr noundef %41, ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #18
  %43 = load ptr, ptr %3, align 8, !tbaa !17
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 146
  br i1 %46, label %59, label %47

47:                                               ; preds = %39
  %48 = load i32, ptr %7, align 8, !tbaa !23
  %49 = call fastcc zeroext i8 @no_evolution_in_loop_p(ptr noundef nonnull %43, i32 noundef %48, ptr noundef nonnull %4) #18, !range !11
  %50 = icmp ne i8 %49, 0
  %51 = load i8, ptr %4, align 1
  %52 = icmp ne i8 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = tail call i32 @operand_equal_p(ptr noundef %1, ptr noundef nonnull %43, i32 noundef 0) #17
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  store ptr %58, ptr %3, align 8, !tbaa !17
  br label %59

59:                                               ; preds = %39, %47, %54, %57
  %60 = phi ptr [ %43, %39 ], [ %43, %47 ], [ %43, %54 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  %61 = icmp eq i32 %42, 1
  br i1 %61, label %64, label %62

62:                                               ; preds = %35, %59
  %63 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi ptr [ %63, %62 ], [ %60, %59 ]
  %66 = tail call ptr @chrec_merge(ptr noundef %27, ptr noundef %65) #17
  br label %67

67:                                               ; preds = %25, %64
  %68 = phi ptr [ %66, %64 ], [ %27, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  %69 = add nuw nsw i64 %26, 1
  %70 = icmp eq i64 %69, %24
  br i1 %70, label %71, label %25, !llvm.loop !49

71:                                               ; preds = %67, %21
  %72 = phi ptr [ %6, %21 ], [ %68, %67 ]
  %73 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %84, label %75

75:                                               ; preds = %71
  %76 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %77 = and i32 %76, 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 24, i64 1, ptr nonnull %73)
  %81 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %81, ptr noundef %72, i32 noundef 0) #17
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %83 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 3, i64 1, ptr %82)
  br label %84

84:                                               ; preds = %79, %75, %71
  ret ptr %72
}

; Function Attrs: optsize
declare ptr @tree_ssa_strip_useless_type_conversions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !6
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #18
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #18
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @chrec_merge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @degenerate_phi_result(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3103, ptr noundef nonnull @.str.9) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %1) #18, !range !11
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %5
  %9 = load ptr, ptr @compiler_params, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.param_info, ptr %9, i64 63, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp slt i32 %11, %4
  br i1 %12, label %34, label %13

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %1) #18
  %15 = tail call fastcc i32 @gimple_code(ptr noundef %1) #18, !range !36
  %16 = trunc i32 %15 to i8
  switch i8 %16, label %34 [
    i8 16, label %17
    i8 6, label %32
  ]

17:                                               ; preds = %13
  %18 = tail call fastcc zeroext i8 @loop_phi_node_p(ptr noundef %1) #18, !range !11
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call fastcc i32 @follow_ssa_edge_in_condition_phi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #18
  br label %34

22:                                               ; preds = %17
  %23 = icmp eq ptr %1, %2
  br i1 %23, label %34, label %24

24:                                               ; preds = %22
  %25 = icmp eq ptr %14, %0
  br i1 %25, label %34, label %26

26:                                               ; preds = %24
  %27 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %0, ptr noundef %14) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = add nsw i32 %4, 1
  %31 = tail call fastcc i32 @follow_ssa_edge_inner_loop_phi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %30) #18
  br label %34

32:                                               ; preds = %13
  %33 = tail call fastcc i32 @follow_ssa_edge_in_rhs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #18
  br label %34

34:                                               ; preds = %13, %26, %24, %22, %8, %5, %32, %29, %20
  %35 = phi i32 [ %33, %32 ], [ %31, %29 ], [ %21, %20 ], [ 0, %5 ], [ 2, %8 ], [ 1, %22 ], [ 0, %24 ], [ 0, %26 ], [ 0, %13 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !36
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @follow_ssa_edge_in_condition_phi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = load ptr, ptr %3, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %8 = call fastcc i32 @follow_ssa_edge_in_condition_phi_branch(i32 noundef 0, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %7, i32 noundef %4) #18
  %9 = and i32 %8, -3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 8, !tbaa !17
  store ptr %12, ptr %3, align 8, !tbaa !17
  %13 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #18
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %31

15:                                               ; preds = %11, %25
  %16 = phi ptr [ %28, %25 ], [ %12, %11 ]
  %17 = phi i32 [ %29, %25 ], [ 1, %11 ]
  %18 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %15
  %21 = add nsw i32 %17, %4
  %22 = call fastcc i32 @follow_ssa_edge_in_condition_phi_branch(i32 noundef %17, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %7, i32 noundef %21) #18
  %23 = and i32 %22, -3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %3, align 8, !tbaa !17
  %27 = load ptr, ptr %6, align 8, !tbaa !17
  %28 = tail call ptr @chrec_merge(ptr noundef %26, ptr noundef %27) #17
  store ptr %28, ptr %3, align 8, !tbaa !17
  %29 = add nuw nsw i32 %17, 1
  %30 = icmp eq i32 %29, %13
  br i1 %30, label %31, label %15, !llvm.loop !55

31:                                               ; preds = %15, %20, %25, %11, %5
  %32 = phi i32 [ %8, %5 ], [ 1, %11 ], [ 1, %15 ], [ %22, %20 ], [ 1, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @follow_ssa_edge_inner_loop_phi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %1) #18
  %7 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %1) #18
  %8 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %7) #18
  %9 = tail call ptr @analyze_scalar_evolution(ptr noundef %6, ptr noundef %8) #18
  %10 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %7) #18
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %5
  %13 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #18
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = zext nneg i32 %13 to i64
  br label %17

17:                                               ; preds = %15, %30
  %18 = phi i64 [ 0, %15 ], [ %32, %30 ]
  %19 = phi i32 [ 0, %15 ], [ %31, %30 ]
  %20 = trunc i64 %18 to i32
  %21 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %1, i32 noundef %20) #18
  %22 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %21) #18
  %23 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %1, i64 noundef %18) #18
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %6, ptr noundef %24) #17
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = tail call fastcc i32 @follow_ssa_edge_expr(ptr noundef %0, ptr noundef %1, ptr noundef %22, ptr noundef %2, ptr noundef %3, i32 noundef %4) #18
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %34, label %30

30:                                               ; preds = %17, %27
  %31 = phi i32 [ %28, %27 ], [ %19, %17 ]
  %32 = add nuw nsw i64 %18, 1
  %33 = icmp eq i64 %32, %16
  br i1 %33, label %39, label %17, !llvm.loop !56

34:                                               ; preds = %27
  %35 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  store ptr %35, ptr %3, align 8, !tbaa !17
  br label %39

36:                                               ; preds = %5
  %37 = tail call ptr @compute_overall_effect_of_inner_loop(ptr noundef %6, ptr noundef %9) #18
  %38 = tail call fastcc i32 @follow_ssa_edge_expr(ptr noundef %0, ptr noundef %1, ptr noundef %37, ptr noundef %2, ptr noundef %3, i32 noundef %4) #18
  br label %39

39:                                               ; preds = %30, %12, %34, %36
  %40 = phi i32 [ %38, %36 ], [ 1, %34 ], [ 0, %12 ], [ %31, %30 ]
  ret i32 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @follow_ssa_edge_in_rhs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #18, !range !41
  %7 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #18
  %8 = trunc i32 %6 to i16
  switch i16 %8, label %20 [
    i16 116, label %9
    i16 113, label %9
    i16 66, label %14
    i16 63, label %14
    i16 64, label %14
  ]

9:                                                ; preds = %5, %5
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #18
  %11 = tail call fastcc i32 @follow_ssa_edge_expr(ptr noundef %0, ptr noundef %1, ptr noundef %10, ptr noundef %2, ptr noundef %3, i32 noundef %4) #18
  %12 = load ptr, ptr %3, align 8, !tbaa !17
  %13 = tail call ptr @chrec_convert(ptr noundef %7, ptr noundef %12, ptr noundef %1) #17
  store ptr %13, ptr %3, align 8, !tbaa !17
  br label %26

14:                                               ; preds = %5, %5, %5
  %15 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #18
  %16 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #18
  %17 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = tail call fastcc i32 @follow_ssa_edge_binary(ptr noundef %0, ptr noundef %1, ptr noundef %18, ptr noundef %15, i32 noundef %6, ptr noundef %16, ptr noundef %2, ptr noundef %3, i32 noundef %4) #18
  br label %26

20:                                               ; preds = %5
  %21 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %6) #18, !range !36
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #18
  %25 = tail call fastcc i32 @follow_ssa_edge_expr(ptr noundef %0, ptr noundef %1, ptr noundef %24, ptr noundef %2, ptr noundef %3, i32 noundef %4) #18
  br label %26

26:                                               ; preds = %20, %23, %14, %9
  %27 = phi i32 [ %25, %23 ], [ %19, %14 ], [ %11, %9 ], [ 0, %20 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @follow_ssa_edge_in_condition_phi_branch(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %2, i32 noundef %0) #18
  %9 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %8) #18
  %10 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  store ptr %10, ptr %4, align 8, !tbaa !17
  %11 = tail call fastcc zeroext i8 @backedge_phi_arg_p(ptr noundef %2, i32 noundef %0) #18, !range !11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = load i64, ptr %9, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  store ptr %5, ptr %4, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %9, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = tail call fastcc i32 @follow_ssa_edge(ptr noundef %1, ptr noundef %19, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %6) #18
  br label %21

21:                                               ; preds = %13, %7, %17
  %22 = phi i32 [ %20, %17 ], [ 0, %7 ], [ 0, %13 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @backedge_phi_arg_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = sext i32 %1 to i64
  %4 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %0, i64 noundef %3) #18
  %5 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !57
  %7 = and i32 %6, 128
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @follow_ssa_edge_expr(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = load i64, ptr %2, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %9 [
    i16 116, label %11
    i16 113, label %11
    i16 148, label %35
    i16 141, label %19
    i16 66, label %23
    i16 63, label %23
    i16 64, label %23
  ]

9:                                                ; preds = %6, %35, %41, %23, %19, %11
  %10 = phi i32 [ %16, %11 ], [ %44, %41 ], [ %34, %23 ], [ %22, %19 ], [ 0, %35 ], [ 0, %6 ]
  ret i32 %10

11:                                               ; preds = %6, %6
  %12 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = tail call fastcc i32 @follow_ssa_edge_expr(ptr noundef %0, ptr noundef %1, ptr noundef %15, ptr noundef %3, ptr noundef %4, i32 noundef %5) #18
  %17 = load ptr, ptr %4, align 8, !tbaa !17
  %18 = tail call ptr @chrec_convert(ptr noundef %13, ptr noundef %17, ptr noundef %1) #17
  store ptr %18, ptr %4, align 8, !tbaa !17
  br label %9

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = tail call fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %21, ptr noundef %3, ptr noundef %4, i32 noundef %5) #18
  br label %9

23:                                               ; preds = %6, %6, %6
  %24 = trunc i64 %7 to i32
  %25 = and i32 %24, 65535
  %26 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %27) #17
  %33 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %29) #17
  %34 = tail call fastcc i32 @follow_ssa_edge_binary(ptr noundef %0, ptr noundef %1, ptr noundef %31, ptr noundef %32, i32 noundef %25, ptr noundef %33, ptr noundef %3, ptr noundef %4, i32 noundef %5) #18
  br label %9

35:                                               ; preds = %6
  %36 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 141
  br i1 %40, label %41, label %9

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.tree_ssa_name, ptr %37, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = tail call fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %43, ptr noundef %3, ptr noundef %4, i32 noundef %5) #18
  br label %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @follow_ssa_edge_binary(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nocapture noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  switch i32 %4, label %89 [
    i32 66, label %11
    i32 63, label %11
    i32 64, label %66
  ]

11:                                               ; preds = %9, %9
  %12 = load i64, ptr %3, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  %15 = load i64, ptr %5, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %14, label %18, label %54

18:                                               ; preds = %11
  br i1 %17, label %19, label %43

19:                                               ; preds = %18
  %20 = add nsw i32 %8, 1
  %21 = load ptr, ptr %7, align 8, !tbaa !17
  store ptr %21, ptr %10, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = call fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %23, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %20) #18
  switch i32 %24, label %89 [
    i32 1, label %25
    i32 0, label %30
    i32 2, label %41
  ]

25:                                               ; preds = %19
  %26 = load i32, ptr %0, align 8, !tbaa !23
  %27 = load ptr, ptr %10, align 8, !tbaa !17
  %28 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %27, ptr noundef %1) #17
  %29 = tail call fastcc ptr @add_to_evolution(i32 noundef %26, ptr noundef %28, i32 noundef %4, ptr noundef nonnull %5, ptr noundef %1) #18
  br label %86

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = tail call fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %32, ptr noundef %6, ptr noundef nonnull %7, i32 noundef %20) #18
  switch i32 %33, label %89 [
    i32 1, label %34
    i32 2, label %39
  ]

34:                                               ; preds = %30
  %35 = load i32, ptr %0, align 8, !tbaa !23
  %36 = load ptr, ptr %7, align 8, !tbaa !17
  %37 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %36, ptr noundef %1) #17
  %38 = tail call fastcc ptr @add_to_evolution(i32 noundef %35, ptr noundef %37, i32 noundef %4, ptr noundef nonnull %3, ptr noundef %1) #18
  br label %86

39:                                               ; preds = %30
  %40 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %86

41:                                               ; preds = %19
  %42 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %86

43:                                               ; preds = %18
  %44 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = tail call fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %45, ptr noundef %6, ptr noundef %7, i32 noundef %8) #18
  switch i32 %46, label %89 [
    i32 1, label %47
    i32 2, label %52
  ]

47:                                               ; preds = %43
  %48 = load i32, ptr %0, align 8, !tbaa !23
  %49 = load ptr, ptr %7, align 8, !tbaa !17
  %50 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %49, ptr noundef %1) #17
  %51 = tail call fastcc ptr @add_to_evolution(i32 noundef %48, ptr noundef %50, i32 noundef %4, ptr noundef nonnull %5, ptr noundef %1) #18
  br label %86

52:                                               ; preds = %43
  %53 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %86

54:                                               ; preds = %11
  br i1 %17, label %55, label %89

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = tail call fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %57, ptr noundef %6, ptr noundef %7, i32 noundef %8) #18
  switch i32 %58, label %89 [
    i32 1, label %59
    i32 2, label %64
  ]

59:                                               ; preds = %55
  %60 = load i32, ptr %0, align 8, !tbaa !23
  %61 = load ptr, ptr %7, align 8, !tbaa !17
  %62 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %61, ptr noundef %1) #17
  %63 = tail call fastcc ptr @add_to_evolution(i32 noundef %60, ptr noundef %62, i32 noundef %4, ptr noundef nonnull %3, ptr noundef %1) #18
  br label %86

64:                                               ; preds = %55
  %65 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %86

66:                                               ; preds = %9
  %67 = load i64, ptr %3, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 141
  br i1 %69, label %70, label %89

70:                                               ; preds = %66
  %71 = load i64, ptr %5, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 141
  %74 = zext i1 %73 to i32
  %75 = add nsw i32 %74, %8
  %76 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = tail call fastcc i32 @follow_ssa_edge(ptr noundef %0, ptr noundef %77, ptr noundef %6, ptr noundef %7, i32 noundef %75) #18
  switch i32 %78, label %89 [
    i32 1, label %79
    i32 2, label %84
  ]

79:                                               ; preds = %70
  %80 = load i32, ptr %0, align 8, !tbaa !23
  %81 = load ptr, ptr %7, align 8, !tbaa !17
  %82 = tail call ptr @chrec_convert(ptr noundef %2, ptr noundef %81, ptr noundef %1) #17
  %83 = tail call fastcc ptr @add_to_evolution(i32 noundef %80, ptr noundef %82, i32 noundef 64, ptr noundef nonnull %5, ptr noundef %1) #18
  br label %86

84:                                               ; preds = %70
  %85 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %86

86:                                               ; preds = %64, %59, %39, %34, %41, %25, %52, %47, %79, %84
  %87 = phi ptr [ %85, %84 ], [ %83, %79 ], [ %51, %47 ], [ %53, %52 ], [ %29, %25 ], [ %42, %41 ], [ %38, %34 ], [ %40, %39 ], [ %63, %59 ], [ %65, %64 ]
  %88 = phi i32 [ 2, %84 ], [ 1, %79 ], [ 1, %47 ], [ 2, %52 ], [ 1, %25 ], [ 2, %41 ], [ 1, %34 ], [ 2, %39 ], [ 1, %59 ], [ 2, %64 ]
  store ptr %87, ptr %7, align 8, !tbaa !17
  br label %89

89:                                               ; preds = %86, %9, %66, %70, %54, %55, %43, %19, %30
  %90 = phi i32 [ %33, %30 ], [ %24, %19 ], [ %46, %43 ], [ %58, %55 ], [ 0, %54 ], [ %78, %70 ], [ 0, %66 ], [ 0, %9 ], [ %88, %86 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  ret i32 %90
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @add_to_evolution(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = tail call fastcc ptr @chrec_type(ptr noundef %3) #18
  %7 = icmp eq ptr %3, null
  br i1 %7, label %60, label %8

8:                                                ; preds = %5
  %9 = load i64, ptr %3, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 146
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %60

14:                                               ; preds = %8
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr nonnull %15)
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.3, i32 noundef %0) #18
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %26 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 18, i64 1, ptr %25)
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %27, ptr noundef %1, i32 noundef 0) #17
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %29 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 14, i64 1, ptr %28)
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %30, ptr noundef nonnull %3, i32 noundef 0) #17
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %32 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr %31)
  br label %33

33:                                               ; preds = %21, %17, %14
  %34 = icmp eq i32 %2, 64
  br i1 %34, label %35, label %46

35:                                               ; preds = %33
  %36 = load i64, ptr %6, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 9
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = tail call ptr @build_real(ptr noundef nonnull %6, ptr noundef nonnull byval(%struct.real_value) align 8 @dconstm1) #17
  br label %43

41:                                               ; preds = %35
  %42 = tail call ptr @build_int_cst_type(ptr noundef nonnull %6, i64 noundef -1) #17
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi ptr [ %40, %39 ], [ %42, %41 ]
  %45 = tail call ptr @chrec_fold_multiply(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %44) #17
  br label %46

46:                                               ; preds = %43, %33
  %47 = phi ptr [ %45, %43 ], [ %3, %33 ]
  %48 = tail call fastcc ptr @add_to_evolution_1(i32 noundef %0, ptr noundef %1, ptr noundef %47, ptr noundef %4) #18
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 9, i64 1, ptr nonnull %49)
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %57, ptr noundef %48, i32 noundef 0) #17
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %59 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 3, i64 1, ptr %58)
  br label %60

60:                                               ; preds = %46, %51, %55, %5, %12
  %61 = phi ptr [ %13, %12 ], [ %1, %5 ], [ %48, %55 ], [ %48, %51 ], [ %48, %46 ]
  ret ptr %61
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @chrec_type(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %0) #18, !range !11
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @add_to_evolution_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc ptr @get_loop(i32 noundef %0) #18
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 146
  br i1 %8, label %9, label %65

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @get_chrec_loop(ptr noundef nonnull %1) #18
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %10, ptr noundef %5) #17
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %1) #18
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 9
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = tail call ptr @build_real(ptr noundef nonnull %16, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #17
  br label %35

22:                                               ; preds = %15
  %23 = tail call ptr @build_int_cst(ptr noundef nonnull %16, i64 noundef 0) #17
  br label %35

24:                                               ; preds = %9
  %25 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %1) #18
  %26 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.tree_int_cst, ptr %27, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !6
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  br label %35

35:                                               ; preds = %20, %22, %24
  %36 = phi ptr [ %25, %24 ], [ %16, %22 ], [ %16, %20 ]
  %37 = phi ptr [ %32, %24 ], [ %1, %22 ], [ %1, %20 ]
  %38 = phi ptr [ %34, %24 ], [ %23, %22 ], [ %21, %20 ]
  %39 = phi i32 [ %30, %24 ], [ %0, %22 ], [ %0, %20 ]
  %40 = tail call ptr @chrec_convert(ptr noundef %36, ptr noundef %2, ptr noundef %3) #17
  %41 = tail call ptr @chrec_convert_rhs(ptr noundef %36, ptr noundef %38, ptr noundef %3) #17
  %42 = tail call fastcc ptr @chrec_type(ptr noundef %41) #18
  %43 = tail call ptr @chrec_fold_plus(ptr noundef %42, ptr noundef %41, ptr noundef %40) #17
  %44 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %39, ptr noundef %37, ptr noundef %43) #18
  br label %49

45:                                               ; preds = %12
  %46 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %5, ptr noundef %10) #17
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 705, ptr noundef nonnull @.str.9) #17
  br label %51

49:                                               ; preds = %65, %68, %35, %51
  %50 = phi ptr [ %64, %51 ], [ %44, %35 ], [ %71, %68 ], [ %1, %65 ]
  ret ptr %50

51:                                               ; preds = %45, %48
  %52 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %53 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = tail call fastcc ptr @add_to_evolution_1(i32 noundef %0, ptr noundef %54, ptr noundef %2, ptr noundef %3) #18
  %56 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = tail call fastcc ptr @chrec_type(ptr noundef %55) #18
  %59 = tail call ptr @chrec_convert_rhs(ptr noundef %58, ptr noundef %57, ptr noundef %3) #17
  %60 = load ptr, ptr %52, align 8, !tbaa !6
  %61 = getelementptr inbounds %struct.tree_int_cst, ptr %60, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !6
  %63 = trunc i64 %62 to i32
  %64 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %63, ptr noundef %55, ptr noundef %59) #18
  br label %49

65:                                               ; preds = %4
  %66 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %67 = icmp eq ptr %66, %1
  br i1 %67, label %49, label %68

68:                                               ; preds = %65
  %69 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %1) #18
  %70 = tail call ptr @chrec_convert_rhs(ptr noundef %69, ptr noundef %2, ptr noundef %3) #17
  %71 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %70) #18
  br label %49
}

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @chrec_convert_rhs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_polynomial_chrec(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  %5 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %6 = icmp eq ptr %5, %1
  %7 = icmp eq ptr %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %45, label %9

9:                                                ; preds = %3
  %10 = call fastcc zeroext i8 @no_evolution_in_loop_p(ptr noundef %1, i32 noundef %0, ptr noundef nonnull %4) #18, !range !11
  %11 = icmp ne i8 %10, 0
  %12 = load i8, ptr %4, align 1
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %45

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %23 [
    i16 10, label %22
    i16 12, label %22
  ]

22:                                               ; preds = %17, %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 143, ptr noundef nonnull @.str.9) #17
  br label %23

23:                                               ; preds = %17, %22
  %24 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i16
  switch i16 %27, label %32 [
    i16 10, label %28
    i16 12, label %28
  ]

28:                                               ; preds = %23, %23
  %29 = load ptr, ptr @sizetype_tab, align 16, !tbaa !17
  %30 = load ptr, ptr %18, align 8, !tbaa !6
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %37, label %35

32:                                               ; preds = %23
  %33 = load ptr, ptr %18, align 8, !tbaa !6
  %34 = icmp eq ptr %25, %33
  br i1 %34, label %37, label %35

35:                                               ; preds = %32, %28
  %36 = phi i32 [ 147, %28 ], [ 149, %32 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef %36, ptr noundef nonnull @.str.9) #17
  br label %37

37:                                               ; preds = %35, %32, %28
  %38 = tail call fastcc zeroext i8 @chrec_zerop(ptr noundef nonnull %2) #18
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load ptr, ptr %24, align 8, !tbaa !6
  %42 = zext i32 %0 to i64
  %43 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %42) #17
  %44 = tail call ptr @build3_stat(i32 noundef 146, ptr noundef %41, ptr noundef %43, ptr noundef nonnull %1, ptr noundef nonnull %2) #17
  br label %45

45:                                               ; preds = %3, %37, %40, %15
  %46 = phi ptr [ %44, %40 ], [ %16, %15 ], [ %1, %37 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  ret ptr %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @chrec_zerop(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 23
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call i32 @integer_zerop(ptr noundef nonnull %0) #17
  %9 = trunc i32 %8 to i8
  br label %10

10:                                               ; preds = %3, %1, %7
  %11 = phi i8 [ %9, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !36
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #18
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #18, !range !41
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #18
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #17
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !17
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !17
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #18
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @hash_scev_info(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.scev_info_str, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !6
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @eq_scev_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.scev_info_str, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.scev_info_str, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !39
  %10 = load ptr, ptr %1, align 8, !tbaa !39
  %11 = icmp eq ptr %9, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @del_scev_info(ptr noundef %0) #0 {
  tail call void @ggc_free(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = add nsw i32 %5, 1
  %8 = load ptr, ptr @compiler_params, align 8, !tbaa !17
  %9 = getelementptr inbounds %struct.param_info, ptr %8, i64 63, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !53
  %11 = icmp slt i32 %10, %5
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %72

14:                                               ; preds = %6
  %15 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %2) #18, !range !11
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %72

17:                                               ; preds = %14
  %18 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %2) #17
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %17
  %21 = load i64, ptr %2, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %54 [
    i16 141, label %23
    i16 146, label %25
    i16 66, label %27
    i16 63, label %27
    i16 64, label %27
    i16 65, label %27
    i16 116, label %36
    i16 113, label %36
    i16 79, label %42
    i16 90, label %42
    i16 145, label %50
    i16 144, label %52
  ]

23:                                               ; preds = %20
  %24 = tail call fastcc ptr @instantiate_scev_name(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %7) #18
  br label %72

25:                                               ; preds = %20
  %26 = tail call fastcc ptr @instantiate_scev_poly(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %7) #18
  br label %72

27:                                               ; preds = %20, %20, %20, %20
  %28 = trunc i64 %21 to i32
  %29 = and i32 %28, 65535
  %30 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %2) #18
  %31 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = tail call fastcc ptr @instantiate_scev_binary(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %29, ptr noundef %30, ptr noundef %32, ptr noundef %34, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %7) #18
  br label %72

36:                                               ; preds = %20, %20
  %37 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = tail call fastcc ptr @instantiate_scev_convert(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %38, ptr noundef %40, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %7) #18
  br label %72

42:                                               ; preds = %20, %20
  %43 = trunc i64 %21 to i32
  %44 = and i32 %43, 65535
  %45 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = tail call fastcc ptr @instantiate_scev_not(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %44, ptr noundef %46, ptr noundef %48, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %7) #18
  br label %72

50:                                               ; preds = %20
  %51 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %72

52:                                               ; preds = %20
  %53 = load ptr, ptr @chrec_known, align 8, !tbaa !17
  br label %72

54:                                               ; preds = %20
  %55 = and i64 %21, 65535
  %56 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !22
  %58 = icmp eq i32 %57, 9
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %72

61:                                               ; preds = %54
  %62 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %55
  %63 = load i8, ptr %62, align 1, !tbaa !6
  switch i8 %63, label %70 [
    i8 3, label %64
    i8 2, label %66
    i8 1, label %68
    i8 0, label %72
  ]

64:                                               ; preds = %61
  %65 = tail call fastcc ptr @instantiate_scev_3(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %7) #18
  br label %72

66:                                               ; preds = %61
  %67 = tail call fastcc ptr @instantiate_scev_2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %7) #18
  br label %72

68:                                               ; preds = %61
  %69 = tail call fastcc ptr @instantiate_scev_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %7) #18
  br label %72

70:                                               ; preds = %61
  %71 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %72

72:                                               ; preds = %61, %14, %17, %70, %68, %66, %64, %59, %52, %50, %42, %36, %27, %25, %23, %12
  %73 = phi ptr [ %13, %12 ], [ %60, %59 ], [ %71, %70 ], [ %69, %68 ], [ %67, %66 ], [ %65, %64 ], [ %53, %52 ], [ %51, %50 ], [ %49, %42 ], [ %41, %36 ], [ %35, %27 ], [ %26, %25 ], [ %24, %23 ], [ %2, %17 ], [ %2, %14 ], [ %2, %61 ]
  ret ptr %73
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @instantiate_scev_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = tail call fastcc ptr @gimple_bb(ptr noundef %8) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %60, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  %14 = tail call fastcc i32 @loop_depth(ptr noundef %13) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %60, label %16

16:                                               ; preds = %11
  %17 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef nonnull %9) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @get_instantiated_value(ptr noundef %4, ptr noundef %0, ptr noundef nonnull %2) #18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %60

22:                                               ; preds = %19
  %23 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  tail call fastcc void @set_instantiated_value(ptr noundef %4, ptr noundef %0, ptr noundef nonnull %2, ptr noundef %23) #18
  %24 = load ptr, ptr %12, align 8, !tbaa !12
  %25 = tail call ptr @find_common_loop(ptr noundef %1, ptr noundef %24) #17
  %26 = tail call ptr @analyze_scalar_evolution(ptr noundef %25, ptr noundef nonnull %2) #18
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 141
  br i1 %29, label %30, label %53

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.tree_ssa_name, ptr %26, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %32) #18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %33) #18
  %37 = tail call fastcc i32 @loop_depth(ptr noundef %25) #18
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35, %30
  %40 = icmp eq ptr %26, %2
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = tail call fastcc ptr @loop_closed_phi_def(ptr noundef nonnull %2) #18
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %39, %41
  %45 = phi ptr [ %42, %41 ], [ %2, %39 ]
  %46 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = tail call fastcc ptr @gimple_bb(ptr noundef %47) #18
  %49 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %48) #17
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44, %41
  %52 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %58

53:                                               ; preds = %35, %22
  %54 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %55 = icmp eq ptr %26, %54
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %26, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) #18
  br label %58

58:                                               ; preds = %53, %56, %44, %51
  %59 = phi ptr [ %52, %51 ], [ %45, %44 ], [ %57, %56 ], [ %26, %53 ]
  tail call fastcc void @set_instantiated_value(ptr noundef %4, ptr noundef %0, ptr noundef nonnull %2, ptr noundef %59) #18
  br label %60

60:                                               ; preds = %19, %6, %11, %16, %58
  %61 = phi ptr [ %59, %58 ], [ %2, %16 ], [ %2, %11 ], [ %2, %6 ], [ %20, %19 ]
  ret ptr %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @instantiate_scev_poly(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %9, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) #18
  %11 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %53, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %15, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) #18
  %17 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %53, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %8, align 8, !tbaa !6
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load ptr, ptr %14, align 8, !tbaa !6
  %24 = icmp eq ptr %23, %16
  br i1 %24, label %53, label %25

25:                                               ; preds = %22, %19
  %26 = load ptr, ptr %7, align 8, !tbaa !6
  %27 = getelementptr inbounds %struct.tree_int_cst, ptr %26, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !6
  %29 = trunc i64 %28 to i32
  %30 = tail call fastcc zeroext i8 @tree_is_chrec(ptr noundef %10) #18, !range !11
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.tree_int_cst, ptr %34, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !6
  %37 = and i64 %28, 4294967295
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %53, label %39

39:                                               ; preds = %32, %25
  %40 = tail call fastcc zeroext i8 @tree_is_chrec(ptr noundef %16) #18, !range !11
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.tree_int_cst, ptr %44, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !6
  %47 = and i64 %28, 4294967295
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %42, %39
  %50 = tail call fastcc ptr @chrec_type(ptr noundef %10) #18
  %51 = tail call ptr @chrec_convert_rhs(ptr noundef %50, ptr noundef %16, ptr noundef null) #17
  %52 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %29, ptr noundef %10, ptr noundef %51) #18
  br label %53

53:                                               ; preds = %32, %42, %49, %22, %13, %6
  %54 = phi ptr [ %10, %6 ], [ %16, %13 ], [ %2, %22 ], [ %52, %49 ], [ %17, %42 ], [ %17, %32 ]
  ret ptr %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @instantiate_scev_binary(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7, ptr noundef %8, i32 noundef %9) unnamed_addr #0 {
  %11 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %5, i8 noundef zeroext %7, ptr noundef %8, i32 noundef %9) #18
  %12 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %36, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %6, i8 noundef zeroext %7, ptr noundef %8, i32 noundef %9) #18
  %16 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %36, label %18

18:                                               ; preds = %14
  %19 = icmp eq ptr %11, %5
  %20 = icmp eq ptr %15, %6
  %21 = and i1 %19, %20
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @chrec_convert(ptr noundef %4, ptr noundef %11, ptr noundef null) #17
  %24 = tail call ptr @chrec_convert_rhs(ptr noundef %4, ptr noundef %15, ptr noundef null) #17
  switch i32 %3, label %31 [
    i32 66, label %25
    i32 63, label %25
    i32 64, label %27
    i32 65, label %29
  ]

25:                                               ; preds = %22, %22
  %26 = tail call ptr @chrec_fold_plus(ptr noundef %4, ptr noundef %23, ptr noundef %24) #17
  br label %36

27:                                               ; preds = %22
  %28 = tail call ptr @chrec_fold_minus(ptr noundef %4, ptr noundef %23, ptr noundef %24) #17
  br label %36

29:                                               ; preds = %22
  %30 = tail call ptr @chrec_fold_multiply(ptr noundef %4, ptr noundef %23, ptr noundef %24) #17
  br label %36

31:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 2316, ptr noundef nonnull @.str.9) #17
  br label %32

32:                                               ; preds = %18, %31
  %33 = icmp eq ptr %2, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #17
  br label %36

36:                                               ; preds = %34, %32, %14, %10, %29, %27, %25
  %37 = phi ptr [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %11, %10 ], [ %15, %14 ], [ %35, %34 ], [ %2, %32 ]
  ret ptr %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @instantiate_scev_convert(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6, i32 noundef %7) #18
  %10 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = icmp eq i8 %5, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = tail call ptr @chrec_convert_aggressive(ptr noundef %3, ptr noundef %9) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %29

17:                                               ; preds = %12
  %18 = icmp ne ptr %2, null
  %19 = icmp eq ptr %9, %4
  %20 = and i1 %18, %19
  br i1 %20, label %29, label %27

21:                                               ; preds = %14
  %22 = icmp ne ptr %2, null
  %23 = icmp eq ptr %9, %4
  %24 = and i1 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %3, ptr noundef %9) #17
  br label %29

27:                                               ; preds = %17
  %28 = tail call ptr @chrec_convert(ptr noundef %3, ptr noundef %9, ptr noundef null) #17
  br label %29

29:                                               ; preds = %21, %17, %8, %14, %27, %25
  %30 = phi ptr [ %26, %25 ], [ %28, %27 ], [ %15, %14 ], [ %9, %8 ], [ %2, %17 ], [ %2, %21 ]
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @instantiate_scev_not(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, ptr noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %5, i8 noundef zeroext %6, ptr noundef %7, i32 noundef %8) #18
  %11 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %10, %5
  br i1 %14, label %26, label %15

15:                                               ; preds = %13
  %16 = tail call ptr @chrec_convert(ptr noundef %4, ptr noundef %10, ptr noundef null) #17
  switch i32 %3, label %25 [
    i32 90, label %17
    i32 79, label %21
  ]

17:                                               ; preds = %15
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !17
  %19 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %4, ptr noundef %18) #17
  %20 = tail call ptr @chrec_fold_minus(ptr noundef %4, ptr noundef %19, ptr noundef %16) #17
  br label %31

21:                                               ; preds = %15
  %22 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !17
  %23 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %4, ptr noundef %22) #17
  %24 = tail call ptr @chrec_fold_multiply(ptr noundef %4, ptr noundef %23, ptr noundef %16) #17
  br label %31

25:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 2412, ptr noundef nonnull @.str.9) #17
  br label %26

26:                                               ; preds = %25, %13
  %27 = phi ptr [ %16, %25 ], [ %5, %13 ]
  %28 = icmp eq ptr %2, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %3, ptr noundef %4, ptr noundef %27) #17
  br label %31

31:                                               ; preds = %29, %26, %9, %21, %17
  %32 = phi ptr [ %24, %21 ], [ %20, %17 ], [ %10, %9 ], [ %30, %29 ], [ %2, %26 ]
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @instantiate_scev_3(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %8, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) #18
  %10 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %40, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %14, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) #18
  %16 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %40, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %20, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) #18
  %22 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %7, align 8, !tbaa !6
  %26 = icmp eq ptr %9, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load ptr, ptr %13, align 8, !tbaa !6
  %29 = icmp eq ptr %15, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load ptr, ptr %19, align 8, !tbaa !6
  %32 = icmp eq ptr %21, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %30, %27, %24
  %34 = load i64, ptr %2, align 8
  %35 = trunc i64 %34 to i32
  %36 = and i32 %35, 65535
  %37 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef %36, ptr noundef %38, ptr noundef %9, ptr noundef %15, ptr noundef %21) #17
  br label %40

40:                                               ; preds = %30, %18, %12, %6, %33
  %41 = phi ptr [ %39, %33 ], [ %9, %6 ], [ %15, %12 ], [ %21, %18 ], [ %2, %30 ]
  ret ptr %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @instantiate_scev_2(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %8, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) #18
  %10 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %31, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %14, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) #18
  %16 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %7, align 8, !tbaa !6
  %20 = icmp eq ptr %9, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load ptr, ptr %13, align 8, !tbaa !6
  %23 = icmp eq ptr %15, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %21, %18
  %25 = load i64, ptr %2, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65535
  %28 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %27, ptr noundef %29, ptr noundef %9, ptr noundef %15) #17
  br label %31

31:                                               ; preds = %21, %12, %6, %24
  %32 = phi ptr [ %30, %24 ], [ %9, %6 ], [ %15, %12 ], [ %2, %21 ]
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @instantiate_scev_1(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %0, ptr noundef %1, ptr noundef %8, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) #18
  %10 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %7, align 8, !tbaa !6
  %14 = icmp eq ptr %9, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr %2, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 65535
  %19 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %18, ptr noundef %20, ptr noundef %9) #17
  br label %22

22:                                               ; preds = %12, %6, %15
  %23 = phi ptr [ %21, %15 ], [ %9, %6 ], [ %2, %12 ]
  ret ptr %23
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_instantiated_value(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.scev_info_str, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.scev_info_str, ptr %4, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !37
  store ptr %1, ptr %4, align 8, !tbaa !39
  %6 = call ptr @htab_find(ptr noundef %0, ptr noundef nonnull %4) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.scev_info_str, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  br label %11

11:                                               ; preds = %3, %8
  %12 = phi ptr [ %10, %8 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_instantiated_value(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.scev_info_str, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  %6 = getelementptr inbounds %struct.scev_info_str, ptr %5, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !37
  store ptr %1, ptr %5, align 8, !tbaa !39
  %7 = call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1) #17
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = call fastcc ptr @new_scev_info_str(ptr noundef %1, ptr noundef %2) #18
  store ptr %11, ptr %7, align 8, !tbaa !17
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi ptr [ %11, %10 ], [ %8, %4 ]
  %14 = getelementptr inbounds %struct.scev_info_str, ptr %13, i64 0, i32 2
  store ptr %3, ptr %14, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @loop_closed_phi_def(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %3 = icmp eq ptr %0, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %33

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %10) #18
  %12 = tail call ptr @single_exit(ptr noundef %11) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %16) #17
  %17 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #18, !range !11
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 6
  br label %21

21:                                               ; preds = %19, %30
  %22 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #18
  %23 = load i32, ptr %20, align 4, !tbaa !59
  %24 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %22, i32 noundef %23) #18
  %25 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %24) #18
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %22) #18
  %29 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %28) #18
  br label %33

30:                                               ; preds = %21
  call fastcc void @gsi_next(ptr noundef nonnull %2) #18
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #18, !range !11
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %21, label %33, !llvm.loop !60

33:                                               ; preds = %30, %14, %8, %1, %4, %27
  %34 = phi ptr [ %29, %27 ], [ null, %4 ], [ null, %1 ], [ null, %8 ], [ null, %14 ], [ null, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret ptr %34
}

; Function Attrs: optsize
declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  store ptr %4, ptr %0, align 8, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @chrec_convert_aggressive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @resolve_mixers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @hash_scev_info, ptr noundef nonnull @eq_scev_info, ptr noundef nonnull @del_scev_info) #17
  %4 = tail call fastcc ptr @block_before_loop(ptr noundef %0) #18
  %5 = tail call fastcc ptr @instantiate_scev_r(ptr noundef %4, ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, ptr noundef %3, i32 noundef 0) #18
  tail call void @htab_delete(ptr noundef %3) #17
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @number_of_iterations_exit(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_nonzerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @set_nb_iterations_in_loop(ptr nocapture noundef writeonly %0, ptr noundef returned %1) unnamed_addr #0 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 31, i64 1, ptr nonnull %3)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %11, ptr noundef %1, i32 noundef 0) #17
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %13 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 3, i64 1, ptr %12)
  br label %14

14:                                               ; preds = %9, %5, %2
  %15 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 11
  store ptr %1, ptr %15, align 8, !tbaa !27
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @number_of_exit_cond_executions(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @number_of_latch_executions(ptr noundef %0) #18
  %3 = tail call fastcc ptr @chrec_type(ptr noundef %2) #18
  %4 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %2) #17
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = tail call ptr @build_int_cst(ptr noundef %3, i64 noundef 1) #17
  %8 = tail call ptr @chrec_fold_plus(ptr noundef %3, ptr noundef %2, ptr noundef %7) #17
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 134283263
  %11 = icmp eq i64 %10, 134217751
  %12 = load ptr, ptr @chrec_dont_know, align 8
  %13 = select i1 %11, ptr %12, ptr %8
  br label %14

14:                                               ; preds = %6, %1
  %15 = phi ptr [ %2, %1 ], [ %13, %6 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gather_stats_on_scev_database() local_unnamed_addr #0 {
  %1 = alloca %struct.chrec_stats, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #19
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  call fastcc void @reset_chrecs_counters(ptr noundef nonnull %1) #18
  %5 = load ptr, ptr @scalar_evolution_info, align 8, !tbaa !17
  call void @htab_traverse(ptr noundef %5, ptr noundef nonnull @gather_stats_on_scev_database_1, ptr noundef nonnull %1) #17
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !17
  call fastcc void @dump_chrecs_stats(ptr noundef %6, ptr noundef nonnull %1) #18
  br label %7

7:                                                ; preds = %0, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @reset_chrecs_counters(ptr nocapture noundef writeonly %0) unnamed_addr #10 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gather_stats_on_scev_database_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.scev_info_str, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  tail call fastcc void @gather_chrec_stats(ptr noundef %5, ptr noundef %1) #18
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_chrecs_stats(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 3, i64 1, ptr %0)
  %4 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 42, i64 1, ptr %0)
  %5 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %6) #18
  %8 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !68
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %9) #18
  %11 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !69
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %12) #18
  %14 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !70
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %15) #18
  %17 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 42, i64 1, ptr %0)
  %18 = load i32, ptr %1, align 4, !tbaa !71
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %18) #18
  %20 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !72
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %21) #18
  %23 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 42, i64 1, ptr %0)
  %24 = load ptr, ptr @scalar_evolution_info, align 8, !tbaa !17
  %25 = tail call i64 @htab_elements(ptr noundef %24) #17
  %26 = trunc i64 %25 to i32
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %26) #18
  %28 = load i32, ptr @nb_set_scev, align 4, !tbaa !22
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %28) #18
  %30 = load i32, ptr @nb_get_scev, align 4, !tbaa !22
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %30) #18
  %32 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 42, i64 1, ptr %0)
  %33 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 3, i64 1, ptr %0)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gather_chrec_stats(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 16, i64 1, ptr nonnull %3)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %11, ptr noundef %0, i32 noundef 0) #17
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %13 = tail call i32 @fputc(i32 10, ptr %12)
  br label %14

14:                                               ; preds = %9, %5, %2
  %15 = load i32, ptr %1, align 4, !tbaa !71
  %16 = add i32 %15, 1
  store i32 %16, ptr %1, align 4, !tbaa !71
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !72
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !72
  br label %94

22:                                               ; preds = %14
  %23 = load i64, ptr %0, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 146
  br i1 %25, label %26, label %67

26:                                               ; preds = %22
  %27 = tail call fastcc zeroext i8 @evolution_function_is_affine_p(ptr noundef nonnull %0) #18, !range !11
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %34 = and i32 %33, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 20, i64 1, ptr nonnull %30)
  br label %38

38:                                               ; preds = %36, %32, %29
  %39 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 1
  br label %63

40:                                               ; preds = %26
  %41 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef nonnull %0, i32 noundef 0) #17
  %42 = icmp eq i8 %41, 0
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %44 = icmp eq ptr %43, null
  br i1 %42, label %54, label %45

45:                                               ; preds = %40
  br i1 %44, label %52, label %46

46:                                               ; preds = %45
  %47 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %48 = and i32 %47, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 22, i64 1, ptr nonnull %43)
  br label %52

52:                                               ; preds = %50, %46, %45
  %53 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 2
  br label %63

54:                                               ; preds = %40
  br i1 %44, label %61, label %55

55:                                               ; preds = %54
  %56 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %57 = and i32 %56, 16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 27, i64 1, ptr nonnull %43)
  br label %61

61:                                               ; preds = %59, %55, %54
  %62 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 3
  br label %63

63:                                               ; preds = %52, %61, %38
  %64 = phi ptr [ %39, %38 ], [ %62, %61 ], [ %53, %52 ]
  %65 = load i32, ptr %64, align 4, !tbaa !22
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4, !tbaa !22
  br label %67

67:                                               ; preds = %63, %22
  %68 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef nonnull %0) #17
  %69 = icmp eq i8 %68, 0
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !17
  br i1 %69, label %85, label %71

71:                                               ; preds = %67
  %72 = icmp eq ptr %70, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %71
  %74 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %75 = and i32 %74, 16
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 15, i64 1, ptr nonnull %70)
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !17
  br label %80

80:                                               ; preds = %77, %73, %71
  %81 = phi ptr [ %79, %77 ], [ %70, %73 ], [ null, %71 ]
  %82 = getelementptr inbounds %struct.chrec_stats, ptr %1, i64 0, i32 5
  %83 = load i32, ptr %82, align 4, !tbaa !72
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 4, !tbaa !72
  br label %85

85:                                               ; preds = %80, %67
  %86 = phi ptr [ %81, %80 ], [ %70, %67 ]
  %87 = icmp eq ptr %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %90 = and i32 %89, 16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr nonnull %86)
  br label %94

94:                                               ; preds = %18, %92, %88, %85
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @scev_initialize() local_unnamed_addr #0 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %3 = tail call ptr @htab_create_alloc(i64 noundef 100, ptr noundef nonnull @hash_scev_info, ptr noundef nonnull @eq_scev_info, ptr noundef nonnull @del_scev_info, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #17
  store ptr %3, ptr @scalar_evolution_info, align 8, !tbaa !17
  tail call fastcc void @initialize_scalar_evolutions_analyzer() #18
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #18
  %4 = load ptr, ptr %2, align 8, !tbaa !17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 11
  store ptr null, ptr %8, align 8, !tbaa !27
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #18
  %9 = load ptr, ptr %2, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !73

11:                                               ; preds = %6, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #19
  ret void
}

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_scalar_evolutions_analyzer() unnamed_addr #0 {
  %1 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  store ptr null, ptr @chrec_not_analyzed_yet, align 8, !tbaa !17
  %4 = tail call ptr @make_node_stat(i32 noundef 145) #17
  store ptr %4, ptr @chrec_dont_know, align 8, !tbaa !17
  %5 = tail call ptr @make_node_stat(i32 noundef 144) #17
  store ptr %5, ptr @chrec_known, align 8, !tbaa !17
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !17
  %7 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  store ptr %6, ptr %8, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  store ptr %6, ptr %9, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !74
  %5 = load ptr, ptr @cfun, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store ptr null, ptr %0, align 8, !tbaa !76
  store ptr null, ptr %1, align 8, !tbaa !17
  br label %68

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @number_of_loops() #18
  %12 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %11) #18
  store ptr %12, ptr %0, align 8, !tbaa !76
  %13 = and i32 %2, 1
  %14 = xor i32 %13, 1
  %15 = and i32 %2, 2
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr @cfun, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !18
  %20 = getelementptr inbounds %struct.loops, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !77
  br i1 %16, label %47, label %22

22:                                               ; preds = %10, %22
  %23 = phi ptr [ %25, %22 ], [ %21, %10 ]
  %24 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !78
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22, !llvm.loop !79

27:                                               ; preds = %22, %45
  %28 = phi ptr [ %46, %45 ], [ %23, %22 ]
  %29 = load i32, ptr %28, align 8, !tbaa !23
  %30 = icmp slt i32 %29, %14
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !tbaa !76
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %32, i32 noundef %29) #18
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr inbounds %struct.loop, ptr %28, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !80
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %40, %37 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !78
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %37, !llvm.loop !81

42:                                               ; preds = %33
  %43 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %28) #18
  %44 = icmp eq ptr %43, null
  br i1 %44, label %67, label %45

45:                                               ; preds = %37, %42
  %46 = phi ptr [ %43, %42 ], [ %38, %37 ]
  br label %27

47:                                               ; preds = %10, %57
  %48 = phi ptr [ %58, %57 ], [ %21, %10 ]
  %49 = load i32, ptr %48, align 8, !tbaa !23
  %50 = icmp slt i32 %49, %14
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8, !tbaa !76
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %52, i32 noundef %49) #18
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.loop, ptr %48, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !78
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %59, %53
  %58 = phi ptr [ %55, %53 ], [ %62, %59 ]
  br label %47

59:                                               ; preds = %53, %64
  %60 = phi ptr [ %65, %64 ], [ %48, %53 ]
  %61 = getelementptr inbounds %struct.loop, ptr %60, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !80
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %57

64:                                               ; preds = %59
  %65 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %60) #18
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %59, !llvm.loop !82

67:                                               ; preds = %42, %64
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #18
  br label %68

68:                                               ; preds = %67, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !74
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !76
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #18, !range !83
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !74
  %13 = load i32, ptr %3, align 4, !tbaa !22
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #18
  store ptr %14, ptr %1, align 8, !tbaa !17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !84

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #18
  store ptr null, ptr %1, align 8, !tbaa !17
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #3 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !17
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !20
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #18
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #11 {
  %3 = load i32, ptr %0, align 4, !tbaa !85
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !85
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #18
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !85
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !22
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !22
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @scev_reset_htab() local_unnamed_addr #0 {
  %1 = load ptr, ptr @scalar_evolution_info, align 8, !tbaa !17
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @htab_empty(ptr noundef nonnull %1) #17
  br label %4

4:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: optsize
declare void @htab_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @scev_reset() local_unnamed_addr #0 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  tail call void @scev_reset_htab() #18
  %3 = load ptr, ptr @cfun, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %0
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #18
  %8 = load ptr, ptr %2, align 8, !tbaa !17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %13, %10 ], [ %8, %7 ]
  %12 = getelementptr inbounds %struct.loop, ptr %11, i64 0, i32 11
  store ptr null, ptr %12, align 8, !tbaa !27
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #18
  %13 = load ptr, ptr %2, align 8, !tbaa !17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10, !llvm.loop !87

15:                                               ; preds = %10, %7, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @simple_iv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #19
  %7 = getelementptr inbounds %struct.affine_iv, ptr %3, i64 0, i32 1
  %8 = getelementptr inbounds %struct.affine_iv, ptr %3, i64 0, i32 2
  %9 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %3, i8 0, i64 17, i1 false)
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %75 [
    i16 8, label %13
    i16 10, label %13
  ]

13:                                               ; preds = %5, %5
  %14 = call fastcc ptr @analyze_scalar_evolution_in_loop(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %6) #18
  %15 = call zeroext i8 @chrec_contains_undetermined(ptr noundef %14) #17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %75

17:                                               ; preds = %13
  %18 = load i32, ptr %0, align 8, !tbaa !23
  %19 = call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %14, i32 noundef %18) #18, !range !11
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %75

21:                                               ; preds = %17
  %22 = call fastcc zeroext i8 @tree_does_not_contain_chrecs(ptr noundef %14) #18, !range !11
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  store ptr %14, ptr %3, align 8, !tbaa !88
  %25 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = call ptr @build_int_cst(ptr noundef %26, i64 noundef 0) #17
  store ptr %27, ptr %7, align 8, !tbaa !89
  br label %73

28:                                               ; preds = %21
  %29 = load i64, ptr %14, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 146
  br i1 %31, label %32, label %75

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.tree_int_cst, ptr %34, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !6
  %37 = load i32, ptr %0, align 8, !tbaa !23
  %38 = zext i32 %37 to i64
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %75

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  store ptr %42, ptr %7, align 8, !tbaa !89
  %43 = icmp eq i8 %4, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i64, ptr %42, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 23
  br i1 %47, label %48, label %75

48:                                               ; preds = %44, %40
  %49 = call zeroext i8 @tree_contains_chrecs(ptr noundef %42, ptr noundef null) #17
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  store ptr %53, ptr %3, align 8, !tbaa !88
  %54 = call zeroext i8 @tree_contains_chrecs(ptr noundef %53, ptr noundef null) #17
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = load i8, ptr %6, align 1, !tbaa !6
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load i64, ptr %10, align 8
  %61 = and i64 %60, 2097152
  %62 = icmp ne i64 %61, 0
  %63 = load i32, ptr @flag_wrapv, align 4
  %64 = icmp ne i32 %63, 0
  %65 = select i1 %62, i1 true, i1 %64
  %66 = load i32, ptr @flag_trapv, align 4
  %67 = icmp ne i32 %66, 0
  %68 = select i1 %65, i1 true, i1 %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %59
  %70 = load i32, ptr @flag_strict_overflow, align 4, !tbaa !22
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i8
  br label %73

73:                                               ; preds = %56, %69, %59, %24
  %74 = phi i8 [ 1, %24 ], [ 0, %56 ], [ 0, %59 ], [ %72, %69 ]
  store i8 %74, ptr %8, align 8, !tbaa !90
  br label %75

75:                                               ; preds = %73, %51, %44, %48, %28, %32, %13, %17, %5
  %76 = phi i8 [ 0, %5 ], [ 0, %17 ], [ 0, %13 ], [ 0, %32 ], [ 0, %28 ], [ 0, %48 ], [ 0, %44 ], [ 0, %51 ], [ 1, %73 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  ret i8 %76
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @analyze_scalar_evolution_in_loop(ptr noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  store i8 0, ptr %5, align 1, !tbaa !6
  %6 = icmp eq ptr %3, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  store i8 0, ptr %3, align 1, !tbaa !6
  br label %8

8:                                                ; preds = %7, %4
  br label %9

9:                                                ; preds = %8, %28
  %10 = phi ptr [ %29, %28 ], [ %1, %8 ]
  %11 = phi ptr [ %13, %28 ], [ %2, %8 ]
  %12 = tail call ptr @analyze_scalar_evolution(ptr noundef %10, ptr noundef %11) #18
  %13 = tail call ptr @resolve_mixers(ptr noundef %10, ptr noundef %12) #18
  %14 = icmp eq ptr %12, %13
  %15 = select i1 %6, i1 true, i1 %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  store i8 1, ptr %3, align 1, !tbaa !6
  br label %17

17:                                               ; preds = %16, %9
  %18 = icmp eq ptr %10, %0
  br i1 %18, label %30, label %19

19:                                               ; preds = %17
  %20 = load i32, ptr %10, align 8, !tbaa !23
  %21 = call fastcc zeroext i8 @no_evolution_in_loop_p(ptr noundef %13, i32 noundef %20, ptr noundef nonnull %5) #18, !range !11
  %22 = icmp ne i8 %21, 0
  %23 = load i8, ptr %5, align 1
  %24 = icmp ne i8 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  br label %30

28:                                               ; preds = %19
  %29 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %10) #18
  br label %9

30:                                               ; preds = %17, %26
  %31 = phi ptr [ %27, %26 ], [ %13, %17 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @tree_does_not_contain_chrecs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef %0, ptr noundef null) #17
  %3 = icmp eq i8 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @tree_contains_chrecs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @scev_analysis() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  %2 = tail call fastcc ptr @VEC_gimple_heap_alloc() #18
  store ptr %2, ptr %1, align 8, !tbaa !17
  call fastcc void @select_loops_exit_conditions(ptr noundef nonnull %1) #18
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  call fastcc void @analyze_scalar_evolution_for_all_loop_phi_nodes(ptr noundef nonnull %1) #18
  br label %10

10:                                               ; preds = %9, %5, %0
  call fastcc void @number_of_iterations_for_all_loops(ptr noundef nonnull %1) #18
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 37) #17
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @select_loops_exit_conditions(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !17
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  tail call fastcc void @get_exit_conditions_rec(ptr noundef %8, ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_scalar_evolution_for_all_loop_phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.chrec_stats, align 4
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call fastcc void @reset_chrecs_counters(ptr noundef nonnull %2) #18
  %5 = load ptr, ptr %0, align 8, !tbaa !17
  %6 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %3) #18, !range !83
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %1, %36
  %9 = phi i32 [ %37, %36 ], [ 0, %1 ]
  %10 = load ptr, ptr %3, align 8, !tbaa !17
  %11 = call fastcc ptr @loop_containing_stmt(ptr noundef %10) #18
  %12 = getelementptr inbounds %struct.loop, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %13) #17
  %14 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %8, %33
  %17 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18
  %18 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %17) #18
  %19 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %18) #18
  %20 = call zeroext i8 @is_gimple_reg(ptr noundef %19) #17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %16
  %23 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %18) #18
  %24 = call ptr @analyze_scalar_evolution(ptr noundef %11, ptr noundef %23) #18
  %25 = call fastcc ptr @instantiate_parameters(ptr noundef %11, ptr noundef %24) #18
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  call fastcc void @gather_chrec_stats(ptr noundef %25, ptr noundef nonnull %2) #18
  br label %33

33:                                               ; preds = %16, %32, %28, %22
  call fastcc void @gsi_next(ptr noundef nonnull %4) #18
  %34 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !11
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %16, label %36, !llvm.loop !91

36:                                               ; preds = %33, %8
  %37 = add i32 %9, 1
  %38 = load ptr, ptr %0, align 8, !tbaa !17
  %39 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %38, i32 noundef %37, ptr noundef nonnull %3) #18, !range !83
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %8, !llvm.loop !92

41:                                               ; preds = %36, %1
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr @dump_flags, align 4, !tbaa !22
  %46 = and i32 %45, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  call fastcc void @dump_chrecs_stats(ptr noundef nonnull %42, ptr noundef nonnull %2) #18
  br label %49

49:                                               ; preds = %48, %44, %41
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @number_of_iterations_for_all_loops(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !17
  %4 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #18, !range !83
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %20, %6 ], [ 0, %1 ]
  %8 = phi i32 [ %19, %6 ], [ 0, %1 ]
  %9 = phi i32 [ %16, %6 ], [ 0, %1 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !17
  %11 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %10) #18
  %12 = tail call ptr @number_of_latch_executions(ptr noundef %11) #18
  %13 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %12) #17
  %14 = icmp ne i8 %13, 0
  %15 = zext i1 %14 to i32
  %16 = add i32 %9, %15
  %17 = xor i1 %14, true
  %18 = zext i1 %17 to i32
  %19 = add i32 %8, %18
  %20 = add i32 %7, 1
  %21 = load ptr, ptr %0, align 8, !tbaa !17
  %22 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %21, i32 noundef %20, ptr noundef nonnull %2) #18, !range !83
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %6, !llvm.loop !93

24:                                               ; preds = %6, %1
  %25 = phi i32 [ 0, %1 ], [ %16, %6 ]
  %26 = phi i32 [ 0, %1 ], [ %19, %6 ]
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %24
  %30 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 3, i64 1, ptr nonnull %27)
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %32 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 42, i64 1, ptr %31)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.49, i32 noundef %25) #18
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.50, i32 noundef %26) #18
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %38 = tail call fastcc i32 @number_of_loops() #18
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.51, i32 noundef %38) #18
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %41 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 42, i64 1, ptr %40)
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !17
  %43 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 3, i64 1, ptr %42)
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !17
  tail call void @print_loops(ptr noundef %44, i32 noundef 3) #17
  br label %45

45:                                               ; preds = %29, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_exit_conditions_rec(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  tail call fastcc void @get_exit_conditions_rec(ptr noundef %6, ptr noundef %1) #18
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  tail call fastcc void @get_exit_conditions_rec(ptr noundef %8, ptr noundef %1) #18
  %9 = tail call ptr @single_exit(ptr noundef nonnull %0) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = tail call ptr @get_loop_exit_condition(ptr noundef nonnull %0) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef %1, ptr noundef nonnull %12) #18
  br label %15

15:                                               ; preds = %11, %14, %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !17
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #17
  store ptr %6, ptr %0, align 8, !tbaa !17
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = load i32, ptr %0, align 8, !tbaa !94
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !94
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !96
  %6 = load i32, ptr %0, align 8, !tbaa !94
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !94
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !17
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_loops(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @scev_finalize() local_unnamed_addr #0 {
  %1 = load ptr, ptr @scalar_evolution_info, align 8, !tbaa !17
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @htab_delete(ptr noundef nonnull %1) #17
  store ptr null, ptr @scalar_evolution_info, align 8, !tbaa !17
  br label %4

4:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @expression_expensive_p(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 @is_gimple_val(ptr noundef %0) #17
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1, %22
  %5 = phi ptr [ %24, %22 ], [ %0, %1 ]
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %13 [
    i16 76, label %8
    i16 74, label %8
    i16 73, label %8
    i16 72, label %8
    i16 71, label %8
    i16 70, label %8
    i16 69, label %8
    i16 68, label %8
    i16 67, label %8
  ]

8:                                                ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4
  %9 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = tail call i32 @integer_pow2p(ptr noundef %10) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %4, %8
  %14 = and i64 %6, 65535
  %15 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !22
  switch i32 %16, label %27 [
    i32 7, label %17
    i32 5, label %17
    i32 6, label %22
  ]

17:                                               ; preds = %13, %13
  %18 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = tail call zeroext i8 @expression_expensive_p(ptr noundef %19) #18, !range !11
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17, %13
  %23 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = tail call zeroext i8 @is_gimple_val(ptr noundef %24) #17
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %4, label %27

27:                                               ; preds = %22, %8, %17, %13, %1
  %28 = phi i8 [ 0, %1 ], [ 1, %13 ], [ 1, %17 ], [ 1, %8 ], [ 0, %22 ]
  ret i8 %28
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_pow2p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @scev_const_prop() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.loop_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %11 = tail call fastcc i32 @number_of_loops() #18
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %173, label %13

13:                                               ; preds = %0
  %14 = load ptr, ptr @cfun, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !33
  %17 = load ptr, ptr %16, align 8, !tbaa !97
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !99
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %99, label %33

23:                                               ; preds = %73, %33
  %24 = phi ptr [ %35, %33 ], [ %74, %73 ]
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !99
  %27 = load ptr, ptr @cfun, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !33
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !100
  %32 = icmp eq ptr %26, %31
  br i1 %32, label %77, label %33, !llvm.loop !101

33:                                               ; preds = %13, %23
  %34 = phi ptr [ %26, %23 ], [ %19, %13 ]
  %35 = phi ptr [ %24, %23 ], [ null, %13 ]
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !12
  store ptr %37, ptr %1, align 8, !tbaa !17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %34) #17
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !11
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %23

40:                                               ; preds = %33, %73
  %41 = phi ptr [ %74, %73 ], [ %35, %33 ]
  %42 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18
  %43 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %42) #18
  %44 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %43) #18
  %45 = call zeroext i8 @is_gimple_reg(ptr noundef %44) #17
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %73, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %73 [
    i16 10, label %52
    i16 12, label %52
    i16 6, label %52
    i16 7, label %52
    i16 8, label %52
  ]

52:                                               ; preds = %47, %47, %47, %47, %47
  %53 = load ptr, ptr %1, align 8, !tbaa !17
  %54 = call ptr @analyze_scalar_evolution(ptr noundef %53, ptr noundef nonnull %44) #18
  %55 = call ptr @resolve_mixers(ptr noundef %53, ptr noundef %54) #18
  %56 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %55) #17
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %52
  %59 = call zeroext i8 @may_propagate_copy(ptr noundef nonnull %44, ptr noundef %55) #17
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %58
  %62 = icmp eq ptr %44, %55
  br i1 %62, label %64, label %63

63:                                               ; preds = %61
  call void @replace_uses_by(ptr noundef nonnull %44, ptr noundef %55) #17
  br label %64

64:                                               ; preds = %63, %61
  %65 = icmp eq ptr %41, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %64
  %67 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi ptr [ %41, %64 ], [ %67, %66 ]
  %70 = getelementptr inbounds %struct.tree_ssa_name, ptr %44, i64 0, i32 3
  %71 = load i32, ptr %70, align 8, !tbaa !6
  %72 = call zeroext i8 @bitmap_set_bit(ptr noundef %69, i32 noundef %71) #17
  br label %73

73:                                               ; preds = %47, %52, %58, %40, %68
  %74 = phi ptr [ %69, %68 ], [ %41, %58 ], [ %41, %52 ], [ %41, %40 ], [ %41, %47 ]
  call fastcc void @gsi_next(ptr noundef nonnull %4) #18
  %75 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !11
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %40, label %23, !llvm.loop !102

77:                                               ; preds = %23
  %78 = icmp eq ptr %24, null
  br i1 %78, label %99, label %79

79:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %24, ptr noundef nonnull %2) #18
  %80 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %2) #18, !range !11
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %79, %95
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  %83 = load ptr, ptr @cfun, align 8, !tbaa !17
  %84 = getelementptr inbounds %struct.function, ptr %83, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !103
  %86 = getelementptr inbounds %struct.gimple_df, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !104
  %88 = load i32, ptr %2, align 4, !tbaa !22
  %89 = call fastcc ptr @VEC_tree_base_index(ptr noundef %87, i32 noundef %88) #18
  %90 = getelementptr inbounds %struct.tree_ssa_name, ptr %89, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = call fastcc i32 @gimple_code(ptr noundef %91) #18, !range !36
  %93 = icmp eq i32 %92, 16
  br i1 %93, label %95, label %94

94:                                               ; preds = %82
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3277, ptr noundef nonnull @.str.9) #17
  br label %95

95:                                               ; preds = %82, %94
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %91) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  call void @remove_phi_node(ptr noundef nonnull %6, i8 noundef zeroext 1) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %2) #18
  %96 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %2) #18, !range !11
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %82, !llvm.loop !109

98:                                               ; preds = %95, %79
  call void @bitmap_obstack_free(ptr noundef nonnull %24) #17
  call void @scev_reset() #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %99

99:                                               ; preds = %13, %98, %77
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 2) #18
  %100 = load ptr, ptr %1, align 8, !tbaa !17
  %101 = icmp eq ptr %100, null
  br i1 %101, label %173, label %102

102:                                              ; preds = %99, %170
  %103 = phi ptr [ %171, %170 ], [ %100, %99 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  %104 = call ptr @single_exit(ptr noundef nonnull %103) #17
  %105 = icmp eq ptr %104, null
  br i1 %105, label %170, label %106

106:                                              ; preds = %102
  %107 = call ptr @number_of_latch_executions(ptr noundef nonnull %103) #18
  %108 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !17
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %170, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.edge_def, ptr %104, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !58
  %113 = call fastcc zeroext i8 @single_pred_p(ptr noundef %112) #18, !range !11
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = call ptr @split_loop_exit_edge(ptr noundef nonnull %104) #17
  %117 = load ptr, ptr %111, align 8, !tbaa !58
  br label %118

118:                                              ; preds = %115, %110
  %119 = phi ptr [ %117, %115 ], [ %112, %110 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #19
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %119) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #19
  %120 = load ptr, ptr %111, align 8, !tbaa !58
  %121 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !12
  %123 = call fastcc i32 @loop_depth(ptr noundef %122) #18
  %124 = add i32 %123, 1
  %125 = call ptr @superloop_at_depth(ptr noundef nonnull %103, i32 noundef %124) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #19
  %126 = load ptr, ptr %111, align 8, !tbaa !58
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %126) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #19
  %127 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !11
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %170

129:                                              ; preds = %118
  %130 = getelementptr inbounds %struct.edge_def, ptr %104, i64 0, i32 6
  br label %131

131:                                              ; preds = %129, %141
  %132 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18
  %133 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %132) #18
  %134 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %133) #18
  %135 = load i32, ptr %130, align 4, !tbaa !59
  %136 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %132, i32 noundef %135) #18
  %137 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %136) #18
  %138 = call zeroext i8 @is_gimple_reg(ptr noundef %137) #17
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %131
  call fastcc void @gsi_next(ptr noundef nonnull %4) #18
  br label %141

141:                                              ; preds = %140, %149, %165, %166
  %142 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !11
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %131, label %170, !llvm.loop !110

144:                                              ; preds = %131
  %145 = getelementptr inbounds %struct.tree_common, ptr %137, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !6
  %147 = load i64, ptr %146, align 8
  %148 = trunc i64 %147 to i16
  switch i16 %148, label %149 [
    i16 10, label %150
    i16 12, label %150
    i16 6, label %150
    i16 7, label %150
    i16 8, label %150
  ]

149:                                              ; preds = %144
  call fastcc void @gsi_next(ptr noundef nonnull %4) #18
  br label %141

150:                                              ; preds = %144, %144, %144, %144, %144
  %151 = call fastcc ptr @analyze_scalar_evolution_in_loop(ptr noundef %125, ptr noundef nonnull %103, ptr noundef nonnull %137, ptr noundef null) #18
  %152 = call ptr @compute_overall_effect_of_inner_loop(ptr noundef %125, ptr noundef %151) #18
  %153 = call fastcc zeroext i8 @tree_does_not_contain_chrecs(ptr noundef %152) #18, !range !11
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %150
  %156 = load i32, ptr %125, align 8, !tbaa !23
  %157 = call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %152, i32 noundef %156) #18, !range !11
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %152) #17
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = call zeroext i8 @expression_expensive_p(ptr noundef %152) #18, !range !11
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %162, %159, %155, %150
  call fastcc void @gsi_next(ptr noundef nonnull %4) #18
  br label %141

166:                                              ; preds = %162
  %167 = call ptr @unshare_expr(ptr noundef %152) #17
  call void @remove_phi_node(ptr noundef nonnull %4, i8 noundef zeroext 0) #17
  %168 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %167, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #17
  %169 = call ptr @gimple_build_assign_stat(ptr noundef %134, ptr noundef %168) #17
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %169, i32 noundef 1) #17
  br label %141

170:                                              ; preds = %141, %118, %106, %102
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %1) #18
  %171 = load ptr, ptr %1, align 8, !tbaa !17
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %102, !llvm.loop !111

173:                                              ; preds = %170, %99, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @may_propagate_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @replace_uses_by(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = load ptr, ptr %1, align 8, !tbaa !112
  store ptr %4, ptr %0, align 8, !tbaa !114
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !116
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !114
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !117
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !119
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !120
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !120
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !22
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !121

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !22
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !22
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !119
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !114
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !119
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !47
  store i64 %35, ptr %3, align 8, !tbaa !120
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !22
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !22
  %40 = load i32, ptr %23, align 8, !tbaa !119
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !119
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !122

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !123
  store ptr %44, ptr %0, align 8, !tbaa !114
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !117
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !22
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !120
  store i32 %16, ptr %1, align 4, !tbaa !22
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  ret ptr %5
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !120
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !120
  %6 = load i32, ptr %1, align 4, !tbaa !22
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !22
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @split_loop_exit_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #14 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #18
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #18, !range !36
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #18
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18, !range !11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !124

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !125
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !127
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !129
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !130
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !132
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_scev_info_str(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !39
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %7) #17
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.scev_info_str, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %12) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.scev_info_str, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %17) #17
  br label %20

20:                                               ; preds = %1, %15, %19, %3
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_ggc_mx_basic_block_def(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P13scev_info_str4htab(ptr noundef %0) #0 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !136
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !134
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_scev_info_str(ptr noundef nonnull %19) #18
  %22 = load i64, ptr %11, align 8, !tbaa !136
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !137

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !134
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #17
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_scev_info_str(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_13scev_info_str, i32 noundef 57) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !39
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %5) #17
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.scev_info_str, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %10) #17
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.scev_info_str, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %15) #17
  br label %18

18:                                               ; preds = %13, %17, %1
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_13scev_info_str(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #17
  %7 = getelementptr inbounds %struct.scev_info_str, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #17
  %8 = getelementptr inbounds %struct.scev_info_str, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #17
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_basic_block_def(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P13scev_info_str4htab(ptr noundef %0) #0 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P13scev_info_str4htab, i32 noundef 190) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !134
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !136
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !134
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_scev_info_str(ptr noundef nonnull %17) #18
  %20 = load i64, ptr %9, align 8, !tbaa !136
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !138

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !134
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P13scev_info_str4htab, i32 noundef 217) #17
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P13scev_info_str4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !134
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !136
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !134
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #17
  %19 = load i64, ptr %9, align 8, !tbaa !136
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !139

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #17
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i8 0, i8 2}
!12 = !{!13, !14, i64 24}
!13 = !{!"basic_block_def", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !7, i64 32, !14, i64 48, !14, i64 56, !7, i64 64, !15, i64 72, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92, !16, i64 96}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"int", !7, i64 0}
!17 = !{!14, !14, i64 0}
!18 = !{!19, !14, i64 32}
!19 = !{!"function", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !16, i64 104, !16, i64 108, !16, i64 112, !16, i64 116, !16, i64 120, !16, i64 124, !14, i64 128, !16, i64 136, !16, i64 137, !16, i64 138, !16, i64 138, !16, i64 138, !16, i64 138, !16, i64 138, !16, i64 138, !16, i64 138, !16, i64 139, !16, i64 139, !16, i64 139, !16, i64 139, !16, i64 139, !16, i64 139, !16, i64 139}
!20 = !{!21, !14, i64 8}
!21 = !{!"loops", !16, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!22 = !{!16, !16, i64 0}
!23 = !{!24, !16, i64 0}
!24 = !{!"loop", !16, i64 0, !16, i64 4, !14, i64 8, !14, i64 16, !25, i64 24, !16, i64 32, !16, i64 36, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !26, i64 80, !26, i64 96, !7, i64 112, !7, i64 113, !16, i64 116, !14, i64 120, !14, i64 128, !7, i64 136, !14, i64 144}
!25 = !{!"lpt_decision", !16, i64 0, !16, i64 4}
!26 = !{!"", !15, i64 0, !15, i64 8}
!27 = !{!24, !14, i64 72}
!28 = !{!29, !14, i64 16}
!29 = !{!"tree_niter_desc", !14, i64 0, !14, i64 8, !14, i64 16, !26, i64 24, !30, i64 40, !14, i64 64, !16, i64 72}
!30 = !{!"", !14, i64 0, !14, i64 8, !7, i64 16}
!31 = !{!29, !14, i64 8}
!32 = !{!13, !16, i64 80}
!33 = !{!19, !14, i64 8}
!34 = !{!35, !14, i64 0}
!35 = !{!"edge_def", !14, i64 0, !14, i64 8, !7, i64 16, !14, i64 24, !14, i64 32, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !15, i64 56}
!36 = !{i32 0, i32 256}
!37 = !{!38, !14, i64 8}
!38 = !{!"scev_info_str", !14, i64 0, !14, i64 8, !14, i64 16}
!39 = !{!38, !14, i64 0}
!40 = !{!38, !14, i64 16}
!41 = !{i32 0, i32 65536}
!42 = !{!24, !14, i64 8}
!43 = distinct !{!43, !10}
!44 = !{!24, !14, i64 40}
!45 = !{!46, !16, i64 0}
!46 = !{!"VEC_loop_p_base", !16, i64 0, !16, i64 4, !7, i64 8}
!47 = !{!15, !15, i64 0}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = !{!51, !14, i64 24}
!51 = !{!"ssa_use_operand_d", !14, i64 0, !14, i64 8, !7, i64 16, !14, i64 24}
!52 = !{!13, !14, i64 0}
!53 = !{!54, !16, i64 8}
!54 = !{!"param_info", !14, i64 0, !16, i64 8, !7, i64 12, !16, i64 16, !16, i64 20, !14, i64 24}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = !{!35, !16, i64 48}
!58 = !{!35, !14, i64 8}
!59 = !{!35, !16, i64 44}
!60 = distinct !{!60, !10}
!61 = !{!62, !14, i64 0}
!62 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16}
!63 = !{!64, !14, i64 0}
!64 = !{!"gimple_seq_node_d", !14, i64 0, !14, i64 8, !14, i64 16}
!65 = !{!64, !14, i64 16}
!66 = !{!67, !16, i64 4}
!67 = !{!"chrec_stats", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20}
!68 = !{!67, !16, i64 8}
!69 = !{!67, !16, i64 12}
!70 = !{!67, !16, i64 16}
!71 = !{!67, !16, i64 0}
!72 = !{!67, !16, i64 20}
!73 = distinct !{!73, !10}
!74 = !{!75, !16, i64 8}
!75 = !{!"", !14, i64 0, !16, i64 8}
!76 = !{!75, !14, i64 0}
!77 = !{!21, !14, i64 24}
!78 = !{!24, !14, i64 48}
!79 = distinct !{!79, !10}
!80 = !{!24, !14, i64 56}
!81 = distinct !{!81, !10}
!82 = distinct !{!82, !10}
!83 = !{i32 0, i32 2}
!84 = distinct !{!84, !10}
!85 = !{!86, !16, i64 0}
!86 = !{!"VEC_int_base", !16, i64 0, !16, i64 4, !7, i64 8}
!87 = distinct !{!87, !10}
!88 = !{!30, !14, i64 0}
!89 = !{!30, !14, i64 8}
!90 = !{!30, !7, i64 16}
!91 = distinct !{!91, !10}
!92 = distinct !{!92, !10}
!93 = distinct !{!93, !10}
!94 = !{!95, !16, i64 0}
!95 = !{!"VEC_gimple_base", !16, i64 0, !16, i64 4, !7, i64 8}
!96 = !{!95, !16, i64 4}
!97 = !{!98, !14, i64 0}
!98 = !{!"control_flow_graph", !14, i64 0, !14, i64 8, !14, i64 16, !16, i64 24, !16, i64 28, !16, i64 32, !14, i64 40, !16, i64 48, !7, i64 52, !7, i64 60, !16, i64 68, !16, i64 72}
!99 = !{!13, !14, i64 56}
!100 = !{!98, !14, i64 8}
!101 = distinct !{!101, !10}
!102 = distinct !{!102, !10}
!103 = !{!19, !14, i64 24}
!104 = !{!105, !14, i64 16}
!105 = !{!"gimple_df", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !106, i64 32, !106, i64 48, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !16, i64 96, !107, i64 104}
!106 = !{!"pt_solution", !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 0, !14, i64 8}
!107 = !{!"ssa_operands", !14, i64 0, !16, i64 8, !16, i64 12, !7, i64 16, !14, i64 24, !14, i64 32}
!108 = !{i64 0, i64 8, !17, i64 8, i64 8, !17, i64 16, i64 8, !17}
!109 = distinct !{!109, !10}
!110 = distinct !{!110, !10}
!111 = distinct !{!111, !10}
!112 = !{!113, !14, i64 0}
!113 = !{!"bitmap_head_def", !14, i64 0, !14, i64 8, !16, i64 16, !14, i64 24}
!114 = !{!115, !14, i64 0}
!115 = !{!"", !14, i64 0, !14, i64 8, !16, i64 16, !15, i64 24}
!116 = !{!115, !14, i64 8}
!117 = !{!118, !16, i64 16}
!118 = !{!"bitmap_element_def", !14, i64 0, !14, i64 8, !16, i64 16, !7, i64 24}
!119 = !{!115, !16, i64 16}
!120 = !{!115, !15, i64 24}
!121 = distinct !{!121, !10}
!122 = distinct !{!122, !10}
!123 = !{!118, !14, i64 0}
!124 = distinct !{!124, !10}
!125 = !{!126, !16, i64 0}
!126 = !{!"VEC_edge_base", !16, i64 0, !16, i64 4, !7, i64 8}
!127 = !{!62, !14, i64 8}
!128 = !{!62, !14, i64 16}
!129 = !{!13, !16, i64 96}
!130 = !{!131, !14, i64 0}
!131 = !{!"gimple_bb_info", !14, i64 0, !14, i64 8}
!132 = !{!133, !14, i64 0}
!133 = !{!"gimple_seq_d", !14, i64 0, !14, i64 8, !14, i64 16}
!134 = !{!135, !14, i64 24}
!135 = !{!"htab", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !16, i64 56, !16, i64 60, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !16, i64 104}
!136 = !{!135, !15, i64 32}
!137 = distinct !{!137, !10}
!138 = distinct !{!138, !10}
!139 = distinct !{!139, !10}
