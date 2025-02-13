; ModuleID = 'matrix-reorg.c'
source_filename = "matrix-reorg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.matrix_info = type { ptr, i32, i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.access_site_info = type { ptr, ptr, ptr, i32, i8, ptr, i8 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.malloc_call_data = type { ptr, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.check_var_data = type { ptr, ptr }
%struct.free_info = type { ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.matrix_access_phi_node = type { ptr, i32 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.ssa_acc_in_tree = type { ptr, i32, ptr, ptr, ptr, i8 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_access_site_info_p_base = type { i32, i32, [1 x ptr] }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.def_optype_d = type { ptr, ptr }

@pass_ipa_matrix_reorg = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str, ptr @gate_matrix_reorg, ptr @matrix_reorg, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 129 } }, align 8
@.str = private unnamed_addr constant [13 x i8] c"matrix-reorg\00", align 1
@flag_ipa_matrix_reorg = external local_unnamed_addr global i32, align 4
@flag_whole_program = external local_unnamed_addr global i32, align 4
@profile_info = external local_unnamed_addr global ptr, align 8
@check_transpose_p = internal unnamed_addr global i1 false, align 1
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@matrices_to_reorg = internal unnamed_addr global ptr null, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@htab_mat_acc_phi_nodes = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Found vector type, don't flatten matrix\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"matrix-reorg.c\00", align 1
@varpool_nodes_queue = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"Matrix %s is an argument to function %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Matrix %s: Function call %s, level %d escapes.\0A\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"Matrix %s: Cannot calculate the size of allocation, escaping at level %d\0A\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.8 = private unnamed_addr constant [12 x i8] c"Matrix %s:\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"dim %d before sort \00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"count is  %ld  \0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"dim %d after sort\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"dim_map[%d] after sort %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Transposed dimensions: dim %d is now dim %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.16 = private unnamed_addr constant [47 x i8] c"Matrix \22%s\22; Escaping Level: %d, Num Dims: %d,\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c" Malloc Dims: %d, \00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Flattened %d dimensions \0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_matrix_reorg() #0 {
  %1 = load i32, ptr @flag_ipa_matrix_reorg, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_whole_program, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @matrix_reorg() #1 {
  %1 = load ptr, ptr @profile_info, align 8, !tbaa !10
  %2 = icmp ne ptr %1, null
  store i1 %2, ptr @check_transpose_p, align 1
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %9

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !llvm.loop !12

9:                                                ; preds = %0, %5
  %10 = phi ptr [ %7, %5 ], [ %3, %0 ]
  %11 = tail call fastcc zeroext i8 @may_flatten_matrices(ptr noundef nonnull %10) #20, !range !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %83, label %5

13:                                               ; preds = %5, %0
  %14 = tail call ptr @htab_create(i64 noundef 37, ptr noundef nonnull @mtt_info_hash, ptr noundef nonnull @mtt_info_eq, ptr noundef nonnull @mat_free) #21
  store ptr %14, ptr @matrices_to_reorg, align 8, !tbaa !10
  tail call fastcc void @find_matrices_decl() #20
  %15 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %61, label %17

17:                                               ; preds = %13, %57
  %18 = phi ptr [ %59, %57 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 27
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 32
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %57, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %25 = load ptr, ptr %18, align 8, !tbaa !15
  store ptr %25, ptr @current_function_decl, align 8, !tbaa !10
  %26 = getelementptr inbounds %struct.tree_function_decl, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !24
  tail call void @push_cfun(ptr noundef %27) #21
  tail call void @bitmap_obstack_initialize(ptr noundef null) #21
  tail call void @gimple_register_cfg_hooks() #21
  %28 = load ptr, ptr @cfun, align 8, !tbaa !10
  %29 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %28) #20, !range !14
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  tail call void @free_dominance_info(i32 noundef 1) #21
  tail call void @free_dominance_info(i32 noundef 2) #21
  tail call void @pop_cfun() #21
  store ptr %24, ptr @current_function_decl, align 8, !tbaa !10
  tail call void @bitmap_obstack_release(ptr noundef null) #21
  br label %83

32:                                               ; preds = %23
  %33 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @free_dominance_info(i32 noundef 1) #21
  tail call void @free_dominance_info(i32 noundef 2) #21
  tail call void @pop_cfun() #21
  store ptr %24, ptr @current_function_decl, align 8, !tbaa !10
  tail call void @bitmap_obstack_release(ptr noundef null) #21
  br label %83

36:                                               ; preds = %32
  %37 = tail call ptr @htab_create(i64 noundef 37, ptr noundef nonnull @mat_acc_phi_hash, ptr noundef nonnull @mat_acc_phi_eq, ptr noundef nonnull @free) #21
  store ptr %37, ptr @htab_mat_acc_phi_nodes, align 8, !tbaa !10
  %38 = load i1, ptr @check_transpose_p, align 1
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call fastcc void @find_sites_in_func(i8 noundef zeroext 0) #20
  br label %55

40:                                               ; preds = %36
  tail call fastcc void @find_sites_in_func(i8 noundef zeroext 1) #20
  tail call void @loop_optimizer_init(i32 noundef 7) #21
  %41 = load ptr, ptr @cfun, align 8, !tbaa !10
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !25
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  tail call void @scev_initialize() #21
  br label %46

46:                                               ; preds = %45, %40
  %47 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !10
  tail call void @htab_traverse(ptr noundef %47, ptr noundef nonnull @analyze_transpose, ptr noundef null) #21
  %48 = load ptr, ptr @cfun, align 8, !tbaa !10
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !25
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  tail call void @scev_finalize() #21
  tail call void @loop_optimizer_finalize() #21
  %53 = load ptr, ptr @cfun, align 8, !tbaa !10
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 4
  store ptr null, ptr %54, align 8, !tbaa !25
  br label %55

55:                                               ; preds = %46, %52, %39
  %56 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !10
  tail call void @htab_traverse(ptr noundef %56, ptr noundef nonnull @check_allocation_function, ptr noundef null) #21
  tail call void @free_dominance_info(i32 noundef 1) #21
  tail call void @free_dominance_info(i32 noundef 2) #21
  tail call void @pop_cfun() #21
  store ptr %24, ptr @current_function_decl, align 8, !tbaa !10
  tail call void @bitmap_obstack_release(ptr noundef null) #21
  br label %57

57:                                               ; preds = %55, %17
  %58 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !10
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %17, !llvm.loop !27

61:                                               ; preds = %57, %13
  %62 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !10
  tail call void @htab_traverse(ptr noundef %62, ptr noundef nonnull @transform_allocation_sites, ptr noundef null) #21
  %63 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !10
  %64 = icmp eq ptr %63, null
  br i1 %64, label %81, label %65

65:                                               ; preds = %61, %77
  %66 = phi ptr [ %79, %77 ], [ %63, %61 ]
  %67 = getelementptr inbounds %struct.cgraph_node, ptr %66, i64 0, i32 27
  %68 = load i16, ptr %67, align 4
  %69 = and i16 %68, 32
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %73 = load ptr, ptr %66, align 8, !tbaa !15
  store ptr %73, ptr @current_function_decl, align 8, !tbaa !10
  %74 = getelementptr inbounds %struct.tree_function_decl, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !24
  tail call void @push_cfun(ptr noundef %75) #21
  tail call void @bitmap_obstack_initialize(ptr noundef null) #21
  tail call void @gimple_register_cfg_hooks() #21
  tail call fastcc void @record_all_accesses_in_func() #20
  %76 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !10
  tail call void @htab_traverse(ptr noundef %76, ptr noundef nonnull @transform_access_sites, ptr noundef null) #21
  tail call void @free_dominance_info(i32 noundef 1) #21
  tail call void @free_dominance_info(i32 noundef 2) #21
  tail call void @pop_cfun() #21
  store ptr %72, ptr @current_function_decl, align 8, !tbaa !10
  tail call void @bitmap_obstack_release(ptr noundef null) #21
  br label %77

77:                                               ; preds = %65, %71
  %78 = getelementptr inbounds %struct.cgraph_node, ptr %66, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !10
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %65, !llvm.loop !28

81:                                               ; preds = %77, %61
  %82 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !10
  tail call void @htab_traverse(ptr noundef %82, ptr noundef nonnull @dump_matrix_reorg_analysis, ptr noundef null) #21
  store ptr null, ptr @current_function_decl, align 8, !tbaa !10
  tail call void @set_cfun(ptr noundef null) #21
  store ptr null, ptr @matrices_to_reorg, align 8, !tbaa !10
  br label %83

83:                                               ; preds = %9, %31, %35, %81
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @may_flatten_matrices(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 32
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.tree_function_decl, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !29
  %13 = load ptr, ptr %12, align 8, !tbaa !30
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !32
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %37, label %26

19:                                               ; preds = %34, %26
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !32
  %22 = load ptr, ptr %11, align 8, !tbaa !29
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %21, %24
  br i1 %25, label %37, label %26, !llvm.loop !35

26:                                               ; preds = %7, %19
  %27 = phi ptr [ %21, %19 ], [ %15, %7 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %27) #20
  %28 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !14
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %19

30:                                               ; preds = %26, %34
  %31 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %32 = tail call fastcc zeroext i8 @may_flatten_matrices_1(ptr noundef %31) #20
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %35 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !14
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %30, label %19, !llvm.loop !36

37:                                               ; preds = %19, %30, %7, %1
  %38 = phi i8 [ 1, %1 ], [ 1, %7 ], [ 0, %30 ], [ 1, %19 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret i8 %38
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @mtt_info_hash(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !10
  %3 = load ptr, ptr %0, align 8, !tbaa !37
  %4 = tail call i32 %2(ptr noundef %3) #21
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @mtt_info_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !37
  %4 = load ptr, ptr %1, align 8, !tbaa !37
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal void @mat_free(ptr noundef readonly %0) #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %5) #20
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %10) #20
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @free(ptr noundef nonnull %15) #20
  br label %18

18:                                               ; preds = %13, %17, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_matrices_decl() unnamed_addr #1 {
  %1 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 566, ptr noundef nonnull @.str.3) #21
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %4, %28
  %8 = phi ptr [ %30, %28 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = load i64, ptr %9, align 8
  %13 = and i64 %12, 65535
  %14 = icmp ne i64 %13, 32
  %15 = load ptr, ptr @matrices_to_reorg, align 8
  %16 = icmp eq ptr %15, null
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %11
  %19 = tail call fastcc ptr @analyze_matrix_decl(ptr noundef nonnull %9) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load i64, ptr %9, align 8
  %23 = and i64 %22, 262144
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !10
  %27 = tail call ptr @htab_find_slot(ptr noundef %26, ptr noundef nonnull %19, i32 noundef 1) #21
  store ptr %19, ptr %27, align 8, !tbaa !10
  br label %28

28:                                               ; preds = %21, %25, %18, %7, %11
  %29 = getelementptr inbounds %struct.varpool_node, ptr %8, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %7, !llvm.loop !44

32:                                               ; preds = %28, %4
  ret void
}

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_register_cfg_hooks() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

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
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @mat_acc_phi_hash(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !10
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = tail call i32 %2(ptr noundef %3) #21
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @mat_acc_phi_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = load ptr, ptr %1, align 8, !tbaa !46
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_sites_in_func(i8 noundef zeroext %0) unnamed_addr #1 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.matrix_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.gimple_df, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %8) #20
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %9) #21
  %11 = load ptr, ptr @cfun, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  %14 = load ptr, ptr %13, align 8, !tbaa !30
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !32
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %70, label %29

20:                                               ; preds = %67, %29
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !32
  %23 = load ptr, ptr @cfun, align 8, !tbaa !10
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !29
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %22, %27
  br i1 %28, label %70, label %29, !llvm.loop !52

29:                                               ; preds = %1, %20
  %30 = phi ptr [ %22, %20 ], [ %16, %1 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %30) #20
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !14
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %20

33:                                               ; preds = %29, %67
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %35 = call ptr @gimple_get_lhs(ptr noundef %34) #21
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = load i64, ptr %35, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 32
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  store ptr %35, ptr %3, align 8, !tbaa !37
  %42 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !10
  %43 = call ptr @htab_find(ptr noundef %42, ptr noundef nonnull %3) #21
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  call void @sbitmap_zero(ptr noundef %10) #21
  call fastcc void @analyze_matrix_allocation_site(ptr noundef nonnull %43, ptr noundef %34, i32 noundef 0) #20
  br label %46

46:                                               ; preds = %41, %45, %37, %33
  %47 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %34) #20, !range !14
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %46
  %50 = call zeroext i8 @gimple_assign_single_p(ptr noundef %34) #21
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %49
  %53 = load i64, ptr %35, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 141
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %34) #20
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 32
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %34) #20
  store ptr %62, ptr %3, align 8, !tbaa !37
  %63 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !10
  %64 = call ptr @htab_find(ptr noundef %63, ptr noundef nonnull %3) #21
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  call void @sbitmap_zero(ptr noundef %10) #21
  call fastcc void @analyze_matrix_accesses(ptr noundef nonnull %64, ptr noundef nonnull %35, i32 noundef 0, i8 noundef zeroext 0, ptr noundef %10, i8 noundef zeroext %0) #20
  br label %67

67:                                               ; preds = %61, %66, %56, %52, %49, %46
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %68 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !14
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %33, label %20, !llvm.loop !53

70:                                               ; preds = %20, %1
  %71 = load ptr, ptr %10, align 8, !tbaa !54
  call void @free(ptr noundef %71) #20
  call void @free(ptr noundef %10) #20
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @scev_initialize() local_unnamed_addr #3

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @analyze_transpose(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.affine_iv, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.matrix_info, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %8 = icmp slt i32 %7, 2
  %9 = getelementptr inbounds %struct.matrix_info, ptr %5, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  br i1 %8, label %13, label %11

11:                                               ; preds = %2
  %12 = icmp eq ptr %10, null
  br i1 %12, label %88, label %27

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.matrix_info, ptr %5, i64 0, i32 14
  %15 = icmp eq ptr %10, null
  br i1 %15, label %88, label %16

16:                                               ; preds = %13
  %17 = call fastcc i32 @VEC_access_site_info_p_base_iterate(ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull %4) #20, !range !58
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16, %19
  %20 = phi i32 [ %22, %19 ], [ 0, %16 ]
  %21 = load ptr, ptr %4, align 8, !tbaa !10
  tail call void @free(ptr noundef %21) #20
  %22 = add nuw nsw i32 %20, 1
  %23 = load ptr, ptr %14, align 8, !tbaa !57
  %24 = call fastcc i32 @VEC_access_site_info_p_base_iterate(ptr noundef %23, i32 noundef %22, ptr noundef nonnull %4) #20, !range !58
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %19, !llvm.loop !59

26:                                               ; preds = %19, %16
  tail call fastcc void @VEC_access_site_info_p_heap_free(ptr noundef nonnull %14) #20
  br label %88

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.matrix_info, ptr %5, i64 0, i32 13
  %29 = load ptr, ptr %28, align 8, !tbaa !40
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = zext nneg i32 %7 to i64
  %33 = tail call ptr @xcalloc(i64 noundef %32, i64 noundef 8) #21
  store ptr %33, ptr %28, align 8, !tbaa !40
  %34 = load ptr, ptr %9, align 8, !tbaa !57
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi ptr [ %34, %31 ], [ %10, %27 ]
  %37 = call fastcc i32 @VEC_access_site_info_p_base_iterate(ptr noundef %36, i32 noundef 0, ptr noundef nonnull %4) #20, !range !58
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %87, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.affine_iv, ptr %3, i64 0, i32 1
  br label %41

41:                                               ; preds = %39, %82
  %42 = phi i32 [ 0, %39 ], [ %83, %82 ]
  %43 = load ptr, ptr %4, align 8, !tbaa !10
  %44 = load ptr, ptr %43, align 8, !tbaa !60
  %45 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %44) #20, !range !62
  %46 = icmp eq i32 %45, 66
  br i1 %46, label %47, label %82

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.access_site_info, ptr %43, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !63
  %50 = icmp slt i32 %49, %7
  br i1 %50, label %51, label %82

51:                                               ; preds = %47
  %52 = load ptr, ptr %43, align 8, !tbaa !60
  %53 = call fastcc ptr @loop_containing_stmt(ptr noundef %52) #20
  %54 = icmp eq ptr %53, null
  br i1 %54, label %82, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.loop, ptr %53, i64 0, i32 8
  %57 = load ptr, ptr %56, align 8, !tbaa !64
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %82

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.access_site_info, ptr %43, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !68
  %62 = call zeroext i8 @simple_iv(ptr noundef nonnull %53, ptr noundef nonnull %53, ptr noundef %61, ptr noundef nonnull %3, i8 noundef zeroext 1) #21
  %63 = icmp ne i8 %62, 0
  %64 = load ptr, ptr %40, align 8
  %65 = icmp ne ptr %64, null
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %82

67:                                               ; preds = %59
  %68 = call i64 @int_cst_value(ptr noundef nonnull %64) #21
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.access_site_info, ptr %43, i64 0, i32 6
  store i8 1, ptr %71, align 8, !tbaa !69
  %72 = load ptr, ptr %43, align 8, !tbaa !60
  %73 = call fastcc ptr @gimple_bb(ptr noundef %72) #20
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 8
  %75 = load i64, ptr %74, align 8, !tbaa !70
  %76 = load ptr, ptr %28, align 8, !tbaa !40
  %77 = load i32, ptr %48, align 8, !tbaa !63
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, ptr %76, i64 %78
  %80 = load i64, ptr %79, align 8, !tbaa !71
  %81 = add nsw i64 %80, %75
  store i64 %81, ptr %79, align 8, !tbaa !71
  br label %82

82:                                               ; preds = %41, %47, %59, %70, %67, %51, %55
  call void @free(ptr noundef nonnull %43) #20
  %83 = add nuw nsw i32 %42, 1
  %84 = load ptr, ptr %9, align 8, !tbaa !57
  %85 = call fastcc i32 @VEC_access_site_info_p_base_iterate(ptr noundef %84, i32 noundef %83, ptr noundef nonnull %4) #20, !range !58
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %41, !llvm.loop !72

87:                                               ; preds = %82, %35
  call fastcc void @VEC_access_site_info_p_heap_free(ptr noundef nonnull %9) #20
  br label %88

88:                                               ; preds = %11, %13, %26, %87
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i32 1
}

; Function Attrs: optsize
declare void @scev_finalize() local_unnamed_addr #3

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @check_allocation_function(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.malloc_call_data, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = icmp eq ptr %6, null
  br i1 %7, label %109, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @cfun, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %13) #20
  %15 = tail call ptr @sbitmap_alloc(i32 noundef %14) #21
  %16 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %109

20:                                               ; preds = %8
  %21 = load ptr, ptr %5, align 8, !tbaa !41
  %22 = load ptr, ptr %21, align 8, !tbaa !10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %109, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !74
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = zext nneg i32 %26 to i64
  br label %30

30:                                               ; preds = %28, %35
  %31 = phi i64 [ 1, %28 ], [ %36, %35 ]
  %32 = getelementptr inbounds ptr, ptr %21, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = add nuw nsw i64 %31, 1
  %37 = icmp eq i64 %36, %29
  br i1 %37, label %40, label %30, !llvm.loop !75

38:                                               ; preds = %30
  %39 = trunc i64 %31 to i32
  br label %40

40:                                               ; preds = %35, %38, %24
  %41 = phi i32 [ 1, %24 ], [ %39, %38 ], [ %26, %35 ]
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef nonnull %4, i32 noundef %41, ptr noundef null) #20
  %42 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !56
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %96

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.malloc_call_data, ptr %3, i64 0, i32 1
  %47 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 9
  %48 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 10
  br label %49

49:                                               ; preds = %45, %86
  %50 = phi i64 [ 1, %45 ], [ %92, %86 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %51 = load ptr, ptr %5, align 8, !tbaa !41
  %52 = getelementptr inbounds ptr, ptr %51, i64 %50
  %53 = load ptr, ptr %52, align 8, !tbaa !10
  call fastcc void @collect_data_for_malloc_call(ptr noundef %53, ptr noundef nonnull %3) #20
  %54 = load ptr, ptr %46, align 8, !tbaa !76
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 23
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load ptr, ptr %47, align 8, !tbaa !78
  %60 = icmp eq ptr %59, null
  br i1 %60, label %77, label %86

61:                                               ; preds = %49
  tail call void @sbitmap_zero(ptr noundef %15) #21
  %62 = tail call fastcc ptr @can_calculate_expr_before_stmt(ptr noundef nonnull %54, ptr noundef %15) #20
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = trunc i64 %50 to i32
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef nonnull %4, i32 noundef %65, ptr noundef %53) #20
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %67 = icmp eq ptr %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %4, align 8, !tbaa !37
  %70 = tail call ptr @get_name(ptr noundef %69) #21
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %66, ptr noundef nonnull @.str.7, ptr noundef %70, i32 noundef %65) #20
  br label %75

72:                                               ; preds = %61
  %73 = load ptr, ptr %47, align 8, !tbaa !78
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %86

75:                                               ; preds = %68, %64
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  %76 = load i32, ptr %42, align 4, !tbaa !56
  br label %96

77:                                               ; preds = %72, %58
  %78 = phi ptr [ %54, %58 ], [ %62, %72 ]
  %79 = load i32, ptr %42, align 4, !tbaa !56
  %80 = sext i32 %79 to i64
  %81 = tail call ptr @xcalloc(i64 noundef %80, i64 noundef 8) #21
  store ptr %81, ptr %47, align 8, !tbaa !78
  %82 = load i32, ptr %42, align 4, !tbaa !56
  %83 = sext i32 %82 to i64
  %84 = tail call ptr @xcalloc(i64 noundef %83, i64 noundef 8) #21
  store ptr %84, ptr %48, align 8, !tbaa !79
  %85 = load ptr, ptr %47, align 8, !tbaa !78
  br label %86

86:                                               ; preds = %77, %72, %58
  %87 = phi ptr [ %59, %58 ], [ %73, %72 ], [ %85, %77 ]
  %88 = phi ptr [ %54, %58 ], [ %62, %72 ], [ %78, %77 ]
  %89 = getelementptr inbounds ptr, ptr %87, i64 %50
  store ptr %88, ptr %89, align 8, !tbaa !10
  %90 = load ptr, ptr %48, align 8, !tbaa !79
  %91 = getelementptr inbounds ptr, ptr %90, i64 %50
  store ptr %88, ptr %91, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  %92 = add nuw nsw i64 %50, 1
  %93 = load i32, ptr %42, align 4, !tbaa !56
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %49, label %96, !llvm.loop !80

96:                                               ; preds = %86, %40, %75
  %97 = phi i32 [ %43, %40 ], [ %76, %75 ], [ %93, %86 ]
  %98 = load i32, ptr %25, align 8, !tbaa !74
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = sext i32 %97 to i64
  %102 = sext i32 %98 to i64
  br label %103

103:                                              ; preds = %100, %103
  %104 = phi i64 [ %101, %100 ], [ %107, %103 ]
  %105 = load ptr, ptr %5, align 8, !tbaa !41
  %106 = getelementptr inbounds ptr, ptr %105, i64 %104
  store ptr null, ptr %106, align 8, !tbaa !10
  %107 = add nsw i64 %104, 1
  %108 = icmp eq i64 %107, %102
  br i1 %108, label %109, label %103, !llvm.loop !81

109:                                              ; preds = %103, %96, %8, %20, %2
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @transform_allocation_sites(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.malloc_call_data, align 8
  %5 = alloca %struct.immediate_use_iterator_d, align 8
  %6 = alloca %struct.check_var_data, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  %13 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #22
  %14 = load ptr, ptr %0, align 8, !tbaa !10
  %15 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !56
  %17 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, ptr %15, align 4, !tbaa !56
  br label %381

21:                                               ; preds = %2
  %22 = icmp slt i32 %16, 2
  br i1 %22, label %381, label %23

23:                                               ; preds = %21
  %24 = zext nneg i32 %16 to i64
  %25 = tail call ptr @xcalloc(i64 noundef %24, i64 noundef 4) #21
  %26 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 15
  store ptr %25, ptr %26, align 8, !tbaa !82
  %27 = load i32, ptr %15, align 4, !tbaa !56
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23, %29
  %30 = phi i64 [ %33, %29 ], [ 0, %23 ]
  %31 = getelementptr inbounds i32, ptr %25, i64 %30
  %32 = trunc i64 %30 to i32
  store i32 %32, ptr %31, align 4, !tbaa !6
  %33 = add nuw nsw i64 %30, 1
  %34 = load i32, ptr %15, align 4, !tbaa !56
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %29, label %37, !llvm.loop !83

37:                                               ; preds = %29, %23
  %38 = phi i32 [ %27, %23 ], [ %34, %29 ]
  %39 = load i1, ptr @check_transpose_p, align 1
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %126, label %134

42:                                               ; preds = %37
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %67, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %14, align 8, !tbaa !37
  %47 = tail call ptr @get_name(ptr noundef %46) #21
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %43, ptr noundef nonnull @.str.8, ptr noundef %47) #20
  %49 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 13
  %50 = tail call i32 @llvm.smax.i32(i32 %16, i32 1)
  %51 = zext nneg i32 %50 to i64
  br label %52

52:                                               ; preds = %45, %64
  %53 = phi i64 [ 0, %45 ], [ %65, %64 ]
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %55 = trunc i64 %53 to i32
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.9, i32 noundef %55) #20
  %57 = load ptr, ptr %49, align 8, !tbaa !40
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %52
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %61 = getelementptr inbounds i64, ptr %57, i64 %53
  %62 = load i64, ptr %61, align 8, !tbaa !71
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.10, i64 noundef %62) #20
  br label %64

64:                                               ; preds = %52, %59
  %65 = add nuw nsw i64 %53, 1
  %66 = icmp eq i64 %65, %51
  br i1 %66, label %67, label %52, !llvm.loop !84

67:                                               ; preds = %64, %42
  %68 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 13
  %69 = load ptr, ptr %68, align 8, !tbaa !40
  %70 = load ptr, ptr %26, align 8, !tbaa !82
  %71 = load i32, ptr %15, align 4, !tbaa !56
  tail call fastcc void @sort_dim_hot_level(ptr noundef %69, ptr noundef %70, i32 noundef %71) #20
  %72 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %73 = icmp eq ptr %72, null
  br i1 %73, label %92, label %74

74:                                               ; preds = %67
  %75 = tail call i32 @llvm.smax.i32(i32 %16, i32 1)
  %76 = zext nneg i32 %75 to i64
  br label %77

77:                                               ; preds = %74, %89
  %78 = phi i64 [ 0, %74 ], [ %90, %89 ]
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %80 = trunc i64 %78 to i32
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.11, i32 noundef %80) #20
  %82 = load ptr, ptr %68, align 8, !tbaa !40
  %83 = icmp eq ptr %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %77
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %86 = getelementptr inbounds i64, ptr %82, i64 %78
  %87 = load i64, ptr %86, align 8, !tbaa !71
  %88 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.10, i64 noundef %87) #20
  br label %89

89:                                               ; preds = %77, %84
  %90 = add nuw nsw i64 %78, 1
  %91 = icmp eq i64 %90, %76
  br i1 %91, label %92, label %77, !llvm.loop !85

92:                                               ; preds = %89, %67
  %93 = load i32, ptr %15, align 4, !tbaa !56
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %134

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 6
  br label %97

97:                                               ; preds = %95, %121
  %98 = phi i64 [ 0, %95 ], [ %122, %121 ]
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %100 = icmp eq ptr %99, null
  %101 = load ptr, ptr %26, align 8, !tbaa !82
  br i1 %100, label %108, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i32, ptr %101, i64 %98
  %104 = load i32, ptr %103, align 4, !tbaa !6
  %105 = trunc i64 %98 to i32
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %99, ptr noundef nonnull @.str.12, i32 noundef %105, i32 noundef %104) #20
  %107 = load ptr, ptr %26, align 8, !tbaa !82
  br label %108

108:                                              ; preds = %102, %97
  %109 = phi ptr [ %107, %102 ], [ %101, %97 ]
  %110 = getelementptr inbounds i32, ptr %109, i64 %98
  %111 = load i32, ptr %110, align 4, !tbaa !6
  %112 = zext i32 %111 to i64
  %113 = icmp eq i64 %98, %112
  br i1 %113, label %121, label %114

114:                                              ; preds = %108
  %115 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = trunc i64 %98 to i32
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %115, ptr noundef nonnull @.str.13, i32 noundef %111, i32 noundef %118) #20
  br label %120

120:                                              ; preds = %117, %114
  store i8 1, ptr %96, align 4, !tbaa !86
  br label %121

121:                                              ; preds = %108, %120
  %122 = add nuw nsw i64 %98, 1
  %123 = load i32, ptr %15, align 4, !tbaa !56
  %124 = sext i32 %123 to i64
  %125 = icmp slt i64 %122, %124
  br i1 %125, label %97, label %134, !llvm.loop !87

126:                                              ; preds = %40, %126
  %127 = phi i64 [ %130, %126 ], [ 0, %40 ]
  %128 = getelementptr inbounds i32, ptr %25, i64 %127
  %129 = trunc i64 %127 to i32
  store i32 %129, ptr %128, align 4, !tbaa !6
  %130 = add nuw nsw i64 %127, 1
  %131 = load i32, ptr %15, align 4, !tbaa !56
  %132 = sext i32 %131 to i64
  %133 = icmp slt i64 %130, %132
  br i1 %133, label %126, label %134, !llvm.loop !88

134:                                              ; preds = %126, %121, %40, %92
  %135 = load ptr, ptr %17, align 8, !tbaa !41
  %136 = load ptr, ptr %135, align 8, !tbaa !10
  call fastcc void @collect_data_for_malloc_call(ptr noundef %136, ptr noundef nonnull %4) #20
  %137 = getelementptr inbounds %struct.malloc_call_data, ptr %4, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !76
  %139 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 9
  %140 = load ptr, ptr %139, align 8, !tbaa !78
  store ptr %138, ptr %140, align 8, !tbaa !10
  %141 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 10
  %142 = load ptr, ptr %141, align 8, !tbaa !79
  store ptr %138, ptr %142, align 8, !tbaa !10
  %143 = load i32, ptr %15, align 4, !tbaa !56
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %145, label %381

145:                                              ; preds = %134
  %146 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 7
  %147 = getelementptr inbounds %struct.check_var_data, ptr %6, i64 0, i32 1
  br label %148

148:                                              ; preds = %145, %166
  %149 = phi i64 [ 1, %145 ], [ %167, %166 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %150 = load ptr, ptr %139, align 8, !tbaa !78
  %151 = getelementptr inbounds ptr, ptr %150, i64 %149
  %152 = load ptr, ptr %151, align 8, !tbaa !10
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2108, ptr noundef nonnull @.str.3) #21
  %155 = load ptr, ptr %139, align 8, !tbaa !78
  br label %156

156:                                              ; preds = %148, %154
  %157 = phi ptr [ %150, %148 ], [ %155, %154 ]
  %158 = load ptr, ptr %146, align 8, !tbaa !73
  store ptr %158, ptr %6, align 8, !tbaa !89
  store ptr null, ptr %147, align 8, !tbaa !91
  %159 = getelementptr inbounds ptr, ptr %157, i64 %149
  %160 = call ptr @walk_tree_without_duplicates_1(ptr noundef nonnull %159, ptr noundef nonnull @check_var_notmodified_p, ptr noundef nonnull %6, ptr noundef null) #21
  %161 = icmp eq ptr %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %156
  %163 = trunc i64 %149 to i32
  %164 = load ptr, ptr %147, align 8, !tbaa !91
  call fastcc void @mark_min_matrix_escape_level(ptr noundef nonnull %14, i32 noundef %163, ptr noundef %164) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  %165 = load i32, ptr %15, align 4, !tbaa !56
  br label %171

166:                                              ; preds = %156
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  %167 = add nuw nsw i64 %149, 1
  %168 = load i32, ptr %15, align 4, !tbaa !56
  %169 = sext i32 %168 to i64
  %170 = icmp slt i64 %167, %169
  br i1 %170, label %148, label %171, !llvm.loop !92

171:                                              ; preds = %166, %162
  %172 = phi i32 [ %165, %162 ], [ %168, %166 ]
  %173 = icmp slt i32 %172, 2
  br i1 %173, label %381, label %174

174:                                              ; preds = %171
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %136) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  %175 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %176 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 7
  %177 = load ptr, ptr %176, align 8, !tbaa !73
  store ptr %177, ptr @current_function_decl, align 8, !tbaa !10
  %178 = getelementptr inbounds %struct.tree_function_decl, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !24
  call void @push_cfun(ptr noundef %179) #21
  %180 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 11
  %181 = load ptr, ptr %180, align 8, !tbaa !94
  %182 = load i32, ptr %15, align 4, !tbaa !56
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, ptr %181, i64 %183
  %185 = load i64, ptr %184, align 8, !tbaa !71
  %186 = icmp sgt i32 %182, 0
  br i1 %186, label %187, label %262

187:                                              ; preds = %174
  %188 = zext nneg i32 %182 to i64
  br label %189

189:                                              ; preds = %187, %255
  %190 = phi i64 [ %188, %187 ], [ %192, %255 ]
  %191 = phi ptr [ null, %187 ], [ %202, %255 ]
  %192 = add nsw i64 %190, -1
  %193 = load ptr, ptr %141, align 8, !tbaa !79
  %194 = load ptr, ptr %26, align 8, !tbaa !82
  %195 = getelementptr inbounds i32, ptr %194, i64 %192
  %196 = load i32, ptr %195, align 4, !tbaa !6
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds ptr, ptr %193, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !10
  %200 = getelementptr inbounds %struct.tree_common, ptr %199, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !24
  %202 = call ptr @add_new_static_var(ptr noundef %201) #21
  %203 = load ptr, ptr %141, align 8, !tbaa !79
  %204 = load ptr, ptr %26, align 8, !tbaa !82
  %205 = getelementptr inbounds i32, ptr %204, i64 %192
  %206 = load i32, ptr %205, align 4, !tbaa !6
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds ptr, ptr %203, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !10
  %210 = getelementptr inbounds %struct.tree_common, ptr %209, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !24
  %212 = load i32, ptr %15, align 4, !tbaa !56
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %227

214:                                              ; preds = %189
  %215 = zext nneg i32 %212 to i64
  br label %216

216:                                              ; preds = %214, %222
  %217 = phi i64 [ 0, %214 ], [ %223, %222 ]
  %218 = getelementptr inbounds i32, ptr %204, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !6
  %220 = zext i32 %219 to i64
  %221 = icmp eq i64 %192, %220
  br i1 %221, label %225, label %222

222:                                              ; preds = %216
  %223 = add nuw nsw i64 %217, 1
  %224 = icmp eq i64 %223, %215
  br i1 %224, label %227, label %216, !llvm.loop !95

225:                                              ; preds = %216
  %226 = trunc i64 %217 to i32
  br label %227

227:                                              ; preds = %222, %225, %189
  %228 = phi i32 [ 0, %189 ], [ %226, %225 ], [ %212, %222 ]
  %229 = load ptr, ptr %180, align 8, !tbaa !94
  %230 = zext nneg i32 %228 to i64
  %231 = getelementptr i64, ptr %229, i64 %230
  %232 = getelementptr i64, ptr %231, i64 1
  %233 = load i64, ptr %232, align 8, !tbaa !71
  %234 = call ptr @build_int_cst(ptr noundef %211, i64 noundef %233) #21
  %235 = icmp eq ptr %191, null
  br i1 %235, label %236, label %238

236:                                              ; preds = %227
  %237 = call ptr @build_int_cst(ptr noundef %211, i64 noundef %185) #21
  br label %238

238:                                              ; preds = %236, %227
  %239 = phi ptr [ %191, %227 ], [ %237, %236 ]
  %240 = load i1, ptr @check_transpose_p, align 1
  br i1 %240, label %249, label %241

241:                                              ; preds = %238
  %242 = load i32, ptr %15, align 4, !tbaa !56
  %243 = zext i32 %242 to i64
  %244 = icmp eq i64 %190, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %241
  %246 = load ptr, ptr %141, align 8, !tbaa !79
  %247 = getelementptr inbounds ptr, ptr %246, i64 %230
  %248 = load ptr, ptr %247, align 8, !tbaa !10
  br label %255

249:                                              ; preds = %241, %238
  %250 = load ptr, ptr %141, align 8, !tbaa !79
  %251 = getelementptr inbounds ptr, ptr %250, i64 %230
  %252 = load ptr, ptr %251, align 8, !tbaa !10
  %253 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef %211, ptr noundef %252, ptr noundef %234) #21
  %254 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %211, ptr noundef %253, ptr noundef %239) #21
  br label %255

255:                                              ; preds = %249, %245
  %256 = phi ptr [ %254, %249 ], [ %248, %245 ]
  %257 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %256, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #21
  %258 = call ptr @gimple_build_assign_stat(ptr noundef %202, ptr noundef %257) #21
  call void @mark_symbols_for_renaming(ptr noundef %258) #21
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %258, i32 noundef 1) #21
  %259 = load ptr, ptr %139, align 8, !tbaa !78
  %260 = getelementptr inbounds ptr, ptr %259, i64 %192
  store ptr %202, ptr %260, align 8, !tbaa !10
  %261 = icmp sgt i64 %190, 1
  br i1 %261, label %189, label %262, !llvm.loop !96

262:                                              ; preds = %255, %174
  call void @update_ssa(i32 noundef 2048) #21
  %263 = load ptr, ptr %176, align 8, !tbaa !73
  %264 = call ptr @cgraph_node(ptr noundef %263) #21
  %265 = call fastcc ptr @gimple_call_arg(ptr noundef %136, i32 noundef 0) #20
  %266 = load ptr, ptr %139, align 8, !tbaa !78
  %267 = load ptr, ptr %266, align 8, !tbaa !10
  %268 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %267, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #21
  %269 = load i64, ptr %265, align 8
  %270 = and i64 %269, 65535
  %271 = icmp eq i64 %270, 141
  br i1 %271, label %272, label %294

272:                                              ; preds = %262
  %273 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %5, ptr noundef nonnull %265) #20
  %274 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %5) #20, !range !14
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %276, label %294

276:                                              ; preds = %272, %290
  %277 = phi ptr [ %291, %290 ], [ %273, %272 ]
  %278 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %5) #20
  %279 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %5) #20, !range !14
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %281, label %290

281:                                              ; preds = %276
  %282 = icmp eq ptr %277, %136
  br label %283

283:                                              ; preds = %281, %286
  %284 = phi ptr [ %278, %281 ], [ %287, %286 ]
  br i1 %282, label %285, label %286

285:                                              ; preds = %283
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %284, ptr noundef %268) #20
  br label %286

286:                                              ; preds = %283, %285
  %287 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %5) #20
  %288 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %5) #20, !range !14
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %283, label %290, !llvm.loop !97

290:                                              ; preds = %286, %276
  %291 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %5) #20
  %292 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %5) #20, !range !14
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %276, label %294, !llvm.loop !98

294:                                              ; preds = %290, %272, %262
  %295 = load i32, ptr %15, align 4, !tbaa !56
  %296 = icmp sgt i32 %295, 1
  br i1 %296, label %297, label %335

297:                                              ; preds = %294, %330
  %298 = phi i64 [ %331, %330 ], [ 1, %294 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #22
  %299 = load ptr, ptr %17, align 8, !tbaa !41
  %300 = getelementptr inbounds ptr, ptr %299, i64 %298
  %301 = load ptr, ptr %300, align 8, !tbaa !10
  %302 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %301) #20, !range !14
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %297
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2212, ptr noundef nonnull @.str.3) #21
  br label %305

305:                                              ; preds = %297, %304
  %306 = call ptr @cgraph_edge(ptr noundef %264, ptr noundef %301) #21
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2214, ptr noundef nonnull @.str.3) #21
  br label %309

309:                                              ; preds = %305, %308
  call void @cgraph_remove_edge(ptr noundef %306) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #22
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %301) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #22
  call void @gsi_remove(ptr noundef nonnull %8, i8 noundef zeroext 1) #21
  %310 = call fastcc ptr @gimple_call_lhs(ptr noundef %301) #20
  %311 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %5, ptr noundef %310) #20
  %312 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %5) #20, !range !14
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %309, %314
  %315 = phi ptr [ %316, %314 ], [ %311, %309 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #22
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %315) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #22
  call void @gsi_remove(ptr noundef nonnull %8, i8 noundef zeroext 1) #21
  %316 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %5) #20
  %317 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %5) #20, !range !14
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %314, label %319, !llvm.loop !99

319:                                              ; preds = %314, %309
  %320 = phi ptr [ null, %309 ], [ %315, %314 ]
  %321 = call ptr @gimple_get_lhs(ptr noundef %320) #21
  %322 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %5, ptr noundef %321) #20
  %323 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %5) #20, !range !14
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %319, %325
  %326 = phi ptr [ %327, %325 ], [ %322, %319 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #22
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %326) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #22
  call void @gsi_remove(ptr noundef nonnull %8, i8 noundef zeroext 1) #21
  %327 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %5) #20
  %328 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %5) #20, !range !14
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %325, label %330, !llvm.loop !100

330:                                              ; preds = %325, %319
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  %331 = add nuw nsw i64 %298, 1
  %332 = load i32, ptr %15, align 4, !tbaa !56
  %333 = sext i32 %332 to i64
  %334 = icmp slt i64 %331, %333
  br i1 %334, label %297, label %335, !llvm.loop !101

335:                                              ; preds = %330, %294
  call void @update_ssa(i32 noundef 2048) #21
  %336 = load i32, ptr %15, align 4, !tbaa !56
  %337 = icmp sgt i32 %336, 1
  br i1 %337, label %338, label %380

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 8
  br label %340

340:                                              ; preds = %338, %375
  %341 = phi i32 [ %336, %338 ], [ %376, %375 ]
  %342 = phi i64 [ 1, %338 ], [ %377, %375 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #22
  %343 = load ptr, ptr %339, align 8, !tbaa !39
  %344 = getelementptr inbounds %struct.free_info, ptr %343, i64 %342
  %345 = load ptr, ptr %344, align 8, !tbaa !102
  %346 = icmp eq ptr %345, null
  br i1 %346, label %375, label %347

347:                                              ; preds = %340
  %348 = getelementptr inbounds %struct.free_info, ptr %343, i64 %342, i32 1
  %349 = load ptr, ptr %348, align 8, !tbaa !104
  %350 = call ptr @cgraph_node(ptr noundef %349) #21
  %351 = load ptr, ptr %339, align 8, !tbaa !39
  %352 = getelementptr inbounds %struct.free_info, ptr %351, i64 %342
  %353 = load ptr, ptr %352, align 8, !tbaa !102
  %354 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %353) #20, !range !14
  %355 = icmp eq i8 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %347
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2249, ptr noundef nonnull @.str.3) #21
  %357 = load ptr, ptr %339, align 8, !tbaa !39
  %358 = getelementptr inbounds %struct.free_info, ptr %357, i64 %342
  %359 = load ptr, ptr %358, align 8, !tbaa !102
  br label %360

360:                                              ; preds = %347, %356
  %361 = phi ptr [ %353, %347 ], [ %359, %356 ]
  %362 = call ptr @cgraph_edge(ptr noundef %350, ptr noundef %361) #21
  %363 = icmp eq ptr %362, null
  br i1 %363, label %364, label %365

364:                                              ; preds = %360
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2251, ptr noundef nonnull @.str.3) #21
  br label %365

365:                                              ; preds = %360, %364
  call void @cgraph_remove_edge(ptr noundef %362) #21
  %366 = load ptr, ptr %339, align 8, !tbaa !39
  %367 = getelementptr inbounds %struct.free_info, ptr %366, i64 %342, i32 1
  %368 = load ptr, ptr %367, align 8, !tbaa !104
  store ptr %368, ptr @current_function_decl, align 8, !tbaa !10
  %369 = getelementptr inbounds %struct.tree_function_decl, ptr %368, i64 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !24
  call void @set_cfun(ptr noundef %370) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #22
  %371 = load ptr, ptr %339, align 8, !tbaa !39
  %372 = getelementptr inbounds %struct.free_info, ptr %371, i64 %342
  %373 = load ptr, ptr %372, align 8, !tbaa !102
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %13, ptr noundef %373) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #22
  call void @gsi_remove(ptr noundef nonnull %12, i8 noundef zeroext 1) #21
  %374 = load i32, ptr %15, align 4, !tbaa !56
  br label %375

375:                                              ; preds = %340, %365
  %376 = phi i32 [ %341, %340 ], [ %374, %365 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #22
  %377 = add nuw nsw i64 %342, 1
  %378 = sext i32 %376 to i64
  %379 = icmp slt i64 %377, %378
  br i1 %379, label %340, label %380, !llvm.loop !105

380:                                              ; preds = %375, %335
  store ptr %175, ptr @current_function_decl, align 8, !tbaa !10
  call void @pop_cfun() #21
  br label %381

381:                                              ; preds = %134, %20, %171, %21, %380
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_all_accesses_in_func() unnamed_addr #1 {
  %1 = alloca %struct.matrix_info, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !10
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #20
  %8 = tail call ptr @sbitmap_alloc(i32 noundef %7) #21
  %9 = load ptr, ptr @cfun, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %13) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %55, label %16

16:                                               ; preds = %0, %46
  %17 = phi ptr [ %52, %46 ], [ %13, %0 ]
  %18 = phi i32 [ %47, %46 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %1) #22
  %19 = call fastcc ptr @VEC_tree_base_index(ptr noundef %17, i32 noundef %18) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !24
  %24 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %23) #20, !range !14
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %21
  %27 = call zeroext i8 @gimple_assign_single_p(ptr noundef %23) #21
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %22, align 8, !tbaa !24
  %31 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %30) #20
  %32 = load ptr, ptr %22, align 8, !tbaa !24
  %33 = call fastcc ptr @gimple_assign_lhs(ptr noundef %32) #20
  %34 = load i64, ptr %31, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 32
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i64, ptr %33, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 32
  br i1 %40, label %41, label %46

41:                                               ; preds = %37, %29
  store ptr %31, ptr %1, align 8, !tbaa !37
  %42 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !10
  %43 = call ptr @htab_find(ptr noundef %42, ptr noundef nonnull %1) #21
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  call void @sbitmap_zero(ptr noundef %8) #21
  call fastcc void @analyze_matrix_accesses(ptr noundef nonnull %43, ptr noundef nonnull %19, i32 noundef 0, i8 noundef zeroext 0, ptr noundef %8, i8 noundef zeroext 1) #20
  br label %46

46:                                               ; preds = %41, %45, %37, %16, %21, %26
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %1) #22
  %47 = add nuw i32 %18, 1
  %48 = load ptr, ptr @cfun, align 8, !tbaa !10
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !45
  %51 = getelementptr inbounds %struct.gimple_df, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !48
  %53 = call fastcc i32 @VEC_tree_base_length(ptr noundef %52) #20
  %54 = icmp ult i32 %47, %53
  br i1 %54, label %16, label %55, !llvm.loop !106

55:                                               ; preds = %46, %0
  %56 = load ptr, ptr %8, align 8, !tbaa !54
  call void @free(ptr noundef %56) #20
  call void @free(ptr noundef %8) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @transform_access_sites(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ssa_operand_iterator_d, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.immediate_use_iterator_d, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.immediate_use_iterator_d, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %12 = load ptr, ptr %0, align 8, !tbaa !10
  %13 = getelementptr inbounds %struct.matrix_info, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %220, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.matrix_info, ptr %12, i64 0, i32 14
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = icmp eq ptr %18, null
  br i1 %19, label %220, label %20

20:                                               ; preds = %16
  %21 = call fastcc i32 @VEC_access_site_info_p_base_iterate(ptr noundef nonnull %18, i32 noundef 0, ptr noundef nonnull %4) #20, !range !58
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %219, label %23

23:                                               ; preds = %20
  %24 = add nsw i32 %14, -1
  %25 = getelementptr inbounds %struct.matrix_info, ptr %12, i64 0, i32 15
  %26 = getelementptr inbounds %struct.matrix_info, ptr %12, i64 0, i32 9
  %27 = getelementptr inbounds %struct.matrix_info, ptr %12, i64 0, i32 6
  %28 = getelementptr inbounds %struct.matrix_info, ptr %12, i64 0, i32 11
  %29 = zext nneg i32 %14 to i64
  br label %30

30:                                               ; preds = %23, %214
  %31 = phi i32 [ 0, %23 ], [ %215, %214 ]
  %32 = load ptr, ptr %4, align 8, !tbaa !10
  %33 = getelementptr inbounds %struct.access_site_info, ptr %32, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !63
  %35 = icmp slt i32 %34, %14
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  call void @free(ptr noundef nonnull %32) #20
  br label %214

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.access_site_info, ptr %32, i64 0, i32 4
  %39 = load i8, ptr %38, align 4, !tbaa !107
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %118, label %41

41:                                               ; preds = %37
  %42 = icmp sgt i32 %34, -1
  br i1 %42, label %43, label %117

43:                                               ; preds = %41
  %44 = load ptr, ptr %32, align 8, !tbaa !60
  %45 = call fastcc ptr @gimple_bb(ptr noundef %44) #20
  %46 = icmp eq ptr %45, null
  br i1 %46, label %117, label %47

47:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #22
  %48 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %5, ptr noundef %44) #20
  %49 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #20
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47, %51
  %52 = phi ptr [ %55, %51 ], [ %48, %47 ]
  %53 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !24
  call void @mark_sym_for_renaming(ptr noundef %54) #21
  %55 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %5) #20
  %56 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #20
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %51, label %58, !llvm.loop !108

58:                                               ; preds = %51, %47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %44) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  %59 = load ptr, ptr %32, align 8, !tbaa !60
  %60 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %59) #20, !range !14
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1843, ptr noundef nonnull @.str.3) #21
  %63 = load ptr, ptr %32, align 8, !tbaa !60
  br label %64

64:                                               ; preds = %58, %62
  %65 = phi ptr [ %59, %58 ], [ %63, %62 ]
  %66 = call fastcc ptr @gimple_assign_lhs(ptr noundef %65) #20
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 141
  %70 = load i32, ptr %33, align 8, !tbaa !63
  %71 = icmp slt i32 %70, %24
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %73, label %112

73:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #22
  %74 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %7, ptr noundef nonnull %66) #20
  %75 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %7) #20, !range !14
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %110

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  br label %79

79:                                               ; preds = %77, %106
  %80 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %7) #20
  %81 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %7) #20, !range !14
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %79, %89
  %84 = phi ptr [ %103, %89 ], [ %80, %79 ]
  %85 = load ptr, ptr %32, align 8, !tbaa !60
  %86 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %85) #20, !range !62
  %87 = icmp eq i32 %86, 47
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1859, ptr noundef nonnull @.str.3) #21
  br label %89

89:                                               ; preds = %83, %88
  %90 = load ptr, ptr %78, align 8, !tbaa !24
  %91 = call ptr @create_tmp_var(ptr noundef %90, ptr noundef nonnull @.str.15) #21
  %92 = call zeroext i8 @add_referenced_var(ptr noundef %91) #21
  %93 = load ptr, ptr %32, align 8, !tbaa !60
  %94 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %93) #20
  %95 = getelementptr inbounds %struct.tree_common, ptr %91, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !24
  %97 = getelementptr inbounds %struct.tree_exp, ptr %94, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !24
  %99 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %96, ptr noundef %98) #21
  %100 = call ptr @gimple_build_assign_stat(ptr noundef %91, ptr noundef %99) #21
  %101 = call fastcc ptr @make_ssa_name(ptr noundef %91, ptr noundef %100) #20
  call fastcc void @gimple_assign_set_lhs(ptr noundef %100, ptr noundef %101) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #22
  %102 = load ptr, ptr %32, align 8, !tbaa !60
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %102) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %100, i32 noundef 1) #21
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %84, ptr noundef %101) #20
  %103 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %7) #20
  %104 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %7) #20, !range !14
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %83, label %106, !llvm.loop !109

106:                                              ; preds = %89, %79
  %107 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %7) #20
  %108 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %7) #20, !range !14
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %79, label %110, !llvm.loop !110

110:                                              ; preds = %106, %73
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #22
  %111 = load i32, ptr %33, align 8, !tbaa !63
  br label %112

112:                                              ; preds = %110, %64
  %113 = phi i32 [ %111, %110 ], [ %70, %64 ]
  %114 = icmp slt i32 %113, %24
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #21
  br label %116

116:                                              ; preds = %115, %112
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #22
  br label %117

117:                                              ; preds = %116, %43, %41
  call void @free(ptr noundef nonnull %32) #20
  br label %214

118:                                              ; preds = %37
  %119 = load ptr, ptr %32, align 8, !tbaa !60
  %120 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %119) #20, !range !62
  %121 = trunc i32 %120 to i16
  switch i16 %121, label %213 [
    i16 47, label %122
    i16 66, label %137
  ]

122:                                              ; preds = %118
  %123 = load i32, ptr %33, align 8, !tbaa !63
  %124 = icmp slt i32 %123, %24
  br i1 %124, label %125, label %213

125:                                              ; preds = %122
  %126 = load ptr, ptr %32, align 8, !tbaa !60
  %127 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %126) #20
  %128 = getelementptr inbounds %struct.tree_common, ptr %127, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !24
  %130 = load ptr, ptr %32, align 8, !tbaa !60
  %131 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %130) #20
  %132 = getelementptr inbounds %struct.tree_exp, ptr %131, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !24
  %134 = call ptr @build1_stat(i32 noundef 116, ptr noundef %129, ptr noundef %133) #21
  %135 = load ptr, ptr %32, align 8, !tbaa !60
  call fastcc void @gimple_assign_set_rhs_code(ptr noundef %135) #20
  %136 = load ptr, ptr %32, align 8, !tbaa !60
  call fastcc void @gimple_assign_set_rhs1(ptr noundef %136, ptr noundef %134) #20
  br label %213

137:                                              ; preds = %118
  %138 = load i32, ptr %33, align 8, !tbaa !63
  %139 = icmp slt i32 %138, %14
  br i1 %139, label %140, label %213

140:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #22
  %141 = sext i32 %138 to i64
  %142 = getelementptr inbounds %struct.access_site_info, ptr %32, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !68
  %144 = load ptr, ptr %25, align 8, !tbaa !82
  %145 = getelementptr inbounds i32, ptr %144, i64 %141
  %146 = load i32, ptr %145, align 4, !tbaa !6
  %147 = icmp eq i32 %146, %24
  br i1 %147, label %148, label %164

148:                                              ; preds = %140
  %149 = load i1, ptr @check_transpose_p, align 1
  br i1 %149, label %150, label %212

150:                                              ; preds = %148
  %151 = load i8, ptr %27, align 4, !tbaa !86
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %212, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr %28, align 8, !tbaa !94
  %155 = getelementptr inbounds i64, ptr %154, i64 %29
  %156 = load i64, ptr %155, align 8, !tbaa !71
  %157 = getelementptr i64, ptr %154, i64 %141
  %158 = getelementptr i64, ptr %157, i64 1
  %159 = load i64, ptr %158, align 8, !tbaa !71
  %160 = call fastcc ptr @compute_offset(i64 noundef %156, i64 noundef %159, ptr noundef %143) #20
  %161 = icmp eq ptr %160, %143
  br i1 %161, label %212, label %162

162:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #22
  %163 = load ptr, ptr %32, align 8, !tbaa !60
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %163) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #22
  br label %179

164:                                              ; preds = %140
  %165 = load ptr, ptr %26, align 8, !tbaa !78
  %166 = sext i32 %146 to i64
  %167 = getelementptr ptr, ptr %165, i64 %166
  %168 = getelementptr ptr, ptr %167, i64 1
  %169 = load ptr, ptr %168, align 8, !tbaa !10
  %170 = load ptr, ptr @sizetype_tab, align 16, !tbaa !10
  %171 = getelementptr inbounds %struct.access_site_info, ptr %32, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !111
  %173 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %170, ptr noundef %172) #21
  %174 = load ptr, ptr @sizetype_tab, align 16, !tbaa !10
  %175 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %174, ptr noundef %169) #21
  %176 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %170, ptr noundef %173, ptr noundef %175) #21
  %177 = call zeroext i8 @add_referenced_var(ptr noundef %169) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #22
  %178 = load ptr, ptr %32, align 8, !tbaa !60
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %178) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #22
  br label %179

179:                                              ; preds = %162, %164
  %180 = phi ptr [ %160, %162 ], [ %176, %164 ]
  %181 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %180, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #21
  %182 = icmp eq ptr %181, %143
  br i1 %182, label %212, label %183

183:                                              ; preds = %179
  %184 = load i64, ptr %143, align 8
  %185 = trunc i64 %184 to i16
  switch i16 %185, label %208 [
    i16 141, label %186
    i16 23, label %209
  ]

186:                                              ; preds = %183
  %187 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %9, ptr noundef nonnull %143) #20
  %188 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %9) #20, !range !14
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %212

190:                                              ; preds = %186, %204
  %191 = phi ptr [ %205, %204 ], [ %187, %186 ]
  %192 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %9) #20
  %193 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %9) #20, !range !14
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %190, %200
  %196 = phi ptr [ %201, %200 ], [ %192, %190 ]
  %197 = load ptr, ptr %32, align 8, !tbaa !60
  %198 = icmp eq ptr %191, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %196, ptr noundef %181) #20
  br label %200

200:                                              ; preds = %195, %199
  %201 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %9) #20
  %202 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %9) #20, !range !14
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %195, label %204, !llvm.loop !112

204:                                              ; preds = %200, %190
  %205 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %9) #20
  %206 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %9) #20, !range !14
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %190, label %212, !llvm.loop !113

208:                                              ; preds = %183
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1956, ptr noundef nonnull @.str.3) #21
  br label %209

209:                                              ; preds = %183, %208
  %210 = load ptr, ptr %32, align 8, !tbaa !60
  call fastcc void @gimple_assign_set_rhs2(ptr noundef %210, ptr noundef %181) #20
  %211 = load ptr, ptr %32, align 8, !tbaa !60
  call fastcc void @update_stmt(ptr noundef %211) #20
  br label %212

212:                                              ; preds = %204, %186, %153, %148, %150, %209, %179
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #22
  br label %213

213:                                              ; preds = %122, %118, %137, %212, %125
  call void @free(ptr noundef %32) #20
  br label %214

214:                                              ; preds = %213, %117, %36
  %215 = add nuw nsw i32 %31, 1
  %216 = load ptr, ptr %17, align 8, !tbaa !57
  %217 = call fastcc i32 @VEC_access_site_info_p_base_iterate(ptr noundef %216, i32 noundef %215, ptr noundef nonnull %4) #20, !range !58
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %30, !llvm.loop !114

219:                                              ; preds = %214, %20
  call fastcc void @VEC_access_site_info_p_heap_free(ptr noundef nonnull %17) #20
  call void @update_ssa(i32 noundef 2048) #21
  br label %220

220:                                              ; preds = %2, %16, %219
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dump_matrix_reorg_analysis(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #1 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !10
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = tail call ptr @get_name(ptr noundef %7) #21
  %9 = getelementptr inbounds %struct.matrix_info, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !56
  %11 = getelementptr inbounds %struct.matrix_info, ptr %6, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !115
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.16, ptr noundef %8, i32 noundef %10, i32 noundef %12) #20
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %15 = getelementptr inbounds %struct.matrix_info, ptr %6, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !74
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.17, i32 noundef %16) #20
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %19 = tail call i32 @fputc(i32 10, ptr %18)
  %20 = load i32, ptr %9, align 4, !tbaa !56
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.19, i32 noundef %20) #20
  br label %25

25:                                               ; preds = %5, %22, %2
  ret i32 1
}

; Function Attrs: optsize
declare void @set_cfun(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !118
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !116
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @may_flatten_matrices_1(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !120
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %37 [
    i8 6, label %4
    i8 7, label %38
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) #20, !range !14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  br label %9

9:                                                ; preds = %34, %7
  %10 = phi ptr [ %8, %7 ], [ %36, %34 ]
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %37 [
    i16 116, label %13
    i16 113, label %13
  ]

13:                                               ; preds = %9, %9
  %14 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %13
  %18 = load i64, ptr %15, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %34 [
    i16 10, label %20
    i16 12, label %20
  ]

20:                                               ; preds = %17, %17
  br label %21

21:                                               ; preds = %20, %25
  %22 = phi i64 [ %28, %25 ], [ %18, %20 ]
  %23 = phi ptr [ %27, %25 ], [ %15, %20 ]
  %24 = trunc i64 %22 to i16
  switch i16 %24, label %34 [
    i16 10, label %25
    i16 12, label %25
    i16 14, label %29
  ]

25:                                               ; preds = %21, %21
  %26 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !24
  %28 = load i64, ptr %27, align 8
  br label %21, !llvm.loop !121

29:                                               ; preds = %21
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 40, i64 1, ptr nonnull %30)
  br label %38

34:                                               ; preds = %21, %17, %13
  %35 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !24
  br label %9, !llvm.loop !122

37:                                               ; preds = %9, %1
  br label %38

38:                                               ; preds = %32, %29, %1, %4, %37
  %39 = phi i8 [ 1, %37 ], [ 1, %4 ], [ 0, %1 ], [ 0, %29 ], [ 0, %32 ]
  ret i8 %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !116
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !125
  store ptr %4, ptr %0, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !126
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !127
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
  %4 = load ptr, ptr %0, align 8, !tbaa !129
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !14
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !62
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
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !120
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !62
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !120
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !120
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #21
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #11 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !24
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !14
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !120
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !71
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !120
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #11 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !6
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @analyze_matrix_decl(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.matrix_info, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %2) #22
  %3 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 491, ptr noundef nonnull @.str.3) #21
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i64, ptr %0, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %53 [
    i16 34, label %9
    i16 32, label %11
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  br label %13

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %53 [
    i16 10, label %18
    i16 12, label %18
  ]

18:                                               ; preds = %13, %13
  br label %19

19:                                               ; preds = %18, %24
  %20 = phi i64 [ %28, %24 ], [ %16, %18 ]
  %21 = phi ptr [ %26, %24 ], [ %15, %18 ]
  %22 = phi i32 [ %27, %24 ], [ 0, %18 ]
  %23 = trunc i64 %20 to i16
  switch i16 %23, label %29 [
    i16 10, label %24
    i16 12, label %24
  ]

24:                                               ; preds = %19, %19
  %25 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !24
  %27 = add nuw nsw i32 %22, 1
  %28 = load i64, ptr %26, align 8
  br label %19, !llvm.loop !131

29:                                               ; preds = %19
  %30 = icmp ult i32 %22, 2
  br i1 %30, label %53, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !24
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !24
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 23
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  store ptr %0, ptr %2, align 8, !tbaa !37
  %42 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !10
  %43 = call ptr @htab_find(ptr noundef %42, ptr noundef nonnull %2) #21
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = call ptr @xcalloc(i64 noundef 1, i64 noundef 112) #21
  store ptr %0, ptr %46, align 8, !tbaa !37
  %47 = getelementptr inbounds %struct.matrix_info, ptr %46, i64 0, i32 1
  store i32 %22, ptr %47, align 8, !tbaa !115
  %48 = zext nneg i32 %22 to i64
  %49 = call ptr @xcalloc(i64 noundef %48, i64 noundef 16) #21
  %50 = getelementptr inbounds %struct.matrix_info, ptr %46, i64 0, i32 8
  store ptr %49, ptr %50, align 8, !tbaa !39
  %51 = getelementptr inbounds %struct.matrix_info, ptr %46, i64 0, i32 2
  store i32 -1, ptr %51, align 4, !tbaa !56
  %52 = getelementptr inbounds %struct.matrix_info, ptr %46, i64 0, i32 6
  store i8 0, ptr %52, align 4, !tbaa !86
  br label %53

53:                                               ; preds = %41, %31, %35, %29, %13, %6, %45
  %54 = phi ptr [ %46, %45 ], [ null, %6 ], [ null, %13 ], [ null, %29 ], [ null, %35 ], [ null, %31 ], [ null, %41 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #22
  ret ptr %54
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !132
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_matrix_allocation_site(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  br label %4

4:                                                ; preds = %16, %3
  %5 = phi ptr [ %1, %3 ], [ %18, %16 ]
  %6 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %5) #21
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %5) #20, !range !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %4
  %12 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #20
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  br label %4

19:                                               ; preds = %11
  %20 = load ptr, ptr %0, align 8, !tbaa !37
  %21 = icmp eq ptr %12, %20
  br i1 %21, label %65, label %64

22:                                               ; preds = %8
  %23 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %5) #20, !range !14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %64, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @gimple_call_flags(ptr noundef %5) #21
  %27 = and i32 %26, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef %0, i32 noundef %2, ptr noundef %5) #20
  br label %65

30:                                               ; preds = %25
  %31 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %5) #20
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef %0, i32 noundef %2, ptr noundef %5) #20
  br label %65

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.tree_function_decl, ptr %31, i64 0, i32 5
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 2047
  %38 = icmp eq i32 %37, 491
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %0, align 8, !tbaa !37
  %44 = tail call ptr @get_name(ptr noundef %43) #21
  %45 = tail call ptr @get_name(ptr noundef nonnull %31) #21
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %40, ptr noundef nonnull @.str.5, ptr noundef %44, ptr noundef %45) #20
  br label %47

47:                                               ; preds = %42, %39
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef %0, i32 noundef %2, ptr noundef %5) #20
  br label %65

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !41
  %51 = icmp eq ptr %50, null
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !74
  %55 = add nsw i32 %54, -1
  %56 = icmp eq i32 %55, %2
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = sext i32 %2 to i64
  %59 = getelementptr inbounds ptr, ptr %50, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !10
  %61 = icmp eq ptr %60, %5
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %5) #20
  br label %65

63:                                               ; preds = %57, %52, %48
  tail call fastcc void @add_allocation_site(ptr noundef nonnull %0, ptr noundef %5, i32 noundef %2) #20
  br label %65

64:                                               ; preds = %19, %22
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef %0, i32 noundef %2, ptr noundef %5) #20
  br label %65

65:                                               ; preds = %29, %62, %63, %47, %33, %19, %64
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_matrix_accesses(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr nocapture noundef %4, i8 noundef zeroext %5) unnamed_addr #1 {
  %7 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #22
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  tail call fastcc void @update_type_size(ptr noundef %0, ptr noundef %9, ptr noundef %1, i32 noundef %2) #20
  %10 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !56
  %12 = icmp slt i32 %11, 0
  %13 = icmp sgt i32 %11, %2
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %6
  %16 = load i64, ptr %1, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 141
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1375, ptr noundef nonnull @.str.3) #21
  br label %20

20:                                               ; preds = %15, %19
  %21 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %7, ptr noundef nonnull %1) #20
  %22 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %7) #20, !range !14
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %20, %42
  %25 = phi i32 [ %43, %42 ], [ %2, %20 ]
  %26 = phi ptr [ %44, %42 ], [ %21, %20 ]
  %27 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !24
  %29 = tail call fastcc i32 @gimple_code(ptr noundef %28) #20, !range !120
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  tail call fastcc void @analyze_accesses_for_phi_node(ptr noundef %0, ptr noundef %28, i32 noundef %25, ptr noundef %4, i8 noundef zeroext %5) #20
  br label %42

32:                                               ; preds = %24
  %33 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %28) #20, !range !14
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call fastcc i32 @analyze_accesses_for_call_stmt(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %28, i32 noundef %25) #20
  br label %42

37:                                               ; preds = %32
  %38 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %28) #20, !range !14
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call fastcc i32 @analyze_accesses_for_assign_stmt(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %28, i32 noundef %25, i8 noundef zeroext %3, ptr noundef %4, i8 noundef zeroext %5) #20
  br label %42

42:                                               ; preds = %35, %40, %37, %31
  %43 = phi i32 [ %25, %31 ], [ %25, %35 ], [ %41, %40 ], [ %25, %37 ]
  %44 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %7) #20
  %45 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %7) #20, !range !14
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %24, label %47, !llvm.loop !134

47:                                               ; preds = %42, %20, %6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !120
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mark_min_matrix_escape_level(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !56
  %6 = icmp eq i32 %5, -1
  %7 = icmp sgt i32 %5, %1
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  store i32 %1, ptr %4, align 4, !tbaa !56
  %10 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  store ptr %2, ptr %10, align 8, !tbaa !135
  br label %11

11:                                               ; preds = %3, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_allocation_site(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.malloc_call_data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = icmp eq ptr %6, null
  %8 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  br i1 %7, label %9, label %10

9:                                                ; preds = %3
  store ptr %8, ptr %5, align 8, !tbaa !73
  br label %40

10:                                               ; preds = %3
  %11 = icmp eq ptr %6, %8
  br i1 %11, label %40, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 731, ptr noundef nonnull @.str.3) #21
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !74
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load ptr, ptr %13, align 8, !tbaa !41
  %23 = zext nneg i32 %19 to i64
  br label %24

24:                                               ; preds = %21, %29
  %25 = phi i64 [ 0, %21 ], [ %30, %29 ]
  %26 = getelementptr inbounds ptr, ptr %22, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = add nuw nsw i64 %25, 1
  %31 = icmp eq i64 %30, %23
  br i1 %31, label %34, label %24, !llvm.loop !136

32:                                               ; preds = %24
  %33 = trunc i64 %25 to i32
  br label %34

34:                                               ; preds = %29, %32, %17
  %35 = phi i32 [ 0, %17 ], [ %33, %32 ], [ %19, %29 ]
  %36 = icmp sgt i32 %35, %2
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  store ptr %38, ptr %5, align 8, !tbaa !73
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef nonnull %0, i32 noundef %35, ptr noundef %1) #20
  br label %40

39:                                               ; preds = %34
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %1) #20
  br label %70

40:                                               ; preds = %37, %10, %9
  call fastcc void @collect_data_for_malloc_call(ptr noundef %1, ptr noundef nonnull %4) #20
  %41 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !41
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = add nsw i32 %2, 1
  %46 = sext i32 %45 to i64
  %47 = tail call ptr @xcalloc(i64 noundef %46, i64 noundef 8) #21
  store ptr %47, ptr %41, align 8, !tbaa !41
  %48 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 5
  store i32 %45, ptr %48, align 8, !tbaa !74
  br label %66

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !74
  %52 = icmp sgt i32 %51, %2
  br i1 %52, label %66, label %53

53:                                               ; preds = %49
  %54 = add nsw i32 %2, 1
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 3
  %57 = tail call ptr @xrealloc(ptr noundef nonnull %42, i64 noundef %56) #21
  store ptr %57, ptr %41, align 8, !tbaa !41
  %58 = load i32, ptr %50, align 8, !tbaa !74
  %59 = sext i32 %58 to i64
  %60 = getelementptr ptr, ptr %57, i64 %59
  %61 = getelementptr ptr, ptr %60, i64 1
  %62 = sub nsw i32 %2, %58
  %63 = sext i32 %62 to i64
  %64 = shl nsw i64 %63, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %61, i8 0, i64 %64, i1 false)
  store i32 %54, ptr %50, align 8, !tbaa !74
  %65 = load ptr, ptr %41, align 8, !tbaa !41
  br label %66

66:                                               ; preds = %49, %53, %44
  %67 = phi ptr [ %42, %49 ], [ %65, %53 ], [ %47, %44 ]
  %68 = sext i32 %2 to i64
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  store ptr %1, ptr %69, align 8, !tbaa !10
  br label %70

70:                                               ; preds = %39, %66
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @collect_data_for_malloc_call(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !14
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 196, ptr noundef nonnull @.str.3) #21
  br label %6

6:                                                ; preds = %2, %5
  %7 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_function_decl, ptr %7, i64 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 2047
  %13 = icmp eq i32 %12, 491
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #20
  store ptr %0, ptr %1, align 8, !tbaa !137
  %16 = getelementptr inbounds %struct.malloc_call_data, ptr %1, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !76
  %17 = load i64, ptr %15, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 32
  %20 = getelementptr inbounds %struct.malloc_call_data, ptr %1, i64 0, i32 2
  %21 = select i1 %19, ptr null, ptr %15
  store ptr %21, ptr %20, align 8, !tbaa !138
  br label %22

22:                                               ; preds = %14, %6, %9
  ret void
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #20
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_type_size(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #1 {
  %5 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %1) #20, !range !14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #20
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 47
  br i1 %11, label %12, label %28

12:                                               ; preds = %7
  %13 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #20
  %14 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !24
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !24
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %22 [
    i16 10, label %28
    i16 12, label %28
  ]

22:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1001, ptr noundef nonnull @.str.3) #21
  %23 = load ptr, ptr %14, align 8, !tbaa !24
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !24
  br label %28

28:                                               ; preds = %4, %7, %22, %12, %12
  %29 = phi ptr [ %19, %12 ], [ %19, %12 ], [ %27, %22 ], [ %2, %7 ], [ %2, %4 ]
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !24
  %32 = tail call i64 @int_size_in_bytes(ptr noundef %31) #21
  %33 = icmp slt i64 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef %0, i32 noundef %3, ptr noundef %1) #20
  br label %70

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 11
  %37 = load ptr, ptr %36, align 8, !tbaa !94
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = add nsw i32 %3, 1
  %41 = sext i32 %40 to i64
  %42 = tail call ptr @xcalloc(i64 noundef %41, i64 noundef 8) #21
  store ptr %42, ptr %36, align 8, !tbaa !94
  %43 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 12
  store i32 %40, ptr %43, align 8, !tbaa !139
  br label %60

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 12
  %46 = load i32, ptr %45, align 8, !tbaa !139
  %47 = icmp sgt i32 %46, %3
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = add nsw i32 %3, 1
  %50 = sext i32 %49 to i64
  %51 = shl nsw i64 %50, 3
  %52 = tail call ptr @xrealloc(ptr noundef nonnull %37, i64 noundef %51) #21
  store ptr %52, ptr %36, align 8, !tbaa !94
  %53 = load i32, ptr %45, align 8, !tbaa !139
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, ptr %52, i64 %54
  %56 = sub nsw i32 %49, %53
  %57 = sext i32 %56 to i64
  %58 = shl nsw i64 %57, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %55, i8 0, i64 %58, i1 false)
  store i32 %49, ptr %45, align 8, !tbaa !139
  %59 = load ptr, ptr %36, align 8, !tbaa !94
  br label %60

60:                                               ; preds = %44, %48, %39
  %61 = phi ptr [ %37, %44 ], [ %59, %48 ], [ %42, %39 ]
  %62 = sext i32 %3 to i64
  %63 = getelementptr inbounds i64, ptr %61, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !71
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i64 %32, ptr %63, align 8, !tbaa !71
  br label %70

67:                                               ; preds = %60
  %68 = icmp eq i64 %64, %32
  br i1 %68, label %70, label %69

69:                                               ; preds = %67
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef nonnull %0, i32 noundef %3, ptr noundef %1) #20
  br label %70

70:                                               ; preds = %66, %69, %67, %34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !143
  store ptr %6, ptr %0, align 8, !tbaa !144
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #20, !range !14
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !144
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_accesses_for_phi_node(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, i8 noundef zeroext %4) unnamed_addr #1 {
  %6 = alloca %struct.matrix_access_phi_node, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  store ptr %1, ptr %6, align 8, !tbaa !46
  %7 = load ptr, ptr @htab_mat_acc_phi_nodes, align 8, !tbaa !10
  %8 = call ptr @htab_find(ptr noundef %7, ptr noundef nonnull %6) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.matrix_access_phi_node, ptr %8, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !145
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %61, label %14

14:                                               ; preds = %10
  %15 = call i32 @llvm.smin.i32(i32 %12, i32 %2)
  store i32 %15, ptr %11, align 8, !tbaa !145
  %16 = call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %28, %18 ], [ null, %14 ]
  %20 = phi i64 [ %29, %18 ], [ 0, %14 ]
  %21 = trunc i64 %20 to i32
  %22 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %1, i32 noundef %21) #20
  %23 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %22) #20
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = call fastcc i32 @gimple_code(ptr noundef %25) #20, !range !120
  %27 = icmp eq i32 %26, 16
  %28 = select i1 %27, ptr %19, ptr %25
  %29 = add nuw nsw i64 %20, 1
  %30 = call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %18, label %33, !llvm.loop !146

33:                                               ; preds = %18, %14
  %34 = phi ptr [ null, %14 ], [ %28, %18 ]
  call fastcc void @mark_min_matrix_escape_level(ptr noundef %0, i32 noundef %15, ptr noundef %34) #20
  br label %61

35:                                               ; preds = %5
  %36 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #21
  store ptr %1, ptr %36, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.matrix_access_phi_node, ptr %36, i64 0, i32 1
  store i32 %2, ptr %37, align 8, !tbaa !145
  %38 = load ptr, ptr @htab_mat_acc_phi_nodes, align 8, !tbaa !10
  %39 = call ptr @htab_find_slot(ptr noundef %38, ptr noundef nonnull %36, i32 noundef 1) #21
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1174, ptr noundef nonnull @.str.3) #21
  br label %42

42:                                               ; preds = %35, %41
  store ptr %36, ptr %39, align 8, !tbaa !10
  %43 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %1) #20
  %44 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %43) #20
  %45 = getelementptr inbounds %struct.tree_ssa_name, ptr %44, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !24
  %47 = lshr i32 %46, 6
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !71
  %51 = and i32 %46, 63
  %52 = zext nneg i32 %51 to i64
  %53 = shl nuw i64 1, %52
  %54 = and i64 %53, %50
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %42
  call fastcc void @SET_BIT(ptr noundef nonnull %3, i32 noundef %46) #20
  %57 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %43) #20
  call fastcc void @analyze_matrix_accesses(ptr noundef %0, ptr noundef %57, i32 noundef %2, i8 noundef zeroext 0, ptr noundef nonnull %3, i8 noundef zeroext %4) #20
  %58 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %43) #20
  %59 = getelementptr inbounds %struct.tree_ssa_name, ptr %58, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !24
  call fastcc void @RESET_BIT(ptr noundef nonnull %3, i32 noundef %60) #20
  br label %61

61:                                               ; preds = %42, %56, %10, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @analyze_accesses_for_call_stmt(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef returned %3) unnamed_addr #1 {
  %5 = alloca %struct.ssa_acc_in_tree, align 8
  %6 = alloca %struct.ssa_acc_in_tree, align 8
  %7 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %2) #20
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %2) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %4
  %11 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %2) #20
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #22
  %12 = getelementptr inbounds i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %12, i8 0, i64 40, i1 false)
  %13 = getelementptr inbounds i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %13, i8 0, i64 40, i1 false)
  store ptr %1, ptr %5, align 8, !tbaa !147
  %14 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %5, i64 0, i32 1
  call fastcc void @ssa_accessed_in_tree(ptr noundef %11, ptr noundef nonnull %5) #20
  store ptr %1, ptr %6, align 8, !tbaa !147
  %15 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %6, i64 0, i32 1
  store i32 0, ptr %15, align 8, !tbaa !149
  call fastcc void @ssa_accessed_in_call_rhs(ptr noundef %2, ptr noundef nonnull %6) #20
  %16 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %5, i64 0, i32 5
  %17 = load i8, ptr %16, align 8
  %18 = icmp ne i8 %17, 0
  %19 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %6, i64 0, i32 5
  %20 = load i8, ptr %19, align 8
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %18, i1 %21, i1 false
  %23 = load i32, ptr %14, align 8
  %24 = icmp eq i32 %23, 47
  %25 = select i1 %22, i1 %24, i1 false
  %26 = or i8 %20, %17
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %67, label %29

29:                                               ; preds = %10
  %30 = and i1 %18, %21
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1082, ptr noundef nonnull @.str.3) #21
  br label %34

32:                                               ; preds = %29
  %33 = icmp eq i8 %17, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31, %32
  %35 = add nsw i32 %3, 1
  br i1 %24, label %67, label %36

36:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1090, ptr noundef nonnull @.str.3) #21
  br label %67

37:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #22
  br label %38

38:                                               ; preds = %37, %4
  %39 = icmp eq ptr %7, null
  br i1 %39, label %69, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.tree_function_decl, ptr %7, i64 0, i32 5
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 2047
  %44 = icmp eq i32 %43, 455
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %0, align 8, !tbaa !37
  %50 = tail call ptr @get_name(ptr noundef %49) #21
  %51 = tail call ptr @get_name(ptr noundef nonnull %7) #21
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %46, ptr noundef nonnull @.str.6, ptr noundef %50, ptr noundef %51, i32 noundef %3) #20
  br label %53

53:                                               ; preds = %48, %45
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef %0, i32 noundef %3, ptr noundef %2) #20
  br label %69

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !39
  %57 = sext i32 %3 to i64
  %58 = getelementptr inbounds %struct.free_info, ptr %56, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !102
  %60 = icmp eq ptr %59, null
  %61 = icmp eq ptr %59, %2
  %62 = or i1 %60, %61
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef nonnull %0, i32 noundef %3, ptr noundef %2) #20
  br label %69

64:                                               ; preds = %54
  store ptr %2, ptr %58, align 8, !tbaa !102
  %65 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %66 = getelementptr inbounds %struct.free_info, ptr %56, i64 %57, i32 1
  store ptr %65, ptr %66, align 8, !tbaa !104
  br label %69

67:                                               ; preds = %36, %34, %10
  %68 = phi i32 [ %3, %10 ], [ %35, %34 ], [ %35, %36 ]
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef %0, i32 noundef %68, ptr noundef %2) #20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #22
  br label %69

69:                                               ; preds = %38, %63, %64, %53, %67
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @analyze_accesses_for_assign_stmt(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, ptr nocapture noundef %5, i8 noundef zeroext %6) unnamed_addr #1 {
  %8 = alloca %struct.ssa_acc_in_tree, align 8
  %9 = alloca %struct.ssa_acc_in_tree, align 8
  %10 = tail call ptr @gimple_get_lhs(ptr noundef %2) #21
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #22
  %11 = getelementptr inbounds i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 40, i1 false)
  %12 = getelementptr inbounds i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %12, i8 0, i64 40, i1 false)
  store ptr %1, ptr %8, align 8, !tbaa !147
  %13 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %8, i64 0, i32 1
  call fastcc void @ssa_accessed_in_tree(ptr noundef %10, ptr noundef nonnull %8) #20
  store ptr %1, ptr %9, align 8, !tbaa !147
  %14 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %9, i64 0, i32 1
  store i32 0, ptr %14, align 8, !tbaa !149
  call fastcc void @ssa_accessed_in_assign_rhs(ptr noundef %2, ptr noundef nonnull %9) #20
  %15 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %8, i64 0, i32 5
  %16 = load i8, ptr %15, align 8
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %9, i64 0, i32 5
  %19 = load i8, ptr %18, align 8
  %20 = icmp ne i8 %19, 0
  %21 = select i1 %17, i1 %20, i1 false
  %22 = load i32, ptr %13, align 8
  %23 = icmp eq i32 %22, 47
  %24 = select i1 %21, i1 %23, i1 false
  %25 = or i8 %19, %16
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %7
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef %0, i32 noundef %3, ptr noundef %2) #20
  br label %118

29:                                               ; preds = %7
  %30 = and i1 %17, %20
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1222, ptr noundef nonnull @.str.3) #21
  br label %34

32:                                               ; preds = %29
  %33 = icmp eq i8 %16, 0
  br i1 %33, label %56, label %34

34:                                               ; preds = %31, %32
  %35 = add nsw i32 %3, 1
  br i1 %23, label %37, label %36

36:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1230, ptr noundef nonnull @.str.3) #21
  br label %37

37:                                               ; preds = %34, %36
  %38 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %2) #21
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %2) #20, !range !14
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40, %37
  %44 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 141
  br i1 %47, label %49, label %48

48:                                               ; preds = %43, %40
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef %0, i32 noundef %35, ptr noundef %2) #20
  br label %118

49:                                               ; preds = %43
  %50 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !24
  tail call fastcc void @analyze_matrix_allocation_site(ptr noundef %0, ptr noundef %52, i32 noundef %35) #20
  %53 = icmp eq i8 %6, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  tail call fastcc void @record_access_alloc_site_info(ptr noundef %0, ptr noundef %2, ptr noundef null, ptr noundef null, i32 noundef %35, i8 noundef zeroext 1) #20
  br label %55

55:                                               ; preds = %54, %49
  tail call fastcc void @update_type_size(ptr noundef %0, ptr noundef %2, ptr noundef null, i32 noundef %35) #20
  br label %118

56:                                               ; preds = %32
  %57 = icmp eq i8 %19, 0
  br i1 %57, label %118, label %58

58:                                               ; preds = %56
  %59 = load i32, ptr %14, align 8
  switch i32 %59, label %60 [
    i32 47, label %61
    i32 66, label %66
    i32 141, label %100
  ]

60:                                               ; preds = %58
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef %0, i32 noundef %3, ptr noundef %2) #20
  br label %118

61:                                               ; preds = %58
  %62 = icmp eq i8 %6, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %61
  tail call fastcc void @record_access_alloc_site_info(ptr noundef %0, ptr noundef %2, ptr noundef null, ptr noundef null, i32 noundef %3, i8 noundef zeroext 1) #20
  br label %64

64:                                               ; preds = %63, %61
  %65 = add nsw i32 %3, 1
  br label %100

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %9, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !150
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1269, ptr noundef nonnull @.str.3) #21
  br label %71

71:                                               ; preds = %66, %70
  %72 = icmp eq i8 %4, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %71
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef %0, i32 noundef %3, ptr noundef %2) #20
  br label %100

74:                                               ; preds = %71
  %75 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %76 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %2) #20
  %77 = icmp eq ptr %75, %1
  %78 = select i1 %77, ptr %76, ptr %75
  %79 = load i64, ptr %78, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 23
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !24
  %85 = getelementptr inbounds %struct.tree_int_cst, ptr %78, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !24
  %87 = tail call i64 @int_size_in_bytes(ptr noundef %84) #21
  %88 = udiv i64 %86, %87
  %89 = tail call ptr @build_int_cst(ptr noundef %84, i64 noundef %88) #21
  br label %96

90:                                               ; preds = %74
  %91 = getelementptr inbounds %struct.tree_ssa_name, ptr %78, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !24
  %93 = tail call fastcc ptr @get_index_from_offset(ptr noundef %92) #20
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef %0, i32 noundef %3, ptr noundef %2) #20
  br label %118

96:                                               ; preds = %90, %82
  %97 = phi ptr [ %89, %82 ], [ %93, %90 ]
  %98 = icmp eq i8 %6, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  tail call fastcc void @record_access_alloc_site_info(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %78, ptr noundef %97, i32 noundef %3, i8 noundef zeroext 0) #20
  br label %100

100:                                              ; preds = %99, %96, %58, %73, %64
  %101 = phi i32 [ %65, %64 ], [ %3, %73 ], [ %3, %58 ], [ %3, %96 ], [ %3, %99 ]
  %102 = load i64, ptr %10, align 8
  %103 = and i64 %102, 65535
  %104 = icmp ne i64 %103, 141
  %105 = select i1 %23, i1 true, i1 %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = icmp eq i64 %103, 32
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = load ptr, ptr %0, align 8, !tbaa !37
  %110 = icmp eq ptr %10, %109
  br i1 %110, label %112, label %111

111:                                              ; preds = %108, %106
  tail call fastcc void @mark_min_matrix_escape_level(ptr noundef %0, i32 noundef %101, ptr noundef %2) #20
  br label %118

112:                                              ; preds = %108
  tail call fastcc void @analyze_matrix_allocation_site(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %101) #20
  %113 = icmp eq i8 %6, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %112
  tail call fastcc void @record_access_alloc_site_info(ptr noundef nonnull %0, ptr noundef %2, ptr noundef null, ptr noundef null, i32 noundef %101, i8 noundef zeroext 1) #20
  br label %118

115:                                              ; preds = %100
  %116 = icmp eq i32 %59, 66
  %117 = zext i1 %116 to i8
  tail call fastcc void @analyze_matrix_accesses(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %101, i8 noundef zeroext %117, ptr noundef %5, i8 noundef zeroext %6) #20
  br label %118

118:                                              ; preds = %56, %115, %112, %114, %111, %95, %48, %55, %60, %28
  %119 = phi i32 [ %3, %28 ], [ %3, %60 ], [ %3, %55 ], [ %3, %48 ], [ %3, %95 ], [ %101, %115 ], [ %3, %56 ], [ %101, %112 ], [ %101, %114 ], [ %101, %111 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #22
  ret i32 %119
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !144
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  store ptr %4, ptr %0, align 8, !tbaa !144
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #20, !range !14
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !24
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #20
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 {
  %3 = load ptr, ptr %0, align 8, !tbaa !54
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
  %15 = load i64, ptr %14, align 8, !tbaa !71
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !24
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !24
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !71
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 {
  %3 = load ptr, ptr %0, align 8, !tbaa !54
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
  %15 = load i64, ptr %14, align 8, !tbaa !71
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !24
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !24
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !71
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !24
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.3) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ssa_accessed_in_tree(ptr noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #8 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %1, i64 0, i32 1
  store i32 %5, ptr %6, align 8, !tbaa !149
  %7 = trunc i64 %3 to i16
  switch i16 %7, label %26 [
    i16 141, label %8
    i16 47, label %11
  ]

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !147
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %24, label %26

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %26 [
    i16 32, label %21
    i16 34, label %21
    i16 36, label %21
    i16 141, label %16
  ]

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = load i64, ptr %18, align 8
  %20 = trunc i64 %19 to i16
  switch i16 %20, label %26 [
    i16 32, label %21
    i16 34, label %21
    i16 36, label %21
  ]

21:                                               ; preds = %16, %16, %16, %11, %11, %11
  %22 = load ptr, ptr %1, align 8, !tbaa !147
  %23 = icmp eq ptr %13, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %8
  %25 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %1, i64 0, i32 5
  store i8 1, ptr %25, align 8, !tbaa !152
  br label %26

26:                                               ; preds = %24, %16, %11, %2, %21, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ssa_accessed_in_call_rhs(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %1, i64 0, i32 1
  store i32 59, ptr %3, align 8, !tbaa !149
  %4 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %11

6:                                                ; preds = %11
  %7 = add nuw nsw i64 %12, 1
  %8 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #20
  %9 = zext i32 %8 to i64
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %21, !llvm.loop !153

11:                                               ; preds = %2, %6
  %12 = phi i64 [ %7, %6 ], [ 0, %2 ]
  %13 = trunc i64 %12 to i32
  %14 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %13) #20
  %15 = load ptr, ptr %1, align 8, !tbaa !147
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %6

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %1, i64 0, i32 5
  store i8 1, ptr %18, align 8, !tbaa !152
  %19 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %20 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %1, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !154
  br label %21

21:                                               ; preds = %6, %2, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !24
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ssa_accessed_in_assign_rhs(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !62
  %4 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %1, i64 0, i32 1
  store i32 %3, ptr %4, align 8, !tbaa !149
  %5 = trunc i32 %3 to i16
  switch i16 %5, label %21 [
    i16 141, label %6
    i16 47, label %6
    i16 116, label %6
    i16 113, label %6
    i16 118, label %6
    i16 66, label %8
    i16 63, label %8
    i16 65, label %8
  ]

6:                                                ; preds = %2, %2, %2, %2, %2
  %7 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  tail call fastcc void @ssa_accessed_in_tree(ptr noundef %7, ptr noundef nonnull %1) #20
  br label %21

8:                                                ; preds = %2, %2, %2
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %10 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %11 = load ptr, ptr %1, align 8, !tbaa !147
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %1, i64 0, i32 5
  store i8 1, ptr %14, align 8, !tbaa !152
  %15 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %1, i64 0, i32 4
  store ptr %10, ptr %15, align 8, !tbaa !150
  br label %21

16:                                               ; preds = %8
  %17 = icmp eq ptr %10, %11
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %1, i64 0, i32 5
  store i8 1, ptr %19, align 8, !tbaa !152
  %20 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %1, i64 0, i32 4
  store ptr %9, ptr %20, align 8, !tbaa !150
  br label %21

21:                                               ; preds = %2, %13, %18, %16, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_access_alloc_site_info(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @VEC_access_site_info_p_heap_alloc() #20
  store ptr %11, ptr %7, align 8, !tbaa !57
  br label %12

12:                                               ; preds = %10, %6
  %13 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #21
  store ptr %1, ptr %13, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.access_site_info, ptr %13, i64 0, i32 1
  store ptr %2, ptr %14, align 8, !tbaa !68
  %15 = getelementptr inbounds %struct.access_site_info, ptr %13, i64 0, i32 2
  store ptr %3, ptr %15, align 8, !tbaa !111
  %16 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %17 = getelementptr inbounds %struct.access_site_info, ptr %13, i64 0, i32 5
  store ptr %16, ptr %17, align 8, !tbaa !155
  %18 = getelementptr inbounds %struct.access_site_info, ptr %13, i64 0, i32 3
  store i32 %4, ptr %18, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.access_site_info, ptr %13, i64 0, i32 4
  store i8 %5, ptr %19, align 4, !tbaa !107
  tail call fastcc void @VEC_access_site_info_p_heap_safe_push(ptr noundef nonnull %7, ptr noundef nonnull %13) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_index_from_offset(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !120
  %3 = icmp eq i32 %2, 16
  br i1 %3, label %39, label %4

4:                                                ; preds = %1, %16
  %5 = phi ptr [ %19, %16 ], [ %0, %1 ]
  %6 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %5) #21
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %5) #20, !range !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %4
  %12 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #20
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #20
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !24
  %20 = tail call fastcc i32 @gimple_code(ptr noundef %19) #20, !range !120
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %39, label %4

22:                                               ; preds = %11, %8
  %23 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %5) #20, !range !14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  %26 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %5) #20, !range !62
  %27 = icmp eq i32 %26, 65
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #20
  %30 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %5) #20
  %31 = load i64, ptr %29, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 23
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load i64, ptr %30, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 23
  %38 = select i1 %37, ptr %29, ptr null
  br label %39

39:                                               ; preds = %16, %1, %34, %28, %22, %25
  %40 = phi ptr [ null, %25 ], [ null, %22 ], [ %30, %28 ], [ %38, %34 ], [ null, %1 ], [ null, %16 ]
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_access_site_info_p_heap_alloc() unnamed_addr #1 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 100) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_access_site_info_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @VEC_access_site_info_p_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  tail call fastcc void @VEC_access_site_info_p_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_access_site_info_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = tail call fastcc i32 @VEC_access_site_info_p_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_access_site_info_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #12 {
  %3 = load i32, ptr %0, align 8, !tbaa !156
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !156
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_access_site_info_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_access_site_info_p_base_space(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_access_site_info_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !158
  %6 = load i32, ptr %0, align 8, !tbaa !156
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_access_site_info_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !156
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_access_site_info_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !10
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_access_site_info_p_heap_free(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @int_cst_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @can_calculate_expr_before_stmt(ptr noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %22 [
    i16 141, label %5
    i16 32, label %23
    i16 34, label %23
    i16 23, label %23
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !24
  %8 = lshr i32 %7, 6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !71
  %12 = and i32 %7, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = and i64 %14, %11
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  tail call fastcc void @SET_BIT(ptr noundef nonnull %1, i32 noundef %7) #20
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !24
  %20 = tail call fastcc ptr @can_calculate_stmt_before_stmt(ptr noundef %19, ptr noundef nonnull %1) #20
  %21 = load i32, ptr %6, align 8, !tbaa !24
  tail call fastcc void @RESET_BIT(ptr noundef nonnull %1, i32 noundef %21) #20
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %2, %2, %2, %5, %22, %17
  %24 = phi ptr [ null, %22 ], [ %20, %17 ], [ null, %5 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ]
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @can_calculate_stmt_before_stmt(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !120
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %52 [
    i8 6, label %8
    i8 16, label %5
  ]

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %52, label %33

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !62
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %11 = trunc i32 %9 to i16
  switch i16 %11, label %28 [
    i16 66, label %12
    i16 63, label %12
    i16 64, label %12
    i16 65, label %12
    i16 116, label %22
    i16 113, label %22
  ]

12:                                               ; preds = %8, %8, %8, %8
  %13 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %14 = tail call fastcc ptr @can_calculate_expr_before_stmt(ptr noundef %10, ptr noundef %1) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @can_calculate_expr_before_stmt(ptr noundef %13, ptr noundef %1) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %52, label %19

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  %21 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %9, ptr noundef %20, ptr noundef nonnull %14, ptr noundef nonnull %17) #21
  br label %52

22:                                               ; preds = %8, %8
  %23 = tail call fastcc ptr @can_calculate_expr_before_stmt(ptr noundef %10, ptr noundef %1) #20
  %24 = icmp eq ptr %23, null
  br i1 %24, label %52, label %25

25:                                               ; preds = %22
  %26 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  %27 = tail call ptr @build1_stat(i32 noundef %9, ptr noundef %26, ptr noundef nonnull %23) #21
  br label %52

28:                                               ; preds = %8
  %29 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #21
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %28
  %32 = tail call fastcc ptr @can_calculate_expr_before_stmt(ptr noundef %10, ptr noundef %1) #20
  br label %52

33:                                               ; preds = %5, %46
  %34 = phi i64 [ %48, %46 ], [ 0, %5 ]
  %35 = phi ptr [ %47, %46 ], [ null, %5 ]
  %36 = trunc i64 %34 to i32
  %37 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %36) #20
  %38 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %37) #20
  %39 = tail call fastcc ptr @can_calculate_expr_before_stmt(ptr noundef %38, ptr noundef %1) #20
  %40 = icmp eq ptr %35, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = icmp eq ptr %39, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %41
  %44 = tail call zeroext i8 @expressions_equal_p(ptr noundef nonnull %35, ptr noundef nonnull %39) #21
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %33, %43
  %47 = phi ptr [ %35, %43 ], [ %39, %33 ]
  %48 = add nuw nsw i64 %34, 1
  %49 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #20
  %50 = zext i32 %49 to i64
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %33, label %52, !llvm.loop !160

52:                                               ; preds = %46, %43, %41, %5, %2, %28, %22, %16, %12, %31, %25, %19
  %53 = phi ptr [ %32, %31 ], [ %27, %25 ], [ %21, %19 ], [ null, %12 ], [ null, %16 ], [ null, %22 ], [ null, %28 ], [ null, %2 ], [ null, %5 ], [ %47, %46 ], [ null, %43 ], [ null, %41 ]
  ret ptr %53
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !120
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #20
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !62
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !24
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #21
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !10
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @expressions_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  ret ptr %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @sort_dim_hot_level(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #15 {
  %4 = add i32 %2, -1
  %5 = icmp sgt i32 %2, 1
  br i1 %5, label %6, label %32

6:                                                ; preds = %3, %28
  %7 = phi i32 [ %30, %28 ], [ %4, %3 ]
  %8 = phi i32 [ %29, %28 ], [ 0, %3 ]
  %9 = icmp sgt i32 %4, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = zext i32 %7 to i64
  %12 = load i64, ptr %0, align 8, !tbaa !71
  br label %13

13:                                               ; preds = %10, %25
  %14 = phi i64 [ %12, %10 ], [ %26, %25 ]
  %15 = phi i64 [ 0, %10 ], [ %16, %25 ]
  %16 = add nuw nsw i64 %15, 1
  %17 = getelementptr inbounds i64, ptr %0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !71
  %19 = icmp slt i64 %18, %14
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = getelementptr inbounds i64, ptr %0, i64 %15
  store i64 %18, ptr %21, align 8, !tbaa !71
  store i64 %14, ptr %17, align 8, !tbaa !71
  %22 = getelementptr inbounds i32, ptr %1, i64 %15
  %23 = load <2 x i32>, ptr %22, align 4, !tbaa !6
  %24 = shufflevector <2 x i32> %23, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %24, ptr %22, align 4, !tbaa !6
  br label %25

25:                                               ; preds = %13, %20
  %26 = phi i64 [ %18, %13 ], [ %14, %20 ]
  %27 = icmp eq i64 %16, %11
  br i1 %27, label %28, label %13, !llvm.loop !161

28:                                               ; preds = %25, %6
  %29 = add nuw nsw i32 %8, 1
  %30 = add i32 %7, -1
  %31 = icmp eq i32 %29, %4
  br i1 %31, label %32, label %6, !llvm.loop !162

32:                                               ; preds = %28, %3
  ret void
}

; Function Attrs: optsize
declare ptr @walk_tree_without_duplicates_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @check_var_notmodified_p(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) #1 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  %6 = load ptr, ptr %2, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  %7 = load i64, ptr %5, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %49 [
    i16 32, label %9
    i16 34, label %9
  ]

9:                                                ; preds = %3, %3
  %10 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  %14 = load ptr, ptr %13, align 8, !tbaa !30
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !32
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %48, label %29

20:                                               ; preds = %45, %29
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !32
  %23 = load ptr, ptr %10, align 8, !tbaa !24
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !29
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %22, %27
  br i1 %28, label %48, label %29, !llvm.loop !163

29:                                               ; preds = %9, %20
  %30 = phi ptr [ %22, %20 ], [ %16, %9 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %30) #20
  %31 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !14
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %20

33:                                               ; preds = %29, %45
  %34 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20
  %35 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %34) #20, !range !14
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %34) #20, !range !14
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37, %33
  %41 = tail call ptr @gimple_get_lhs(ptr noundef %34) #21
  %42 = icmp eq ptr %41, %5
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.check_var_data, ptr %2, i64 0, i32 1
  store ptr %34, ptr %44, align 8, !tbaa !91
  br label %49

45:                                               ; preds = %40, %37
  call fastcc void @gsi_next(ptr noundef nonnull %4) #20
  %46 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !14
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %33, label %20, !llvm.loop !164

48:                                               ; preds = %20, %9
  store i32 1, ptr %1, align 4, !tbaa !6
  br label %49

49:                                               ; preds = %3, %48, %43
  %50 = phi ptr [ %5, %43 ], [ null, %48 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret ptr %50
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @add_new_static_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !143
  store ptr %6, ptr %0, align 8, !tbaa !144
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #20
  %11 = load ptr, ptr %0, align 8, !tbaa !144
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !144
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !144
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !165
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !144
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  store ptr %1, ptr %4, align 8, !tbaa !10
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !165
  store ptr %3, ptr %0, align 8, !tbaa !144
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #20, !range !14
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !143
  store ptr %8, ptr %2, align 8, !tbaa !165
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !166
  store ptr %4, ptr %0, align 8, !tbaa !144
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !167
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #20
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #20
  %12 = load ptr, ptr %0, align 8, !tbaa !144
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @cgraph_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cgraph_remove_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #21
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #20, !range !120
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #20
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #20
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #20
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !llvm.loop !168

28:                                               ; preds = %2
  br i1 %8, label %45, label %29

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #20
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #20
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #20
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !llvm.loop !169

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #20
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #20
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !167
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #20
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #20
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #20
  store i8 0, ptr %0, align 8, !tbaa !170
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 918, ptr noundef nonnull @.str.3) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #21
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !170
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !172
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !173
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !174
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #20
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i8, ptr %0, align 8, !tbaa !170
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #16 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !143
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !175
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !176
  store ptr %7, ptr %2, align 8, !tbaa !175
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !178
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !173
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !172
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !178
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #20
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !170
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 771, ptr noundef nonnull @.str.3) #21
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !174
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #20
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !14
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !179
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
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #16 {
  %2 = load ptr, ptr %0, align 8, !tbaa !180
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !143
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !143
  store ptr %2, ptr %6, align 8, !tbaa !180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  store ptr %1, ptr %0, align 8, !tbaa !180
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !143
  store ptr %0, ptr %4, align 8, !tbaa !180
  store ptr %0, ptr %3, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #17 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 747, ptr noundef nonnull @.str.3) #21
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !181
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #20
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !181
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !182
  store ptr %22, ptr %16, align 8, !tbaa !181
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !175
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #20
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !175
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !176
  store ptr %36, ptr %29, align 8, !tbaa !175
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !170
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !14
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !14
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !14
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !14
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !120
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !180
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #20
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 2) #20
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !174
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #20
  ret ptr %4
}

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !175
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #20
  %8 = load ptr, ptr %3, align 8, !tbaa !176
  store ptr %8, ptr %2, align 8, !tbaa !175
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !181
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !184
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #20
  %17 = load ptr, ptr %11, align 8, !tbaa !182
  store ptr %17, ptr %10, align 8, !tbaa !181
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !170
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !10
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #21
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #20
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !24
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_assign_set_rhs_code(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = or disjoint i32 %3, 7602176
  store i32 %4, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compute_offset(i64 noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = tail call i32 @exact_log2(i64 noundef %0) #21
  %5 = tail call i32 @exact_log2(i64 noundef %1) #21
  %6 = icmp ne i32 %4, -1
  %7 = icmp ne i32 %5, -1
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = icmp eq i32 %4, %5
  br i1 %10, label %37, label %11

11:                                               ; preds = %9
  %12 = icmp sgt i32 %4, %5
  %13 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  br i1 %12, label %15, label %21

15:                                               ; preds = %11
  %16 = sub nsw i32 %4, %5
  %17 = sext i32 %16 to i64
  %18 = tail call ptr @build_int_cst(ptr noundef %14, i64 noundef %17) #21
  %19 = load ptr, ptr %13, align 8, !tbaa !24
  %20 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 83, ptr noundef %19, ptr noundef %2, ptr noundef %18) #21
  br label %37

21:                                               ; preds = %11
  %22 = sub nsw i32 %5, %4
  %23 = sext i32 %22 to i64
  %24 = tail call ptr @build_int_cst(ptr noundef %14, i64 noundef %23) #21
  %25 = load ptr, ptr %13, align 8, !tbaa !24
  %26 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 84, ptr noundef %25, ptr noundef %2, ptr noundef %24) #21
  br label %37

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !24
  %30 = tail call ptr @build_int_cst(ptr noundef %29, i64 noundef %0) #21
  %31 = load ptr, ptr %28, align 8, !tbaa !24
  %32 = tail call ptr @build_int_cst(ptr noundef %31, i64 noundef %1) #21
  %33 = load ptr, ptr %28, align 8, !tbaa !24
  %34 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef %33, ptr noundef %2, ptr noundef %30) #21
  %35 = load ptr, ptr %28, align 8, !tbaa !24
  %36 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %35, ptr noundef %34, ptr noundef %32) #21
  br label %37

37:                                               ; preds = %9, %27, %21, %15
  %38 = phi ptr [ %20, %15 ], [ %26, %21 ], [ %36, %27 ], [ %2, %9 ]
  ret ptr %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs2(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 2, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !14
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #21
  tail call void @update_stmt_operands(ptr noundef %0) #21
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !14
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.3) #21
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !10
  ret void
}

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind }

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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{i8 0, i8 2}
!15 = !{!16, !11, i64 0}
!16 = !{!"cgraph_node", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !17, i64 144, !20, i64 184, !21, i64 224, !22, i64 232, !23, i64 256, !19, i64 288, !7, i64 296, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 309, !7, i64 309}
!17 = !{!"cgraph_local_info", !11, i64 0, !18, i64 8, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32}
!18 = !{!"inline_summary", !19, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!19 = !{!"long", !8, i64 0}
!20 = !{!"cgraph_global_info", !19, i64 0, !19, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !8, i64 36}
!21 = !{!"cgraph_rtl_info", !7, i64 0}
!22 = !{!"cgraph_clone_info", !11, i64 0, !11, i64 8, !11, i64 16}
!23 = !{!"cgraph_thunk_info", !19, i64 0, !19, i64 8, !11, i64 16, !8, i64 24, !8, i64 25, !8, i64 26}
!24 = !{!8, !8, i64 0}
!25 = !{!26, !11, i64 32}
!26 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !11, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = !{!26, !11, i64 8}
!30 = !{!31, !11, i64 0}
!31 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !11, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!32 = !{!33, !11, i64 56}
!33 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !11, i64 48, !11, i64 56, !8, i64 64, !19, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!34 = !{!31, !11, i64 8}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = !{!38, !11, i64 0}
!38 = !{!"matrix_info", !11, i64 0, !7, i64 8, !7, i64 12, !11, i64 16, !11, i64 24, !7, i64 32, !8, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !7, i64 80, !11, i64 88, !11, i64 96, !11, i64 104}
!39 = !{!38, !11, i64 48}
!40 = !{!38, !11, i64 88}
!41 = !{!38, !11, i64 24}
!42 = !{!43, !11, i64 0}
!43 = !{!"varpool_node", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !7, i64 36, !7, i64 36, !7, i64 36, !7, i64 36, !7, i64 36, !7, i64 36, !7, i64 36}
!44 = distinct !{!44, !13}
!45 = !{!26, !11, i64 24}
!46 = !{!47, !11, i64 0}
!47 = !{!"matrix_access_phi_node", !11, i64 0, !7, i64 8}
!48 = !{!49, !11, i64 16}
!49 = !{!"gimple_df", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !50, i64 32, !50, i64 48, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !7, i64 96, !51, i64 104}
!50 = !{!"pt_solution", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !11, i64 8}
!51 = !{!"ssa_operands", !11, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !11, i64 24, !11, i64 32}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = !{!55, !11, i64 0}
!55 = !{!"simple_bitmap_def", !11, i64 0, !7, i64 8, !7, i64 12, !8, i64 16}
!56 = !{!38, !7, i64 12}
!57 = !{!38, !11, i64 96}
!58 = !{i32 0, i32 2}
!59 = distinct !{!59, !13}
!60 = !{!61, !11, i64 0}
!61 = !{!"access_site_info", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !8, i64 28, !11, i64 32, !8, i64 40}
!62 = !{i32 0, i32 65536}
!63 = !{!61, !7, i64 24}
!64 = !{!65, !11, i64 48}
!65 = !{!"loop", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !66, i64 24, !7, i64 32, !7, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !67, i64 80, !67, i64 96, !8, i64 112, !8, i64 113, !7, i64 116, !11, i64 120, !11, i64 128, !8, i64 136, !11, i64 144}
!66 = !{!"lpt_decision", !7, i64 0, !7, i64 4}
!67 = !{!"", !19, i64 0, !19, i64 8}
!68 = !{!61, !11, i64 8}
!69 = !{!61, !8, i64 40}
!70 = !{!33, !19, i64 72}
!71 = !{!19, !19, i64 0}
!72 = distinct !{!72, !13}
!73 = !{!38, !11, i64 40}
!74 = !{!38, !7, i64 32}
!75 = distinct !{!75, !13}
!76 = !{!77, !11, i64 8}
!77 = !{!"malloc_call_data", !11, i64 0, !11, i64 8, !11, i64 16}
!78 = !{!38, !11, i64 56}
!79 = !{!38, !11, i64 64}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = !{!38, !11, i64 104}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = !{!38, !8, i64 36}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = !{!90, !11, i64 0}
!90 = !{!"", !11, i64 0, !11, i64 8}
!91 = !{!90, !11, i64 8}
!92 = distinct !{!92, !13}
!93 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !10}
!94 = !{!38, !11, i64 72}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
!102 = !{!103, !11, i64 0}
!103 = !{!"free_info", !11, i64 0, !11, i64 8}
!104 = !{!103, !11, i64 8}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !13}
!107 = !{!61, !8, i64 28}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = !{!61, !11, i64 16}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13}
!115 = !{!38, !7, i64 8}
!116 = !{!117, !11, i64 0}
!117 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!118 = !{!117, !11, i64 8}
!119 = !{!117, !11, i64 16}
!120 = !{i32 0, i32 256}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = !{!124, !11, i64 0}
!124 = !{!"gimple_seq_node_d", !11, i64 0, !11, i64 8, !11, i64 16}
!125 = !{!124, !11, i64 16}
!126 = !{!33, !7, i64 96}
!127 = !{!128, !11, i64 0}
!128 = !{!"gimple_bb_info", !11, i64 0, !11, i64 8}
!129 = !{!130, !11, i64 0}
!130 = !{!"gimple_seq_d", !11, i64 0, !11, i64 8, !11, i64 16}
!131 = distinct !{!131, !13}
!132 = !{!133, !7, i64 0}
!133 = !{!"VEC_tree_base", !7, i64 0, !7, i64 4, !8, i64 8}
!134 = distinct !{!134, !13}
!135 = !{!38, !11, i64 16}
!136 = distinct !{!136, !13}
!137 = !{!77, !11, i64 0}
!138 = !{!77, !11, i64 16}
!139 = !{!38, !7, i64 80}
!140 = !{!141, !11, i64 8}
!141 = !{!"immediate_use_iterator_d", !11, i64 0, !11, i64 8, !142, i64 16, !11, i64 48}
!142 = !{!"ssa_use_operand_d", !11, i64 0, !11, i64 8, !8, i64 16, !11, i64 24}
!143 = !{!142, !11, i64 8}
!144 = !{!141, !11, i64 0}
!145 = !{!47, !7, i64 8}
!146 = distinct !{!146, !13}
!147 = !{!148, !11, i64 0}
!148 = !{!"ssa_acc_in_tree", !11, i64 0, !7, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !8, i64 40}
!149 = !{!148, !7, i64 8}
!150 = !{!148, !11, i64 32}
!151 = !{!142, !11, i64 24}
!152 = !{!148, !8, i64 40}
!153 = distinct !{!153, !13}
!154 = !{!148, !11, i64 16}
!155 = !{!61, !11, i64 32}
!156 = !{!157, !7, i64 0}
!157 = !{!"VEC_access_site_info_p_base", !7, i64 0, !7, i64 4, !8, i64 8}
!158 = !{!157, !7, i64 4}
!159 = !{!33, !11, i64 24}
!160 = distinct !{!160, !13}
!161 = distinct !{!161, !13}
!162 = distinct !{!162, !13}
!163 = distinct !{!163, !13}
!164 = distinct !{!164, !13}
!165 = !{!141, !11, i64 48}
!166 = !{!141, !11, i64 24}
!167 = !{!141, !11, i64 16}
!168 = distinct !{!168, !13}
!169 = distinct !{!169, !13}
!170 = !{!171, !8, i64 0}
!171 = !{!"ssa_operand_iterator_d", !8, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !11, i64 32}
!172 = !{!171, !11, i64 32}
!173 = !{!171, !7, i64 28}
!174 = !{!171, !7, i64 4}
!175 = !{!171, !11, i64 16}
!176 = !{!177, !11, i64 0}
!177 = !{!"use_optype_d", !11, i64 0, !142, i64 8}
!178 = !{!171, !7, i64 24}
!179 = !{!177, !11, i64 32}
!180 = !{!142, !11, i64 0}
!181 = !{!171, !11, i64 8}
!182 = !{!183, !11, i64 0}
!183 = !{!"def_optype_d", !11, i64 0, !11, i64 8}
!184 = !{!183, !11, i64 8}
