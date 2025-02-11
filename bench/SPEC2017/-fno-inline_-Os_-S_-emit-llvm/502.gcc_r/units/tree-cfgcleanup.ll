; ModuleID = 'tree-cfgcleanup.c'
source_filename = "tree-cfgcleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_edge_var_map_base = type { i32, i32, [1 x %struct._edge_var_map] }
%struct._edge_var_map = type { ptr, ptr, i32 }

@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"mergephi\00", align 1
@pass_merge_phi = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_merge_phi, ptr @merge_phi_nodes, ptr null, ptr null, i32 0, i32 80, i32 40, i32 0, i32 0, i32 0, i32 7 } }, align 8
@cfgcleanup_altered_bbs = dso_local local_unnamed_addr global ptr null, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"tree-cfgcleanup.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #0 {
  %1 = tail call fastcc zeroext i8 @cleanup_tree_cfg_noloop() #12
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 64) #12, !range !12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call fastcc void @repair_loop_structures() #12
  br label %10

10:                                               ; preds = %9, %6, %0
  ret i8 %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cleanup_tree_cfg_noloop() unnamed_addr #0 {
  %1 = load i8, ptr @timevar_enable, align 1, !tbaa !13
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 51) #13
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @delete_unreachable_blocks() #13
  tail call void @calculate_dominance_info(i32 noundef 1) #13
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %4 ]
  %11 = tail call fastcc zeroext i8 @cleanup_tree_cfg_1() #12
  %12 = or i8 %11, %10
  %13 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #13
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 716, ptr noundef nonnull @.str.2) #13
  br label %16

16:                                               ; preds = %9, %15
  tail call void @compact_blocks() #13
  %17 = load i8, ptr @timevar_enable, align 1, !tbaa !13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @timevar_pop_1(i32 noundef 51) #13
  br label %20

20:                                               ; preds = %19, %16
  %21 = icmp eq i8 %12, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr @cfun, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call fastcc void @loops_state_set() #12
  br label %28

28:                                               ; preds = %27, %22, %20
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = load i32, ptr %4, align 8, !tbaa !14
  %6 = and i32 %5, %0
  %7 = icmp eq i32 %6, %0
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @repair_loop_structures() unnamed_addr #0 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  tail call void @fix_loop_structure(ptr noundef %1) #13
  %2 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 32) #12, !range !12
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @rewrite_into_loop_closed_ssa(ptr noundef %1, i32 noundef 2048) #13
  br label %5

5:                                                ; preds = %4, %0
  tail call void @bitmap_obstack_free(ptr noundef %1) #13
  tail call void @scev_reset() #13
  tail call fastcc void @loops_state_clear() #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_merge_phi() #3 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @merge_phi_nodes() #0 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @xmalloc(i64 noundef %10) #13
  tail call void @calculate_dominance_info(i32 noundef 1) #13
  %12 = load ptr, ptr @cfun, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !20
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %91, label %23

21:                                               ; preds = %76
  %22 = icmp eq ptr %77, %11
  br i1 %22, label %91, label %86

23:                                               ; preds = %0, %76
  %24 = phi ptr [ %79, %76 ], [ %17, %0 ]
  %25 = phi ptr [ %77, %76 ], [ %11, %0 ]
  %26 = call fastcc zeroext i8 @tree_forwarder_block_p(ptr noundef %24, i8 noundef zeroext 1) #12, !range !12
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %76, label %28

28:                                               ; preds = %23
  %29 = call fastcc ptr @single_succ(ptr noundef %24) #12
  %30 = call fastcc ptr @phi_nodes(ptr noundef %29) #12
  %31 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %30) #12, !range !12
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %76

33:                                               ; preds = %28
  %34 = call fastcc zeroext i8 @has_abnormal_incoming_edge_p(ptr noundef %24) #12, !range !12
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %76

36:                                               ; preds = %33
  %37 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %29, ptr noundef %24) #13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = getelementptr inbounds ptr, ptr %25, i64 1
  store ptr %24, ptr %25, align 8, !tbaa !5
  br label %76

41:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #14
  %42 = call fastcc ptr @single_succ_edge(ptr noundef %24) #12
  %43 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !24
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %24) #13
  %45 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12, !range !12
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %41
  %48 = zext i32 %44 to i64
  br label %49

49:                                               ; preds = %47, %69
  %50 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12
  %51 = call fastcc ptr @gimple_phi_result(ptr noundef %50) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %52 = call fastcc zeroext i8 @has_zero_uses(ptr noundef %51) #12
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %69

55:                                               ; preds = %49
  %56 = call fastcc zeroext i8 @single_imm_use(ptr noundef %51, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %3, align 8, !tbaa !5
  %60 = call fastcc i32 @gimple_code(ptr noundef %59) #12, !range !26
  %61 = icmp eq i32 %60, 16
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = call fastcc ptr @gimple_bb(ptr noundef %59) #12
  %64 = icmp eq ptr %63, %29
  br i1 %64, label %66, label %65

65:                                               ; preds = %62, %58, %55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %74

66:                                               ; preds = %62
  %67 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %59, i64 noundef %48) #12
  %68 = icmp eq ptr %67, %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br i1 %68, label %69, label %74

69:                                               ; preds = %54, %66
  call fastcc void @gsi_next(ptr noundef nonnull %1) #12
  %70 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12, !range !12
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %49, label %72, !llvm.loop !27

72:                                               ; preds = %69, %41
  %73 = getelementptr inbounds ptr, ptr %25, i64 1
  store ptr %24, ptr %25, align 8, !tbaa !5
  br label %74

74:                                               ; preds = %66, %65, %72
  %75 = phi ptr [ %73, %72 ], [ %25, %65 ], [ %25, %66 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #14
  br label %76

76:                                               ; preds = %39, %74, %28, %33, %23
  %77 = phi ptr [ %25, %23 ], [ %25, %33 ], [ %25, %28 ], [ %75, %74 ], [ %40, %39 ]
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !20
  %80 = load ptr, ptr @cfun, align 8, !tbaa !5
  %81 = getelementptr inbounds %struct.function, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !16
  %83 = getelementptr inbounds %struct.control_flow_graph, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !23
  %85 = icmp eq ptr %79, %84
  br i1 %85, label %21, label %23, !llvm.loop !29

86:                                               ; preds = %21, %86
  %87 = phi ptr [ %88, %86 ], [ %77, %21 ]
  %88 = getelementptr inbounds ptr, ptr %87, i64 -1
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  call fastcc void @remove_forwarder_block_with_phi(ptr noundef %89) #12
  %90 = icmp eq ptr %88, %11
  br i1 %90, label %91, label %86, !llvm.loop !30

91:                                               ; preds = %86, %0, %21
  call void @free(ptr noundef %11) #12
  ret i32 0
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #4

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cleanup_tree_cfg_1() unnamed_addr #0 {
  %1 = tail call fastcc zeroext i8 @split_bbs_on_noreturn_calls() #12, !range !12
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  store ptr %2, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !5
  tail call void @start_recording_case_labels() #13
  %3 = load ptr, ptr @cfun, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !31
  %8 = icmp ugt i32 %7, 2
  br i1 %8, label %14, label %9

9:                                                ; preds = %28, %0
  %10 = phi i8 [ %1, %0 ], [ %30, %28 ]
  %11 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !5
  %12 = load ptr, ptr %11, align 8, !tbaa !32
  %13 = icmp eq ptr %12, null
  br i1 %13, label %62, label %59

14:                                               ; preds = %0, %28
  %15 = phi ptr [ %29, %28 ], [ %3, %0 ]
  %16 = phi i8 [ %30, %28 ], [ %1, %0 ]
  %17 = phi i32 [ %31, %28 ], [ 2, %0 ]
  %18 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %21, i32 noundef %17) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = tail call fastcc zeroext i8 @cleanup_tree_cfg_bb(ptr noundef nonnull %22) #12
  %26 = or i8 %25, %16
  %27 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %28

28:                                               ; preds = %14, %24
  %29 = phi ptr [ %27, %24 ], [ %15, %14 ]
  %30 = phi i8 [ %26, %24 ], [ %16, %14 ]
  %31 = add nuw i32 %17, 1
  %32 = icmp eq i32 %31, %7
  br i1 %32, label %9, label %14, !llvm.loop !35

33:                                               ; preds = %59, %39
  %34 = phi ptr [ %60, %59 ], [ %40, %39 ]
  %35 = tail call i32 @bitmap_first_set_bit(ptr noundef nonnull %34) #13
  %36 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !5
  %37 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %36, i32 noundef %35) #13
  %38 = icmp ult i32 %35, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %33, %43
  %40 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !5
  %41 = load ptr, ptr %40, align 8, !tbaa !32
  %42 = icmp eq ptr %41, null
  br i1 %42, label %62, label %33, !llvm.loop !36

43:                                               ; preds = %33
  %44 = load ptr, ptr @cfun, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !16
  %47 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %48, i32 noundef %35) #12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %39, label %51

51:                                               ; preds = %43
  %52 = tail call fastcc zeroext i8 @cleanup_tree_cfg_bb(ptr noundef nonnull %49) #12
  %53 = tail call fastcc zeroext i8 @split_bbs_on_noreturn_calls() #12, !range !12
  %54 = or i8 %52, %53
  %55 = or i8 %54, %61
  %56 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !5
  %57 = load ptr, ptr %56, align 8, !tbaa !32
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59, !llvm.loop !36

59:                                               ; preds = %9, %51
  %60 = phi ptr [ %56, %51 ], [ %11, %9 ]
  %61 = phi i8 [ %55, %51 ], [ %10, %9 ]
  br label %33

62:                                               ; preds = %51, %39, %9
  %63 = phi i8 [ %10, %9 ], [ %61, %39 ], [ %55, %51 ]
  tail call void @end_recording_case_labels() #13
  %64 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !5
  tail call void @bitmap_obstack_free(ptr noundef %64) #13
  store ptr null, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !5
  ret i8 %63
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @compact_blocks() local_unnamed_addr #4

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_set() unnamed_addr #5 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = load i32, ptr %3, align 8, !tbaa !14
  %5 = or i32 %4, 64
  store i32 %5, ptr %3, align 8, !tbaa !14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @split_bbs_on_noreturn_calls() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = icmp eq ptr %3, null
  br i1 %4, label %60, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.gimple_df, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %60, label %10

10:                                               ; preds = %5, %48
  %11 = phi ptr [ %57, %48 ], [ %7, %5 ]
  %12 = phi i8 [ 1, %48 ], [ 0, %5 ]
  br label %13

13:                                               ; preds = %10, %40
  %14 = phi ptr [ %11, %10 ], [ %45, %40 ]
  %15 = tail call fastcc ptr @VEC_gimple_base_pop(ptr noundef %14) #12
  %16 = tail call fastcc ptr @gimple_bb(ptr noundef %15) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !42
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %40, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @cfun, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !17
  %28 = icmp slt i32 %20, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %31, i32 noundef %20) #12
  %33 = icmp eq ptr %32, %16
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = tail call ptr @last_stmt(ptr noundef nonnull %16) #13
  %36 = icmp eq ptr %35, %15
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = tail call fastcc zeroext i8 @gimple_call_noreturn_p(ptr noundef %15) #12, !range !12
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37, %34, %29, %22, %18, %13
  %41 = load ptr, ptr @cfun, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !37
  %44 = getelementptr inbounds %struct.gimple_df, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !38
  %46 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %45) #12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %13, !llvm.loop !43

48:                                               ; preds = %37
  %49 = tail call ptr @split_block(ptr noundef nonnull %16, ptr noundef %15) #13
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !44
  %52 = tail call fastcc zeroext i8 @remove_fallthru_edge(ptr noundef %51) #12, !range !12
  %53 = load ptr, ptr @cfun, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !37
  %56 = getelementptr inbounds %struct.gimple_df, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !38
  %58 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %57) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %10, !llvm.loop !43

60:                                               ; preds = %48, %40, %5, %0
  %61 = phi i8 [ 0, %0 ], [ 0, %5 ], [ %12, %40 ], [ 1, %48 ]
  ret i8 %61
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @start_recording_case_labels() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cleanup_tree_cfg_bb(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @cleanup_omp_return(ptr noundef %0) #12, !range !12
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @cleanup_control_flow_bb(ptr noundef %0) #12
  %6 = load i32, ptr @optimize, align 4, !tbaa !45
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @tree_forwarder_block_p(ptr noundef %0, i8 noundef zeroext 0) #12, !range !12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc zeroext i8 @remove_forwarder_block(ptr noundef %0) #12, !range !12
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11, %8, %4
  %15 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #12, !range !12
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @single_succ(ptr noundef %0) #12
  %19 = tail call zeroext i8 @can_merge_blocks_p(ptr noundef %0, ptr noundef %18) #13
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call fastcc ptr @single_succ(ptr noundef %0) #12
  tail call void @merge_blocks(ptr noundef %0, ptr noundef %22) #13
  br label %23

23:                                               ; preds = %14, %17, %11, %1, %21
  %24 = phi i8 [ 1, %21 ], [ 1, %1 ], [ 1, %11 ], [ %5, %17 ], [ %5, %14 ]
  ret i8 %24
}

; Function Attrs: optsize
declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @end_recording_case_labels() local_unnamed_addr #4

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !46
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8, !tbaa !46
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !46
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_call_noreturn_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @gimple_call_flags(ptr noundef %0) #13
  %3 = trunc i32 %2 to i8
  %4 = lshr i8 %3, 3
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @remove_fallthru_edge(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = call fastcc ptr @ei_start_1(ptr noundef nonnull %2) #12
  store i32 0, ptr %3, align 8, !tbaa.struct !48
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !49
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %4) #12, !range !12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1, %16
  %10 = load ptr, ptr %4, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !50
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  call void @remove_edge_and_dominated_blocks(ptr noundef nonnull %10) #13
  br label %21

16:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %17 = load i32, ptr %3, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = call fastcc zeroext i8 @ei_cond(i32 %17, ptr %18, ptr noundef nonnull %4) #12, !range !12
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %9, !llvm.loop !51

21:                                               ; preds = %16, %1, %15
  %22 = phi i8 [ 1, %15 ], [ 0, %1 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret i8 %22
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #3 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #12, !range !12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #12
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !5
  ret i8 %10
}

; Function Attrs: optsize
declare void @remove_edge_and_dominated_blocks(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #12
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #12
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #13
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !52
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #12
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #12
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #12
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #12
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !54
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.2) #13
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @cleanup_omp_return(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @last_stmt(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %2) #12, !range !26
  %6 = icmp eq i32 %5, 28
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #12, !range !12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @single_pred(ptr noundef %0) #12
  %12 = tail call ptr @last_stmt(ptr noundef %11) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %12) #12, !range !26
  %16 = icmp eq i32 %15, 31
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load ptr, ptr %11, align 8, !tbaa !56
  %19 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %18) #12
  switch i32 %19, label %20 [
    i32 2, label %23
    i32 1, label %21
  ]

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 593, ptr noundef nonnull @.str.2) #13
  br label %21

21:                                               ; preds = %17, %20
  %22 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #12
  tail call void @remove_edge_and_dominated_blocks(ptr noundef %22) #13
  br label %23

23:                                               ; preds = %17, %10, %14, %1, %4, %7, %21
  %24 = phi i8 [ 1, %21 ], [ 0, %7 ], [ 0, %4 ], [ 0, %1 ], [ 0, %14 ], [ 0, %10 ], [ 0, %17 ]
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cleanup_control_flow_bb(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %4 = tail call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %0) #13
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #12
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12, !range !12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %78

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %8) #12, !range !26
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %66 [
    i8 1, label %11
    i8 5, label %11
    i8 3, label %14
  ]

11:                                               ; preds = %7, %7
  %12 = tail call fastcc zeroext i8 @cleanup_control_expr_graph(ptr noundef %0, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12, !range !12
  %13 = or i8 %12, %4
  br label %78

14:                                               ; preds = %7
  %15 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %8) #12
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 121
  br i1 %18, label %19, label %66

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %8) #12
  %21 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 30
  br i1 %25, label %26, label %66

26:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %27 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %8) #12
  %28 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !13
  %30 = load ptr, ptr @cfun, align 8, !tbaa !5
  %31 = tail call ptr @label_to_block_fn(ptr noundef %30, ptr noundef %29) #13
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %33 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %32) #12
  store i32 0, ptr %3, align 8, !tbaa.struct !48
  %34 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %33, ptr %34, align 8, !tbaa.struct !49
  %35 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %33) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %57, label %37

37:                                               ; preds = %26, %52
  %38 = phi ptr [ %53, %52 ], [ %33, %26 ]
  %39 = phi i32 [ %54, %52 ], [ 0, %26 ]
  %40 = phi ptr [ %55, %52 ], [ %35, %26 ]
  %41 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !57
  %43 = icmp eq ptr %42, %31
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  tail call void @remove_edge_and_dominated_blocks(ptr noundef nonnull %40) #13
  br label %52

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !50
  %48 = and i32 %47, -4
  %49 = or disjoint i32 %48, 1
  store i32 %49, ptr %46, align 8, !tbaa !50
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %50 = load i32, ptr %3, align 8
  %51 = load ptr, ptr %34, align 8
  br label %52

52:                                               ; preds = %45, %44
  %53 = phi ptr [ %51, %45 ], [ %38, %44 ]
  %54 = phi i32 [ %50, %45 ], [ %39, %44 ]
  %55 = tail call fastcc ptr @ei_safe_edge(i32 %54, ptr %53) #12
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %37, !llvm.loop !58

57:                                               ; preds = %52, %26
  %58 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !5
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !42
  %61 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %58, i32 noundef %60) #13
  %62 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !5
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %64 = load i32, ptr %63, align 8, !tbaa !42
  %65 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %62, i32 noundef %64) #13
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %78

66:                                               ; preds = %7, %19, %14
  %67 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %8) #12, !range !12
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %66
  %70 = tail call fastcc zeroext i8 @gimple_call_noreturn_p(ptr noundef %8) #12, !range !12
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !44
  %75 = tail call fastcc zeroext i8 @remove_fallthru_edge(ptr noundef %74) #12, !range !12
  %76 = icmp eq i8 %75, 0
  %77 = select i1 %76, i8 %4, i8 1
  br label %78

78:                                               ; preds = %72, %11, %66, %69, %57, %1
  %79 = phi i8 [ %4, %1 ], [ %13, %11 ], [ 1, %57 ], [ %4, %69 ], [ %4, %66 ], [ %77, %72 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret i8 %79
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @tree_forwarder_block_p(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %6 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #12, !range !12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %92, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @phi_nodes(ptr noundef %0) #12
  %10 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %9) #12, !range !12
  %11 = icmp eq i8 %10, %1
  br i1 %11, label %92, label %12

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @single_succ(ptr noundef %0) #12
  %14 = load ptr, ptr @cfun, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !23
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %92, label %20

20:                                               ; preds = %12
  %21 = tail call fastcc ptr @single_succ(ptr noundef %0) #12
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %92, label %23

23:                                               ; preds = %20
  %24 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #12
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !50
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %92

29:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %30 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #12
  store i32 0, ptr %4, align 8, !tbaa.struct !48
  %31 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %30, ptr %31, align 8, !tbaa.struct !49
  %32 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %30, ptr noundef nonnull %5) #12, !range !12
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %29, %47
  %35 = load ptr, ptr %5, align 8, !tbaa !5
  %36 = load ptr, ptr %35, align 8, !tbaa !59
  %37 = load ptr, ptr @cfun, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !16
  %40 = load ptr, ptr %39, align 8, !tbaa !19
  %41 = icmp eq ptr %36, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !50
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  call fastcc void @ei_next(ptr noundef nonnull %4) #12
  %48 = load i32, ptr %4, align 8
  %49 = load ptr, ptr %31, align 8
  %50 = call fastcc zeroext i8 @ei_cond(i32 %48, ptr %49, ptr noundef nonnull %5) #12, !range !12
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %34, !llvm.loop !60

52:                                               ; preds = %34, %42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  br label %92

53:                                               ; preds = %47, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #12
  %54 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #12, !range !12
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53, %66
  %57 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #12
  %58 = tail call fastcc i32 @gimple_code(ptr noundef %57) #12, !range !26
  %59 = trunc i32 %58 to i8
  switch i8 %59, label %92 [
    i8 4, label %60
    i8 2, label %66
  ]

60:                                               ; preds = %56
  %61 = tail call fastcc ptr @gimple_label_label(ptr noundef %57) #12
  %62 = getelementptr inbounds %struct.tree_decl_common, ptr %61, i64 0, i32 2
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 256
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %60, %56
  call fastcc void @gsi_prev(ptr noundef nonnull %3) #12
  %67 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #12, !range !12
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %56, label %69, !llvm.loop !61

69:                                               ; preds = %66, %53
  %70 = load ptr, ptr @cfun, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !9
  %73 = icmp eq ptr %72, null
  br i1 %73, label %92, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !62
  %77 = getelementptr inbounds %struct.loop, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !63
  %79 = icmp eq ptr %78, %0
  br i1 %79, label %92, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !44
  %83 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %82, i32 noundef 0) #12
  %84 = getelementptr inbounds %struct.edge_def, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !57
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !62
  %88 = getelementptr inbounds %struct.loop, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !63
  %90 = icmp ne ptr %89, %85
  %91 = zext i1 %90 to i8
  br label %92

92:                                               ; preds = %60, %56, %52, %80, %69, %74, %2, %8, %12, %20, %23
  %93 = phi i8 [ 0, %52 ], [ 0, %23 ], [ 0, %20 ], [ 0, %12 ], [ 0, %8 ], [ 0, %2 ], [ 0, %74 ], [ 1, %69 ], [ %91, %80 ], [ 0, %56 ], [ 0, %60 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret i8 %93
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @remove_forwarder_block(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %159, label %13

13:                                               ; preds = %1
  %14 = tail call ptr @first_stmt(ptr noundef %11) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %14) #12, !range !26
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @gimple_label_label(ptr noundef nonnull %14) #12
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %20, i64 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 256
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %159

25:                                               ; preds = %19
  %26 = tail call fastcc ptr @gimple_label_label(ptr noundef nonnull %14) #12
  %27 = getelementptr inbounds %struct.tree_label_decl, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %159

30:                                               ; preds = %25, %16, %13
  %31 = tail call fastcc zeroext i8 @has_abnormal_incoming_edge_p(ptr noundef %0) #12, !range !12
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = tail call fastcc zeroext i8 @has_abnormal_incoming_edge_p(ptr noundef %11) #12, !range !12
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %159

36:                                               ; preds = %33
  %37 = tail call fastcc ptr @phi_nodes(ptr noundef %11) #12
  %38 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %37) #12, !range !12
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %159, label %40

40:                                               ; preds = %36, %30
  %41 = tail call fastcc ptr @phi_nodes(ptr noundef %11) #12
  %42 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %41) #12, !range !12
  %43 = icmp eq i8 %42, 0
  %44 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #12
  br i1 %43, label %45, label %62

45:                                               ; preds = %40
  store i32 0, ptr %3, align 8, !tbaa.struct !48
  %46 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %44, ptr %46, align 8, !tbaa.struct !49
  %47 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %44, ptr noundef nonnull %2) #12, !range !12
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %45, %57
  %50 = load ptr, ptr %2, align 8, !tbaa !5
  %51 = load ptr, ptr %50, align 8, !tbaa !59
  %52 = tail call ptr @find_edge(ptr noundef %51, ptr noundef %11) #13
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = tail call fastcc zeroext i8 @phi_alternatives_equal(ptr noundef %11, ptr noundef %9, ptr noundef nonnull %52) #12
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %159, label %57

57:                                               ; preds = %54, %49
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %58 = load i32, ptr %3, align 8
  %59 = load ptr, ptr %46, align 8
  %60 = call fastcc zeroext i8 @ei_cond(i32 %58, ptr %59, ptr noundef nonnull %2) #12, !range !12
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %49, !llvm.loop !67

62:                                               ; preds = %57, %40, %45
  %63 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %11) #12, !range !12
  store i32 0, ptr %3, align 8, !tbaa.struct !48
  %64 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %44, ptr %64, align 8, !tbaa.struct !49
  %65 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %44) #12
  store ptr %65, ptr %2, align 8, !tbaa !5
  %66 = icmp eq ptr %65, null
  br i1 %66, label %102, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 6
  br label %69

69:                                               ; preds = %67, %98
  %70 = phi ptr [ %65, %67 ], [ %99, %98 ]
  %71 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !5
  %72 = load ptr, ptr %70, align 8, !tbaa !59
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !42
  %75 = call zeroext i8 @bitmap_set_bit(ptr noundef %71, i32 noundef %74) #13
  %76 = getelementptr inbounds %struct.edge_def, ptr %70, i64 0, i32 7
  %77 = load i32, ptr %76, align 8, !tbaa !50
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %69
  %81 = call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %70, ptr noundef %11) #13
  br label %84

82:                                               ; preds = %69
  %83 = call ptr @redirect_edge_and_branch(ptr noundef nonnull %70, ptr noundef %11) #13
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi ptr [ %81, %80 ], [ %83, %82 ]
  %86 = icmp eq ptr %85, %70
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %11) #13
  %88 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !12
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87, %90
  %91 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12
  %92 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %91, ptr noundef %9) #12
  %93 = load i32, ptr %68, align 4, !tbaa !24
  %94 = zext i32 %93 to i64
  %95 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %91, i64 noundef %94) #12
  call void @add_phi_arg(ptr noundef %91, ptr noundef %95, ptr noundef nonnull %70, i32 noundef %92) #13
  call fastcc void @gsi_next(ptr noundef nonnull %4) #12
  %96 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !12
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %90, label %98, !llvm.loop !68

98:                                               ; preds = %90, %87, %84
  %99 = call fastcc ptr @ei_safe_edge(i32 0, ptr %44) #12
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %69, !llvm.loop !69

101:                                              ; preds = %98
  store ptr %99, ptr %2, align 1, !tbaa !5
  br label %102

102:                                              ; preds = %101, %62
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %11) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  %103 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !12
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %131

105:                                              ; preds = %102, %128
  %106 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12
  %107 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %106) #12, !range !12
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %105
  %110 = call fastcc ptr @gimple_label_label(ptr noundef %106) #12
  %111 = getelementptr inbounds %struct.tree_label_decl, ptr %110, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !13
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.tree_decl_common, ptr %110, i64 0, i32 2
  %116 = load i64, ptr %115, align 8
  %117 = and i64 %116, 256
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load i64, ptr %110, align 8
  %121 = and i64 %120, 65536
  %122 = icmp ne i64 %121, 0
  %123 = and i64 %116, 4096
  %124 = icmp eq i64 %123, 0
  %125 = or i1 %124, %122
  br i1 %125, label %126, label %127

126:                                              ; preds = %119, %114, %109
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 0) #13
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %106, i32 noundef 1) #13
  br label %128

127:                                              ; preds = %119
  call fastcc void @gsi_next(ptr noundef nonnull %4) #12
  br label %128

128:                                              ; preds = %126, %127
  %129 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !12
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %105, label %131

131:                                              ; preds = %128, %105, %102
  %132 = icmp eq i8 %63, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %11) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  %134 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !12
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %133, %140
  %137 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12
  %138 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %137) #12, !range !12
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 0) #13
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %137, i32 noundef 1) #13
  %141 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !12
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %136, label %143

143:                                              ; preds = %140, %136, %133, %131
  %144 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !5
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %146 = load i32, ptr %145, align 8, !tbaa !42
  %147 = call zeroext i8 @bitmap_set_bit(ptr noundef %144, i32 noundef %146) #13
  %148 = call zeroext i8 @dom_info_available_p(i32 noundef 1) #13
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %143
  %151 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %0) #13
  %152 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %11) #13
  %153 = icmp eq ptr %152, %0
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %152, ptr noundef %151) #13
  br label %156

156:                                              ; preds = %150, %154
  %157 = phi ptr [ %155, %154 ], [ %151, %150 ]
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %11, ptr noundef %157) #13
  br label %158

158:                                              ; preds = %156, %143
  call void @delete_basic_block(ptr noundef %0) #13
  br label %159

159:                                              ; preds = %54, %33, %36, %19, %25, %1, %158
  %160 = phi i8 [ 1, %158 ], [ 0, %1 ], [ 0, %25 ], [ 0, %19 ], [ 0, %36 ], [ 0, %33 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret i8 %160
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #12
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @can_merge_blocks_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  ret ptr %4
}

; Function Attrs: optsize
declare void @merge_blocks(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #12
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #12
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #12, !range !12
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 655, ptr noundef nonnull @.str.2) #13
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !56
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #12
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #12
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #12
  store ptr %4, ptr %0, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cleanup_control_expr_graph(ptr noundef %0, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) unnamed_addr #0 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12
  %5 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #12, !range !12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %144

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  tail call void @fold_defer_overflow_warnings() #13
  %8 = tail call fastcc i32 @gimple_location(ptr noundef %4) #12
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %4) #12, !range !26
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %87 [
    i8 1, label %11
    i8 5, label %85
  ]

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %4) #12
  %13 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %4) #12
  %14 = load i64, ptr %12, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %46

17:                                               ; preds = %11
  %18 = tail call zeroext i8 @name_registered_for_update_p(ptr noundef nonnull %12) #13
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = tail call fastcc i32 @gimple_code(ptr noundef %22) #12, !range !26
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %22) #12
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = tail call fastcc ptr @gimple_bb(ptr noundef %22) #12
  %30 = tail call fastcc ptr @gimple_bb(ptr noundef %4) #12
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %22) #12
  %34 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %33) #12
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 141
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %22) #12
  %40 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %39) #12
  %41 = tail call zeroext i8 @name_registered_for_update_p(ptr noundef %40) #13
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %32
  %44 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %22) #12
  %45 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %44) #12
  br label %46

46:                                               ; preds = %20, %25, %28, %38, %43, %17, %11
  %47 = phi ptr [ %12, %17 ], [ %12, %11 ], [ %45, %43 ], [ %12, %38 ], [ %12, %28 ], [ %12, %25 ], [ %12, %20 ]
  %48 = load i64, ptr %13, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 141
  br i1 %50, label %51, label %80

51:                                               ; preds = %46
  %52 = tail call zeroext i8 @name_registered_for_update_p(ptr noundef nonnull %13) #13
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.tree_ssa_name, ptr %13, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !13
  %57 = tail call fastcc i32 @gimple_code(ptr noundef %56) #12, !range !26
  %58 = icmp eq i32 %57, 16
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  %60 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %56) #12
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = tail call fastcc ptr @gimple_bb(ptr noundef %56) #12
  %64 = tail call fastcc ptr @gimple_bb(ptr noundef %4) #12
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %56) #12
  %68 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %67) #12
  %69 = load i64, ptr %68, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 141
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %56) #12
  %74 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %73) #12
  %75 = tail call zeroext i8 @name_registered_for_update_p(ptr noundef %74) #13
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72, %66
  %78 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %56) #12
  %79 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %78) #12
  br label %80

80:                                               ; preds = %54, %59, %62, %72, %77, %51, %46
  %81 = phi ptr [ %13, %51 ], [ %13, %46 ], [ %79, %77 ], [ %13, %72 ], [ %13, %62 ], [ %13, %59 ], [ %13, %54 ]
  %82 = tail call fastcc i32 @gimple_cond_code(ptr noundef %4) #12, !range !77
  %83 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !5
  %84 = tail call ptr @fold_binary_loc(i32 noundef %8, i32 noundef %82, ptr noundef %83, ptr noundef %47, ptr noundef %81) #13
  br label %87

85:                                               ; preds = %7
  %86 = tail call fastcc ptr @gimple_switch_index(ptr noundef %4) #12
  br label %87

87:                                               ; preds = %7, %85, %80
  %88 = phi ptr [ %86, %85 ], [ %84, %80 ], [ null, %7 ]
  %89 = tail call ptr @find_taken_edge(ptr noundef %0, ptr noundef %88) #13
  %90 = icmp eq ptr %89, null
  br i1 %90, label %143, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %93 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %92) #12
  store i32 0, ptr %3, align 8, !tbaa.struct !48
  %94 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %93, ptr %94, align 8, !tbaa.struct !49
  %95 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %93) #12
  %96 = icmp eq ptr %95, null
  br i1 %96, label %134, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.edge_def, ptr %89, i64 0, i32 8
  %99 = getelementptr inbounds %struct.edge_def, ptr %89, i64 0, i32 9
  br label %100

100:                                              ; preds = %114, %97
  %101 = phi ptr [ %118, %114 ], [ %93, %97 ]
  %102 = phi i32 [ %117, %114 ], [ 0, %97 ]
  %103 = phi ptr [ %119, %114 ], [ %95, %97 ]
  %104 = phi i8 [ %115, %114 ], [ 0, %97 ]
  %105 = phi i8 [ %116, %114 ], [ 0, %97 ]
  %106 = icmp eq ptr %103, %89
  br i1 %106, label %114, label %109

107:                                              ; preds = %121
  %108 = icmp eq ptr %130, %89
  br i1 %108, label %114, label %109, !llvm.loop !78

109:                                              ; preds = %100, %107
  %110 = phi i8 [ 1, %107 ], [ %105, %100 ]
  %111 = phi ptr [ %130, %107 ], [ %103, %100 ]
  %112 = icmp eq i8 %110, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext 1, ptr noundef %4, i32 noundef 2) #13
  br label %121

114:                                              ; preds = %107, %100
  %115 = phi i8 [ %104, %100 ], [ 1, %107 ]
  %116 = phi i8 [ %105, %100 ], [ 1, %107 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %117 = load i32, ptr %3, align 8
  %118 = load ptr, ptr %94, align 8
  %119 = tail call fastcc ptr @ei_safe_edge(i32 %117, ptr %118) #12
  %120 = icmp eq ptr %119, null
  br i1 %120, label %132, label %100, !llvm.loop !78

121:                                              ; preds = %109, %113
  %122 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 8
  %123 = load i32, ptr %122, align 4, !tbaa !79
  %124 = load i32, ptr %98, align 4, !tbaa !79
  %125 = add nsw i32 %124, %123
  store i32 %125, ptr %98, align 4, !tbaa !79
  %126 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 9
  %127 = load i64, ptr %126, align 8, !tbaa !80
  %128 = load i64, ptr %99, align 8, !tbaa !80
  %129 = add nsw i64 %128, %127
  store i64 %129, ptr %99, align 8, !tbaa !80
  tail call void @remove_edge_and_dominated_blocks(ptr noundef nonnull %111) #13
  %130 = tail call fastcc ptr @ei_safe_edge(i32 %102, ptr %101) #12
  %131 = icmp eq ptr %130, null
  br i1 %131, label %136, label %107, !llvm.loop !78

132:                                              ; preds = %114
  %133 = icmp eq i8 %116, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %91, %132
  %135 = phi i8 [ %115, %132 ], [ 0, %91 ]
  tail call void @fold_undefer_and_ignore_overflow_warnings() #13
  br label %136

136:                                              ; preds = %121, %134, %132
  %137 = phi i8 [ %135, %134 ], [ %115, %132 ], [ 1, %121 ]
  %138 = getelementptr inbounds %struct.edge_def, ptr %89, i64 0, i32 8
  %139 = load i32, ptr %138, align 4, !tbaa !79
  %140 = icmp sgt i32 %139, 10000
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 10000, ptr %138, align 4, !tbaa !79
  br label %142

142:                                              ; preds = %136, %141
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %146

143:                                              ; preds = %87
  tail call void @fold_undefer_and_ignore_overflow_warnings() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %154

144:                                              ; preds = %2
  %145 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #12
  br label %146

146:                                              ; preds = %142, %144
  %147 = phi i8 [ 0, %144 ], [ %137, %142 ]
  %148 = phi ptr [ %145, %144 ], [ %89, %142 ]
  %149 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !5
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %151 = load i32, ptr %150, align 8, !tbaa !42
  %152 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %149, i32 noundef %151) #13
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #13
  %153 = getelementptr inbounds %struct.edge_def, ptr %148, i64 0, i32 7
  store i32 1, ptr %153, align 8, !tbaa !50
  br label %154

154:                                              ; preds = %143, %146
  %155 = phi i8 [ %147, %146 ], [ 0, %143 ]
  ret i8 %155
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_goto_dest(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @label_to_block_fn(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #12, !range !12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #12
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !26
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !81
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !82
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare void @fold_defer_overflow_warnings() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !13
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #12
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @name_registered_for_update_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !13
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @find_taken_edge(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fold_undefer_and_ignore_overflow_warnings() local_unnamed_addr #4

; Function Attrs: optsize
declare void @fold_undefer_overflow_warnings(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #12, !range !12
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #13
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #12
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #12, !range !12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #12
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !26
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #12
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !88
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !26
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #12
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #3 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !45
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !13
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #13
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !81
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 510, ptr noundef nonnull @.str.2) #13
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_label_label(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  store ptr %4, ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: optsize
declare ptr @first_stmt(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @has_abnormal_incoming_edge_p(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #12
  store i32 0, ptr %3, align 8, !tbaa.struct !48
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !49
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #12, !range !12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !50
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #12, !range !12
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !llvm.loop !92

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret i8 %20
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @phi_alternatives_equal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !24
  %7 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #13
  %9 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = sext i32 %6 to i64
  %13 = sext i32 %8 to i64
  br label %14

14:                                               ; preds = %11, %26
  %15 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12
  %16 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %15, i64 noundef %12) #12
  %17 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %15, i64 noundef %13) #12
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 367, ptr noundef nonnull @.str.2) #13
  br label %20

20:                                               ; preds = %14, %19
  %21 = icmp eq ptr %17, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 368, ptr noundef nonnull @.str.2) #13
  br label %23

23:                                               ; preds = %20, %22
  %24 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %16, ptr noundef %17) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  call fastcc void @gsi_next(ptr noundef nonnull %4) #12
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !12
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %14, label %29, !llvm.loop !93

29:                                               ; preds = %23, %26, %3
  %30 = phi i8 [ 1, %3 ], [ 1, %26 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret i8 %30
}

; Function Attrs: optsize
declare ptr @redirect_edge_succ_nodup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !24
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #12
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !94
  ret i32 %7
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #12
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  store ptr %4, ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #12
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #12
  store ptr %4, ptr %0, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !26
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #12
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #12, !range !12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #12
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #12, !range !26
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #12
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #12, !range !12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !97

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @nearest_common_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @operand_equal_for_phi_arg_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare void @fix_loop_structure(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @rewrite_into_loop_closed_ssa(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @scev_reset() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_clear() unnamed_addr #5 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, ptr %3, align 8, !tbaa !14
  %7 = and i32 %6, -65
  store i32 %7, ptr %3, align 8, !tbaa !14
  br label %8

8:                                                ; preds = %0, %5
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !45
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #13
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %22, %13, %3
  store ptr null, ptr %1, align 8, !tbaa !5
  store ptr null, ptr %2, align 8, !tbaa !5
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !98
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %15) #12, !range !12
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8

18:                                               ; preds = %13
  store ptr %6, ptr %1, align 8, !tbaa !5
  %19 = load ptr, ptr %5, align 8, !tbaa !98
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !13
  store ptr %21, ptr %2, align 8, !tbaa !5
  br label %27

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !45
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %8, label %25

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #13
  br label %27

27:                                               ; preds = %25, %18, %8
  %28 = phi i8 [ 0, %8 ], [ 1, %18 ], [ %26, %25 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_forwarder_block_with_phi(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %94, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @first_stmt(ptr noundef %6) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %9) #12, !range !26
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @gimple_label_label(ptr noundef nonnull %9) #12
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 256
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %94

20:                                               ; preds = %14, %11, %8
  %21 = load ptr, ptr %0, align 8, !tbaa !56
  %22 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %21) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %86, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 6
  br label %26

26:                                               ; preds = %24, %81
  %27 = phi ptr [ %21, %24 ], [ %83, %81 ]
  %28 = call fastcc ptr @VEC_edge_base_index(ptr noundef %27, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %29 = load ptr, ptr %28, align 8, !tbaa !59
  %30 = call ptr @find_edge(ptr noundef %29, ptr noundef %6) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %26
  %33 = call fastcc zeroext i8 @phi_alternatives_equal(ptr noundef %6, ptr noundef nonnull %30, ptr noundef %4) #12
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call ptr @redirect_edge_and_branch(ptr noundef nonnull %28, ptr noundef %6) #13
  br label %81, !llvm.loop !99

37:                                               ; preds = %32
  %38 = call ptr @split_edge(ptr noundef nonnull %28) #13
  %39 = call fastcc ptr @single_succ_edge(ptr noundef %38) #12
  br label %40

40:                                               ; preds = %37, %26
  %41 = phi ptr [ %39, %37 ], [ %28, %26 ]
  %42 = call ptr @redirect_edge_and_branch(ptr noundef %41, ptr noundef %6) #13
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 821, ptr noundef nonnull @.str.2) #13
  br label %45

45:                                               ; preds = %40, %44
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %6) #13
  %46 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12, !range !12
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %45, %76
  %49 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12
  %50 = load i32, ptr %25, align 4, !tbaa !24
  %51 = zext i32 %50 to i64
  %52 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %49, i64 noundef %51) #12
  %53 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %49, ptr noundef %4) #12
  %54 = load i64, ptr %52, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 141
  br i1 %56, label %57, label %76

57:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %58 = call ptr @redirect_edge_var_map_vector(ptr noundef %41) #13
  %59 = call fastcc i32 @VEC_edge_var_map_base_iterate(ptr noundef %58, i32 noundef 0, ptr noundef nonnull %3) #12, !range !100
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %65

61:                                               ; preds = %65
  %62 = add i32 %66, 1
  %63 = call fastcc i32 @VEC_edge_var_map_base_iterate(ptr noundef %58, i32 noundef %62, ptr noundef nonnull %3) #12, !range !100
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65, !llvm.loop !101

65:                                               ; preds = %57, %61
  %66 = phi i32 [ %62, %61 ], [ 0, %57 ]
  %67 = load ptr, ptr %3, align 8, !tbaa !5
  %68 = call fastcc ptr @redirect_edge_var_map_result(ptr noundef %67) #12
  %69 = icmp eq ptr %52, %68
  br i1 %69, label %70, label %61

70:                                               ; preds = %65
  %71 = call fastcc ptr @redirect_edge_var_map_def(ptr noundef %67) #12
  %72 = call fastcc i32 @redirect_edge_var_map_location(ptr noundef %67) #12
  br label %73

73:                                               ; preds = %61, %57, %70
  %74 = phi ptr [ %71, %70 ], [ %52, %57 ], [ %52, %61 ]
  %75 = phi i32 [ %72, %70 ], [ %53, %57 ], [ %53, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %76

76:                                               ; preds = %73, %48
  %77 = phi ptr [ %74, %73 ], [ %52, %48 ]
  %78 = phi i32 [ %75, %73 ], [ %53, %48 ]
  call void @add_phi_arg(ptr noundef %49, ptr noundef %77, ptr noundef %42, i32 noundef %78) #13
  call fastcc void @gsi_next(ptr noundef nonnull %2) #12
  %79 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12, !range !12
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %48, label %81, !llvm.loop !102

81:                                               ; preds = %76, %45, %35
  %82 = phi ptr [ %36, %35 ], [ %41, %45 ], [ %41, %76 ]
  call void @redirect_edge_var_map_clear(ptr noundef %82) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  %83 = load ptr, ptr %0, align 8, !tbaa !56
  %84 = call fastcc i32 @VEC_edge_base_length(ptr noundef %83) #12
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %26

86:                                               ; preds = %81, %20
  %87 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %0) #13
  %88 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %6) #13
  %89 = icmp eq ptr %88, %0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %88, ptr noundef %87) #13
  br label %92

92:                                               ; preds = %86, %90
  %93 = phi ptr [ %91, %90 ], [ %87, %86 ]
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %6, ptr noundef %93) #13
  call void @delete_basic_block(ptr noundef nonnull %0) #13
  br label %94

94:                                               ; preds = %14, %1, %92
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @redirect_edge_var_map_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @redirect_edge_var_map_vector(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_var_map_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !103
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !5
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @redirect_edge_var_map_result(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !105
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @redirect_edge_var_map_def(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct._edge_var_map, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @redirect_edge_var_map_location(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct._edge_var_map, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !108
  ret i32 %3
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 32}
!10 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !6, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!11 = !{!"int", !7, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !11, i64 0}
!15 = !{!"loops", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!16 = !{!10, !6, i64 8}
!17 = !{!18, !11, i64 24}
!18 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !6, i64 40, !11, i64 48, !7, i64 52, !7, i64 60, !11, i64 68, !11, i64 72}
!19 = !{!18, !6, i64 0}
!20 = !{!21, !6, i64 56}
!21 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !22, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!22 = !{!"long", !7, i64 0}
!23 = !{!18, !6, i64 8}
!24 = !{!25, !11, i64 44}
!25 = !{!"edge_def", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !22, i64 56}
!26 = !{i32 0, i32 256}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = !{!18, !11, i64 32}
!32 = !{!33, !6, i64 0}
!33 = !{!"bitmap_head_def", !6, i64 0, !6, i64 8, !11, i64 16, !6, i64 24}
!34 = !{!18, !6, i64 16}
!35 = distinct !{!35, !28}
!36 = distinct !{!36, !28}
!37 = !{!10, !6, i64 24}
!38 = !{!39, !6, i64 8}
!39 = !{!"gimple_df", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !40, i64 32, !40, i64 48, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !11, i64 96, !41, i64 104}
!40 = !{!"pt_solution", !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !6, i64 8}
!41 = !{!"ssa_operands", !6, i64 0, !11, i64 8, !11, i64 12, !7, i64 16, !6, i64 24, !6, i64 32}
!42 = !{!21, !11, i64 80}
!43 = distinct !{!43, !28}
!44 = !{!21, !6, i64 8}
!45 = !{!11, !11, i64 0}
!46 = !{!47, !11, i64 0}
!47 = !{!"VEC_gimple_base", !11, i64 0, !11, i64 4, !7, i64 8}
!48 = !{i64 0, i64 4, !45, i64 8, i64 8, !5}
!49 = !{i64 0, i64 8, !5}
!50 = !{!25, !11, i64 48}
!51 = distinct !{!51, !28}
!52 = !{!53, !11, i64 0}
!53 = !{!"", !11, i64 0, !6, i64 8}
!54 = !{!55, !11, i64 0}
!55 = !{!"VEC_edge_base", !11, i64 0, !11, i64 4, !7, i64 8}
!56 = !{!21, !6, i64 0}
!57 = !{!25, !6, i64 8}
!58 = distinct !{!58, !28}
!59 = !{!25, !6, i64 0}
!60 = distinct !{!60, !28}
!61 = distinct !{!61, !28}
!62 = !{!21, !6, i64 24}
!63 = !{!64, !6, i64 8}
!64 = !{!"loop", !11, i64 0, !11, i64 4, !6, i64 8, !6, i64 16, !65, i64 24, !11, i64 32, !11, i64 36, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !66, i64 80, !66, i64 96, !7, i64 112, !7, i64 113, !11, i64 116, !6, i64 120, !6, i64 128, !7, i64 136, !6, i64 144}
!65 = !{!"lpt_decision", !11, i64 0, !11, i64 4}
!66 = !{!"", !22, i64 0, !22, i64 8}
!67 = distinct !{!67, !28}
!68 = distinct !{!68, !28}
!69 = distinct !{!69, !28}
!70 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5}
!71 = !{!72, !6, i64 0}
!72 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!73 = !{!72, !6, i64 8}
!74 = !{!72, !6, i64 16}
!75 = !{!76, !6, i64 0}
!76 = !{!"gimple_seq_node_d", !6, i64 0, !6, i64 8, !6, i64 16}
!77 = !{i32 0, i32 65536}
!78 = distinct !{!78, !28}
!79 = !{!25, !11, i64 52}
!80 = !{!25, !22, i64 56}
!81 = !{!21, !11, i64 96}
!82 = !{!83, !6, i64 0}
!83 = !{!"gimple_bb_info", !6, i64 0, !6, i64 8}
!84 = !{!85, !6, i64 8}
!85 = !{!"gimple_seq_d", !6, i64 0, !6, i64 8, !6, i64 16}
!86 = !{!87, !6, i64 24}
!87 = !{!"ssa_use_operand_d", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24}
!88 = !{!22, !22, i64 0}
!89 = !{!85, !6, i64 0}
!90 = !{!83, !6, i64 8}
!91 = !{!76, !6, i64 8}
!92 = distinct !{!92, !28}
!93 = distinct !{!93, !28}
!94 = !{!95, !11, i64 40}
!95 = !{!"phi_arg_d", !87, i64 0, !6, i64 32, !11, i64 40}
!96 = !{!76, !6, i64 16}
!97 = distinct !{!97, !28}
!98 = !{!87, !6, i64 8}
!99 = distinct !{!99, !28}
!100 = !{i32 0, i32 2}
!101 = distinct !{!101, !28}
!102 = distinct !{!102, !28}
!103 = !{!104, !11, i64 0}
!104 = !{!"VEC_edge_var_map_base", !11, i64 0, !11, i64 4, !7, i64 8}
!105 = !{!106, !6, i64 0}
!106 = !{!"_edge_var_map", !6, i64 0, !6, i64 8, !11, i64 16}
!107 = !{!106, !6, i64 8}
!108 = !{!106, !11, i64 16}
