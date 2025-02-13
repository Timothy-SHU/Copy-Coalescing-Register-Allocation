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
define dso_local zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #0 !prof !275 {
  %1 = tail call fastcc zeroext i8 @cleanup_tree_cfg_noloop() #12
  %2 = load ptr, ptr @cfun, align 8, !tbaa !276
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !280
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !283

6:                                                ; preds = %0
  %7 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 64) #12, !range !284
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !285

9:                                                ; preds = %6
  tail call fastcc void @repair_loop_structures() #12
  br label %10

10:                                               ; preds = %9, %6, %0
  ret i8 %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cleanup_tree_cfg_noloop() unnamed_addr #0 !prof !275 !PGOFuncName !286 {
  %1 = load i8, ptr @timevar_enable, align 1, !tbaa !287
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3, !prof !288

3:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 51) #13
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9, !prof !289

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
  br i1 %14, label %15, label %16, !prof !290

15:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 716, ptr noundef nonnull @.str.2) #13
  br label %16

16:                                               ; preds = %9, %15
  tail call void @compact_blocks() #13
  %17 = load i8, ptr @timevar_enable, align 1, !tbaa !287
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19, !prof !288

19:                                               ; preds = %16
  tail call void @timevar_pop_1(i32 noundef 51) #13
  br label %20

20:                                               ; preds = %19, %16
  %21 = icmp eq i8 %12, 0
  br i1 %21, label %28, label %22, !prof !291

22:                                               ; preds = %20
  %23 = load ptr, ptr @cfun, align 8, !tbaa !276
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !280
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !292

27:                                               ; preds = %22
  tail call fastcc void @loops_state_set() #12
  br label %28

28:                                               ; preds = %27, %22, %20
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef %0) unnamed_addr #2 !prof !293 !PGOFuncName !294 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !276
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !280
  %5 = load i32, ptr %4, align 8, !tbaa !295
  %6 = and i32 %5, %0
  %7 = icmp eq i32 %6, %0
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @repair_loop_structures() unnamed_addr #0 !prof !297 !PGOFuncName !298 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  tail call void @fix_loop_structure(ptr noundef %1) #13
  %2 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 32) #12, !range !284
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !299

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
define internal noundef zeroext i8 @gate_merge_phi() #3 !prof !300 !PGOFuncName !301 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @merge_phi_nodes() #0 !prof !300 !PGOFuncName !302 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !276
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !304
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @xmalloc(i64 noundef %10) #13
  tail call void @calculate_dominance_info(i32 noundef 1) #13
  %12 = load ptr, ptr @cfun, align 8, !tbaa !276
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !303
  %15 = load ptr, ptr %14, align 8, !tbaa !306
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !307
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !310
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %91, label %23, !prof !311

21:                                               ; preds = %76
  %22 = icmp eq ptr %77, %11
  br i1 %22, label %91, label %86, !prof !312

23:                                               ; preds = %0, %76
  %24 = phi ptr [ %79, %76 ], [ %17, %0 ]
  %25 = phi ptr [ %77, %76 ], [ %11, %0 ]
  %26 = call fastcc zeroext i8 @tree_forwarder_block_p(ptr noundef %24, i8 noundef zeroext 1) #12, !range !284
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %76, label %28, !prof !313

28:                                               ; preds = %23
  %29 = call fastcc ptr @single_succ(ptr noundef %24) #12
  %30 = call fastcc ptr @phi_nodes(ptr noundef %29) #12
  %31 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %30) #12, !range !284
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %76, !prof !314

33:                                               ; preds = %28
  %34 = call fastcc zeroext i8 @has_abnormal_incoming_edge_p(ptr noundef %24) #12, !range !284
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %76, !prof !314

36:                                               ; preds = %33
  %37 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %29, ptr noundef %24) #13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %41, !prof !314

39:                                               ; preds = %36
  %40 = getelementptr inbounds ptr, ptr %25, i64 1
  store ptr %24, ptr %25, align 8, !tbaa !276
  br label %76

41:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #14
  %42 = call fastcc ptr @single_succ_edge(ptr noundef %24) #12
  %43 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !315
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %24) #13
  %45 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12, !range !284
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
  %59 = load ptr, ptr %3, align 8, !tbaa !276
  %60 = call fastcc i32 @gimple_code(ptr noundef %59) #12, !range !317
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
  %70 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12, !range !284
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %49, label %72, !llvm.loop !318

72:                                               ; preds = %69, %41
  %73 = getelementptr inbounds ptr, ptr %25, i64 1
  store ptr %24, ptr %25, align 8, !tbaa !276
  br label %74

74:                                               ; preds = %66, %65, %72
  %75 = phi ptr [ %73, %72 ], [ %25, %65 ], [ %25, %66 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #14
  br label %76

76:                                               ; preds = %39, %74, %28, %33, %23
  %77 = phi ptr [ %25, %23 ], [ %25, %33 ], [ %25, %28 ], [ %75, %74 ], [ %40, %39 ]
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !307
  %80 = load ptr, ptr @cfun, align 8, !tbaa !276
  %81 = getelementptr inbounds %struct.function, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !303
  %83 = getelementptr inbounds %struct.control_flow_graph, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !310
  %85 = icmp eq ptr %79, %84
  br i1 %85, label %21, label %23, !prof !320, !llvm.loop !321

86:                                               ; preds = %21, %86
  %87 = phi ptr [ %88, %86 ], [ %77, %21 ]
  %88 = getelementptr inbounds ptr, ptr %87, i64 -1
  %89 = load ptr, ptr %88, align 8, !tbaa !276
  call fastcc void @remove_forwarder_block_with_phi(ptr noundef %89) #12
  %90 = icmp eq ptr %88, %11
  br i1 %90, label %91, label %86, !prof !322, !llvm.loop !323

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
define internal fastcc zeroext i8 @cleanup_tree_cfg_1() unnamed_addr #0 !prof !275 !PGOFuncName !324 {
  %1 = tail call fastcc zeroext i8 @split_bbs_on_noreturn_calls() #12, !range !284
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  store ptr %2, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !276
  tail call void @start_recording_case_labels() #13
  %3 = load ptr, ptr @cfun, align 8, !tbaa !276
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !325
  %8 = icmp ugt i32 %7, 2
  br i1 %8, label %14, label %9, !prof !326

9:                                                ; preds = %28, %0
  %10 = phi i8 [ %1, %0 ], [ %30, %28 ]
  %11 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !276
  %12 = load ptr, ptr %11, align 8, !tbaa !327
  %13 = icmp eq ptr %12, null
  br i1 %13, label %62, label %59, !prof !329

14:                                               ; preds = %0, %28
  %15 = phi ptr [ %29, %28 ], [ %3, %0 ]
  %16 = phi i8 [ %30, %28 ], [ %1, %0 ]
  %17 = phi i32 [ %31, %28 ], [ 2, %0 ]
  %18 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !303
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !330
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %21, i32 noundef %17) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24, !prof !331

24:                                               ; preds = %14
  %25 = tail call fastcc zeroext i8 @cleanup_tree_cfg_bb(ptr noundef nonnull %22) #12
  %26 = or i8 %25, %16
  %27 = load ptr, ptr @cfun, align 8, !tbaa !276
  br label %28

28:                                               ; preds = %14, %24
  %29 = phi ptr [ %27, %24 ], [ %15, %14 ]
  %30 = phi i8 [ %26, %24 ], [ %16, %14 ]
  %31 = add nuw i32 %17, 1
  %32 = icmp eq i32 %31, %7
  br i1 %32, label %9, label %14, !prof !332, !llvm.loop !333

33:                                               ; preds = %59, %39
  %34 = phi ptr [ %60, %59 ], [ %40, %39 ]
  %35 = tail call i32 @bitmap_first_set_bit(ptr noundef nonnull %34) #13
  %36 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !276
  %37 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %36, i32 noundef %35) #13
  %38 = icmp ult i32 %35, 2
  br i1 %38, label %39, label %43, !prof !334

39:                                               ; preds = %33, %43
  %40 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !276
  %41 = load ptr, ptr %40, align 8, !tbaa !327
  %42 = icmp eq ptr %41, null
  br i1 %42, label %62, label %33, !prof !335, !llvm.loop !336

43:                                               ; preds = %33
  %44 = load ptr, ptr @cfun, align 8, !tbaa !276
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !303
  %47 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !330
  %49 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %48, i32 noundef %35) #12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %39, label %51, !prof !337

51:                                               ; preds = %43
  %52 = tail call fastcc zeroext i8 @cleanup_tree_cfg_bb(ptr noundef nonnull %49) #12
  %53 = tail call fastcc zeroext i8 @split_bbs_on_noreturn_calls() #12, !range !284
  %54 = or i8 %52, %53
  %55 = or i8 %54, %61
  %56 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !276
  %57 = load ptr, ptr %56, align 8, !tbaa !327
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59, !prof !338, !llvm.loop !336

59:                                               ; preds = %9, %51
  %60 = phi ptr [ %56, %51 ], [ %11, %9 ]
  %61 = phi i8 [ %55, %51 ], [ %10, %9 ]
  br label %33

62:                                               ; preds = %51, %39, %9
  %63 = phi i8 [ %10, %9 ], [ %61, %39 ], [ %55, %51 ]
  tail call void @end_recording_case_labels() #13
  %64 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !276
  tail call void @bitmap_obstack_free(ptr noundef %64) #13
  store ptr null, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !276
  ret i8 %63
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @compact_blocks() local_unnamed_addr #4

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_set() unnamed_addr #5 !prof !297 !PGOFuncName !339 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !276
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !280
  %4 = load i32, ptr %3, align 8, !tbaa !295
  %5 = or i32 %4, 64
  store i32 %5, ptr %3, align 8, !tbaa !295
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @split_bbs_on_noreturn_calls() unnamed_addr #0 !prof !340 !PGOFuncName !341 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !276
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !342
  %4 = icmp eq ptr %3, null
  br i1 %4, label %60, label %5, !prof !343

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.gimple_df, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !344
  %8 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %60, label %10, !prof !348

10:                                               ; preds = %5, %48
  %11 = phi ptr [ %57, %48 ], [ %7, %5 ]
  %12 = phi i8 [ 1, %48 ], [ 0, %5 ]
  br label %13

13:                                               ; preds = %10, %40
  %14 = phi ptr [ %11, %10 ], [ %45, %40 ]
  %15 = tail call fastcc ptr @VEC_gimple_base_pop(ptr noundef %14) #12
  %16 = tail call fastcc ptr @gimple_bb(ptr noundef %15) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18, !prof !349

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !350
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %40, label %22, !prof !349

22:                                               ; preds = %18
  %23 = load ptr, ptr @cfun, align 8, !tbaa !276
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !303
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !304
  %28 = icmp slt i32 %20, %27
  br i1 %28, label %29, label %40, !prof !351

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !330
  %32 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %31, i32 noundef %20) #12
  %33 = icmp eq ptr %32, %16
  br i1 %33, label %34, label %40, !prof !351

34:                                               ; preds = %29
  %35 = tail call ptr @last_stmt(ptr noundef nonnull %16) #13
  %36 = icmp eq ptr %35, %15
  br i1 %36, label %40, label %37, !prof !351

37:                                               ; preds = %34
  %38 = tail call fastcc zeroext i8 @gimple_call_noreturn_p(ptr noundef %15) #12, !range !284
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37, %34, %29, %22, %18, %13
  %41 = load ptr, ptr @cfun, align 8, !tbaa !276
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !342
  %44 = getelementptr inbounds %struct.gimple_df, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !344
  %46 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %45) #12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %13, !prof !352, !llvm.loop !353

48:                                               ; preds = %37
  %49 = tail call ptr @split_block(ptr noundef nonnull %16, ptr noundef %15) #13
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !354
  %52 = tail call fastcc zeroext i8 @remove_fallthru_edge(ptr noundef %51) #12, !range !284
  %53 = load ptr, ptr @cfun, align 8, !tbaa !276
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !342
  %56 = getelementptr inbounds %struct.gimple_df, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !344
  %58 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %57) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %10, !prof !352, !llvm.loop !353

60:                                               ; preds = %48, %40, %5, %0
  %61 = phi i8 [ 0, %0 ], [ 0, %5 ], [ %12, %40 ], [ 1, %48 ]
  ret i8 %61
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @start_recording_case_labels() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !355 !PGOFuncName !356 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !276
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cleanup_tree_cfg_bb(ptr noundef %0) unnamed_addr #0 !prof !357 !PGOFuncName !358 {
  %2 = tail call fastcc zeroext i8 @cleanup_omp_return(ptr noundef %0) #12, !range !284
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %23, !prof !359

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @cleanup_control_flow_bb(ptr noundef %0) #12
  %6 = load i32, ptr @optimize, align 4, !tbaa !360
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %14, !prof !359

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @tree_forwarder_block_p(ptr noundef %0, i8 noundef zeroext 0) #12, !range !284
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11, !prof !361

11:                                               ; preds = %8
  %12 = tail call fastcc zeroext i8 @remove_forwarder_block(ptr noundef %0) #12, !range !284
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %23, !prof !362

14:                                               ; preds = %11, %8, %4
  %15 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #12, !range !284
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17, !prof !363

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @single_succ(ptr noundef %0) #12
  %19 = tail call zeroext i8 @can_merge_blocks_p(ptr noundef %0, ptr noundef %18) #13
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21, !prof !364

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
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !365 !PGOFuncName !366 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !367

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !368
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #7 !prof !370 !PGOFuncName !371 {
  %2 = load i32, ptr %0, align 8, !tbaa !368
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !368
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !276
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !370 !PGOFuncName !372 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !287
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_call_noreturn_p(ptr noundef %0) unnamed_addr #0 !prof !373 !PGOFuncName !374 {
  %2 = tail call i32 @gimple_call_flags(ptr noundef %0) #13
  %3 = trunc i32 %2 to i8
  %4 = lshr i8 %3, 3
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @remove_fallthru_edge(ptr noundef %0) unnamed_addr #0 !prof !375 !PGOFuncName !376 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !276
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = call fastcc ptr @ei_start_1(ptr noundef nonnull %2) #12
  store i32 0, ptr %3, align 8, !tbaa.struct !377
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !378
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %4) #12, !range !284
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %21, label %9, !prof !379

9:                                                ; preds = %1, %16
  %10 = load ptr, ptr %4, align 8, !tbaa !276
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !380
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
  %19 = call fastcc zeroext i8 @ei_cond(i32 %17, ptr %18, ptr noundef nonnull %4) #12, !range !284
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %9, !prof !381, !llvm.loop !382

21:                                               ; preds = %16, %1, %15
  %22 = phi i8 [ 1, %15 ], [ 0, %1 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret i8 %22
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #3 !prof !383 !PGOFuncName !384 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !385 !PGOFuncName !386 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #12, !range !284
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !387

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #12
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !276
  ret i8 %10
}

; Function Attrs: optsize
declare void @remove_edge_and_dominated_blocks(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !388 !PGOFuncName !389 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !390

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #12
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #12
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !391

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #13
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !392
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !392
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !394 !PGOFuncName !395 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !396

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !397 !PGOFuncName !398 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !399

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #12
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #12
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !400 !PGOFuncName !401 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !402

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !403
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !405 !PGOFuncName !406 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !407

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.2) #13
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !276
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !408 !PGOFuncName !409 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !276
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @cleanup_omp_return(ptr noundef %0) unnamed_addr #0 !prof !357 !PGOFuncName !410 {
  %2 = tail call ptr @last_stmt(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !411

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %2) #12, !range !317
  %6 = icmp eq i32 %5, 28
  br i1 %6, label %7, label %23, !prof !412

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #12, !range !284
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @single_pred(ptr noundef %0) #12
  %12 = tail call ptr @last_stmt(ptr noundef %11) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %12) #12, !range !317
  %16 = icmp eq i32 %15, 31
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load ptr, ptr %11, align 8, !tbaa !413
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
define internal fastcc zeroext i8 @cleanup_control_flow_bb(ptr noundef %0) unnamed_addr #0 !prof !357 !PGOFuncName !414 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %4 = tail call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %0) #13
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #12
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12, !range !284
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %78, !prof !415

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %8) #12, !range !317
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %66 [
    i8 1, label %11
    i8 5, label %11
    i8 3, label %14
  ], !prof !416

11:                                               ; preds = %7, %7
  %12 = tail call fastcc zeroext i8 @cleanup_control_expr_graph(ptr noundef %0, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12, !range !284
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
  %22 = load ptr, ptr %21, align 8, !tbaa !287
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 30
  br i1 %25, label %26, label %66

26:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %27 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %8) #12
  %28 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !287
  %30 = load ptr, ptr @cfun, align 8, !tbaa !276
  %31 = tail call ptr @label_to_block_fn(ptr noundef %30, ptr noundef %29) #13
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %33 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %32) #12
  store i32 0, ptr %3, align 8, !tbaa.struct !377
  %34 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %33, ptr %34, align 8, !tbaa.struct !378
  %35 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %33) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %57, label %37

37:                                               ; preds = %26, %52
  %38 = phi ptr [ %53, %52 ], [ %33, %26 ]
  %39 = phi i32 [ %54, %52 ], [ 0, %26 ]
  %40 = phi ptr [ %55, %52 ], [ %35, %26 ]
  %41 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !417
  %43 = icmp eq ptr %42, %31
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  tail call void @remove_edge_and_dominated_blocks(ptr noundef nonnull %40) #13
  br label %52

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !380
  %48 = and i32 %47, -4
  %49 = or disjoint i32 %48, 1
  store i32 %49, ptr %46, align 8, !tbaa !380
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %50 = load i32, ptr %3, align 8
  %51 = load ptr, ptr %34, align 8
  br label %52

52:                                               ; preds = %45, %44
  %53 = phi ptr [ %51, %45 ], [ %38, %44 ]
  %54 = phi i32 [ %50, %45 ], [ %39, %44 ]
  %55 = tail call fastcc ptr @ei_safe_edge(i32 %54, ptr %53) #12
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %37, !llvm.loop !418

57:                                               ; preds = %52, %26
  %58 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !276
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !350
  %61 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %58, i32 noundef %60) #13
  %62 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !276
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %64 = load i32, ptr %63, align 8, !tbaa !350
  %65 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %62, i32 noundef %64) #13
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %78

66:                                               ; preds = %7, %19, %14
  %67 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %8) #12, !range !284
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %78, label %69, !prof !419

69:                                               ; preds = %66
  %70 = tail call fastcc zeroext i8 @gimple_call_noreturn_p(ptr noundef %8) #12, !range !284
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %78, label %72, !prof !420

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !354
  %75 = tail call fastcc zeroext i8 @remove_fallthru_edge(ptr noundef %74) #12, !range !284
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %78, label %77, !prof !421

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %11, %66, %69, %72, %77, %57, %1
  %79 = phi i8 [ %4, %1 ], [ %13, %11 ], [ 1, %57 ], [ 1, %77 ], [ %4, %72 ], [ %4, %69 ], [ %4, %66 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret i8 %79
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @tree_forwarder_block_p(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !422 !PGOFuncName !423 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %6 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #12, !range !284
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %92, label %8, !prof !424

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @phi_nodes(ptr noundef %0) #12
  %10 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %9) #12, !range !284
  %11 = icmp eq i8 %10, %1
  br i1 %11, label %92, label %12, !prof !425

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @single_succ(ptr noundef %0) #12
  %14 = load ptr, ptr @cfun, align 8, !tbaa !276
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !303
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !310
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %92, label %20, !prof !426

20:                                               ; preds = %12
  %21 = tail call fastcc ptr @single_succ(ptr noundef %0) #12
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %92, label %23, !prof !427

23:                                               ; preds = %20
  %24 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #12
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !380
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %92, !prof !428

29:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %30 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #12
  store i32 0, ptr %4, align 8, !tbaa.struct !377
  %31 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %30, ptr %31, align 8, !tbaa.struct !378
  %32 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %30, ptr noundef nonnull %5) #12, !range !284
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %53, label %34, !prof !429

34:                                               ; preds = %29, %47
  %35 = load ptr, ptr %5, align 8, !tbaa !276
  %36 = load ptr, ptr %35, align 8, !tbaa !430
  %37 = load ptr, ptr @cfun, align 8, !tbaa !276
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !303
  %40 = load ptr, ptr %39, align 8, !tbaa !306
  %41 = icmp eq ptr %36, %40
  br i1 %41, label %52, label %42, !prof !431

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !380
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52, !prof !432

47:                                               ; preds = %42
  call fastcc void @ei_next(ptr noundef nonnull %4) #12
  %48 = load i32, ptr %4, align 8
  %49 = load ptr, ptr %31, align 8
  %50 = call fastcc zeroext i8 @ei_cond(i32 %48, ptr %49, ptr noundef nonnull %5) #12, !range !284
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %34, !prof !433, !llvm.loop !434

52:                                               ; preds = %34, %42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  br label %92

53:                                               ; preds = %47, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #12
  %54 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #12, !range !284
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %69, !prof !435

56:                                               ; preds = %53, %66
  %57 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #12
  %58 = tail call fastcc i32 @gimple_code(ptr noundef %57) #12, !range !317
  %59 = trunc i32 %58 to i8
  switch i8 %59, label %92 [
    i8 4, label %60
    i8 2, label %66
  ], !prof !436

60:                                               ; preds = %56
  %61 = tail call fastcc ptr @gimple_label_label(ptr noundef %57) #12
  %62 = getelementptr inbounds %struct.tree_decl_common, ptr %61, i64 0, i32 2
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 256
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %92, !prof !437

66:                                               ; preds = %60, %56
  call fastcc void @gsi_prev(ptr noundef nonnull %3) #12
  %67 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #12, !range !284
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %56, label %69, !prof !438, !llvm.loop !439

69:                                               ; preds = %66, %53
  %70 = load ptr, ptr @cfun, align 8, !tbaa !276
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !280
  %73 = icmp eq ptr %72, null
  br i1 %73, label %92, label %74, !prof !440

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !441
  %77 = getelementptr inbounds %struct.loop, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !442
  %79 = icmp eq ptr %78, %0
  br i1 %79, label %92, label %80, !prof !446

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !354
  %83 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %82, i32 noundef 0) #12
  %84 = getelementptr inbounds %struct.edge_def, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !417
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !441
  %88 = getelementptr inbounds %struct.loop, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !442
  %90 = icmp ne ptr %89, %85
  %91 = zext i1 %90 to i8
  br label %92

92:                                               ; preds = %60, %56, %52, %80, %69, %74, %2, %8, %12, %20, %23
  %93 = phi i8 [ 0, %52 ], [ 0, %23 ], [ 0, %20 ], [ 0, %12 ], [ 0, %8 ], [ 0, %2 ], [ 0, %74 ], [ 1, %69 ], [ %91, %80 ], [ 0, %56 ], [ 0, %60 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret i8 %93
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @remove_forwarder_block(ptr noundef %0) unnamed_addr #0 !prof !447 !PGOFuncName !448 {
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
  %11 = load ptr, ptr %10, align 8, !tbaa !417
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %159, label %13, !prof !449

13:                                               ; preds = %1
  %14 = tail call ptr @first_stmt(ptr noundef %11) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16, !prof !450

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %14) #12, !range !317
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %30, !prof !451

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @gimple_label_label(ptr noundef nonnull %14) #12
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %20, i64 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 256
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %159, !prof !452

25:                                               ; preds = %19
  %26 = tail call fastcc ptr @gimple_label_label(ptr noundef nonnull %14) #12
  %27 = getelementptr inbounds %struct.tree_label_decl, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !287
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %159, !prof !452

30:                                               ; preds = %25, %16, %13
  %31 = tail call fastcc zeroext i8 @has_abnormal_incoming_edge_p(ptr noundef %0) #12, !range !284
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33, !prof !453

33:                                               ; preds = %30
  %34 = tail call fastcc zeroext i8 @has_abnormal_incoming_edge_p(ptr noundef %11) #12, !range !284
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %159

36:                                               ; preds = %33
  %37 = tail call fastcc ptr @phi_nodes(ptr noundef %11) #12
  %38 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %37) #12, !range !284
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %159, label %40

40:                                               ; preds = %36, %30
  %41 = tail call fastcc ptr @phi_nodes(ptr noundef %11) #12
  %42 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %41) #12, !range !284
  %43 = icmp eq i8 %42, 0
  %44 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #12
  br i1 %43, label %45, label %62, !prof !454

45:                                               ; preds = %40
  store i32 0, ptr %3, align 8, !tbaa.struct !377
  %46 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %44, ptr %46, align 8, !tbaa.struct !378
  %47 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %44, ptr noundef nonnull %2) #12, !range !284
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %62, label %49, !prof !455

49:                                               ; preds = %45, %57
  %50 = load ptr, ptr %2, align 8, !tbaa !276
  %51 = load ptr, ptr %50, align 8, !tbaa !430
  %52 = tail call ptr @find_edge(ptr noundef %51, ptr noundef %11) #13
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54, !prof !456

54:                                               ; preds = %49
  %55 = tail call fastcc zeroext i8 @phi_alternatives_equal(ptr noundef %11, ptr noundef %9, ptr noundef nonnull %52) #12
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %159, label %57, !prof !457

57:                                               ; preds = %54, %49
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %58 = load i32, ptr %3, align 8
  %59 = load ptr, ptr %46, align 8
  %60 = call fastcc zeroext i8 @ei_cond(i32 %58, ptr %59, ptr noundef nonnull %2) #12, !range !284
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %49, !prof !458, !llvm.loop !459

62:                                               ; preds = %57, %40, %45
  %63 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %11) #12, !range !284
  store i32 0, ptr %3, align 8, !tbaa.struct !377
  %64 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %44, ptr %64, align 8, !tbaa.struct !378
  %65 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %44) #12
  store ptr %65, ptr %2, align 8, !tbaa !276
  %66 = icmp eq ptr %65, null
  br i1 %66, label %102, label %67, !prof !460

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 6
  br label %69

69:                                               ; preds = %67, %98
  %70 = phi ptr [ %65, %67 ], [ %99, %98 ]
  %71 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !276
  %72 = load ptr, ptr %70, align 8, !tbaa !430
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !350
  %75 = call zeroext i8 @bitmap_set_bit(ptr noundef %71, i32 noundef %74) #13
  %76 = getelementptr inbounds %struct.edge_def, ptr %70, i64 0, i32 7
  %77 = load i32, ptr %76, align 8, !tbaa !380
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80, !prof !461

80:                                               ; preds = %69
  %81 = call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %70, ptr noundef %11) #13
  br label %84

82:                                               ; preds = %69
  %83 = call ptr @redirect_edge_and_branch(ptr noundef nonnull %70, ptr noundef %11) #13
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi ptr [ %81, %80 ], [ %83, %82 ]
  %86 = icmp eq ptr %85, %70
  br i1 %86, label %87, label %98, !prof !462

87:                                               ; preds = %84
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %11) #13
  %88 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !284
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %98, !prof !463

90:                                               ; preds = %87, %90
  %91 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12
  %92 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %91, ptr noundef %9) #12
  %93 = load i32, ptr %68, align 4, !tbaa !315
  %94 = zext i32 %93 to i64
  %95 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %91, i64 noundef %94) #12
  call void @add_phi_arg(ptr noundef %91, ptr noundef %95, ptr noundef nonnull %70, i32 noundef %92) #13
  call fastcc void @gsi_next(ptr noundef nonnull %4) #12
  %96 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !284
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %90, label %98, !prof !464, !llvm.loop !465

98:                                               ; preds = %90, %87, %84
  %99 = call fastcc ptr @ei_safe_edge(i32 0, ptr %44) #12
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %69, !prof !466, !llvm.loop !467

101:                                              ; preds = %98
  store ptr %99, ptr %2, align 1, !tbaa !276
  br label %102

102:                                              ; preds = %101, %62
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %11) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !468
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  %103 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !284
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %131, !prof !469

105:                                              ; preds = %102, %128
  %106 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12
  %107 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %106) #12, !range !284
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %131, !prof !470

109:                                              ; preds = %105
  %110 = call fastcc ptr @gimple_label_label(ptr noundef %106) #12
  %111 = getelementptr inbounds %struct.tree_label_decl, ptr %110, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !287
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %126, !prof !470

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.tree_decl_common, ptr %110, i64 0, i32 2
  %116 = load i64, ptr %115, align 8
  %117 = and i64 %116, 256
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %126, !prof !470

119:                                              ; preds = %114
  %120 = load i64, ptr %110, align 8
  %121 = and i64 %120, 65536
  %122 = icmp ne i64 %121, 0
  %123 = and i64 %116, 4096
  %124 = icmp eq i64 %123, 0
  %125 = or i1 %124, %122
  br i1 %125, label %126, label %127, !prof !471

126:                                              ; preds = %119, %114, %109
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 0) #13
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %106, i32 noundef 1) #13
  br label %128

127:                                              ; preds = %119
  call fastcc void @gsi_next(ptr noundef nonnull %4) #12
  br label %128

128:                                              ; preds = %126, %127
  %129 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !284
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %105, label %131, !prof !472

131:                                              ; preds = %128, %105, %102
  %132 = icmp eq i8 %63, 0
  br i1 %132, label %143, label %133, !prof !473

133:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %11) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !468
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !468
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  %134 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !284
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %143, !prof !474

136:                                              ; preds = %133, %140
  %137 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12
  %138 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %137) #12, !range !284
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 0) #13
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %137, i32 noundef 1) #13
  %141 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !284
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %136, label %143, !prof !475

143:                                              ; preds = %140, %136, %133, %131
  %144 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !276
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %146 = load i32, ptr %145, align 8, !tbaa !350
  %147 = call zeroext i8 @bitmap_set_bit(ptr noundef %144, i32 noundef %146) #13
  %148 = call zeroext i8 @dom_info_available_p(i32 noundef 1) #13
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %158, label %150, !prof !476

150:                                              ; preds = %143
  %151 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %0) #13
  %152 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %11) #13
  %153 = icmp eq ptr %152, %0
  br i1 %153, label %156, label %154, !prof !477

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
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !478 !PGOFuncName !479 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !354
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #12
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @can_merge_blocks_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !480 !PGOFuncName !481 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !417
  ret ptr %4
}

; Function Attrs: optsize
declare void @merge_blocks(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !482 !PGOFuncName !483 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !484 !PGOFuncName !485 {
  %2 = load ptr, ptr %0, align 8, !tbaa !413
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #12
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !486 !PGOFuncName !487 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #12
  %3 = load ptr, ptr %2, align 8, !tbaa !430
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !486 !PGOFuncName !488 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #12, !range !284
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 655, ptr noundef nonnull @.str.2) #13
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !413
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #12
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !489 !PGOFuncName !490 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #12
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #12
  store ptr %4, ptr %0, align 8, !tbaa !491
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !493
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !494
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !495 !PGOFuncName !496 {
  %2 = load ptr, ptr %0, align 8, !tbaa !491
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 !prof !497 !PGOFuncName !498 {
  %2 = load ptr, ptr %0, align 8, !tbaa !491
  %3 = load ptr, ptr %2, align 8, !tbaa !499
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cleanup_control_expr_graph(ptr noundef %0, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) unnamed_addr #0 !prof !501 !PGOFuncName !502 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12
  %5 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #12, !range !284
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %144, !prof !503

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  tail call void @fold_defer_overflow_warnings() #13
  %8 = tail call fastcc i32 @gimple_location(ptr noundef %4) #12
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %4) #12, !range !317
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %87 [
    i8 1, label %11
    i8 5, label %85
  ], !prof !504

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %4) #12
  %13 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %4) #12
  %14 = load i64, ptr %12, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %46, !prof !505

17:                                               ; preds = %11
  %18 = tail call zeroext i8 @name_registered_for_update_p(ptr noundef nonnull %12) #13
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %46, !prof !506

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !287
  %23 = tail call fastcc i32 @gimple_code(ptr noundef %22) #12, !range !317
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %46, !prof !507

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %22) #12
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %46, !prof !508

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
  br i1 %50, label %51, label %80, !prof !509

51:                                               ; preds = %46
  %52 = tail call zeroext i8 @name_registered_for_update_p(ptr noundef nonnull %13) #13
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.tree_ssa_name, ptr %13, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !287
  %57 = tail call fastcc i32 @gimple_code(ptr noundef %56) #12, !range !317
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
  %82 = tail call fastcc i32 @gimple_cond_code(ptr noundef %4) #12, !range !510
  %83 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !276
  %84 = tail call ptr @fold_binary_loc(i32 noundef %8, i32 noundef %82, ptr noundef %83, ptr noundef %47, ptr noundef %81) #13
  br label %87

85:                                               ; preds = %7
  %86 = tail call fastcc ptr @gimple_switch_index(ptr noundef %4) #12
  br label %87

87:                                               ; preds = %7, %85, %80
  %88 = phi ptr [ %86, %85 ], [ %84, %80 ], [ null, %7 ]
  %89 = tail call ptr @find_taken_edge(ptr noundef %0, ptr noundef %88) #13
  %90 = icmp eq ptr %89, null
  br i1 %90, label %143, label %91, !prof !511

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %93 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %92) #12
  store i32 0, ptr %3, align 8, !tbaa.struct !377
  %94 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %93, ptr %94, align 8, !tbaa.struct !378
  %95 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %93) #12
  %96 = icmp eq ptr %95, null
  br i1 %96, label %134, label %97, !prof !512

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
  br i1 %106, label %114, label %109, !prof !512

107:                                              ; preds = %121
  %108 = icmp eq ptr %130, %89
  br i1 %108, label %114, label %109, !prof !513, !llvm.loop !514

109:                                              ; preds = %100, %107
  %110 = phi i8 [ 1, %107 ], [ %105, %100 ]
  %111 = phi ptr [ %130, %107 ], [ %103, %100 ]
  %112 = icmp eq i8 %110, 0
  br i1 %112, label %113, label %121, !prof !515

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
  br i1 %120, label %132, label %100, !prof !516, !llvm.loop !514

121:                                              ; preds = %109, %113
  %122 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 8
  %123 = load i32, ptr %122, align 4, !tbaa !517
  %124 = load i32, ptr %98, align 4, !tbaa !517
  %125 = add nsw i32 %124, %123
  store i32 %125, ptr %98, align 4, !tbaa !517
  %126 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 9
  %127 = load i64, ptr %126, align 8, !tbaa !518
  %128 = load i64, ptr %99, align 8, !tbaa !518
  %129 = add nsw i64 %128, %127
  store i64 %129, ptr %99, align 8, !tbaa !518
  tail call void @remove_edge_and_dominated_blocks(ptr noundef nonnull %111) #13
  %130 = tail call fastcc ptr @ei_safe_edge(i32 %102, ptr %101) #12
  %131 = icmp eq ptr %130, null
  br i1 %131, label %136, label %107, !prof !516, !llvm.loop !514

132:                                              ; preds = %114
  %133 = icmp eq i8 %116, 0
  br i1 %133, label %134, label %136, !prof !519

134:                                              ; preds = %91, %132
  %135 = phi i8 [ %115, %132 ], [ 0, %91 ]
  tail call void @fold_undefer_and_ignore_overflow_warnings() #13
  br label %136

136:                                              ; preds = %121, %134, %132
  %137 = phi i8 [ %135, %134 ], [ %115, %132 ], [ 1, %121 ]
  %138 = getelementptr inbounds %struct.edge_def, ptr %89, i64 0, i32 8
  %139 = load i32, ptr %138, align 4, !tbaa !517
  %140 = icmp sgt i32 %139, 10000
  br i1 %140, label %141, label %142, !prof !520

141:                                              ; preds = %136
  store i32 10000, ptr %138, align 4, !tbaa !517
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
  %149 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !276
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %151 = load i32, ptr %150, align 8, !tbaa !350
  %152 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %149, i32 noundef %151) #13
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #13
  %153 = getelementptr inbounds %struct.edge_def, ptr %148, i64 0, i32 7
  store i32 1, ptr %153, align 8, !tbaa !380
  br label %154

154:                                              ; preds = %143, %146
  %155 = phi i8 [ %147, %146 ], [ 0, %143 ]
  ret i8 %155
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_goto_dest(ptr noundef %0) unnamed_addr #0 !prof !486 !PGOFuncName !521 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @label_to_block_fn(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !522 !PGOFuncName !523 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #12, !range !284
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !524

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
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !525 !PGOFuncName !526 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !317
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !527 !PGOFuncName !528 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !529
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !530

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !287
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !531

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !532
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #6 !prof !489 !PGOFuncName !534 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !535

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !536
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare void @fold_defer_overflow_warnings() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !501 !PGOFuncName !538 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !287
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !539 !PGOFuncName !540 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !539 !PGOFuncName !541 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #12
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @name_registered_for_update_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !542 !PGOFuncName !543 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !287
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !544 !PGOFuncName !545 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !546
  %4 = load ptr, ptr %3, align 8, !tbaa !276
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0) unnamed_addr #0 !prof !486 !PGOFuncName !548 {
  %2 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !539 !PGOFuncName !549 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #0 !prof !550 !PGOFuncName !551 {
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
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !552 !PGOFuncName !553 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #12, !range !284
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !554

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #13
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !354
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #12
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !555 !PGOFuncName !556 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #12, !range !284
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !557

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #12
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !276
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !555 !PGOFuncName !558 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !317
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !555 !PGOFuncName !559 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #12
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !560
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !557

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !555 !PGOFuncName !561 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !317
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #12
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #3 !prof !555 !PGOFuncName !562 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !360
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !563 !PGOFuncName !564 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !287
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !565

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #13
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #6 !prof !566 !PGOFuncName !567 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !568

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !569
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !566 !PGOFuncName !570 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !529
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !571

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 510, ptr noundef nonnull @.str.2) #13
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !287
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !572

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !573
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_label_label(ptr noundef %0) unnamed_addr #0 !prof !574 !PGOFuncName !575 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #9 !prof !576 !PGOFuncName !577 {
  %2 = load ptr, ptr %0, align 8, !tbaa !491
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !578
  store ptr %4, ptr %0, align 8, !tbaa !491
  ret void
}

; Function Attrs: optsize
declare ptr @first_stmt(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @has_abnormal_incoming_edge_p(ptr noundef %0) unnamed_addr #0 !prof !579 !PGOFuncName !580 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #12
  store i32 0, ptr %3, align 8, !tbaa.struct !377
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !378
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #12, !range !284
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8, !prof !581

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !276
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !380
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !582

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #12, !range !284
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !prof !583, !llvm.loop !584

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret i8 %20
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @phi_alternatives_equal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !585 !PGOFuncName !586 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !315
  %7 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !315
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #13
  %9 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !284
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %29, !prof !587

11:                                               ; preds = %3
  %12 = sext i32 %6 to i64
  %13 = sext i32 %8 to i64
  br label %14

14:                                               ; preds = %11, %26
  %15 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12
  %16 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %15, i64 noundef %12) #12
  %17 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %15, i64 noundef %13) #12
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %20, !prof !588

19:                                               ; preds = %14
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 367, ptr noundef nonnull @.str.2) #13
  br label %20

20:                                               ; preds = %14, %19
  %21 = icmp eq ptr %17, null
  br i1 %21, label %22, label %23, !prof !588

22:                                               ; preds = %20
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 368, ptr noundef nonnull @.str.2) #13
  br label %23

23:                                               ; preds = %20, %22
  %24 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %16, ptr noundef %17) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  call fastcc void @gsi_next(ptr noundef nonnull %4) #12
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !284
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %14, label %29, !prof !589, !llvm.loop !590

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
define internal fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !591 !PGOFuncName !592 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !315
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #12
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !593
  ret i32 %7
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !544 !PGOFuncName !595 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #12
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #9 !prof !596 !PGOFuncName !597 {
  %2 = load ptr, ptr %0, align 8, !tbaa !491
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !598
  store ptr %4, ptr %0, align 8, !tbaa !491
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !599 !PGOFuncName !600 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #12
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #12
  store ptr %4, ptr %0, align 8, !tbaa !491
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !493
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !494
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !601 !PGOFuncName !602 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !317
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 !prof !603 !PGOFuncName !604 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #12
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #12, !range !284
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12, !prof !605

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #12
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #12, !range !317
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12, !prof !606

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #12
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #12, !range !284
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !prof !607, !llvm.loop !608

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
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 !prof !599 !PGOFuncName !609 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !610

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !569
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
define internal fastcc void @loops_state_clear() unnamed_addr #5 !prof !297 !PGOFuncName !611 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !276
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !280
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !299

5:                                                ; preds = %0
  %6 = load i32, ptr %3, align 8, !tbaa !295
  %7 = and i32 %6, -65
  store i32 %7, ptr %3, align 8, !tbaa !295
  br label %8

8:                                                ; preds = %0, %5
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !486 !PGOFuncName !612 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !287
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #0 !prof !486 !PGOFuncName !613 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !614
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !360
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
define internal fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !486 !PGOFuncName !615 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !614
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %22, %13, %3
  store ptr null, ptr %1, align 8, !tbaa !276
  store ptr null, ptr %2, align 8, !tbaa !276
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !614
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !287
  %16 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %15) #12, !range !284
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8

18:                                               ; preds = %13
  store ptr %6, ptr %1, align 8, !tbaa !276
  %19 = load ptr, ptr %5, align 8, !tbaa !614
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !287
  store ptr %21, ptr %2, align 8, !tbaa !276
  br label %27

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !360
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
define internal fastcc void @remove_forwarder_block_with_phi(ptr noundef %0) unnamed_addr #0 !prof !616 !PGOFuncName !617 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !417
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %94, label %8, !prof !618

8:                                                ; preds = %1
  %9 = tail call ptr @first_stmt(ptr noundef %6) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11, !prof !618

11:                                               ; preds = %8
  %12 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %9) #12, !range !317
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %20, !prof !618

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @gimple_label_label(ptr noundef nonnull %9) #12
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 256
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %94

20:                                               ; preds = %14, %11, %8
  %21 = load ptr, ptr %0, align 8, !tbaa !413
  %22 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %21) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %86, label %24, !prof !619

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 6
  br label %26

26:                                               ; preds = %24, %81
  %27 = phi ptr [ %21, %24 ], [ %83, %81 ]
  %28 = call fastcc ptr @VEC_edge_base_index(ptr noundef %27, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %29 = load ptr, ptr %28, align 8, !tbaa !430
  %30 = call ptr @find_edge(ptr noundef %29, ptr noundef %6) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32, !prof !620

32:                                               ; preds = %26
  %33 = call fastcc zeroext i8 @phi_alternatives_equal(ptr noundef %6, ptr noundef nonnull %30, ptr noundef %4) #12
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35, !prof !314

35:                                               ; preds = %32
  %36 = call ptr @redirect_edge_and_branch(ptr noundef nonnull %28, ptr noundef %6) #13
  br label %81, !llvm.loop !621

37:                                               ; preds = %32
  %38 = call ptr @split_edge(ptr noundef nonnull %28) #13
  %39 = call fastcc ptr @single_succ_edge(ptr noundef %38) #12
  br label %40

40:                                               ; preds = %37, %26
  %41 = phi ptr [ %39, %37 ], [ %28, %26 ]
  %42 = call ptr @redirect_edge_and_branch(ptr noundef %41, ptr noundef %6) #13
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %45, label %44, !prof !622

44:                                               ; preds = %40
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 821, ptr noundef nonnull @.str.2) #13
  br label %45

45:                                               ; preds = %40, %44
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %6) #13
  %46 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12, !range !284
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %81, !prof !623

48:                                               ; preds = %45, %76
  %49 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12
  %50 = load i32, ptr %25, align 4, !tbaa !315
  %51 = zext i32 %50 to i64
  %52 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %49, i64 noundef %51) #12
  %53 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %49, ptr noundef %4) #12
  %54 = load i64, ptr %52, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 141
  br i1 %56, label %57, label %76, !prof !624

57:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %58 = call ptr @redirect_edge_var_map_vector(ptr noundef %41) #13
  %59 = call fastcc i32 @VEC_edge_var_map_base_iterate(ptr noundef %58, i32 noundef 0, ptr noundef nonnull %3) #12, !range !625
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %65, !prof !329

61:                                               ; preds = %65
  %62 = add i32 %66, 1
  %63 = call fastcc i32 @VEC_edge_var_map_base_iterate(ptr noundef %58, i32 noundef %62, ptr noundef nonnull %3) #12, !range !625
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65, !prof !626, !llvm.loop !627

65:                                               ; preds = %57, %61
  %66 = phi i32 [ %62, %61 ], [ 0, %57 ]
  %67 = load ptr, ptr %3, align 8, !tbaa !276
  %68 = call fastcc ptr @redirect_edge_var_map_result(ptr noundef %67) #12
  %69 = icmp eq ptr %52, %68
  br i1 %69, label %70, label %61, !prof !622

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
  %79 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12, !range !284
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %48, label %81, !prof !628, !llvm.loop !629

81:                                               ; preds = %76, %45, %35
  %82 = phi ptr [ %36, %35 ], [ %41, %45 ], [ %41, %76 ]
  call void @redirect_edge_var_map_clear(ptr noundef %82) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  %83 = load ptr, ptr %0, align 8, !tbaa !413
  %84 = call fastcc i32 @VEC_edge_base_length(ptr noundef %83) #12
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %26, !prof !630

86:                                               ; preds = %81, %20
  %87 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %0) #13
  %88 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %6) #13
  %89 = icmp eq ptr %88, %0
  br i1 %89, label %92, label %90, !prof !618

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
define internal fastcc noundef i32 @VEC_edge_var_map_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !631 !PGOFuncName !632 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5, !prof !633

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !634
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11, !prof !622

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !276
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @redirect_edge_var_map_result(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !631 !PGOFuncName !636 {
  %2 = load ptr, ptr %0, align 8, !tbaa !637
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @redirect_edge_var_map_def(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !631 !PGOFuncName !639 {
  %2 = getelementptr inbounds %struct._edge_var_map, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !640
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @redirect_edge_var_map_location(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !631 !PGOFuncName !641 {
  %2 = getelementptr inbounds %struct._edge_var_map, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !642
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!274}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273}
!35 = !{ptr @cleanup_tree_cfg, ptr @cleanup_tree_cfg_noloop, i64 789}
!36 = !{ptr @cleanup_tree_cfg, ptr @loops_state_satisfies_p, i64 82}
!37 = !{ptr @cleanup_tree_cfg, ptr @repair_loop_structures, i64 38}
!38 = !{ptr @cleanup_tree_cfg_noloop, ptr @timevar_push_1, i64 1}
!39 = !{ptr @cleanup_tree_cfg_noloop, ptr @dom_info_available_p, i64 1578}
!40 = !{ptr @cleanup_tree_cfg_noloop, ptr @delete_unreachable_blocks, i64 186}
!41 = !{ptr @cleanup_tree_cfg_noloop, ptr @calculate_dominance_info, i64 186}
!42 = !{ptr @cleanup_tree_cfg_noloop, ptr @cleanup_tree_cfg_1, i64 789}
!43 = !{ptr @cleanup_tree_cfg_noloop, ptr @fancy_abort, i64 1}
!44 = !{ptr @cleanup_tree_cfg_noloop, ptr @compact_blocks, i64 789}
!45 = !{ptr @cleanup_tree_cfg_noloop, ptr @timevar_pop_1, i64 1}
!46 = !{ptr @cleanup_tree_cfg_noloop, ptr @loops_state_set, i64 39}
!47 = !{ptr @repair_loop_structures, ptr @bitmap_obstack_alloc_stat, i64 38}
!48 = !{ptr @repair_loop_structures, ptr @fix_loop_structure, i64 38}
!49 = !{ptr @repair_loop_structures, ptr @loops_state_satisfies_p, i64 38}
!50 = !{ptr @repair_loop_structures, ptr @rewrite_into_loop_closed_ssa, i64 37}
!51 = !{ptr @repair_loop_structures, ptr @bitmap_obstack_free, i64 38}
!52 = !{ptr @repair_loop_structures, ptr @scev_reset, i64 38}
!53 = !{ptr @repair_loop_structures, ptr @loops_state_clear, i64 38}
!54 = !{ptr @merge_phi_nodes, ptr @xmalloc, i64 78}
!55 = !{ptr @merge_phi_nodes, ptr @calculate_dominance_info, i64 78}
!56 = !{ptr @merge_phi_nodes, ptr @tree_forwarder_block_p, i64 289515}
!57 = !{ptr @merge_phi_nodes, ptr @single_succ, i64 12}
!58 = !{ptr @merge_phi_nodes, ptr @phi_nodes, i64 12}
!59 = !{ptr @merge_phi_nodes, ptr @gimple_seq_empty_p, i64 12}
!60 = !{ptr @merge_phi_nodes, ptr @has_abnormal_incoming_edge_p, i64 11}
!61 = !{ptr @merge_phi_nodes, ptr @dominated_by_p, i64 10}
!62 = !{ptr @merge_phi_nodes, ptr @single_succ_edge, i64 1}
!63 = !{ptr @merge_phi_nodes, ptr @gsi_start_phis, i64 1}
!64 = !{ptr @merge_phi_nodes, ptr @gsi_end_p, i64 5}
!65 = !{ptr @merge_phi_nodes, ptr @gsi_stmt, i64 4}
!66 = !{ptr @merge_phi_nodes, ptr @gimple_phi_result, i64 4}
!67 = !{ptr @merge_phi_nodes, ptr @has_zero_uses, i64 4}
!68 = !{ptr @merge_phi_nodes, ptr @single_imm_use, i64 1}
!69 = !{ptr @merge_phi_nodes, ptr @gimple_code, i64 1}
!70 = !{ptr @merge_phi_nodes, ptr @gimple_bb, i64 1}
!71 = !{ptr @merge_phi_nodes, ptr @gimple_phi_arg_def, i64 1}
!72 = !{ptr @merge_phi_nodes, ptr @gsi_next, i64 4}
!73 = !{ptr @merge_phi_nodes, ptr @remove_forwarder_block_with_phi, i64 12}
!74 = !{ptr @merge_phi_nodes, ptr @free, i64 78}
!75 = !{ptr @cleanup_tree_cfg_1, ptr @split_bbs_on_noreturn_calls, i64 589800}
!76 = !{ptr @cleanup_tree_cfg_1, ptr @bitmap_obstack_alloc_stat, i64 789}
!77 = !{ptr @cleanup_tree_cfg_1, ptr @start_recording_case_labels, i64 789}
!78 = !{ptr @cleanup_tree_cfg_1, ptr @VEC_basic_block_base_index, i64 4515575}
!79 = !{ptr @cleanup_tree_cfg_1, ptr @cleanup_tree_cfg_bb, i64 4497676}
!80 = !{ptr @cleanup_tree_cfg_1, ptr @bitmap_first_set_bit, i64 604241}
!81 = !{ptr @cleanup_tree_cfg_1, ptr @bitmap_clear_bit, i64 604241}
!82 = !{ptr @cleanup_tree_cfg_1, ptr @end_recording_case_labels, i64 789}
!83 = !{ptr @cleanup_tree_cfg_1, ptr @bitmap_obstack_free, i64 789}
!84 = !{ptr @split_bbs_on_noreturn_calls, ptr @VEC_gimple_base_length, i64 278391}
!85 = !{ptr @split_bbs_on_noreturn_calls, ptr @VEC_gimple_base_pop, i64 68}
!86 = !{ptr @split_bbs_on_noreturn_calls, ptr @gimple_bb, i64 68}
!87 = !{ptr @split_bbs_on_noreturn_calls, ptr @VEC_basic_block_base_index, i64 65}
!88 = !{ptr @split_bbs_on_noreturn_calls, ptr @last_stmt, i64 64}
!89 = !{ptr @split_bbs_on_noreturn_calls, ptr @gimple_call_noreturn_p, i64 1}
!90 = !{ptr @cleanup_tree_cfg_bb, ptr @cleanup_omp_return, i64 4191597}
!91 = !{ptr @cleanup_tree_cfg_bb, ptr @cleanup_control_flow_bb, i64 4191596}
!92 = !{ptr @cleanup_tree_cfg_bb, ptr @tree_forwarder_block_p, i64 4191595}
!93 = !{ptr @cleanup_tree_cfg_bb, ptr @remove_forwarder_block, i64 317116}
!94 = !{ptr @cleanup_tree_cfg_bb, ptr @single_succ_p, i64 3925017}
!95 = !{ptr @cleanup_tree_cfg_bb, ptr @single_succ, i64 403234}
!96 = !{ptr @cleanup_tree_cfg_bb, ptr @can_merge_blocks_p, i64 401813}
!97 = !{ptr @cleanup_tree_cfg_bb, ptr @merge_blocks, i64 1421}
!98 = !{ptr @gimple_call_noreturn_p, ptr @gimple_call_flags, i64 5030}
!99 = !{ptr @remove_fallthru_edge, ptr @ei_start_1, i64 1323}
!100 = !{ptr @remove_fallthru_edge, ptr @ei_cond, i64 1324}
!101 = !{ptr @remove_fallthru_edge, ptr @ei_next, i64 1}
!102 = !{ptr @ei_cond, ptr @ei_end_p, i64 2452185}
!103 = !{ptr @ei_cond, ptr @ei_edge, i64 1395782}
!104 = !{ptr @ei_next, ptr @ei_container, i64 2691829}
!105 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 1345915}
!106 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!107 = !{ptr @ei_end_p, ptr @ei_container, i64 6064238}
!108 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 3032250}
!109 = !{ptr @ei_edge, ptr @ei_container, i64 3417121}
!110 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 1708561}
!111 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!112 = !{ptr @cleanup_omp_return, ptr @last_stmt, i64 4191598}
!113 = !{ptr @cleanup_omp_return, ptr @gimple_code, i64 3756107}
!114 = !{ptr @cleanup_omp_return, ptr @single_pred_p, i64 1}
!115 = !{ptr @cleanup_omp_return, ptr @single_pred, i64 1}
!116 = !{ptr @cleanup_control_flow_bb, ptr @gimple_purge_dead_eh_edges, i64 4191597}
!117 = !{ptr @cleanup_control_flow_bb, ptr @gsi_last_bb, i64 4191597}
!118 = !{ptr @cleanup_control_flow_bb, ptr @gsi_end_p, i64 4191597}
!119 = !{ptr @cleanup_control_flow_bb, ptr @gsi_stmt, i64 3756107}
!120 = !{ptr @cleanup_control_flow_bb, ptr @gimple_code, i64 3756107}
!121 = !{ptr @cleanup_control_flow_bb, ptr @cleanup_control_expr_graph, i64 3522589}
!122 = !{ptr @cleanup_control_flow_bb, ptr @gimple_goto_dest, i64 1}
!123 = !{ptr @cleanup_control_flow_bb, ptr @remove_edge_and_dominated_blocks, i64 3}
!124 = !{ptr @cleanup_control_flow_bb, ptr @ei_next, i64 2}
!125 = !{ptr @cleanup_control_flow_bb, ptr @ei_safe_edge, i64 5}
!126 = !{ptr @cleanup_control_flow_bb, ptr @is_gimple_call, i64 233518}
!127 = !{ptr @cleanup_control_flow_bb, ptr @gimple_call_noreturn_p, i64 5031}
!128 = !{ptr @cleanup_control_flow_bb, ptr @remove_fallthru_edge, i64 1324}
!129 = !{ptr @tree_forwarder_block_p, ptr @single_succ_p, i64 4484823}
!130 = !{ptr @tree_forwarder_block_p, ptr @phi_nodes, i64 674828}
!131 = !{ptr @tree_forwarder_block_p, ptr @gimple_seq_empty_p, i64 674828}
!132 = !{ptr @tree_forwarder_block_p, ptr @single_succ, i64 993061}
!133 = !{ptr @tree_forwarder_block_p, ptr @single_succ_edge, i64 496440}
!134 = !{ptr @tree_forwarder_block_p, ptr @ei_start_1, i64 496439}
!135 = !{ptr @tree_forwarder_block_p, ptr @ei_cond, i64 1141427}
!136 = !{ptr @tree_forwarder_block_p, ptr @ei_next, i64 644988}
!137 = !{ptr @tree_forwarder_block_p, ptr @gsi_last_bb, i64 496399}
!138 = !{ptr @tree_forwarder_block_p, ptr @gsi_end_p, i64 500118}
!139 = !{ptr @tree_forwarder_block_p, ptr @gsi_stmt, i64 284343}
!140 = !{ptr @tree_forwarder_block_p, ptr @gimple_code, i64 284343}
!141 = !{ptr @tree_forwarder_block_p, ptr @gimple_label_label, i64 3719}
!142 = !{ptr @tree_forwarder_block_p, ptr @gsi_prev, i64 3719}
!143 = !{ptr @tree_forwarder_block_p, ptr @VEC_edge_base_index, i64 131217}
!144 = !{ptr @remove_forwarder_block, ptr @single_succ_edge, i64 317115}
!145 = !{ptr @remove_forwarder_block, ptr @first_stmt, i64 317114}
!146 = !{ptr @remove_forwarder_block, ptr @gimple_code, i64 293340}
!147 = !{ptr @remove_forwarder_block, ptr @gimple_label_label, i64 23838}
!148 = !{ptr @remove_forwarder_block, ptr @has_abnormal_incoming_edge_p, i64 317113}
!149 = !{ptr @remove_forwarder_block, ptr @phi_nodes, i64 317111}
!150 = !{ptr @remove_forwarder_block, ptr @gimple_seq_empty_p, i64 317111}
!151 = !{ptr @remove_forwarder_block, ptr @ei_start_1, i64 317111}
!152 = !{ptr @remove_forwarder_block, ptr @ei_cond, i64 630301}
!153 = !{ptr @remove_forwarder_block, ptr @find_edge, i64 395648}
!154 = !{ptr @remove_forwarder_block, ptr @phi_alternatives_equal, i64 57916}
!155 = !{ptr @remove_forwarder_block, ptr @ei_next, i64 338219}
!156 = !{ptr @remove_forwarder_block, ptr @single_pred_p, i64 259683}
!157 = !{ptr @remove_forwarder_block, ptr @ei_safe_edge, i64 562993}
!158 = !{ptr @remove_forwarder_block, ptr @bitmap_set_bit, i64 562993}
!159 = !{ptr @remove_forwarder_block, ptr @redirect_edge_succ_nodup, i64 1}
!160 = !{ptr @remove_forwarder_block, ptr @redirect_edge_and_branch, i64 303309}
!161 = !{ptr @remove_forwarder_block, ptr @gsi_start_phis, i64 302703}
!162 = !{ptr @remove_forwarder_block, ptr @gsi_end_p, i64 835253}
!163 = !{ptr @remove_forwarder_block, ptr @gsi_stmt, i64 267734}
!164 = !{ptr @remove_forwarder_block, ptr @gimple_phi_arg_location_from_edge, i64 267663}
!165 = !{ptr @remove_forwarder_block, ptr @gimple_phi_arg_def, i64 267663}
!166 = !{ptr @remove_forwarder_block, ptr @add_phi_arg, i64 267663}
!167 = !{ptr @remove_forwarder_block, ptr @gsi_next, i64 267728}
!168 = !{ptr @remove_forwarder_block, ptr @gsi_start_bb, i64 519366}
!169 = !{ptr @remove_forwarder_block, ptr @is_gimple_debug, i64 71}
!170 = !{ptr @remove_forwarder_block, ptr @gsi_remove, i64 5}
!171 = !{ptr @remove_forwarder_block, ptr @gsi_insert_before, i64 5}
!172 = !{ptr @remove_forwarder_block, ptr @gsi_after_labels, i64 10268}
!173 = !{ptr @remove_forwarder_block, ptr @dom_info_available_p, i64 259683}
!174 = !{ptr @remove_forwarder_block, ptr @get_immediate_dominator, i64 519364}
!175 = !{ptr @remove_forwarder_block, ptr @nearest_common_dominator, i64 254548}
!176 = !{ptr @remove_forwarder_block, ptr @set_immediate_dominator, i64 259682}
!177 = !{ptr @remove_forwarder_block, ptr @delete_basic_block, i64 259683}
!178 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 14142315}
!179 = !{ptr @single_succ, ptr @single_succ_edge, i64 1396305}
!180 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 266579}
!181 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 4688001}
!182 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 4688001}
!183 = !{ptr @cleanup_control_expr_graph, ptr @gsi_stmt, i64 3522590}
!184 = !{ptr @cleanup_control_expr_graph, ptr @single_succ_p, i64 3522590}
!185 = !{ptr @cleanup_control_expr_graph, ptr @fold_defer_overflow_warnings, i64 3522589}
!186 = !{ptr @cleanup_control_expr_graph, ptr @gimple_location, i64 3522589}
!187 = !{ptr @cleanup_control_expr_graph, ptr @gimple_code, i64 6719297}
!188 = !{ptr @cleanup_control_expr_graph, ptr @gimple_cond_lhs, i64 3521671}
!189 = !{ptr @cleanup_control_expr_graph, ptr @gimple_cond_rhs, i64 3521671}
!190 = !{ptr @cleanup_control_expr_graph, ptr @name_registered_for_update_p, i64 3233983}
!191 = !{ptr @cleanup_control_expr_graph, ptr @gimple_phi_num_args, i64 22129}
!192 = !{ptr @cleanup_control_expr_graph, ptr @gimple_bb, i64 2}
!193 = !{ptr @cleanup_control_expr_graph, ptr @gimple_cond_code, i64 3521671}
!194 = !{ptr @cleanup_control_expr_graph, ptr @fold_binary_loc, i64 3521671}
!195 = !{ptr @cleanup_control_expr_graph, ptr @gimple_switch_index, i64 917}
!196 = !{ptr @cleanup_control_expr_graph, ptr @find_taken_edge, i64 3522589}
!197 = !{ptr @cleanup_control_expr_graph, ptr @ei_start_1, i64 708}
!198 = !{ptr @cleanup_control_expr_graph, ptr @ei_safe_edge, i64 2123}
!199 = !{ptr @cleanup_control_expr_graph, ptr @fold_undefer_overflow_warnings, i64 941}
!200 = !{ptr @cleanup_control_expr_graph, ptr @ei_next, i64 472}
!201 = !{ptr @cleanup_control_expr_graph, ptr @remove_edge_and_dominated_blocks, i64 943}
!202 = !{ptr @cleanup_control_expr_graph, ptr @fold_undefer_and_ignore_overflow_warnings, i64 3521882}
!203 = !{ptr @cleanup_control_expr_graph, ptr @single_succ_edge, i64 1}
!204 = !{ptr @cleanup_control_expr_graph, ptr @bitmap_set_bit, i64 709}
!205 = !{ptr @cleanup_control_expr_graph, ptr @gsi_remove, i64 709}
!206 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 580065}
!207 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 312779}
!208 = !{ptr @is_gimple_call, ptr @gimple_code, i64 233518}
!209 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 3521674}
!210 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 3521674}
!211 = !{ptr @gimple_switch_index, ptr @gimple_op, i64 916}
!212 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 2209884}
!213 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!214 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 2209884}
!215 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 7070478}
!216 = !{ptr @gimple_op, ptr @gimple_ops, i64 7070477}
!217 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 7070478}
!218 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 7070478}
!219 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!220 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 7070478}
!221 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 7070478}
!222 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!223 = !{ptr @phi_nodes, ptr @fancy_abort, i64 1}
!224 = !{ptr @gimple_label_label, ptr @gimple_op, i64 26214}
!225 = !{ptr @has_abnormal_incoming_edge_p, ptr @ei_start_1, i64 317126}
!226 = !{ptr @has_abnormal_incoming_edge_p, ptr @ei_cond, i64 719750}
!227 = !{ptr @has_abnormal_incoming_edge_p, ptr @ei_next, i64 402624}
!228 = !{ptr @phi_alternatives_equal, ptr @gsi_start_phis, i64 50975}
!229 = !{ptr @phi_alternatives_equal, ptr @gsi_end_p, i64 1301921}
!230 = !{ptr @phi_alternatives_equal, ptr @gsi_stmt, i64 1291299}
!231 = !{ptr @phi_alternatives_equal, ptr @gimple_phi_arg_def, i64 2582598}
!232 = !{ptr @phi_alternatives_equal, ptr @fancy_abort, i64 50}
!233 = !{ptr @phi_alternatives_equal, ptr @operand_equal_for_phi_arg_p, i64 1291299}
!234 = !{ptr @phi_alternatives_equal, ptr @gsi_next, i64 1250946}
!235 = !{ptr @gimple_phi_arg_location_from_edge, ptr @gimple_phi_arg, i64 274816}
!236 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 376766}
!237 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 376766}
!238 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 543696}
!239 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 543696}
!240 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 71}
!241 = !{ptr @gsi_after_labels, ptr @gsi_start_bb, i64 10538}
!242 = !{ptr @gsi_after_labels, ptr @gsi_end_p, i64 10539}
!243 = !{ptr @gsi_after_labels, ptr @gsi_stmt, i64 5434}
!244 = !{ptr @gsi_after_labels, ptr @gimple_code, i64 5434}
!245 = !{ptr @gsi_after_labels, ptr @gsi_next, i64 1}
!246 = !{ptr @remove_forwarder_block_with_phi, ptr @single_succ_edge, i64 20}
!247 = !{ptr @remove_forwarder_block_with_phi, ptr @first_stmt, i64 10}
!248 = !{ptr @remove_forwarder_block_with_phi, ptr @gimple_code, i64 9}
!249 = !{ptr @remove_forwarder_block_with_phi, ptr @gimple_label_label, i64 1}
!250 = !{ptr @remove_forwarder_block_with_phi, ptr @VEC_edge_base_length, i64 29}
!251 = !{ptr @remove_forwarder_block_with_phi, ptr @VEC_edge_base_index, i64 19}
!252 = !{ptr @remove_forwarder_block_with_phi, ptr @find_edge, i64 19}
!253 = !{ptr @remove_forwarder_block_with_phi, ptr @phi_alternatives_equal, i64 9}
!254 = !{ptr @remove_forwarder_block_with_phi, ptr @redirect_edge_and_branch, i64 19}
!255 = !{ptr @remove_forwarder_block_with_phi, ptr @split_edge, i64 9}
!256 = !{ptr @remove_forwarder_block_with_phi, ptr @fancy_abort, i64 1}
!257 = !{ptr @remove_forwarder_block_with_phi, ptr @gsi_start_phis, i64 18}
!258 = !{ptr @remove_forwarder_block_with_phi, ptr @gsi_end_p, i64 53}
!259 = !{ptr @remove_forwarder_block_with_phi, ptr @gsi_stmt, i64 35}
!260 = !{ptr @remove_forwarder_block_with_phi, ptr @gimple_phi_arg_def, i64 35}
!261 = !{ptr @remove_forwarder_block_with_phi, ptr @gimple_phi_arg_location_from_edge, i64 35}
!262 = !{ptr @remove_forwarder_block_with_phi, ptr @redirect_edge_var_map_vector, i64 18}
!263 = !{ptr @remove_forwarder_block_with_phi, ptr @VEC_edge_var_map_base_iterate, i64 19}
!264 = !{ptr @remove_forwarder_block_with_phi, ptr @redirect_edge_var_map_result, i64 18}
!265 = !{ptr @remove_forwarder_block_with_phi, ptr @redirect_edge_var_map_def, i64 17}
!266 = !{ptr @remove_forwarder_block_with_phi, ptr @redirect_edge_var_map_location, i64 17}
!267 = !{ptr @remove_forwarder_block_with_phi, ptr @add_phi_arg, i64 35}
!268 = !{ptr @remove_forwarder_block_with_phi, ptr @gsi_next, i64 35}
!269 = !{ptr @remove_forwarder_block_with_phi, ptr @redirect_edge_var_map_clear, i64 19}
!270 = !{ptr @remove_forwarder_block_with_phi, ptr @get_immediate_dominator, i64 20}
!271 = !{ptr @remove_forwarder_block_with_phi, ptr @nearest_common_dominator, i64 9}
!272 = !{ptr @remove_forwarder_block_with_phi, ptr @set_immediate_dominator, i64 10}
!273 = !{ptr @remove_forwarder_block_with_phi, ptr @delete_basic_block, i64 10}
!274 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!275 = !{!"function_entry_count", i64 789}
!276 = !{!277, !277, i64 0}
!277 = !{!"any pointer", !278, i64 0}
!278 = !{!"omnipotent char", !279, i64 0}
!279 = !{!"Simple C/C++ TBAA"}
!280 = !{!281, !277, i64 32}
!281 = !{!"function", !277, i64 0, !277, i64 8, !277, i64 16, !277, i64 24, !277, i64 32, !277, i64 40, !277, i64 48, !277, i64 56, !277, i64 64, !277, i64 72, !277, i64 80, !277, i64 88, !277, i64 96, !282, i64 104, !282, i64 108, !282, i64 112, !282, i64 116, !282, i64 120, !282, i64 124, !277, i64 128, !282, i64 136, !282, i64 137, !282, i64 138, !282, i64 138, !282, i64 138, !282, i64 138, !282, i64 138, !282, i64 138, !282, i64 138, !282, i64 139, !282, i64 139, !282, i64 139, !282, i64 139, !282, i64 139, !282, i64 139, !282, i64 139}
!282 = !{!"int", !278, i64 0}
!283 = !{!"branch_weights", i32 709, i32 82}
!284 = !{i8 0, i8 2}
!285 = !{!"branch_weights", i32 44, i32 39}
!286 = !{!"tree-cfgcleanup.c:cleanup_tree_cfg_noloop"}
!287 = !{!278, !278, i64 0}
!288 = !{!"branch_weights", i32 790, i32 1}
!289 = !{!"branch_weights", i32 186, i32 605}
!290 = !{!"branch_weights", i32 1, i32 790}
!291 = !{!"branch_weights", i32 498, i32 293}
!292 = !{!"branch_weights", i32 255, i32 39}
!293 = !{!"function_entry_count", i64 119}
!294 = !{!"tree-cfgcleanup.c:loops_state_satisfies_p"}
!295 = !{!296, !282, i64 0}
!296 = !{!"loops", !282, i64 0, !277, i64 8, !277, i64 16, !277, i64 24}
!297 = !{!"function_entry_count", i64 38}
!298 = !{!"tree-cfgcleanup.c:repair_loop_structures"}
!299 = !{!"branch_weights", i32 1, i32 39}
!300 = !{!"function_entry_count", i64 78}
!301 = !{!"tree-cfgcleanup.c:gate_merge_phi"}
!302 = !{!"tree-cfgcleanup.c:merge_phi_nodes"}
!303 = !{!281, !277, i64 8}
!304 = !{!305, !282, i64 24}
!305 = !{!"control_flow_graph", !277, i64 0, !277, i64 8, !277, i64 16, !282, i64 24, !282, i64 28, !282, i64 32, !277, i64 40, !282, i64 48, !278, i64 52, !278, i64 60, !282, i64 68, !282, i64 72}
!306 = !{!305, !277, i64 0}
!307 = !{!308, !277, i64 56}
!308 = !{!"basic_block_def", !277, i64 0, !277, i64 8, !277, i64 16, !277, i64 24, !278, i64 32, !277, i64 48, !277, i64 56, !278, i64 64, !309, i64 72, !282, i64 80, !282, i64 84, !282, i64 88, !282, i64 92, !282, i64 96}
!309 = !{!"long", !278, i64 0}
!310 = !{!305, !277, i64 8}
!311 = !{!"branch_weights", i32 1, i32 157}
!312 = !{!"branch_weights", i32 1819205892, i32 328277756}
!313 = !{!"branch_weights", i32 293216, i32 12}
!314 = !{!"branch_weights", i32 12, i32 1}
!315 = !{!316, !282, i64 44}
!316 = !{!"edge_def", !277, i64 0, !277, i64 8, !278, i64 16, !277, i64 24, !277, i64 32, !282, i64 40, !282, i64 44, !282, i64 48, !282, i64 52, !309, i64 56}
!317 = !{i32 0, i32 256}
!318 = distinct !{!318, !319}
!319 = !{!"llvm.loop.mustprogress"}
!320 = !{!"branch_weights", i32 157, i32 586297}
!321 = distinct !{!321, !319}
!322 = !{!"branch_weights", i32 12, i32 0}
!323 = distinct !{!323, !319}
!324 = !{!"tree-cfgcleanup.c:cleanup_tree_cfg_1"}
!325 = !{!305, !282, i64 32}
!326 = !{!"branch_weights", i32 789, i32 1}
!327 = !{!328, !277, i64 0}
!328 = !{!"bitmap_head_def", !277, i64 0, !277, i64 8, !282, i64 16, !277, i64 24}
!329 = !{!"branch_weights", i32 1, i32 127}
!330 = !{!305, !277, i64 16}
!331 = !{!"branch_weights", i32 2674, i32 3913618}
!332 = !{!"branch_weights", i32 789, i32 3915502}
!333 = distinct !{!333, !319}
!334 = !{!"branch_weights", i32 1, i32 285167}
!335 = !{!"branch_weights", i32 789, i32 284378}
!336 = distinct !{!336, !319}
!337 = !{!"branch_weights", i32 7187, i32 277981}
!338 = !{!"branch_weights", i32 127, i32 100865}
!339 = !{!"tree-cfgcleanup.c:loops_state_set"}
!340 = !{!"function_entry_count", i64 278769}
!341 = !{!"tree-cfgcleanup.c:split_bbs_on_noreturn_calls"}
!342 = !{!281, !277, i64 24}
!343 = !{!"branch_weights", i32 446, i32 278325}
!344 = !{!345, !277, i64 8}
!345 = !{!"gimple_df", !277, i64 0, !277, i64 8, !277, i64 16, !277, i64 24, !346, i64 32, !346, i64 48, !277, i64 64, !277, i64 72, !277, i64 80, !277, i64 88, !282, i64 96, !347, i64 104}
!346 = !{!"pt_solution", !282, i64 0, !282, i64 0, !282, i64 0, !282, i64 0, !282, i64 0, !282, i64 0, !277, i64 8}
!347 = !{!"ssa_operands", !277, i64 0, !282, i64 8, !282, i64 12, !278, i64 16, !277, i64 24, !277, i64 32}
!348 = !{!"branch_weights", i32 278189, i32 68}
!349 = !{!"branch_weights", i32 1, i32 68}
!350 = !{!308, !282, i64 80}
!351 = !{!"branch_weights", i32 68, i32 1}
!352 = !{!"branch_weights", i32 68, i32 0}
!353 = distinct !{!353, !319}
!354 = !{!308, !277, i64 8}
!355 = !{!"function_entry_count", i64 4201523}
!356 = !{!"tree-cfgcleanup.c:VEC_basic_block_base_index"}
!357 = !{!"function_entry_count", i64 4191597}
!358 = !{!"tree-cfgcleanup.c:cleanup_tree_cfg_bb"}
!359 = !{!"branch_weights", i32 4191598, i32 1}
!360 = !{!282, !282, i64 0}
!361 = !{!"branch_weights", i32 3874483, i32 317116}
!362 = !{!"branch_weights", i32 50537, i32 266580}
!363 = !{!"branch_weights", i32 3523207, i32 401813}
!364 = !{!"branch_weights", i32 400393, i32 1421}
!365 = !{!"function_entry_count", i64 278391}
!366 = !{!"tree-cfgcleanup.c:VEC_gimple_base_length"}
!367 = !{!"branch_weights", i32 6, i32 278387}
!368 = !{!369, !282, i64 0}
!369 = !{!"VEC_gimple_base", !282, i64 0, !282, i64 4, !278, i64 8}
!370 = !{!"function_entry_count", i64 67}
!371 = !{!"tree-cfgcleanup.c:VEC_gimple_base_pop"}
!372 = !{!"tree-cfgcleanup.c:gimple_bb"}
!373 = !{!"function_entry_count", i64 5030}
!374 = !{!"tree-cfgcleanup.c:gimple_call_noreturn_p"}
!375 = !{!"function_entry_count", i64 1323}
!376 = !{!"tree-cfgcleanup.c:remove_fallthru_edge"}
!377 = !{i64 0, i64 4, !360, i64 8, i64 8, !276}
!378 = !{i64 0, i64 8, !276}
!379 = !{!"branch_weights", i32 1323, i32 1}
!380 = !{!316, !282, i64 48}
!381 = !{!"branch_weights", i32 1, i32 0}
!382 = distinct !{!382, !319}
!383 = !{!"function_entry_count", i64 1374263}
!384 = !{!"tree-cfgcleanup.c:ei_start_1"}
!385 = !{!"function_entry_count", i64 2452185}
!386 = !{!"tree-cfgcleanup.c:ei_cond"}
!387 = !{!"branch_weights", i32 1395783, i32 1056404}
!388 = !{!"function_entry_count", i64 1345915}
!389 = !{!"tree-cfgcleanup.c:ei_next"}
!390 = !{!"branch_weights", i32 1, i32 1345916}
!391 = !{!"branch_weights", i32 1345916, i32 1}
!392 = !{!393, !282, i64 0}
!393 = !{!"", !282, i64 0, !277, i64 8}
!394 = !{!"function_entry_count", i64 3032250}
!395 = !{!"tree-cfgcleanup.c:ei_end_p"}
!396 = !{!"branch_weights", i32 262, i32 3031990}
!397 = !{!"function_entry_count", i64 1708561}
!398 = !{!"tree-cfgcleanup.c:ei_edge"}
!399 = !{!"branch_weights", i32 1, i32 1708562}
!400 = !{!"function_entry_count", i64 18787092}
!401 = !{!"tree-cfgcleanup.c:VEC_edge_base_length"}
!402 = !{!"branch_weights", i32 845, i32 18786249}
!403 = !{!404, !282, i64 0}
!404 = !{!"VEC_edge_base", !282, i64 0, !282, i64 4, !278, i64 8}
!405 = !{!"function_entry_count", i64 12173191}
!406 = !{!"tree-cfgcleanup.c:ei_container"}
!407 = !{!"branch_weights", i32 1, i32 12173192}
!408 = !{!"function_entry_count", i64 4111318}
!409 = !{!"tree-cfgcleanup.c:VEC_edge_base_index"}
!410 = !{!"tree-cfgcleanup.c:cleanup_omp_return"}
!411 = !{!"branch_weights", i32 435490, i32 3756109}
!412 = !{!"branch_weights", i32 1, i32 3756109}
!413 = !{!308, !277, i64 0}
!414 = !{!"tree-cfgcleanup.c:cleanup_control_flow_bb"}
!415 = !{!"branch_weights", i32 3756109, i32 435490}
!416 = !{!"branch_weights", i32 190496502, i32 -1422085406, i32 748058, i32 815}
!417 = !{!316, !277, i64 8}
!418 = distinct !{!418, !319}
!419 = !{!"branch_weights", i32 228489, i32 5031}
!420 = !{!"branch_weights", i32 3708, i32 1324}
!421 = !{!"branch_weights", i32 1324, i32 1}
!422 = !{!"function_entry_count", i64 4484823}
!423 = !{!"tree-cfgcleanup.c:tree_forwarder_block_p"}
!424 = !{!"branch_weights", i32 3809997, i32 674828}
!425 = !{!"branch_weights", i32 178208, i32 496621}
!426 = !{!"branch_weights", i32 179, i32 496443}
!427 = !{!"branch_weights", i32 1, i32 496443}
!428 = !{!"branch_weights", i32 496443, i32 1}
!429 = !{!"branch_weights", i32 1, i32 496404}
!430 = !{!316, !277, i64 0}
!431 = !{!"branch_weights", i32 39, i32 644958}
!432 = !{!"branch_weights", i32 644958, i32 1}
!433 = !{!"branch_weights", i32 496404, i32 148592}
!434 = distinct !{!434, !319}
!435 = !{!"branch_weights", i32 181654, i32 135473}
!436 = !{!"branch_weights", i32 179279, i32 2376, i32 1}
!437 = !{!"branch_weights", i32 2376, i32 1}
!438 = !{!"branch_weights", i32 0, i32 181654}
!439 = distinct !{!439, !319}
!440 = !{!"branch_weights", i32 124276, i32 192852}
!441 = !{!308, !277, i64 24}
!442 = !{!443, !277, i64 8}
!443 = !{!"loop", !282, i64 0, !282, i64 4, !277, i64 8, !277, i64 16, !444, i64 24, !282, i64 32, !282, i64 36, !277, i64 40, !277, i64 48, !277, i64 56, !277, i64 64, !277, i64 72, !445, i64 80, !445, i64 96, !278, i64 112, !278, i64 113, !282, i64 116, !277, i64 120, !277, i64 128, !278, i64 136, !277, i64 144}
!444 = !{!"lpt_decision", !282, i64 0, !282, i64 4}
!445 = !{!"", !309, i64 0, !309, i64 8}
!446 = !{!"branch_weights", i32 1, i32 192852}
!447 = !{!"function_entry_count", i64 317115}
!448 = !{!"tree-cfgcleanup.c:remove_forwarder_block"}
!449 = !{!"branch_weights", i32 1, i32 317116}
!450 = !{!"branch_weights", i32 23774, i32 293343}
!451 = !{!"branch_weights", i32 11885, i32 281459}
!452 = !{!"branch_weights", i32 11885, i32 1}
!453 = !{!"branch_weights", i32 317116, i32 1}
!454 = !{!"branch_weights", i32 292087, i32 25030}
!455 = !{!"branch_weights", i32 1, i32 241550}
!456 = !{!"branch_weights", i32 297198, i32 50965}
!457 = !{!"branch_weights", i32 50537, i32 429}
!458 = !{!"branch_weights", i32 241550, i32 106612}
!459 = distinct !{!459, !319}
!460 = !{!"branch_weights", i32 1, i32 266579}
!461 = !{!"branch_weights", i32 311366, i32 1}
!462 = !{!"branch_weights", i32 310744, i32 623}
!463 = !{!"branch_weights", i32 274773, i32 35971}
!464 = !{!"branch_weights", i32 0, i32 274773}
!465 = distinct !{!465, !319}
!466 = !{!"branch_weights", i32 266579, i32 44787}
!467 = distinct !{!467, !319}
!468 = !{i64 0, i64 8, !276, i64 8, i64 8, !276, i64 16, i64 8, !276}
!469 = !{!"branch_weights", i32 72, i32 266508}
!470 = !{!"branch_weights", i32 72, i32 1}
!471 = !{!"branch_weights", i32 145, i32 5184}
!472 = !{!"branch_weights", i32 0, i32 72}
!473 = !{!"branch_weights", i32 261311, i32 5270}
!474 = !{!"branch_weights", i32 1, i32 5269}
!475 = !{!"branch_weights", i32 0, i32 1}
!476 = !{!"branch_weights", i32 1, i32 266580}
!477 = !{!"branch_weights", i32 5270, i32 261311}
!478 = !{!"function_entry_count", i64 14142315}
!479 = !{!"tree-cfgcleanup.c:single_succ_p"}
!480 = !{!"function_entry_count", i64 1396305}
!481 = !{!"tree-cfgcleanup.c:single_succ"}
!482 = !{!"function_entry_count", i64 36623085}
!483 = !{!"tree-cfgcleanup.c:gimple_code"}
!484 = !{!"function_entry_count", i64 266579}
!485 = !{!"tree-cfgcleanup.c:single_pred_p"}
!486 = !{!"function_entry_count", i64 0}
!487 = !{!"tree-cfgcleanup.c:single_pred"}
!488 = !{!"tree-cfgcleanup.c:single_pred_edge"}
!489 = !{!"function_entry_count", i64 4688001}
!490 = !{!"tree-cfgcleanup.c:gsi_last_bb"}
!491 = !{!492, !277, i64 0}
!492 = !{!"", !277, i64 0, !277, i64 8, !277, i64 16}
!493 = !{!492, !277, i64 8}
!494 = !{!492, !277, i64 16}
!495 = !{!"function_entry_count", i64 5609817}
!496 = !{!"tree-cfgcleanup.c:gsi_end_p"}
!497 = !{!"function_entry_count", i64 7789798}
!498 = !{!"tree-cfgcleanup.c:gsi_stmt"}
!499 = !{!500, !277, i64 0}
!500 = !{!"gimple_seq_node_d", !277, i64 0, !277, i64 8, !277, i64 16}
!501 = !{!"function_entry_count", i64 3522590}
!502 = !{!"tree-cfgcleanup.c:cleanup_control_expr_graph"}
!503 = !{!"branch_weights", i32 3522591, i32 1}
!504 = !{!"branch_weights", i32 1, i32 3521675, i32 917}
!505 = !{!"branch_weights", i32 3233987, i32 287689}
!506 = !{!"branch_weights", i32 3196714, i32 37274}
!507 = !{!"branch_weights", i32 22129, i32 3174586}
!508 = !{!"branch_weights", i32 1, i32 22129}
!509 = !{!"branch_weights", i32 1, i32 3521675}
!510 = !{i32 0, i32 65536}
!511 = !{!"branch_weights", i32 3521884, i32 708}
!512 = !{!"branch_weights", i32 1, i32 707}
!513 = !{!"branch_weights", i32 707, i32 1}
!514 = distinct !{!514, !319}
!515 = !{!"branch_weights", i32 708, i32 1}
!516 = !{!"branch_weights", i32 707, i32 708}
!517 = !{!316, !282, i64 52}
!518 = !{!316, !309, i64 56}
!519 = !{!"branch_weights", i32 0, i32 -2147483648}
!520 = !{!"branch_weights", i32 1, i32 708}
!521 = !{!"tree-cfgcleanup.c:gimple_goto_dest"}
!522 = !{!"function_entry_count", i64 580065}
!523 = !{!"tree-cfgcleanup.c:ei_safe_edge"}
!524 = !{!"branch_weights", i32 312780, i32 267287}
!525 = !{!"function_entry_count", i64 233518}
!526 = !{!"tree-cfgcleanup.c:is_gimple_call"}
!527 = !{!"function_entry_count", i64 5231697}
!528 = !{!"tree-cfgcleanup.c:bb_seq"}
!529 = !{!308, !282, i64 96}
!530 = !{!"branch_weights", i32 5231698, i32 1}
!531 = !{!"branch_weights", i32 1, i32 5231698}
!532 = !{!533, !277, i64 0}
!533 = !{!"gimple_bb_info", !277, i64 0, !277, i64 8}
!534 = !{!"tree-cfgcleanup.c:gimple_seq_last"}
!535 = !{!"branch_weights", i32 1, i32 4688002}
!536 = !{!537, !277, i64 8}
!537 = !{!"gimple_seq_d", !277, i64 0, !277, i64 8, !277, i64 16}
!538 = !{!"tree-cfgcleanup.c:gimple_location"}
!539 = !{!"function_entry_count", i64 3521674}
!540 = !{!"tree-cfgcleanup.c:gimple_cond_lhs"}
!541 = !{!"tree-cfgcleanup.c:gimple_cond_rhs"}
!542 = !{!"function_entry_count", i64 22128}
!543 = !{!"tree-cfgcleanup.c:gimple_phi_num_args"}
!544 = !{!"function_entry_count", i64 376766}
!545 = !{!"tree-cfgcleanup.c:get_use_from_ptr"}
!546 = !{!547, !277, i64 24}
!547 = !{!"ssa_use_operand_d", !277, i64 0, !277, i64 8, !278, i64 16, !277, i64 24}
!548 = !{!"tree-cfgcleanup.c:gimple_phi_arg_imm_use_ptr"}
!549 = !{!"tree-cfgcleanup.c:gimple_cond_code"}
!550 = !{!"function_entry_count", i64 916}
!551 = !{!"tree-cfgcleanup.c:gimple_switch_index"}
!552 = !{!"function_entry_count", i64 2209884}
!553 = !{!"tree-cfgcleanup.c:single_succ_edge"}
!554 = !{!"branch_weights", i32 1, i32 2209885}
!555 = !{!"function_entry_count", i64 7070478}
!556 = !{!"tree-cfgcleanup.c:gimple_op"}
!557 = !{!"branch_weights", i32 1, i32 7070479}
!558 = !{!"tree-cfgcleanup.c:gimple_has_ops"}
!559 = !{!"tree-cfgcleanup.c:gimple_ops"}
!560 = !{!309, !309, i64 0}
!561 = !{!"tree-cfgcleanup.c:gimple_statement_structure"}
!562 = !{!"tree-cfgcleanup.c:gss_for_code"}
!563 = !{!"function_entry_count", i64 651582}
!564 = !{!"tree-cfgcleanup.c:gimple_phi_arg"}
!565 = !{!"branch_weights", i32 1, i32 651583}
!566 = !{!"function_entry_count", i64 991953}
!567 = !{!"tree-cfgcleanup.c:gimple_seq_empty_p"}
!568 = !{!"branch_weights", i32 465477, i32 526478}
!569 = !{!537, !277, i64 0}
!570 = !{!"tree-cfgcleanup.c:phi_nodes"}
!571 = !{!"branch_weights", i32 991954, i32 1}
!572 = !{!"branch_weights", i32 1, i32 991954}
!573 = !{!533, !277, i64 8}
!574 = !{!"function_entry_count", i64 26214}
!575 = !{!"tree-cfgcleanup.c:gimple_label_label"}
!576 = !{!"function_entry_count", i64 2375}
!577 = !{!"tree-cfgcleanup.c:gsi_prev"}
!578 = !{!500, !277, i64 8}
!579 = !{!"function_entry_count", i64 317126}
!580 = !{!"tree-cfgcleanup.c:has_abnormal_incoming_edge_p"}
!581 = !{!"branch_weights", i32 1, i32 317126}
!582 = !{!"branch_weights", i32 402627, i32 1}
!583 = !{!"branch_weights", i32 317126, i32 85501}
!584 = distinct !{!584, !319}
!585 = !{!"function_entry_count", i64 50975}
!586 = !{!"tree-cfgcleanup.c:phi_alternatives_equal"}
!587 = !{!"branch_weights", i32 428, i32 1}
!588 = !{!"branch_weights", i32 1, i32 50976}
!589 = !{!"branch_weights", i32 50548, i32 428}
!590 = distinct !{!590, !319}
!591 = !{!"function_entry_count", i64 274816}
!592 = !{!"tree-cfgcleanup.c:gimple_phi_arg_location_from_edge"}
!593 = !{!594, !282, i64 40}
!594 = !{!"phi_arg_d", !547, i64 0, !277, i64 32, !282, i64 40}
!595 = !{!"tree-cfgcleanup.c:gimple_phi_arg_def"}
!596 = !{!"function_entry_count", i64 275315}
!597 = !{!"tree-cfgcleanup.c:gsi_next"}
!598 = !{!500, !277, i64 16}
!599 = !{!"function_entry_count", i64 543696}
!600 = !{!"tree-cfgcleanup.c:gsi_start_bb"}
!601 = !{!"function_entry_count", i64 71}
!602 = !{!"tree-cfgcleanup.c:is_gimple_debug"}
!603 = !{!"function_entry_count", i64 10538}
!604 = !{!"tree-cfgcleanup.c:gsi_after_labels"}
!605 = !{!"branch_weights", i32 3586, i32 3368}
!606 = !{!"branch_weights", i32 1, i32 10539}
!607 = !{!"branch_weights", i32 0, i32 3586}
!608 = distinct !{!608, !319}
!609 = !{!"tree-cfgcleanup.c:gimple_seq_first"}
!610 = !{!"branch_weights", i32 1, i32 543697}
!611 = !{!"tree-cfgcleanup.c:loops_state_clear"}
!612 = !{!"tree-cfgcleanup.c:gimple_phi_result"}
!613 = !{!"tree-cfgcleanup.c:has_zero_uses"}
!614 = !{!547, !277, i64 8}
!615 = !{!"tree-cfgcleanup.c:single_imm_use"}
!616 = !{!"function_entry_count", i64 11}
!617 = !{!"tree-cfgcleanup.c:remove_forwarder_block_with_phi"}
!618 = !{!"branch_weights", i32 1, i32 12}
!619 = !{!"branch_weights", i32 1, i32 191}
!620 = !{!"branch_weights", i32 12, i32 12}
!621 = distinct !{!621, !319}
!622 = !{!"branch_weights", i32 23, i32 1}
!623 = !{!"branch_weights", i32 183, i32 1}
!624 = !{!"branch_weights", i32 23, i32 23}
!625 = !{i32 0, i32 2}
!626 = !{!"branch_weights", i32 127, i32 2817}
!627 = distinct !{!627, !319}
!628 = !{!"branch_weights", i32 177, i32 183}
!629 = distinct !{!629, !319}
!630 = !{!"branch_weights", i32 191, i32 177}
!631 = !{!"function_entry_count", i64 22}
!632 = !{!"tree-cfgcleanup.c:VEC_edge_var_map_base_iterate"}
!633 = !{!"branch_weights", i32 1, i32 23}
!634 = !{!635, !282, i64 0}
!635 = !{!"VEC_edge_var_map_base", !282, i64 0, !282, i64 4, !278, i64 8}
!636 = !{!"tree-cfgcleanup.c:redirect_edge_var_map_result"}
!637 = !{!638, !277, i64 0}
!638 = !{!"_edge_var_map", !277, i64 0, !277, i64 8, !282, i64 16}
!639 = !{!"tree-cfgcleanup.c:redirect_edge_var_map_def"}
!640 = !{!638, !277, i64 8}
!641 = !{!"tree-cfgcleanup.c:redirect_edge_var_map_location"}
!642 = !{!638, !282, i64 16}
