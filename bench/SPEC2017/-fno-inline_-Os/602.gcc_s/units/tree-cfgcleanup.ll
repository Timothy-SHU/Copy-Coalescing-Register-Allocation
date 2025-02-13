; ModuleID = 'tree-cfgcleanup.c'
source_filename = "tree-cfgcleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
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

@cfgcleanup_altered_bbs = dso_local local_unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [18 x i8] c"tree-cfgcleanup.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@pass_merge_phi = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.5, ptr @gate_merge_phi, ptr @merge_phi_nodes, ptr null, ptr null, i32 0, i32 80, i32 40, i32 0, i32 0, i32 0, i32 7 } }, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"mergephi\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #0 !prof !285 {
  %1 = tail call fastcc zeroext i8 @cleanup_tree_cfg_noloop() #12
  %2 = load ptr, ptr @cfun, align 8, !tbaa !286
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !290
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !293

6:                                                ; preds = %0
  %7 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 64) #12, !range !294
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !295

9:                                                ; preds = %6
  tail call fastcc void @repair_loop_structures() #12
  br label %10

10:                                               ; preds = %9, %6, %0
  ret i8 %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cleanup_tree_cfg_noloop() unnamed_addr #0 !prof !285 !PGOFuncName !296 {
  %1 = load i8, ptr @timevar_enable, align 1, !tbaa !297
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3, !prof !298

3:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 51) #13
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9, !prof !299

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
  br i1 %14, label %15, label %16, !prof !300

15:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 716, ptr noundef nonnull @.str.1) #13
  br label %16

16:                                               ; preds = %9, %15
  tail call void @compact_blocks() #13
  %17 = load i8, ptr @timevar_enable, align 1, !tbaa !297
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19, !prof !298

19:                                               ; preds = %16
  tail call void @timevar_pop_1(i32 noundef 51) #13
  br label %20

20:                                               ; preds = %19, %16
  %21 = icmp eq i8 %12, 0
  br i1 %21, label %28, label %22, !prof !301

22:                                               ; preds = %20
  %23 = load ptr, ptr @cfun, align 8, !tbaa !286
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !290
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !302

27:                                               ; preds = %22
  tail call fastcc void @loops_state_set() #12
  br label %28

28:                                               ; preds = %27, %22, %20
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef %0) unnamed_addr #2 !prof !303 !PGOFuncName !304 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !286
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !290
  %5 = load i32, ptr %4, align 8, !tbaa !305
  %6 = and i32 %5, %0
  %7 = icmp eq i32 %6, %0
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @repair_loop_structures() unnamed_addr #0 !prof !307 !PGOFuncName !308 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  tail call void @fix_loop_structure(ptr noundef %1) #13
  %2 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 32) #12, !range !294
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !309

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

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #3

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cleanup_tree_cfg_1() unnamed_addr #0 !prof !285 !PGOFuncName !310 {
  %1 = tail call fastcc zeroext i8 @split_bbs_on_noreturn_calls() #12, !range !294
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  store ptr %2, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !286
  tail call void @start_recording_case_labels() #13
  %3 = load ptr, ptr @cfun, align 8, !tbaa !286
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !311
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !312
  %8 = icmp ugt i32 %7, 2
  br i1 %8, label %14, label %9, !prof !314

9:                                                ; preds = %28, %0
  %10 = phi i8 [ %1, %0 ], [ %30, %28 ]
  %11 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !286
  %12 = load ptr, ptr %11, align 8, !tbaa !315
  %13 = icmp eq ptr %12, null
  br i1 %13, label %62, label %59, !prof !317

14:                                               ; preds = %0, %28
  %15 = phi ptr [ %29, %28 ], [ %3, %0 ]
  %16 = phi i8 [ %30, %28 ], [ %1, %0 ]
  %17 = phi i32 [ %31, %28 ], [ 2, %0 ]
  %18 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !311
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !318
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %21, i32 noundef %17) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24, !prof !319

24:                                               ; preds = %14
  %25 = tail call fastcc zeroext i8 @cleanup_tree_cfg_bb(ptr noundef nonnull %22) #12
  %26 = or i8 %25, %16
  %27 = load ptr, ptr @cfun, align 8, !tbaa !286
  br label %28

28:                                               ; preds = %14, %24
  %29 = phi ptr [ %27, %24 ], [ %15, %14 ]
  %30 = phi i8 [ %26, %24 ], [ %16, %14 ]
  %31 = add nuw i32 %17, 1
  %32 = icmp eq i32 %31, %7
  br i1 %32, label %9, label %14, !prof !320, !llvm.loop !321

33:                                               ; preds = %59, %39
  %34 = phi ptr [ %60, %59 ], [ %40, %39 ]
  %35 = tail call i32 @bitmap_first_set_bit(ptr noundef nonnull %34) #13
  %36 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !286
  %37 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %36, i32 noundef %35) #13
  %38 = icmp ult i32 %35, 2
  br i1 %38, label %39, label %43, !prof !323

39:                                               ; preds = %33, %43
  %40 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !286
  %41 = load ptr, ptr %40, align 8, !tbaa !315
  %42 = icmp eq ptr %41, null
  br i1 %42, label %62, label %33, !prof !324, !llvm.loop !325

43:                                               ; preds = %33
  %44 = load ptr, ptr @cfun, align 8, !tbaa !286
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !311
  %47 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !318
  %49 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %48, i32 noundef %35) #12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %39, label %51, !prof !326

51:                                               ; preds = %43
  %52 = tail call fastcc zeroext i8 @cleanup_tree_cfg_bb(ptr noundef nonnull %49) #12
  %53 = tail call fastcc zeroext i8 @split_bbs_on_noreturn_calls() #12, !range !294
  %54 = or i8 %52, %53
  %55 = or i8 %54, %61
  %56 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !286
  %57 = load ptr, ptr %56, align 8, !tbaa !315
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59, !prof !327, !llvm.loop !325

59:                                               ; preds = %9, %51
  %60 = phi ptr [ %56, %51 ], [ %11, %9 ]
  %61 = phi i8 [ %55, %51 ], [ %10, %9 ]
  br label %33

62:                                               ; preds = %51, %39, %9
  %63 = phi i8 [ %10, %9 ], [ %61, %39 ], [ %55, %51 ]
  tail call void @end_recording_case_labels() #13
  %64 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !286
  tail call void @bitmap_obstack_free(ptr noundef %64) #13
  store ptr null, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !286
  ret i8 %63
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @compact_blocks() local_unnamed_addr #3

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_set() unnamed_addr #4 !prof !307 !PGOFuncName !328 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !286
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  %4 = load i32, ptr %3, align 8, !tbaa !305
  %5 = or i32 %4, 64
  store i32 %5, ptr %3, align 8, !tbaa !305
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @split_bbs_on_noreturn_calls() unnamed_addr #0 !prof !329 !PGOFuncName !330 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !286
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !331
  %4 = icmp eq ptr %3, null
  br i1 %4, label %60, label %5, !prof !332

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.gimple_df, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !333
  %8 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %60, label %10, !prof !337

10:                                               ; preds = %5, %48
  %11 = phi ptr [ %57, %48 ], [ %7, %5 ]
  %12 = phi i8 [ 1, %48 ], [ 0, %5 ]
  br label %13

13:                                               ; preds = %10, %40
  %14 = phi ptr [ %11, %10 ], [ %45, %40 ]
  %15 = tail call fastcc ptr @VEC_gimple_base_pop(ptr noundef %14) #12
  %16 = tail call fastcc ptr @gimple_bb(ptr noundef %15) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18, !prof !338

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !339
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %40, label %22, !prof !342

22:                                               ; preds = %18
  %23 = load ptr, ptr @cfun, align 8, !tbaa !286
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !311
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !343
  %28 = icmp slt i32 %20, %27
  br i1 %28, label %29, label %40, !prof !344

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !318
  %32 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %31, i32 noundef %20) #12
  %33 = icmp eq ptr %32, %16
  br i1 %33, label %34, label %40, !prof !345

34:                                               ; preds = %29
  %35 = tail call ptr @last_stmt(ptr noundef nonnull %16) #13
  %36 = icmp eq ptr %35, %15
  br i1 %36, label %40, label %37, !prof !346

37:                                               ; preds = %34
  %38 = tail call fastcc zeroext i8 @gimple_call_noreturn_p(ptr noundef %15) #12, !range !294
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %48, !prof !347

40:                                               ; preds = %37, %34, %29, %22, %18, %13
  %41 = load ptr, ptr @cfun, align 8, !tbaa !286
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !331
  %44 = getelementptr inbounds %struct.gimple_df, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !333
  %46 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %45) #12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %13, !prof !348, !llvm.loop !349

48:                                               ; preds = %37
  %49 = tail call ptr @split_block(ptr noundef nonnull %16, ptr noundef %15) #13
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !350
  %52 = tail call fastcc zeroext i8 @remove_fallthru_edge(ptr noundef %51) #12, !range !294
  %53 = load ptr, ptr @cfun, align 8, !tbaa !286
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !331
  %56 = getelementptr inbounds %struct.gimple_df, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !333
  %58 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %57) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %10, !prof !348, !llvm.loop !349

60:                                               ; preds = %48, %40, %5, %0
  %61 = phi i8 [ 0, %0 ], [ 0, %5 ], [ %12, %40 ], [ 1, %48 ]
  ret i8 %61
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @start_recording_case_labels() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !351 !PGOFuncName !352 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !286
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cleanup_tree_cfg_bb(ptr noundef %0) unnamed_addr #0 !prof !353 !PGOFuncName !354 {
  %2 = tail call fastcc zeroext i8 @cleanup_omp_return(ptr noundef %0) #12, !range !294
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %23, !prof !355

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @cleanup_control_flow_bb(ptr noundef %0) #12
  %6 = load i32, ptr @optimize, align 4, !tbaa !356
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %14, !prof !355

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @tree_forwarder_block_p(ptr noundef %0, i8 noundef zeroext 0) #12, !range !294
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11, !prof !357

11:                                               ; preds = %8
  %12 = tail call fastcc zeroext i8 @remove_forwarder_block(ptr noundef %0) #12, !range !294
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %23, !prof !358

14:                                               ; preds = %11, %8, %4
  %15 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #12, !range !294
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17, !prof !359

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @single_succ(ptr noundef %0) #12
  %19 = tail call zeroext i8 @can_merge_blocks_p(ptr noundef %0, ptr noundef %18) #13
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21, !prof !360

21:                                               ; preds = %17
  %22 = tail call fastcc ptr @single_succ(ptr noundef %0) #12
  tail call void @merge_blocks(ptr noundef %0, ptr noundef %22) #13
  br label %23

23:                                               ; preds = %14, %17, %11, %1, %21
  %24 = phi i8 [ 1, %21 ], [ 1, %1 ], [ 1, %11 ], [ %5, %17 ], [ %5, %14 ]
  ret i8 %24
}

; Function Attrs: optsize
declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @end_recording_case_labels() local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !361 !PGOFuncName !362 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !363

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !364
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #6 !prof !366 !PGOFuncName !367 {
  %2 = load i32, ptr %0, align 8, !tbaa !364
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !364
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !286
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !368 !PGOFuncName !369 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !297
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_call_noreturn_p(ptr noundef %0) unnamed_addr #0 !prof !370 !PGOFuncName !371 {
  %2 = tail call i32 @gimple_call_flags(ptr noundef %0) #13
  %3 = trunc i32 %2 to i8
  %4 = lshr i8 %3, 3
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @remove_fallthru_edge(ptr noundef %0) unnamed_addr #0 !prof !372 !PGOFuncName !373 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !286
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = call fastcc ptr @ei_start_1(ptr noundef nonnull %2) #12
  store i32 0, ptr %3, align 8, !tbaa.struct !374
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !375
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %4) #12, !range !294
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %21, label %9, !prof !376

9:                                                ; preds = %1, %16
  %10 = load ptr, ptr %4, align 8, !tbaa !286
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !377
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15, !prof !347

15:                                               ; preds = %9
  call void @remove_edge_and_dominated_blocks(ptr noundef nonnull %10) #13
  br label %21

16:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %17 = load i32, ptr %3, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = call fastcc zeroext i8 @ei_cond(i32 %17, ptr %18, ptr noundef nonnull %4) #12, !range !294
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %9, !prof !379, !llvm.loop !380

21:                                               ; preds = %16, %1, %15
  %22 = phi i8 [ 1, %15 ], [ 0, %1 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret i8 %22
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 !prof !381 !PGOFuncName !382 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !383 !PGOFuncName !384 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #12, !range !294
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !385

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #12
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !286
  ret i8 %10
}

; Function Attrs: optsize
declare void @remove_edge_and_dominated_blocks(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !386 !PGOFuncName !387 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !388

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #12
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #12
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !389

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #13
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !390
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !390
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !392 !PGOFuncName !393 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !394

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !395 !PGOFuncName !396 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !397

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #12
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #12
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !398 !PGOFuncName !399 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !400

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !401
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !403 !PGOFuncName !404 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !405

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #13
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !286
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !406 !PGOFuncName !407 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !286
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @cleanup_omp_return(ptr noundef %0) unnamed_addr #0 !prof !353 !PGOFuncName !408 {
  %2 = tail call ptr @last_stmt(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !409

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %2) #12, !range !410
  %6 = icmp eq i32 %5, 28
  br i1 %6, label %7, label %23, !prof !411

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #12, !range !294
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @single_pred(ptr noundef %0) #12
  %12 = tail call ptr @last_stmt(ptr noundef %11) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %12) #12, !range !410
  %16 = icmp eq i32 %15, 31
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load ptr, ptr %11, align 8, !tbaa !412
  %19 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %18) #12
  switch i32 %19, label %20 [
    i32 2, label %23
    i32 1, label %21
  ]

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 593, ptr noundef nonnull @.str.1) #13
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
define internal fastcc zeroext i8 @cleanup_control_flow_bb(ptr noundef %0) unnamed_addr #0 !prof !353 !PGOFuncName !413 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %4 = tail call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %0) #13
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #12
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12, !range !294
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %78, !prof !414

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %8) #12, !range !410
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %66 [
    i8 1, label %11
    i8 5, label %11
    i8 3, label %14
  ], !prof !415

11:                                               ; preds = %7, %7
  %12 = tail call fastcc zeroext i8 @cleanup_control_expr_graph(ptr noundef %0, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12, !range !294
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
  %22 = load ptr, ptr %21, align 8, !tbaa !297
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 30
  br i1 %25, label %26, label %66

26:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %27 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %8) #12
  %28 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !297
  %30 = load ptr, ptr @cfun, align 8, !tbaa !286
  %31 = tail call ptr @label_to_block_fn(ptr noundef %30, ptr noundef %29) #13
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %33 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %32) #12
  store i32 0, ptr %3, align 8, !tbaa.struct !374
  %34 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %33, ptr %34, align 8, !tbaa.struct !375
  %35 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %33) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %57, label %37

37:                                               ; preds = %26, %52
  %38 = phi ptr [ %53, %52 ], [ %33, %26 ]
  %39 = phi i32 [ %54, %52 ], [ 0, %26 ]
  %40 = phi ptr [ %55, %52 ], [ %35, %26 ]
  %41 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !416
  %43 = icmp eq ptr %42, %31
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  tail call void @remove_edge_and_dominated_blocks(ptr noundef nonnull %40) #13
  br label %52

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !377
  %48 = and i32 %47, -4
  %49 = or disjoint i32 %48, 1
  store i32 %49, ptr %46, align 8, !tbaa !377
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %50 = load i32, ptr %3, align 8
  %51 = load ptr, ptr %34, align 8
  br label %52

52:                                               ; preds = %45, %44
  %53 = phi ptr [ %51, %45 ], [ %38, %44 ]
  %54 = phi i32 [ %50, %45 ], [ %39, %44 ]
  %55 = tail call fastcc ptr @ei_safe_edge(i32 %54, ptr %53) #12
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %37, !llvm.loop !417

57:                                               ; preds = %52, %26
  %58 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !286
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !339
  %61 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %58, i32 noundef %60) #13
  %62 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !286
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %64 = load i32, ptr %63, align 8, !tbaa !339
  %65 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %62, i32 noundef %64) #13
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %78

66:                                               ; preds = %7, %19, %14
  %67 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %8) #12, !range !294
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %78, label %69, !prof !418

69:                                               ; preds = %66
  %70 = tail call fastcc zeroext i8 @gimple_call_noreturn_p(ptr noundef %8) #12, !range !294
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %78, label %72, !prof !419

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !350
  %75 = tail call fastcc zeroext i8 @remove_fallthru_edge(ptr noundef %74) #12, !range !294
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %78, label %77, !prof !420

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %11, %66, %69, %72, %77, %57, %1
  %79 = phi i8 [ %4, %1 ], [ %13, %11 ], [ 1, %57 ], [ 1, %77 ], [ %4, %72 ], [ %4, %69 ], [ %4, %66 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret i8 %79
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @tree_forwarder_block_p(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !421 !PGOFuncName !422 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %6 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #12, !range !294
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %92, label %8, !prof !423

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @phi_nodes(ptr noundef %0) #12
  %10 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %9) #12, !range !294
  %11 = icmp eq i8 %10, %1
  br i1 %11, label %92, label %12, !prof !424

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @single_succ(ptr noundef %0) #12
  %14 = load ptr, ptr @cfun, align 8, !tbaa !286
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !311
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !425
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %92, label %20, !prof !426

20:                                               ; preds = %12
  %21 = tail call fastcc ptr @single_succ(ptr noundef %0) #12
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %92, label %23, !prof !427

23:                                               ; preds = %20
  %24 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #12
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !377
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %92, !prof !428

29:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %30 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #12
  store i32 0, ptr %4, align 8, !tbaa.struct !374
  %31 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %30, ptr %31, align 8, !tbaa.struct !375
  %32 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %30, ptr noundef nonnull %5) #12, !range !294
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %53, label %34, !prof !429

34:                                               ; preds = %29, %47
  %35 = load ptr, ptr %5, align 8, !tbaa !286
  %36 = load ptr, ptr %35, align 8, !tbaa !430
  %37 = load ptr, ptr @cfun, align 8, !tbaa !286
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !311
  %40 = load ptr, ptr %39, align 8, !tbaa !431
  %41 = icmp eq ptr %36, %40
  br i1 %41, label %52, label %42, !prof !432

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !377
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52, !prof !433

47:                                               ; preds = %42
  call fastcc void @ei_next(ptr noundef nonnull %4) #12
  %48 = load i32, ptr %4, align 8
  %49 = load ptr, ptr %31, align 8
  %50 = call fastcc zeroext i8 @ei_cond(i32 %48, ptr %49, ptr noundef nonnull %5) #12, !range !294
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %34, !prof !434, !llvm.loop !435

52:                                               ; preds = %34, %42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  br label %92

53:                                               ; preds = %47, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #12
  %54 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #12, !range !294
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %69, !prof !436

56:                                               ; preds = %53, %66
  %57 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #12
  %58 = tail call fastcc i32 @gimple_code(ptr noundef %57) #12, !range !410
  %59 = trunc i32 %58 to i8
  switch i8 %59, label %92 [
    i8 4, label %60
    i8 2, label %66
  ], !prof !437

60:                                               ; preds = %56
  %61 = tail call fastcc ptr @gimple_label_label(ptr noundef %57) #12
  %62 = getelementptr inbounds %struct.tree_decl_common, ptr %61, i64 0, i32 2
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 256
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %92, !prof !438

66:                                               ; preds = %60, %56
  call fastcc void @gsi_prev(ptr noundef nonnull %3) #12
  %67 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #12, !range !294
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %56, label %69, !prof !439, !llvm.loop !440

69:                                               ; preds = %66, %53
  %70 = load ptr, ptr @cfun, align 8, !tbaa !286
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !290
  %73 = icmp eq ptr %72, null
  br i1 %73, label %92, label %74, !prof !441

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !442
  %77 = getelementptr inbounds %struct.loop, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !443
  %79 = icmp eq ptr %78, %0
  br i1 %79, label %92, label %80, !prof !447

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !350
  %83 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %82, i32 noundef 0) #12
  %84 = getelementptr inbounds %struct.edge_def, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !416
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !442
  %88 = getelementptr inbounds %struct.loop, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !443
  %90 = icmp ne ptr %89, %85
  %91 = zext i1 %90 to i8
  br label %92

92:                                               ; preds = %60, %56, %52, %80, %69, %74, %2, %8, %12, %20, %23
  %93 = phi i8 [ 0, %52 ], [ 0, %23 ], [ 0, %20 ], [ 0, %12 ], [ 0, %8 ], [ 0, %2 ], [ 0, %74 ], [ 1, %69 ], [ %91, %80 ], [ 0, %56 ], [ 0, %60 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret i8 %93
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @remove_forwarder_block(ptr noundef %0) unnamed_addr #0 !prof !448 !PGOFuncName !449 {
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
  %11 = load ptr, ptr %10, align 8, !tbaa !416
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %159, label %13, !prof !450

13:                                               ; preds = %1
  %14 = tail call ptr @first_stmt(ptr noundef %11) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16, !prof !451

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %14) #12, !range !410
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %30, !prof !452

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @gimple_label_label(ptr noundef nonnull %14) #12
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %20, i64 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 256
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %159, !prof !453

25:                                               ; preds = %19
  %26 = tail call fastcc ptr @gimple_label_label(ptr noundef nonnull %14) #12
  %27 = getelementptr inbounds %struct.tree_label_decl, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !297
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %159, !prof !453

30:                                               ; preds = %25, %16, %13
  %31 = tail call fastcc zeroext i8 @has_abnormal_incoming_edge_p(ptr noundef %0) #12, !range !294
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33, !prof !454

33:                                               ; preds = %30
  %34 = tail call fastcc zeroext i8 @has_abnormal_incoming_edge_p(ptr noundef %11) #12, !range !294
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %159

36:                                               ; preds = %33
  %37 = tail call fastcc ptr @phi_nodes(ptr noundef %11) #12
  %38 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %37) #12, !range !294
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %159, label %40

40:                                               ; preds = %36, %30
  %41 = tail call fastcc ptr @phi_nodes(ptr noundef %11) #12
  %42 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %41) #12, !range !294
  %43 = icmp eq i8 %42, 0
  %44 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #12
  br i1 %43, label %45, label %62, !prof !455

45:                                               ; preds = %40
  store i32 0, ptr %3, align 8, !tbaa.struct !374
  %46 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %44, ptr %46, align 8, !tbaa.struct !375
  %47 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %44, ptr noundef nonnull %2) #12, !range !294
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %62, label %49, !prof !456

49:                                               ; preds = %45, %57
  %50 = load ptr, ptr %2, align 8, !tbaa !286
  %51 = load ptr, ptr %50, align 8, !tbaa !430
  %52 = tail call ptr @find_edge(ptr noundef %51, ptr noundef %11) #13
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54, !prof !457

54:                                               ; preds = %49
  %55 = tail call fastcc zeroext i8 @phi_alternatives_equal(ptr noundef %11, ptr noundef %9, ptr noundef nonnull %52) #12
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %159, label %57, !prof !458

57:                                               ; preds = %54, %49
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %58 = load i32, ptr %3, align 8
  %59 = load ptr, ptr %46, align 8
  %60 = call fastcc zeroext i8 @ei_cond(i32 %58, ptr %59, ptr noundef nonnull %2) #12, !range !294
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %49, !prof !459, !llvm.loop !460

62:                                               ; preds = %57, %40, %45
  %63 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %11) #12, !range !294
  store i32 0, ptr %3, align 8, !tbaa.struct !374
  %64 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %44, ptr %64, align 8, !tbaa.struct !375
  %65 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %44) #12
  store ptr %65, ptr %2, align 8, !tbaa !286
  %66 = icmp eq ptr %65, null
  br i1 %66, label %102, label %67, !prof !461

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 6
  br label %69

69:                                               ; preds = %67, %98
  %70 = phi ptr [ %65, %67 ], [ %99, %98 ]
  %71 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !286
  %72 = load ptr, ptr %70, align 8, !tbaa !430
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !339
  %75 = call zeroext i8 @bitmap_set_bit(ptr noundef %71, i32 noundef %74) #13
  %76 = getelementptr inbounds %struct.edge_def, ptr %70, i64 0, i32 7
  %77 = load i32, ptr %76, align 8, !tbaa !377
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80, !prof !462

80:                                               ; preds = %69
  %81 = call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %70, ptr noundef %11) #13
  br label %84

82:                                               ; preds = %69
  %83 = call ptr @redirect_edge_and_branch(ptr noundef nonnull %70, ptr noundef %11) #13
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi ptr [ %81, %80 ], [ %83, %82 ]
  %86 = icmp eq ptr %85, %70
  br i1 %86, label %87, label %98, !prof !463

87:                                               ; preds = %84
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %11) #13
  %88 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !294
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %98, !prof !464

90:                                               ; preds = %87, %90
  %91 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12
  %92 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %91, ptr noundef %9) #12
  %93 = load i32, ptr %68, align 4, !tbaa !465
  %94 = zext i32 %93 to i64
  %95 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %91, i64 noundef %94) #12
  call void @add_phi_arg(ptr noundef %91, ptr noundef %95, ptr noundef nonnull %70, i32 noundef %92) #13
  call fastcc void @gsi_next(ptr noundef nonnull %4) #12
  %96 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !294
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %90, label %98, !prof !466, !llvm.loop !467

98:                                               ; preds = %90, %87, %84
  %99 = call fastcc ptr @ei_safe_edge(i32 0, ptr %44) #12
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %69, !prof !468, !llvm.loop !469

101:                                              ; preds = %98
  store ptr %99, ptr %2, align 1, !tbaa !286
  br label %102

102:                                              ; preds = %101, %62
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %11) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !470
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  %103 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !294
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %131, !prof !471

105:                                              ; preds = %102, %128
  %106 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12
  %107 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %106) #12, !range !294
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %131, !prof !472

109:                                              ; preds = %105
  %110 = call fastcc ptr @gimple_label_label(ptr noundef %106) #12
  %111 = getelementptr inbounds %struct.tree_label_decl, ptr %110, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !297
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %126, !prof !472

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.tree_decl_common, ptr %110, i64 0, i32 2
  %116 = load i64, ptr %115, align 8
  %117 = and i64 %116, 256
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %126, !prof !472

119:                                              ; preds = %114
  %120 = load i64, ptr %110, align 8
  %121 = and i64 %120, 65536
  %122 = icmp ne i64 %121, 0
  %123 = and i64 %116, 4096
  %124 = icmp eq i64 %123, 0
  %125 = or i1 %124, %122
  br i1 %125, label %126, label %127, !prof !473

126:                                              ; preds = %119, %114, %109
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 0) #13
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %106, i32 noundef 1) #13
  br label %128

127:                                              ; preds = %119
  call fastcc void @gsi_next(ptr noundef nonnull %4) #12
  br label %128

128:                                              ; preds = %126, %127
  %129 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !294
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %105, label %131, !prof !474

131:                                              ; preds = %128, %105, %102
  %132 = icmp eq i8 %63, 0
  br i1 %132, label %143, label %133, !prof !475

133:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %11) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !470
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !470
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  %134 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !294
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %143, !prof !476

136:                                              ; preds = %133, %140
  %137 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12
  %138 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %137) #12, !range !294
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 0) #13
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %137, i32 noundef 1) #13
  %141 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !294
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %136, label %143, !prof !477

143:                                              ; preds = %140, %136, %133, %131
  %144 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !286
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %146 = load i32, ptr %145, align 8, !tbaa !339
  %147 = call zeroext i8 @bitmap_set_bit(ptr noundef %144, i32 noundef %146) #13
  %148 = call zeroext i8 @dom_info_available_p(i32 noundef 1) #13
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %158, label %150, !prof !478

150:                                              ; preds = %143
  %151 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %0) #13
  %152 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %11) #13
  %153 = icmp eq ptr %152, %0
  br i1 %153, label %156, label %154, !prof !479

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
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !480 !PGOFuncName !481 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !350
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #12
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @can_merge_blocks_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !482 !PGOFuncName !483 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !416
  ret ptr %4
}

; Function Attrs: optsize
declare void @merge_blocks(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !484 !PGOFuncName !485 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !486 !PGOFuncName !487 {
  %2 = load ptr, ptr %0, align 8, !tbaa !412
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #12
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !488 !PGOFuncName !489 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #12
  %3 = load ptr, ptr %2, align 8, !tbaa !430
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !488 !PGOFuncName !490 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #12, !range !294
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 655, ptr noundef nonnull @.str.1) #13
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !412
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #12
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !491 !PGOFuncName !492 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #12
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #12
  store ptr %4, ptr %0, align 8, !tbaa !493
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !495
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !496
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !497 !PGOFuncName !498 {
  %2 = load ptr, ptr %0, align 8, !tbaa !493
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 !prof !499 !PGOFuncName !500 {
  %2 = load ptr, ptr %0, align 8, !tbaa !493
  %3 = load ptr, ptr %2, align 8, !tbaa !501
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cleanup_control_expr_graph(ptr noundef %0, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) unnamed_addr #0 !prof !503 !PGOFuncName !504 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12
  %5 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #12, !range !294
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %144, !prof !505

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  tail call void @fold_defer_overflow_warnings() #13
  %8 = tail call fastcc i32 @gimple_location(ptr noundef %4) #12
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %4) #12, !range !410
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %87 [
    i8 1, label %11
    i8 5, label %85
  ], !prof !506

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %4) #12
  %13 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %4) #12
  %14 = load i64, ptr %12, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %46, !prof !507

17:                                               ; preds = %11
  %18 = tail call zeroext i8 @name_registered_for_update_p(ptr noundef nonnull %12) #13
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %46, !prof !508

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !297
  %23 = tail call fastcc i32 @gimple_code(ptr noundef %22) #12, !range !410
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %46, !prof !509

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %22) #12
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %46, !prof !510

28:                                               ; preds = %25
  %29 = tail call fastcc ptr @gimple_bb(ptr noundef %22) #12
  %30 = tail call fastcc ptr @gimple_bb(ptr noundef %4) #12
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %46, !prof !511

32:                                               ; preds = %28
  %33 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %22) #12
  %34 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %33) #12
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 141
  br i1 %37, label %38, label %43, !prof !512

38:                                               ; preds = %32
  %39 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %22) #12
  %40 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %39) #12
  %41 = tail call zeroext i8 @name_registered_for_update_p(ptr noundef %40) #13
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %46, !prof !513

43:                                               ; preds = %38, %32
  %44 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %22) #12
  %45 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %44) #12
  br label %46

46:                                               ; preds = %20, %25, %28, %38, %43, %17, %11
  %47 = phi ptr [ %12, %17 ], [ %12, %11 ], [ %45, %43 ], [ %12, %38 ], [ %12, %28 ], [ %12, %25 ], [ %12, %20 ]
  %48 = load i64, ptr %13, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 141
  br i1 %50, label %51, label %80, !prof !514

51:                                               ; preds = %46
  %52 = tail call zeroext i8 @name_registered_for_update_p(ptr noundef nonnull %13) #13
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %80, !prof !515

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.tree_ssa_name, ptr %13, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !297
  %57 = tail call fastcc i32 @gimple_code(ptr noundef %56) #12, !range !410
  %58 = icmp eq i32 %57, 16
  br i1 %58, label %59, label %80, !prof !516

59:                                               ; preds = %54
  %60 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %56) #12
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %80, !prof !517

62:                                               ; preds = %59
  %63 = tail call fastcc ptr @gimple_bb(ptr noundef %56) #12
  %64 = tail call fastcc ptr @gimple_bb(ptr noundef %4) #12
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %80, !prof !518

66:                                               ; preds = %62
  %67 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %56) #12
  %68 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %67) #12
  %69 = load i64, ptr %68, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 141
  br i1 %71, label %72, label %77, !prof !519

72:                                               ; preds = %66
  %73 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %56) #12
  %74 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %73) #12
  %75 = tail call zeroext i8 @name_registered_for_update_p(ptr noundef %74) #13
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %80, !prof !520

77:                                               ; preds = %72, %66
  %78 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %56) #12
  %79 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %78) #12
  br label %80

80:                                               ; preds = %54, %59, %62, %72, %77, %51, %46
  %81 = phi ptr [ %13, %51 ], [ %13, %46 ], [ %79, %77 ], [ %13, %72 ], [ %13, %62 ], [ %13, %59 ], [ %13, %54 ]
  %82 = tail call fastcc i32 @gimple_cond_code(ptr noundef %4) #12, !range !521
  %83 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !286
  %84 = tail call ptr @fold_binary_loc(i32 noundef %8, i32 noundef %82, ptr noundef %83, ptr noundef %47, ptr noundef %81) #13
  br label %87

85:                                               ; preds = %7
  %86 = tail call fastcc ptr @gimple_switch_index(ptr noundef %4) #12
  br label %87

87:                                               ; preds = %7, %85, %80
  %88 = phi ptr [ %86, %85 ], [ %84, %80 ], [ null, %7 ]
  %89 = tail call ptr @find_taken_edge(ptr noundef %0, ptr noundef %88) #13
  %90 = icmp eq ptr %89, null
  br i1 %90, label %143, label %91, !prof !522

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %93 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %92) #12
  store i32 0, ptr %3, align 8, !tbaa.struct !374
  %94 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %93, ptr %94, align 8, !tbaa.struct !375
  %95 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %93) #12
  %96 = icmp eq ptr %95, null
  br i1 %96, label %134, label %97, !prof !523

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
  br i1 %106, label %114, label %109, !prof !523

107:                                              ; preds = %121
  %108 = icmp eq ptr %130, %89
  br i1 %108, label %114, label %109, !prof !524, !llvm.loop !525

109:                                              ; preds = %100, %107
  %110 = phi i8 [ 1, %107 ], [ %105, %100 ]
  %111 = phi ptr [ %130, %107 ], [ %103, %100 ]
  %112 = icmp eq i8 %110, 0
  br i1 %112, label %113, label %121, !prof !526

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
  br i1 %120, label %132, label %100, !prof !527, !llvm.loop !525

121:                                              ; preds = %109, %113
  %122 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 8
  %123 = load i32, ptr %122, align 4, !tbaa !528
  %124 = load i32, ptr %98, align 4, !tbaa !528
  %125 = add nsw i32 %124, %123
  store i32 %125, ptr %98, align 4, !tbaa !528
  %126 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 9
  %127 = load i64, ptr %126, align 8, !tbaa !529
  %128 = load i64, ptr %99, align 8, !tbaa !529
  %129 = add nsw i64 %128, %127
  store i64 %129, ptr %99, align 8, !tbaa !529
  tail call void @remove_edge_and_dominated_blocks(ptr noundef nonnull %111) #13
  %130 = tail call fastcc ptr @ei_safe_edge(i32 %102, ptr %101) #12
  %131 = icmp eq ptr %130, null
  br i1 %131, label %136, label %107, !prof !527, !llvm.loop !525

132:                                              ; preds = %114
  %133 = icmp eq i8 %116, 0
  br i1 %133, label %134, label %136, !prof !530

134:                                              ; preds = %91, %132
  %135 = phi i8 [ %115, %132 ], [ 0, %91 ]
  tail call void @fold_undefer_and_ignore_overflow_warnings() #13
  br label %136

136:                                              ; preds = %121, %134, %132
  %137 = phi i8 [ %135, %134 ], [ %115, %132 ], [ 1, %121 ]
  %138 = getelementptr inbounds %struct.edge_def, ptr %89, i64 0, i32 8
  %139 = load i32, ptr %138, align 4, !tbaa !528
  %140 = icmp sgt i32 %139, 10000
  br i1 %140, label %141, label %142, !prof !531

141:                                              ; preds = %136
  store i32 10000, ptr %138, align 4, !tbaa !528
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
  %149 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !286
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %151 = load i32, ptr %150, align 8, !tbaa !339
  %152 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %149, i32 noundef %151) #13
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #13
  %153 = getelementptr inbounds %struct.edge_def, ptr %148, i64 0, i32 7
  store i32 1, ptr %153, align 8, !tbaa !377
  br label %154

154:                                              ; preds = %143, %146
  %155 = phi i8 [ %147, %146 ], [ 0, %143 ]
  ret i8 %155
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_goto_dest(ptr noundef %0) unnamed_addr #0 !prof !488 !PGOFuncName !532 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @label_to_block_fn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !533 !PGOFuncName !534 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #12, !range !294
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !535

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #12
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !536 !PGOFuncName !537 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !410
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !538 !PGOFuncName !539 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !540
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !541

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !297
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !542

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !543
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #5 !prof !491 !PGOFuncName !545 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !546

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !547
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare void @fold_defer_overflow_warnings() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !549 !PGOFuncName !550 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !297
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !551 !PGOFuncName !552 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !551 !PGOFuncName !553 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #12
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @name_registered_for_update_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !554 !PGOFuncName !555 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !297
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !556 !PGOFuncName !557 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !558
  %4 = load ptr, ptr %3, align 8, !tbaa !286
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0) unnamed_addr #0 !prof !560 !PGOFuncName !561 {
  %2 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !551 !PGOFuncName !562 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #0 !prof !563 !PGOFuncName !564 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @find_taken_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fold_undefer_and_ignore_overflow_warnings() local_unnamed_addr #3

; Function Attrs: optsize
declare void @fold_undefer_overflow_warnings(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !565 !PGOFuncName !566 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #12, !range !294
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !567

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 645, ptr noundef nonnull @.str.1) #13
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !350
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #12
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !568 !PGOFuncName !569 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #12, !range !294
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !570

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #12
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !286
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !568 !PGOFuncName !571 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !410
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !568 !PGOFuncName !572 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #12
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !573
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !570

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #13
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !568 !PGOFuncName !574 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !410
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #12
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #7 !prof !568 !PGOFuncName !575 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !356
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !576 !PGOFuncName !577 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !297
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !578

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.1) #13
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #5 !prof !579 !PGOFuncName !580 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !581

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !582
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !579 !PGOFuncName !583 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !540
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !584

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 510, ptr noundef nonnull @.str.1) #13
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !297
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !585

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !586
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_label_label(ptr noundef %0) unnamed_addr #0 !prof !587 !PGOFuncName !588 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #9 !prof !589 !PGOFuncName !590 {
  %2 = load ptr, ptr %0, align 8, !tbaa !493
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !591
  store ptr %4, ptr %0, align 8, !tbaa !493
  ret void
}

; Function Attrs: optsize
declare ptr @first_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @has_abnormal_incoming_edge_p(ptr noundef %0) unnamed_addr #0 !prof !592 !PGOFuncName !593 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #12
  store i32 0, ptr %3, align 8, !tbaa.struct !374
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !375
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #12, !range !294
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8, !prof !594

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !286
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !377
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !595

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #12
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #12, !range !294
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !prof !596, !llvm.loop !597

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret i8 %20
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @phi_alternatives_equal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !598 !PGOFuncName !599 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !465
  %7 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !465
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #13
  %9 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !294
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %29, !prof !600

11:                                               ; preds = %3
  %12 = sext i32 %6 to i64
  %13 = sext i32 %8 to i64
  br label %14

14:                                               ; preds = %11, %26
  %15 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12
  %16 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %15, i64 noundef %12) #12
  %17 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %15, i64 noundef %13) #12
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %20, !prof !601

19:                                               ; preds = %14
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 367, ptr noundef nonnull @.str.1) #13
  br label %20

20:                                               ; preds = %14, %19
  %21 = icmp eq ptr %17, null
  br i1 %21, label %22, label %23, !prof !601

22:                                               ; preds = %20
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 368, ptr noundef nonnull @.str.1) #13
  br label %23

23:                                               ; preds = %20, %22
  %24 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %16, ptr noundef %17) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  call fastcc void @gsi_next(ptr noundef nonnull %4) #12
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #12, !range !294
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %14, label %29, !prof !602, !llvm.loop !603

29:                                               ; preds = %23, %26, %3
  %30 = phi i8 [ 1, %3 ], [ 1, %26 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret i8 %30
}

; Function Attrs: optsize
declare ptr @redirect_edge_succ_nodup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !604 !PGOFuncName !605 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !465
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #12
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !606
  ret i32 %7
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !608 !PGOFuncName !609 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #12
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #9 !prof !610 !PGOFuncName !611 {
  %2 = load ptr, ptr %0, align 8, !tbaa !493
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !612
  store ptr %4, ptr %0, align 8, !tbaa !493
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !613 !PGOFuncName !614 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #12
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #12
  store ptr %4, ptr %0, align 8, !tbaa !493
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !495
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !496
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !615 !PGOFuncName !616 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !410
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 !prof !617 !PGOFuncName !618 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #12
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #12, !range !294
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12, !prof !619

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #12
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #12, !range !410
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12, !prof !620

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #12
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #12, !range !294
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !prof !621, !llvm.loop !622

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @nearest_common_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @operand_equal_for_phi_arg_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !613 !PGOFuncName !623 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !624

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !582
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare void @fix_loop_structure(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rewrite_into_loop_closed_ssa(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @scev_reset() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_clear() unnamed_addr #4 !prof !307 !PGOFuncName !625 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !286
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !626

5:                                                ; preds = %0
  %6 = load i32, ptr %3, align 8, !tbaa !305
  %7 = and i32 %6, -65
  store i32 %7, ptr %3, align 8, !tbaa !305
  br label %8

8:                                                ; preds = %0, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_merge_phi() #7 !prof !627 !PGOFuncName !628 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @merge_phi_nodes() #0 !prof !627 !PGOFuncName !629 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !286
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !311
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !343
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @xmalloc(i64 noundef %10) #13
  tail call void @calculate_dominance_info(i32 noundef 1) #13
  %12 = load ptr, ptr @cfun, align 8, !tbaa !286
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !311
  %15 = load ptr, ptr %14, align 8, !tbaa !431
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !630
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !425
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %90, label %23, !prof !631

21:                                               ; preds = %75
  %22 = icmp eq ptr %76, %11
  br i1 %22, label %90, label %85, !prof !632

23:                                               ; preds = %0, %75
  %24 = phi ptr [ %78, %75 ], [ %17, %0 ]
  %25 = phi ptr [ %76, %75 ], [ %11, %0 ]
  %26 = call fastcc zeroext i8 @tree_forwarder_block_p(ptr noundef %24, i8 noundef zeroext 1) #12, !range !294
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %75, label %28, !prof !633

28:                                               ; preds = %23
  %29 = call fastcc ptr @single_succ(ptr noundef %24) #12
  %30 = call fastcc ptr @phi_nodes(ptr noundef %29) #12
  %31 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %30) #12, !range !294
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %75, !prof !634

33:                                               ; preds = %28
  %34 = call fastcc zeroext i8 @has_abnormal_incoming_edge_p(ptr noundef %24) #12, !range !294
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %75, !prof !635

36:                                               ; preds = %33
  %37 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %29, ptr noundef %24) #13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %41, !prof !636

39:                                               ; preds = %36
  %40 = getelementptr inbounds ptr, ptr %25, i64 1
  store ptr %24, ptr %25, align 8, !tbaa !286
  br label %75

41:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #14
  %42 = call fastcc ptr @single_succ_edge(ptr noundef %24) #12
  %43 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !465
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %24) #13
  %45 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12, !range !294
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %71, !prof !637

47:                                               ; preds = %41, %68
  %48 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12
  %49 = call fastcc ptr @gimple_phi_result(ptr noundef %48) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %50 = call fastcc zeroext i8 @has_zero_uses(ptr noundef %49) #12
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52, !prof !638

52:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %68

53:                                               ; preds = %47
  %54 = call fastcc zeroext i8 @single_imm_use(ptr noundef %49, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %63, label %56, !prof !639

56:                                               ; preds = %53
  %57 = load ptr, ptr %3, align 8, !tbaa !286
  %58 = call fastcc i32 @gimple_code(ptr noundef %57) #12, !range !410
  %59 = icmp eq i32 %58, 16
  br i1 %59, label %60, label %63, !prof !640

60:                                               ; preds = %56
  %61 = call fastcc ptr @gimple_bb(ptr noundef %57) #12
  %62 = icmp eq ptr %61, %29
  br i1 %62, label %64, label %63, !prof !641

63:                                               ; preds = %60, %56, %53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %73

64:                                               ; preds = %60
  %65 = zext i32 %44 to i64
  %66 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %57, i64 noundef %65) #12
  %67 = icmp eq ptr %66, %49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br i1 %67, label %68, label %73

68:                                               ; preds = %52, %64
  call fastcc void @gsi_next(ptr noundef nonnull %1) #12
  %69 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #12, !range !294
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %47, label %71, !prof !642, !llvm.loop !643

71:                                               ; preds = %68, %41
  %72 = getelementptr inbounds ptr, ptr %25, i64 1
  store ptr %24, ptr %25, align 8, !tbaa !286
  br label %73

73:                                               ; preds = %64, %63, %71
  %74 = phi ptr [ %72, %71 ], [ %25, %63 ], [ %25, %64 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #14
  br label %75

75:                                               ; preds = %39, %73, %28, %33, %23
  %76 = phi ptr [ %25, %23 ], [ %25, %33 ], [ %25, %28 ], [ %74, %73 ], [ %40, %39 ]
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !630
  %79 = load ptr, ptr @cfun, align 8, !tbaa !286
  %80 = getelementptr inbounds %struct.function, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !311
  %82 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !425
  %84 = icmp eq ptr %78, %83
  br i1 %84, label %21, label %23, !prof !644, !llvm.loop !645

85:                                               ; preds = %21, %85
  %86 = phi ptr [ %87, %85 ], [ %76, %21 ]
  %87 = getelementptr inbounds ptr, ptr %86, i64 -1
  %88 = load ptr, ptr %87, align 8, !tbaa !286
  call fastcc void @remove_forwarder_block_with_phi(ptr noundef %88) #12
  %89 = icmp eq ptr %87, %11
  br i1 %89, label %90, label %85, !prof !646, !llvm.loop !647

90:                                               ; preds = %85, %0, %21
  call void @free(ptr noundef %11) #12
  ret i32 0
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !648 !PGOFuncName !649 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !297
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #0 !prof !648 !PGOFuncName !650 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !651
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6, !prof !652

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !356
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !653

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #13
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !654 !PGOFuncName !655 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !651
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9, !prof !656

8:                                                ; preds = %22, %13, %3
  store ptr null, ptr %1, align 8, !tbaa !286
  store ptr null, ptr %2, align 8, !tbaa !286
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !651
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %22, !prof !657

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !297
  %16 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %15) #12, !range !294
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8, !prof !658

18:                                               ; preds = %13
  store ptr %6, ptr %1, align 8, !tbaa !286
  %19 = load ptr, ptr %5, align 8, !tbaa !651
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !297
  store ptr %21, ptr %2, align 8, !tbaa !286
  br label %27

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !356
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %8, label %25, !prof !659

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #13
  br label %27

27:                                               ; preds = %25, %18, %8
  %28 = phi i8 [ 0, %8 ], [ 1, %18 ], [ %26, %25 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_forwarder_block_with_phi(ptr noundef %0) unnamed_addr #0 !prof !660 !PGOFuncName !661 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !416
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %94, label %8, !prof !662

8:                                                ; preds = %1
  %9 = tail call ptr @first_stmt(ptr noundef %6) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11, !prof !663

11:                                               ; preds = %8
  %12 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %9) #12, !range !410
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %20, !prof !664

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @gimple_label_label(ptr noundef nonnull %9) #12
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 256
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %94, !prof !665

20:                                               ; preds = %14, %11, %8
  %21 = load ptr, ptr %0, align 8, !tbaa !412
  %22 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %21) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %86, label %24, !prof !666

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
  br i1 %31, label %40, label %32, !prof !667

32:                                               ; preds = %26
  %33 = call fastcc zeroext i8 @phi_alternatives_equal(ptr noundef %6, ptr noundef nonnull %30, ptr noundef %4) #12
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35, !prof !668

35:                                               ; preds = %32
  %36 = call ptr @redirect_edge_and_branch(ptr noundef nonnull %28, ptr noundef %6) #13
  br label %81, !llvm.loop !669

37:                                               ; preds = %32
  %38 = call ptr @split_edge(ptr noundef nonnull %28) #13
  %39 = call fastcc ptr @single_succ_edge(ptr noundef %38) #12
  br label %40

40:                                               ; preds = %37, %26
  %41 = phi ptr [ %39, %37 ], [ %28, %26 ]
  %42 = call ptr @redirect_edge_and_branch(ptr noundef %41, ptr noundef %6) #13
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %45, label %44, !prof !670

44:                                               ; preds = %40
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 821, ptr noundef nonnull @.str.1) #13
  br label %45

45:                                               ; preds = %40, %44
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %6) #13
  %46 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12, !range !294
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %81, !prof !671

48:                                               ; preds = %45, %76
  %49 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12
  %50 = load i32, ptr %25, align 4, !tbaa !465
  %51 = zext i32 %50 to i64
  %52 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %49, i64 noundef %51) #12
  %53 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %49, ptr noundef %4) #12
  %54 = load i64, ptr %52, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 141
  br i1 %56, label %57, label %76, !prof !672

57:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %58 = call ptr @redirect_edge_var_map_vector(ptr noundef %41) #13
  %59 = call fastcc i32 @VEC_edge_var_map_base_iterate(ptr noundef %58, i32 noundef 0, ptr noundef nonnull %3) #12, !range !673
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %65, !prof !674

61:                                               ; preds = %65
  %62 = add i32 %66, 1
  %63 = call fastcc i32 @VEC_edge_var_map_base_iterate(ptr noundef %58, i32 noundef %62, ptr noundef nonnull %3) #12, !range !673
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65, !prof !675, !llvm.loop !676

65:                                               ; preds = %57, %61
  %66 = phi i32 [ %62, %61 ], [ 0, %57 ]
  %67 = load ptr, ptr %3, align 8, !tbaa !286
  %68 = call fastcc ptr @redirect_edge_var_map_result(ptr noundef %67) #12
  %69 = icmp eq ptr %52, %68
  br i1 %69, label %70, label %61, !prof !677

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
  %79 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #12, !range !294
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %48, label %81, !prof !678, !llvm.loop !679

81:                                               ; preds = %76, %45, %35
  %82 = phi ptr [ %36, %35 ], [ %41, %45 ], [ %41, %76 ]
  call void @redirect_edge_var_map_clear(ptr noundef %82) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  %83 = load ptr, ptr %0, align 8, !tbaa !412
  %84 = call fastcc i32 @VEC_edge_base_length(ptr noundef %83) #12
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %26, !prof !680

86:                                               ; preds = %81, %20
  %87 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %0) #13
  %88 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %6) #13
  %89 = icmp eq ptr %88, %0
  br i1 %89, label %92, label %90, !prof !681

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
declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @redirect_edge_var_map_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @redirect_edge_var_map_vector(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_var_map_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !682 !PGOFuncName !683 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5, !prof !684

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !685
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11, !prof !687

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !286
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @redirect_edge_var_map_result(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !688 !PGOFuncName !689 {
  %2 = load ptr, ptr %0, align 8, !tbaa !690
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @redirect_edge_var_map_def(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !688 !PGOFuncName !692 {
  %2 = getelementptr inbounds %struct._edge_var_map, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !693
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @redirect_edge_var_map_location(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !694 !PGOFuncName !695 {
  %2 = getelementptr inbounds %struct._edge_var_map, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !696
  ret i32 %3
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!284}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!36 = !{ptr @cleanup_tree_cfg, ptr @cleanup_tree_cfg_noloop, i64 138956}
!37 = !{ptr @cleanup_tree_cfg, ptr @loops_state_satisfies_p, i64 15898}
!38 = !{ptr @cleanup_tree_cfg, ptr @repair_loop_structures, i64 5926}
!39 = !{ptr @cleanup_tree_cfg_noloop, ptr @timevar_push_1, i64 1}
!40 = !{ptr @cleanup_tree_cfg_noloop, ptr @dom_info_available_p, i64 277912}
!41 = !{ptr @cleanup_tree_cfg_noloop, ptr @delete_unreachable_blocks, i64 28251}
!42 = !{ptr @cleanup_tree_cfg_noloop, ptr @calculate_dominance_info, i64 28251}
!43 = !{ptr @cleanup_tree_cfg_noloop, ptr @cleanup_tree_cfg_1, i64 138956}
!44 = !{ptr @cleanup_tree_cfg_noloop, ptr @fancy_abort, i64 1}
!45 = !{ptr @cleanup_tree_cfg_noloop, ptr @compact_blocks, i64 138956}
!46 = !{ptr @cleanup_tree_cfg_noloop, ptr @timevar_pop_1, i64 1}
!47 = !{ptr @cleanup_tree_cfg_noloop, ptr @loops_state_set, i64 5926}
!48 = !{ptr @repair_loop_structures, ptr @bitmap_obstack_alloc_stat, i64 5925}
!49 = !{ptr @repair_loop_structures, ptr @fix_loop_structure, i64 5925}
!50 = !{ptr @repair_loop_structures, ptr @loops_state_satisfies_p, i64 5925}
!51 = !{ptr @repair_loop_structures, ptr @rewrite_into_loop_closed_ssa, i64 5860}
!52 = !{ptr @repair_loop_structures, ptr @bitmap_obstack_free, i64 5925}
!53 = !{ptr @repair_loop_structures, ptr @scev_reset, i64 5925}
!54 = !{ptr @repair_loop_structures, ptr @loops_state_clear, i64 5925}
!55 = !{ptr @cleanup_tree_cfg_1, ptr @split_bbs_on_noreturn_calls, i64 6758586}
!56 = !{ptr @cleanup_tree_cfg_1, ptr @bitmap_obstack_alloc_stat, i64 138956}
!57 = !{ptr @cleanup_tree_cfg_1, ptr @start_recording_case_labels, i64 138956}
!58 = !{ptr @cleanup_tree_cfg_1, ptr @VEC_basic_block_base_index, i64 13561346}
!59 = !{ptr @cleanup_tree_cfg_1, ptr @cleanup_tree_cfg_bb, i64 12849287}
!60 = !{ptr @cleanup_tree_cfg_1, ptr @bitmap_first_set_bit, i64 7239707}
!61 = !{ptr @cleanup_tree_cfg_1, ptr @bitmap_clear_bit, i64 7239707}
!62 = !{ptr @cleanup_tree_cfg_1, ptr @end_recording_case_labels, i64 138956}
!63 = !{ptr @cleanup_tree_cfg_1, ptr @bitmap_obstack_free, i64 138956}
!64 = !{ptr @split_bbs_on_noreturn_calls, ptr @VEC_gimple_base_length, i64 680666}
!65 = !{ptr @split_bbs_on_noreturn_calls, ptr @VEC_gimple_base_pop, i64 12032}
!66 = !{ptr @split_bbs_on_noreturn_calls, ptr @gimple_bb, i64 12032}
!67 = !{ptr @split_bbs_on_noreturn_calls, ptr @VEC_basic_block_base_index, i64 11380}
!68 = !{ptr @split_bbs_on_noreturn_calls, ptr @last_stmt, i64 11379}
!69 = !{ptr @split_bbs_on_noreturn_calls, ptr @gimple_call_noreturn_p, i64 14}
!70 = !{ptr @split_bbs_on_noreturn_calls, ptr @split_block, i64 13}
!71 = !{ptr @split_bbs_on_noreturn_calls, ptr @remove_fallthru_edge, i64 13}
!72 = !{ptr @cleanup_tree_cfg_bb, ptr @cleanup_omp_return, i64 6801331}
!73 = !{ptr @cleanup_tree_cfg_bb, ptr @cleanup_control_flow_bb, i64 6801330}
!74 = !{ptr @cleanup_tree_cfg_bb, ptr @tree_forwarder_block_p, i64 6801329}
!75 = !{ptr @cleanup_tree_cfg_bb, ptr @remove_forwarder_block, i64 489783}
!76 = !{ptr @cleanup_tree_cfg_bb, ptr @single_succ_p, i64 6437770}
!77 = !{ptr @cleanup_tree_cfg_bb, ptr @single_succ, i64 2536968}
!78 = !{ptr @cleanup_tree_cfg_bb, ptr @can_merge_blocks_p, i64 2442558}
!79 = !{ptr @cleanup_tree_cfg_bb, ptr @merge_blocks, i64 94410}
!80 = !{ptr @gimple_call_noreturn_p, ptr @gimple_call_flags, i64 563937}
!81 = !{ptr @remove_fallthru_edge, ptr @ei_start_1, i64 76439}
!82 = !{ptr @remove_fallthru_edge, ptr @ei_cond, i64 76440}
!83 = !{ptr @remove_fallthru_edge, ptr @remove_edge_and_dominated_blocks, i64 13}
!84 = !{ptr @remove_fallthru_edge, ptr @ei_next, i64 1}
!85 = !{ptr @ei_cond, ptr @ei_end_p, i64 6562787}
!86 = !{ptr @ei_cond, ptr @ei_edge, i64 3585291}
!87 = !{ptr @ei_next, ptr @ei_container, i64 6892921}
!88 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 3446461}
!89 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!90 = !{ptr @ei_end_p, ptr @ei_container, i64 14712407}
!91 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 7362963}
!92 = !{ptr @ei_edge, ptr @ei_container, i64 8023571}
!93 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 4011786}
!94 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!95 = !{ptr @cleanup_omp_return, ptr @last_stmt, i64 6801332}
!96 = !{ptr @cleanup_omp_return, ptr @gimple_code, i64 6065547}
!97 = !{ptr @cleanup_omp_return, ptr @single_pred_p, i64 1}
!98 = !{ptr @cleanup_omp_return, ptr @single_pred, i64 1}
!99 = !{ptr @cleanup_control_flow_bb, ptr @gimple_purge_dead_eh_edges, i64 6801331}
!100 = !{ptr @cleanup_control_flow_bb, ptr @gsi_last_bb, i64 6801331}
!101 = !{ptr @cleanup_control_flow_bb, ptr @gsi_end_p, i64 6801331}
!102 = !{ptr @cleanup_control_flow_bb, ptr @gsi_stmt, i64 6065547}
!103 = !{ptr @cleanup_control_flow_bb, ptr @gimple_code, i64 6065547}
!104 = !{ptr @cleanup_control_flow_bb, ptr @cleanup_control_expr_graph, i64 3928954}
!105 = !{ptr @cleanup_control_flow_bb, ptr @gimple_goto_dest, i64 1}
!106 = !{ptr @cleanup_control_flow_bb, ptr @remove_edge_and_dominated_blocks, i64 3}
!107 = !{ptr @cleanup_control_flow_bb, ptr @ei_next, i64 2}
!108 = !{ptr @cleanup_control_flow_bb, ptr @ei_safe_edge, i64 5}
!109 = !{ptr @cleanup_control_flow_bb, ptr @is_gimple_call, i64 2136593}
!110 = !{ptr @cleanup_control_flow_bb, ptr @gimple_call_noreturn_p, i64 563924}
!111 = !{ptr @cleanup_control_flow_bb, ptr @remove_fallthru_edge, i64 76427}
!112 = !{ptr @tree_forwarder_block_p, ptr @single_succ_p, i64 7291793}
!113 = !{ptr @tree_forwarder_block_p, ptr @phi_nodes, i64 3005939}
!114 = !{ptr @tree_forwarder_block_p, ptr @gimple_seq_empty_p, i64 3005939}
!115 = !{ptr @tree_forwarder_block_p, ptr @single_succ, i64 4389615}
!116 = !{ptr @tree_forwarder_block_p, ptr @single_succ_edge, i64 2147392}
!117 = !{ptr @tree_forwarder_block_p, ptr @ei_start_1, i64 2147391}
!118 = !{ptr @tree_forwarder_block_p, ptr @ei_cond, i64 4691960}
!119 = !{ptr @tree_forwarder_block_p, ptr @ei_next, i64 2544569}
!120 = !{ptr @tree_forwarder_block_p, ptr @gsi_last_bb, i64 2124470}
!121 = !{ptr @tree_forwarder_block_p, ptr @gsi_end_p, i64 2175585}
!122 = !{ptr @tree_forwarder_block_p, ptr @gsi_stmt, i64 2157550}
!123 = !{ptr @tree_forwarder_block_p, ptr @gimple_code, i64 2157550}
!124 = !{ptr @tree_forwarder_block_p, ptr @gimple_label_label, i64 51115}
!125 = !{ptr @tree_forwarder_block_p, ptr @gsi_prev, i64 51115}
!126 = !{ptr @tree_forwarder_block_p, ptr @VEC_edge_base_index, i64 6921}
!127 = !{ptr @remove_forwarder_block, ptr @single_succ_edge, i64 489782}
!128 = !{ptr @remove_forwarder_block, ptr @first_stmt, i64 489781}
!129 = !{ptr @remove_forwarder_block, ptr @gimple_code, i64 443933}
!130 = !{ptr @remove_forwarder_block, ptr @gimple_label_label, i64 188102}
!131 = !{ptr @remove_forwarder_block, ptr @has_abnormal_incoming_edge_p, i64 489780}
!132 = !{ptr @remove_forwarder_block, ptr @phi_nodes, i64 489778}
!133 = !{ptr @remove_forwarder_block, ptr @gimple_seq_empty_p, i64 489778}
!134 = !{ptr @remove_forwarder_block, ptr @ei_start_1, i64 489778}
!135 = !{ptr @remove_forwarder_block, ptr @ei_cond, i64 798965}
!136 = !{ptr @remove_forwarder_block, ptr @find_edge, i64 552440}
!137 = !{ptr @remove_forwarder_block, ptr @phi_alternatives_equal, i64 157439}
!138 = !{ptr @remove_forwarder_block, ptr @ei_next, i64 395645}
!139 = !{ptr @remove_forwarder_block, ptr @single_pred_p, i64 332983}
!140 = !{ptr @remove_forwarder_block, ptr @ei_safe_edge, i64 705012}
!141 = !{ptr @remove_forwarder_block, ptr @bitmap_set_bit, i64 705012}
!142 = !{ptr @remove_forwarder_block, ptr @redirect_edge_succ_nodup, i64 1}
!143 = !{ptr @remove_forwarder_block, ptr @redirect_edge_and_branch, i64 372028}
!144 = !{ptr @remove_forwarder_block, ptr @gsi_start_phis, i64 370779}
!145 = !{ptr @remove_forwarder_block, ptr @gsi_end_p, i64 1196740}
!146 = !{ptr @remove_forwarder_block, ptr @gsi_stmt, i64 452855}
!147 = !{ptr @remove_forwarder_block, ptr @gimple_phi_arg_location_from_edge, i64 443701}
!148 = !{ptr @remove_forwarder_block, ptr @gimple_phi_arg_def, i64 443701}
!149 = !{ptr @remove_forwarder_block, ptr @add_phi_arg, i64 443701}
!150 = !{ptr @remove_forwarder_block, ptr @gsi_next, i64 452213}
!151 = !{ptr @remove_forwarder_block, ptr @gsi_start_bb, i64 665966}
!152 = !{ptr @remove_forwarder_block, ptr @is_gimple_debug, i64 9154}
!153 = !{ptr @remove_forwarder_block, ptr @gsi_remove, i64 642}
!154 = !{ptr @remove_forwarder_block, ptr @gsi_insert_before, i64 642}
!155 = !{ptr @remove_forwarder_block, ptr @gsi_after_labels, i64 80246}
!156 = !{ptr @remove_forwarder_block, ptr @dom_info_available_p, i64 332983}
!157 = !{ptr @remove_forwarder_block, ptr @get_immediate_dominator, i64 665964}
!158 = !{ptr @remove_forwarder_block, ptr @nearest_common_dominator, i64 263166}
!159 = !{ptr @remove_forwarder_block, ptr @set_immediate_dominator, i64 332982}
!160 = !{ptr @remove_forwarder_block, ptr @delete_basic_block, i64 332983}
!161 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 27246941}
!162 = !{ptr @single_succ, ptr @single_succ_edge, i64 6936122}
!163 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 363560}
!164 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 8926009}
!165 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 8926009}
!166 = !{ptr @cleanup_control_expr_graph, ptr @gsi_stmt, i64 3928954}
!167 = !{ptr @cleanup_control_expr_graph, ptr @single_succ_p, i64 3928954}
!168 = !{ptr @cleanup_control_expr_graph, ptr @fold_defer_overflow_warnings, i64 3928856}
!169 = !{ptr @cleanup_control_expr_graph, ptr @gimple_location, i64 3928856}
!170 = !{ptr @cleanup_control_expr_graph, ptr @gimple_code, i64 8056412}
!171 = !{ptr @cleanup_control_expr_graph, ptr @gimple_cond_lhs, i64 3859664}
!172 = !{ptr @cleanup_control_expr_graph, ptr @gimple_cond_rhs, i64 3859664}
!173 = !{ptr @cleanup_control_expr_graph, ptr @name_registered_for_update_p, i64 4159859}
!174 = !{ptr @cleanup_control_expr_graph, ptr @gimple_phi_num_args, i64 434857}
!175 = !{ptr @cleanup_control_expr_graph, ptr @gimple_bb, i64 58322}
!176 = !{ptr @cleanup_control_expr_graph, ptr @gimple_phi_arg_imm_use_ptr, i64 46803}
!177 = !{ptr @cleanup_control_expr_graph, ptr @get_use_from_ptr, i64 46803}
!178 = !{ptr @cleanup_control_expr_graph, ptr @gimple_cond_code, i64 3859664}
!179 = !{ptr @cleanup_control_expr_graph, ptr @fold_binary_loc, i64 3859664}
!180 = !{ptr @cleanup_control_expr_graph, ptr @gimple_switch_index, i64 69191}
!181 = !{ptr @cleanup_control_expr_graph, ptr @find_taken_edge, i64 3928856}
!182 = !{ptr @cleanup_control_expr_graph, ptr @ei_start_1, i64 10122}
!183 = !{ptr @cleanup_control_expr_graph, ptr @ei_safe_edge, i64 30427}
!184 = !{ptr @cleanup_control_expr_graph, ptr @fold_undefer_overflow_warnings, i64 13466}
!185 = !{ptr @cleanup_control_expr_graph, ptr @ei_next, i64 6755}
!186 = !{ptr @cleanup_control_expr_graph, ptr @remove_edge_and_dominated_blocks, i64 13550}
!187 = !{ptr @cleanup_control_expr_graph, ptr @fold_undefer_and_ignore_overflow_warnings, i64 3918735}
!188 = !{ptr @cleanup_control_expr_graph, ptr @single_succ_edge, i64 98}
!189 = !{ptr @cleanup_control_expr_graph, ptr @bitmap_set_bit, i64 10220}
!190 = !{ptr @cleanup_control_expr_graph, ptr @gsi_remove, i64 10220}
!191 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 800176}
!192 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 426495}
!193 = !{ptr @is_gimple_call, ptr @gimple_code, i64 2136594}
!194 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 3859667}
!195 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 3859667}
!196 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 46804}
!197 = !{ptr @gimple_switch_index, ptr @gimple_op, i64 69190}
!198 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 9588423}
!199 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!200 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 9588423}
!201 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 8015771}
!202 = !{ptr @gimple_op, ptr @gimple_ops, i64 8015770}
!203 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 8015771}
!204 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 8015771}
!205 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!206 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 8015771}
!207 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 8015771}
!208 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!209 = !{ptr @phi_nodes, ptr @fancy_abort, i64 1}
!210 = !{ptr @gimple_label_label, ptr @gimple_op, i64 227247}
!211 = !{ptr @has_abnormal_incoming_edge_p, ptr @ei_start_1, i64 499290}
!212 = !{ptr @has_abnormal_incoming_edge_p, ptr @ei_cond, i64 1095030}
!213 = !{ptr @has_abnormal_incoming_edge_p, ptr @ei_next, i64 595740}
!214 = !{ptr @phi_alternatives_equal, ptr @gsi_start_phis, i64 127287}
!215 = !{ptr @phi_alternatives_equal, ptr @gsi_end_p, i64 3662517}
!216 = !{ptr @phi_alternatives_equal, ptr @gsi_stmt, i64 3649269}
!217 = !{ptr @phi_alternatives_equal, ptr @gimple_phi_arg_def, i64 7298538}
!218 = !{ptr @phi_alternatives_equal, ptr @fancy_abort, i64 52}
!219 = !{ptr @phi_alternatives_equal, ptr @operand_equal_for_phi_arg_p, i64 3649269}
!220 = !{ptr @phi_alternatives_equal, ptr @gsi_next, i64 3535230}
!221 = !{ptr @gimple_phi_arg_location_from_edge, ptr @gimple_phi_arg, i64 526342}
!222 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 809268}
!223 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 809268}
!224 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 814734}
!225 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 814734}
!226 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 11972}
!227 = !{ptr @gsi_after_labels, ptr @gsi_start_bb, i64 87614}
!228 = !{ptr @gsi_after_labels, ptr @gsi_end_p, i64 90426}
!229 = !{ptr @gsi_after_labels, ptr @gsi_stmt, i64 39498}
!230 = !{ptr @gsi_after_labels, ptr @gimple_code, i64 39498}
!231 = !{ptr @gsi_after_labels, ptr @gsi_next, i64 2812}
!232 = !{ptr @merge_phi_nodes, ptr @xmalloc, i64 15616}
!233 = !{ptr @merge_phi_nodes, ptr @calculate_dominance_info, i64 15616}
!234 = !{ptr @merge_phi_nodes, ptr @tree_forwarder_block_p, i64 490432}
!235 = !{ptr @merge_phi_nodes, ptr @single_succ, i64 9539}
!236 = !{ptr @merge_phi_nodes, ptr @phi_nodes, i64 9539}
!237 = !{ptr @merge_phi_nodes, ptr @gimple_seq_empty_p, i64 9539}
!238 = !{ptr @merge_phi_nodes, ptr @has_abnormal_incoming_edge_p, i64 9507}
!239 = !{ptr @merge_phi_nodes, ptr @dominated_by_p, i64 9506}
!240 = !{ptr @merge_phi_nodes, ptr @single_succ_edge, i64 5559}
!241 = !{ptr @merge_phi_nodes, ptr @gsi_start_phis, i64 5559}
!242 = !{ptr @merge_phi_nodes, ptr @gsi_end_p, i64 12998}
!243 = !{ptr @merge_phi_nodes, ptr @gsi_stmt, i64 8130}
!244 = !{ptr @merge_phi_nodes, ptr @gimple_phi_result, i64 8130}
!245 = !{ptr @merge_phi_nodes, ptr @has_zero_uses, i64 8130}
!246 = !{ptr @merge_phi_nodes, ptr @single_imm_use, i64 2530}
!247 = !{ptr @merge_phi_nodes, ptr @gimple_code, i64 2117}
!248 = !{ptr @merge_phi_nodes, ptr @gimple_bb, i64 1936}
!249 = !{ptr @merge_phi_nodes, ptr @gimple_phi_arg_def, i64 1898}
!250 = !{ptr @merge_phi_nodes, ptr @gsi_next, i64 7439}
!251 = !{ptr @merge_phi_nodes, ptr @remove_forwarder_block_with_phi, i64 8920}
!252 = !{ptr @merge_phi_nodes, ptr @free, i64 15616}
!253 = !{ptr @has_zero_uses, ptr @has_zero_uses_1, i64 1}
!254 = !{ptr @single_imm_use, ptr @is_gimple_debug, i64 1977}
!255 = !{ptr @single_imm_use, ptr @single_imm_use_1, i64 1}
!256 = !{ptr @remove_forwarder_block_with_phi, ptr @single_succ_edge, i64 9468}
!257 = !{ptr @remove_forwarder_block_with_phi, ptr @first_stmt, i64 8919}
!258 = !{ptr @remove_forwarder_block_with_phi, ptr @gimple_code, i64 8843}
!259 = !{ptr @remove_forwarder_block_with_phi, ptr @gimple_label_label, i64 433}
!260 = !{ptr @remove_forwarder_block_with_phi, ptr @VEC_edge_base_length, i64 29759}
!261 = !{ptr @remove_forwarder_block_with_phi, ptr @VEC_edge_base_index, i64 20841}
!262 = !{ptr @remove_forwarder_block_with_phi, ptr @find_edge, i64 20841}
!263 = !{ptr @remove_forwarder_block_with_phi, ptr @phi_alternatives_equal, i64 549}
!264 = !{ptr @remove_forwarder_block_with_phi, ptr @redirect_edge_and_branch, i64 20841}
!265 = !{ptr @remove_forwarder_block_with_phi, ptr @split_edge, i64 548}
!266 = !{ptr @remove_forwarder_block_with_phi, ptr @fancy_abort, i64 1}
!267 = !{ptr @remove_forwarder_block_with_phi, ptr @gsi_start_phis, i64 20840}
!268 = !{ptr @remove_forwarder_block_with_phi, ptr @gsi_end_p, i64 62721}
!269 = !{ptr @remove_forwarder_block_with_phi, ptr @gsi_stmt, i64 41881}
!270 = !{ptr @remove_forwarder_block_with_phi, ptr @gimple_phi_arg_def, i64 41881}
!271 = !{ptr @remove_forwarder_block_with_phi, ptr @gimple_phi_arg_location_from_edge, i64 41881}
!272 = !{ptr @remove_forwarder_block_with_phi, ptr @redirect_edge_var_map_vector, i64 33815}
!273 = !{ptr @remove_forwarder_block_with_phi, ptr @VEC_edge_var_map_base_iterate, i64 73141}
!274 = !{ptr @remove_forwarder_block_with_phi, ptr @redirect_edge_var_map_result, i64 66100}
!275 = !{ptr @remove_forwarder_block_with_phi, ptr @redirect_edge_var_map_def, i64 26774}
!276 = !{ptr @remove_forwarder_block_with_phi, ptr @redirect_edge_var_map_location, i64 26774}
!277 = !{ptr @remove_forwarder_block_with_phi, ptr @add_phi_arg, i64 41881}
!278 = !{ptr @remove_forwarder_block_with_phi, ptr @gsi_next, i64 41881}
!279 = !{ptr @remove_forwarder_block_with_phi, ptr @redirect_edge_var_map_clear, i64 20841}
!280 = !{ptr @remove_forwarder_block_with_phi, ptr @get_immediate_dominator, i64 17836}
!281 = !{ptr @remove_forwarder_block_with_phi, ptr @nearest_common_dominator, i64 3947}
!282 = !{ptr @remove_forwarder_block_with_phi, ptr @set_immediate_dominator, i64 8918}
!283 = !{ptr @remove_forwarder_block_with_phi, ptr @delete_basic_block, i64 8918}
!284 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!285 = !{!"function_entry_count", i64 138956}
!286 = !{!287, !287, i64 0}
!287 = !{!"any pointer", !288, i64 0}
!288 = !{!"omnipotent char", !289, i64 0}
!289 = !{!"Simple C/C++ TBAA"}
!290 = !{!291, !287, i64 32}
!291 = !{!"function", !287, i64 0, !287, i64 8, !287, i64 16, !287, i64 24, !287, i64 32, !287, i64 40, !287, i64 48, !287, i64 56, !287, i64 64, !287, i64 72, !287, i64 80, !287, i64 88, !287, i64 96, !292, i64 104, !292, i64 108, !292, i64 112, !292, i64 116, !292, i64 120, !292, i64 124, !287, i64 128, !292, i64 136, !292, i64 137, !292, i64 138, !292, i64 138, !292, i64 138, !292, i64 138, !292, i64 138, !292, i64 138, !292, i64 138, !292, i64 139, !292, i64 139, !292, i64 139, !292, i64 139, !292, i64 139, !292, i64 139, !292, i64 139}
!292 = !{!"int", !288, i64 0}
!293 = !{!"branch_weights", i32 123060, i32 15898}
!294 = !{i8 0, i8 2}
!295 = !{!"branch_weights", i32 9973, i32 5926}
!296 = !{!"tree-cfgcleanup.c:cleanup_tree_cfg_noloop"}
!297 = !{!288, !288, i64 0}
!298 = !{!"branch_weights", i32 138957, i32 1}
!299 = !{!"branch_weights", i32 28251, i32 110707}
!300 = !{!"branch_weights", i32 1, i32 138957}
!301 = !{!"branch_weights", i32 92051, i32 46907}
!302 = !{!"branch_weights", i32 40982, i32 5926}
!303 = !{!"function_entry_count", i64 21822}
!304 = !{!"tree-cfgcleanup.c:loops_state_satisfies_p"}
!305 = !{!306, !292, i64 0}
!306 = !{!"loops", !292, i64 0, !287, i64 8, !287, i64 16, !287, i64 24}
!307 = !{!"function_entry_count", i64 5925}
!308 = !{!"tree-cfgcleanup.c:repair_loop_structures"}
!309 = !{!"branch_weights", i32 65, i32 5862}
!310 = !{!"tree-cfgcleanup.c:cleanup_tree_cfg_1"}
!311 = !{!291, !287, i64 8}
!312 = !{!313, !292, i64 32}
!313 = !{!"control_flow_graph", !287, i64 0, !287, i64 8, !287, i64 16, !292, i64 24, !292, i64 28, !292, i64 32, !287, i64 40, !292, i64 48, !288, i64 52, !288, i64 60, !292, i64 68, !292, i64 72}
!314 = !{!"branch_weights", i32 138956, i32 1}
!315 = !{!316, !287, i64 0}
!316 = !{!"bitmap_head_def", !287, i64 0, !287, i64 8, !292, i64 16, !287, i64 24}
!317 = !{!"branch_weights", i32 1, i32 127}
!318 = !{!313, !287, i64 16}
!319 = !{!"branch_weights", i32 91994, i32 6229703}
!320 = !{!"branch_weights", i32 138956, i32 6182740}
!321 = distinct !{!321, !322}
!322 = !{!"llvm.loop.mustprogress"}
!323 = !{!"branch_weights", i32 1, i32 625174}
!324 = !{!"branch_weights", i32 138956, i32 486218}
!325 = distinct !{!325, !322}
!326 = !{!"branch_weights", i32 53545, i32 571630}
!327 = !{!"branch_weights", i32 127, i32 17786241}
!328 = !{!"tree-cfgcleanup.c:loops_state_set"}
!329 = !{!"function_entry_count", i64 710585}
!330 = !{!"tree-cfgcleanup.c:split_bbs_on_noreturn_calls"}
!331 = !{!291, !287, i64 24}
!332 = !{!"branch_weights", i32 41950, i32 668637}
!333 = !{!334, !287, i64 8}
!334 = !{!"gimple_df", !287, i64 0, !287, i64 8, !287, i64 16, !287, i64 24, !335, i64 32, !335, i64 48, !287, i64 64, !287, i64 72, !287, i64 80, !287, i64 88, !292, i64 96, !336, i64 104}
!335 = !{!"pt_solution", !292, i64 0, !292, i64 0, !292, i64 0, !292, i64 0, !292, i64 0, !292, i64 0, !287, i64 8}
!336 = !{!"ssa_operands", !287, i64 0, !292, i64 8, !292, i64 12, !288, i64 16, !287, i64 24, !287, i64 32}
!337 = !{!"branch_weights", i32 644999, i32 11819}
!338 = !{!"branch_weights", i32 627, i32 11193}
!339 = !{!340, !292, i64 80}
!340 = !{!"basic_block_def", !287, i64 0, !287, i64 8, !287, i64 16, !287, i64 24, !288, i64 32, !287, i64 48, !287, i64 56, !288, i64 64, !341, i64 72, !292, i64 80, !292, i64 84, !292, i64 88, !292, i64 92, !292, i64 96}
!341 = !{!"long", !288, i64 0}
!342 = !{!"branch_weights", i32 1, i32 11193}
!343 = !{!313, !292, i64 24}
!344 = !{!"branch_weights", i32 11182, i32 12}
!345 = !{!"branch_weights", i32 11182, i32 1}
!346 = !{!"branch_weights", i32 11169, i32 14}
!347 = !{!"branch_weights", i32 1, i32 14}
!348 = !{!"branch_weights", i32 11819, i32 0}
!349 = distinct !{!349, !322}
!350 = !{!340, !287, i64 8}
!351 = !{!"function_entry_count", i64 6958049}
!352 = !{!"tree-cfgcleanup.c:VEC_basic_block_base_index"}
!353 = !{!"function_entry_count", i64 6801331}
!354 = !{!"tree-cfgcleanup.c:cleanup_tree_cfg_bb"}
!355 = !{!"branch_weights", i32 6801332, i32 1}
!356 = !{!292, !292, i64 0}
!357 = !{!"branch_weights", i32 6311550, i32 489783}
!358 = !{!"branch_weights", i32 126223, i32 363561}
!359 = !{!"branch_weights", i32 3995214, i32 2442559}
!360 = !{!"branch_weights", i32 2348150, i32 94410}
!361 = !{!"function_entry_count", i64 680454}
!362 = !{!"tree-cfgcleanup.c:VEC_gimple_base_length"}
!363 = !{!"branch_weights", i32 356028, i32 324428}
!364 = !{!365, !292, i64 0}
!365 = !{!"VEC_gimple_base", !292, i64 0, !292, i64 4, !288, i64 8}
!366 = !{!"function_entry_count", i64 11818}
!367 = !{!"tree-cfgcleanup.c:VEC_gimple_base_pop"}
!368 = !{!"function_entry_count", i64 71947}
!369 = !{!"tree-cfgcleanup.c:gimple_bb"}
!370 = !{!"function_entry_count", i64 563937}
!371 = !{!"tree-cfgcleanup.c:gimple_call_noreturn_p"}
!372 = !{!"function_entry_count", i64 76439}
!373 = !{!"tree-cfgcleanup.c:remove_fallthru_edge"}
!374 = !{i64 0, i64 4, !356, i64 8, i64 8, !286}
!375 = !{i64 0, i64 8, !286}
!376 = !{!"branch_weights", i32 76413, i32 14}
!377 = !{!378, !292, i64 48}
!378 = !{!"edge_def", !287, i64 0, !287, i64 8, !288, i64 16, !287, i64 24, !287, i64 32, !292, i64 40, !292, i64 44, !292, i64 48, !292, i64 52, !341, i64 56}
!379 = !{!"branch_weights", i32 14, i32 0}
!380 = distinct !{!380, !322}
!381 = !{!"function_entry_count", i64 3500128}
!382 = !{!"tree-cfgcleanup.c:ei_start_1"}
!383 = !{!"function_entry_count", i64 6562787}
!384 = !{!"tree-cfgcleanup.c:ei_cond"}
!385 = !{!"branch_weights", i32 3585292, i32 2977497}
!386 = !{!"function_entry_count", i64 3446461}
!387 = !{!"tree-cfgcleanup.c:ei_next"}
!388 = !{!"branch_weights", i32 1, i32 3446462}
!389 = !{!"branch_weights", i32 3446462, i32 1}
!390 = !{!391, !292, i64 0}
!391 = !{!"", !292, i64 0, !287, i64 8}
!392 = !{!"function_entry_count", i64 7362963}
!393 = !{!"tree-cfgcleanup.c:ei_end_p"}
!394 = !{!"branch_weights", i32 13519, i32 7349446}
!395 = !{!"function_entry_count", i64 4011786}
!396 = !{!"tree-cfgcleanup.c:ei_edge"}
!397 = !{!"branch_weights", i32 1, i32 4011787}
!398 = !{!"function_entry_count", i64 38449692}
!399 = !{!"tree-cfgcleanup.c:VEC_edge_base_length"}
!400 = !{!"branch_weights", i32 43036, i32 38406658}
!401 = !{!402, !292, i64 0}
!402 = !{!"VEC_edge_base", !292, i64 0, !292, i64 4, !288, i64 8}
!403 = !{!"function_entry_count", i64 29628902}
!404 = !{!"tree-cfgcleanup.c:ei_container"}
!405 = !{!"branch_weights", i32 1, i32 29628903}
!406 = !{!"function_entry_count", i64 13837454}
!407 = !{!"tree-cfgcleanup.c:VEC_edge_base_index"}
!408 = !{!"tree-cfgcleanup.c:cleanup_omp_return"}
!409 = !{!"branch_weights", i32 735784, i32 6065549}
!410 = !{i32 0, i32 256}
!411 = !{!"branch_weights", i32 1, i32 6065549}
!412 = !{!340, !287, i64 0}
!413 = !{!"tree-cfgcleanup.c:cleanup_control_flow_bb"}
!414 = !{!"branch_weights", i32 6065549, i32 735784}
!415 = !{!"branch_weights", i32 -1950458493, i32 -59624554, i32 75947111, i32 1097}
!416 = !{!378, !287, i64 8}
!417 = distinct !{!417, !322}
!418 = !{!"branch_weights", i32 1572671, i32 563925}
!419 = !{!"branch_weights", i32 487499, i32 76427}
!420 = !{!"branch_weights", i32 76427, i32 1}
!421 = !{!"function_entry_count", i64 7291793}
!422 = !{!"tree-cfgcleanup.c:tree_forwarder_block_p"}
!423 = !{!"branch_weights", i32 4285855, i32 3005940}
!424 = !{!"branch_weights", i32 763765, i32 2242176}
!425 = !{!313, !287, i64 8}
!426 = !{!"branch_weights", i32 94735, i32 2147442}
!427 = !{!"branch_weights", i32 48, i32 2147395}
!428 = !{!"branch_weights", i32 2147395, i32 1}
!429 = !{!"branch_weights", i32 1, i32 2124678}
!430 = !{!378, !287, i64 0}
!431 = !{!313, !287, i64 0}
!432 = !{!"branch_weights", i32 22717, i32 2522103}
!433 = !{!"branch_weights", i32 2522103, i32 1}
!434 = !{!"branch_weights", i32 2124678, i32 420141}
!435 = distinct !{!435, !322}
!436 = !{!"branch_weights", i32 563931, i32 1}
!437 = !{!"branch_weights", i32 1560748, i32 37873, i32 1}
!438 = !{!"branch_weights", i32 37873, i32 1}
!439 = !{!"branch_weights", i32 1034689, i32 563931}
!440 = distinct !{!440, !322}
!441 = !{!"branch_weights", i32 347509, i32 216424}
!442 = !{!340, !287, i64 24}
!443 = !{!444, !287, i64 8}
!444 = !{!"loop", !292, i64 0, !292, i64 4, !287, i64 8, !287, i64 16, !445, i64 24, !292, i64 32, !292, i64 36, !287, i64 40, !287, i64 48, !287, i64 56, !287, i64 64, !287, i64 72, !446, i64 80, !446, i64 96, !288, i64 112, !288, i64 113, !292, i64 116, !287, i64 120, !287, i64 128, !288, i64 136, !287, i64 144}
!445 = !{!"lpt_decision", !292, i64 0, !292, i64 4}
!446 = !{!"", !341, i64 0, !341, i64 8}
!447 = !{!"branch_weights", i32 26, i32 216399}
!448 = !{!"function_entry_count", i64 489782}
!449 = !{!"tree-cfgcleanup.c:remove_forwarder_block"}
!450 = !{!"branch_weights", i32 1, i32 489783}
!451 = !{!"branch_weights", i32 45848, i32 443936}
!452 = !{!"branch_weights", i32 89476, i32 354461}
!453 = !{!"branch_weights", i32 89476, i32 1}
!454 = !{!"branch_weights", i32 489783, i32 1}
!455 = !{!"branch_weights", i32 403325, i32 86459}
!456 = !{!"branch_weights", i32 1, i32 277102}
!457 = !{!"branch_weights", i32 317981, i32 126740}
!458 = !{!"branch_weights", i32 126223, i32 518}
!459 = !{!"branch_weights", i32 277102, i32 167618}
!460 = distinct !{!460, !322}
!461 = !{!"branch_weights", i32 1, i32 363560}
!462 = !{!"branch_weights", i32 406192, i32 1}
!463 = !{!"branch_weights", i32 404829, i32 1364}
!464 = !{!"branch_weights", i32 404828, i32 1}
!465 = !{!378, !292, i64 44}
!466 = !{!"branch_weights", i32 79619, i32 404828}
!467 = distinct !{!467, !322}
!468 = !{!"branch_weights", i32 363560, i32 42632}
!469 = distinct !{!469, !322}
!470 = !{i64 0, i64 8, !286, i64 8, i64 8, !286, i64 16, i64 8, !286}
!471 = !{!"branch_weights", i32 9994, i32 353567}
!472 = !{!"branch_weights", i32 9994, i32 1}
!473 = !{!"branch_weights", i32 6975813, i32 92924212}
!474 = !{!"branch_weights", i32 0, i32 9994}
!475 = !{!"branch_weights", i32 319754, i32 43808}
!476 = !{!"branch_weights", i32 1, i32 43807}
!477 = !{!"branch_weights", i32 0, i32 1}
!478 = !{!"branch_weights", i32 1, i32 363561}
!479 = !{!"branch_weights", i32 76228, i32 287334}
!480 = !{!"function_entry_count", i64 27246941}
!481 = !{!"tree-cfgcleanup.c:single_succ_p"}
!482 = !{!"function_entry_count", i64 6936122}
!483 = !{!"tree-cfgcleanup.c:single_succ"}
!484 = !{!"function_entry_count", i64 52808482}
!485 = !{!"tree-cfgcleanup.c:gimple_code"}
!486 = !{!"function_entry_count", i64 363560}
!487 = !{!"tree-cfgcleanup.c:single_pred_p"}
!488 = !{!"function_entry_count", i64 0}
!489 = !{!"tree-cfgcleanup.c:single_pred"}
!490 = !{!"tree-cfgcleanup.c:single_pred_edge"}
!491 = !{!"function_entry_count", i64 8926009}
!492 = !{!"tree-cfgcleanup.c:gsi_last_bb"}
!493 = !{!494, !287, i64 0}
!494 = !{!"", !287, i64 0, !287, i64 8, !287, i64 16}
!495 = !{!494, !287, i64 8}
!496 = !{!494, !287, i64 16}
!497 = !{!"function_entry_count", i64 10586811}
!498 = !{!"tree-cfgcleanup.c:gsi_end_p"}
!499 = !{!"function_entry_count", i64 12306941}
!500 = !{!"tree-cfgcleanup.c:gsi_stmt"}
!501 = !{!502, !287, i64 0}
!502 = !{!"gimple_seq_node_d", !287, i64 0, !287, i64 8, !287, i64 16}
!503 = !{!"function_entry_count", i64 3928954}
!504 = !{!"tree-cfgcleanup.c:cleanup_control_expr_graph"}
!505 = !{!"branch_weights", i32 3928858, i32 98}
!506 = !{!"branch_weights", i32 1, i32 3859668, i32 69191}
!507 = !{!"branch_weights", i32 3637847, i32 221822}
!508 = !{!"branch_weights", i32 3621890, i32 15958}
!509 = !{!"branch_weights", i32 341167, i32 3280724}
!510 = !{!"branch_weights", i32 19585, i32 321583}
!511 = !{!"branch_weights", i32 12165, i32 7421}
!512 = !{!"branch_weights", i32 11677, i32 489}
!513 = !{!"branch_weights", i32 11609, i32 69}
!514 = !{!"branch_weights", i32 506890, i32 3352779}
!515 = !{!"branch_weights", i32 505674, i32 1217}
!516 = !{!"branch_weights", i32 93691, i32 411984}
!517 = !{!"branch_weights", i32 9576, i32 84116}
!518 = !{!"branch_weights", i32 3717, i32 5860}
!519 = !{!"branch_weights", i32 3454, i32 264}
!520 = !{!"branch_weights", i32 3437, i32 18}
!521 = !{i32 0, i32 65536}
!522 = !{!"branch_weights", i32 3918737, i32 10122}
!523 = !{!"branch_weights", i32 1, i32 10121}
!524 = !{!"branch_weights", i32 10121, i32 63}
!525 = distinct !{!525, !322}
!526 = !{!"branch_weights", i32 10122, i32 63}
!527 = !{!"branch_weights", i32 10121, i32 10184}
!528 = !{!378, !292, i64 52}
!529 = !{!378, !341, i64 56}
!530 = !{!"branch_weights", i32 0, i32 -2147483648}
!531 = !{!"branch_weights", i32 14, i32 10109}
!532 = !{!"tree-cfgcleanup.c:gimple_goto_dest"}
!533 = !{!"function_entry_count", i64 800176}
!534 = !{!"tree-cfgcleanup.c:ei_safe_edge"}
!535 = !{!"branch_weights", i32 426496, i32 373682}
!536 = !{!"function_entry_count", i64 2136594}
!537 = !{!"tree-cfgcleanup.c:is_gimple_call"}
!538 = !{!"function_entry_count", i64 9740743}
!539 = !{!"tree-cfgcleanup.c:bb_seq"}
!540 = !{!340, !292, i64 96}
!541 = !{!"branch_weights", i32 9740744, i32 1}
!542 = !{!"branch_weights", i32 1, i32 9740744}
!543 = !{!544, !287, i64 0}
!544 = !{!"gimple_bb_info", !287, i64 0, !287, i64 8}
!545 = !{!"tree-cfgcleanup.c:gimple_seq_last"}
!546 = !{!"branch_weights", i32 1, i32 8926010}
!547 = !{!548, !287, i64 8}
!548 = !{!"gimple_seq_d", !287, i64 0, !287, i64 8, !287, i64 16}
!549 = !{!"function_entry_count", i64 3928857}
!550 = !{!"tree-cfgcleanup.c:gimple_location"}
!551 = !{!"function_entry_count", i64 3859667}
!552 = !{!"tree-cfgcleanup.c:gimple_cond_lhs"}
!553 = !{!"tree-cfgcleanup.c:gimple_cond_rhs"}
!554 = !{!"function_entry_count", i64 434856}
!555 = !{!"tree-cfgcleanup.c:gimple_phi_num_args"}
!556 = !{!"function_entry_count", i64 856072}
!557 = !{!"tree-cfgcleanup.c:get_use_from_ptr"}
!558 = !{!559, !287, i64 24}
!559 = !{!"ssa_use_operand_d", !287, i64 0, !287, i64 8, !288, i64 16, !287, i64 24}
!560 = !{!"function_entry_count", i64 46804}
!561 = !{!"tree-cfgcleanup.c:gimple_phi_arg_imm_use_ptr"}
!562 = !{!"tree-cfgcleanup.c:gimple_cond_code"}
!563 = !{!"function_entry_count", i64 69190}
!564 = !{!"tree-cfgcleanup.c:gimple_switch_index"}
!565 = !{!"function_entry_count", i64 9588423}
!566 = !{!"tree-cfgcleanup.c:single_succ_edge"}
!567 = !{!"branch_weights", i32 1, i32 9588424}
!568 = !{!"function_entry_count", i64 8015771}
!569 = !{!"tree-cfgcleanup.c:gimple_op"}
!570 = !{!"branch_weights", i32 1, i32 8015772}
!571 = !{!"tree-cfgcleanup.c:gimple_has_ops"}
!572 = !{!"tree-cfgcleanup.c:gimple_ops"}
!573 = !{!341, !341, i64 0}
!574 = !{!"tree-cfgcleanup.c:gimple_statement_structure"}
!575 = !{!"tree-cfgcleanup.c:gss_for_code"}
!576 = !{!"function_entry_count", i64 1382414}
!577 = !{!"tree-cfgcleanup.c:gimple_phi_arg"}
!578 = !{!"branch_weights", i32 1, i32 1382415}
!579 = !{!"function_entry_count", i64 3505260}
!580 = !{!"tree-cfgcleanup.c:gimple_seq_empty_p"}
!581 = !{!"branch_weights", i32 2375143, i32 1130119}
!582 = !{!548, !287, i64 0}
!583 = !{!"tree-cfgcleanup.c:phi_nodes"}
!584 = !{!"branch_weights", i32 3505261, i32 1}
!585 = !{!"branch_weights", i32 1, i32 3505261}
!586 = !{!544, !287, i64 8}
!587 = !{!"function_entry_count", i64 227247}
!588 = !{!"tree-cfgcleanup.c:gimple_label_label"}
!589 = !{!"function_entry_count", i64 37872}
!590 = !{!"tree-cfgcleanup.c:gsi_prev"}
!591 = !{!502, !287, i64 8}
!592 = !{!"function_entry_count", i64 499290}
!593 = !{!"tree-cfgcleanup.c:has_abnormal_incoming_edge_p"}
!594 = !{!"branch_weights", i32 1, i32 499290}
!595 = !{!"branch_weights", i32 595742, i32 1}
!596 = !{!"branch_weights", i32 499290, i32 96452}
!597 = distinct !{!597, !322}
!598 = !{!"function_entry_count", i64 127287}
!599 = !{!"tree-cfgcleanup.c:phi_alternatives_equal"}
!600 = !{!"branch_weights", i32 517, i32 1}
!601 = !{!"branch_weights", i32 1, i32 140576}
!602 = !{!"branch_weights", i32 140059, i32 517}
!603 = distinct !{!603, !322}
!604 = !{!"function_entry_count", i64 526342}
!605 = !{!"tree-cfgcleanup.c:gimple_phi_arg_location_from_edge"}
!606 = !{!607, !292, i64 40}
!607 = !{!"phi_arg_d", !559, i64 0, !287, i64 32, !292, i64 40}
!608 = !{!"function_entry_count", i64 809268}
!609 = !{!"tree-cfgcleanup.c:gimple_phi_arg_def"}
!610 = !{!"function_entry_count", i64 563171}
!611 = !{!"tree-cfgcleanup.c:gsi_next"}
!612 = !{!502, !287, i64 16}
!613 = !{!"function_entry_count", i64 814734}
!614 = !{!"tree-cfgcleanup.c:gsi_start_bb"}
!615 = !{!"function_entry_count", i64 11972}
!616 = !{!"tree-cfgcleanup.c:is_gimple_debug"}
!617 = !{!"function_entry_count", i64 87614}
!618 = !{!"tree-cfgcleanup.c:gsi_after_labels"}
!619 = !{!"branch_weights", i32 29312, i32 35708}
!620 = !{!"branch_weights", i32 6717, i32 87615}
!621 = !{!"branch_weights", i32 0, i32 29312}
!622 = distinct !{!622, !322}
!623 = !{!"tree-cfgcleanup.c:gimple_seq_first"}
!624 = !{!"branch_weights", i32 1, i32 814735}
!625 = !{!"tree-cfgcleanup.c:loops_state_clear"}
!626 = !{!"branch_weights", i32 1, i32 5926}
!627 = !{!"function_entry_count", i64 15616}
!628 = !{!"tree-cfgcleanup.c:gate_merge_phi"}
!629 = !{!"tree-cfgcleanup.c:merge_phi_nodes"}
!630 = !{!340, !287, i64 56}
!631 = !{!"branch_weights", i32 1, i32 15616}
!632 = !{!"branch_weights", i32 920684108, i32 1226799540}
!633 = !{!"branch_weights", i32 480924, i32 9540}
!634 = !{!"branch_weights", i32 9509, i32 32}
!635 = !{!"branch_weights", i32 9509, i32 1}
!636 = !{!"branch_weights", i32 3949, i32 5561}
!637 = !{!"branch_weights", i32 4972, i32 1}
!638 = !{!"branch_weights", i32 2365, i32 5236}
!639 = !{!"branch_weights", i32 386, i32 1980}
!640 = !{!"branch_weights", i32 1812, i32 169}
!641 = !{!"branch_weights", i32 1777, i32 36}
!642 = !{!"branch_weights", i32 2628, i32 4972}
!643 = distinct !{!643, !322}
!644 = !{!"branch_weights", i32 15616, i32 474847}
!645 = distinct !{!645, !322}
!646 = !{!"branch_weights", i32 8921, i32 0}
!647 = distinct !{!647, !322}
!648 = !{!"function_entry_count", i64 7599}
!649 = !{!"tree-cfgcleanup.c:gimple_phi_result"}
!650 = !{!"tree-cfgcleanup.c:has_zero_uses"}
!651 = !{!559, !287, i64 8}
!652 = !{!"branch_weights", i32 5236, i32 2365}
!653 = !{!"branch_weights", i32 2365, i32 1}
!654 = !{!"function_entry_count", i64 2364}
!655 = !{!"tree-cfgcleanup.c:single_imm_use"}
!656 = !{!"branch_weights", i32 1, i32 2365}
!657 = !{!"branch_weights", i32 1980, i32 386}
!658 = !{!"branch_weights", i32 1980, i32 1}
!659 = !{!"branch_weights", i32 386, i32 1}
!660 = !{!"function_entry_count", i64 8920}
!661 = !{!"tree-cfgcleanup.c:remove_forwarder_block_with_phi"}
!662 = !{!"branch_weights", i32 1, i32 8921}
!663 = !{!"branch_weights", i32 76, i32 8846}
!664 = !{!"branch_weights", i32 433, i32 8414}
!665 = !{!"branch_weights", i32 433, i32 1}
!666 = !{!"branch_weights", i32 1, i32 8920}
!667 = !{!"branch_weights", i32 20300, i32 549}
!668 = !{!"branch_weights", i32 549, i32 1}
!669 = distinct !{!669, !322}
!670 = !{!"branch_weights", i32 20848, i32 1}
!671 = !{!"branch_weights", i32 20847, i32 1}
!672 = !{!"branch_weights", i32 33829, i32 8069}
!673 = !{i32 0, i32 2}
!674 = !{!"branch_weights", i32 1, i32 10366}
!675 = !{!"branch_weights", i32 10366, i32 47558}
!676 = distinct !{!676, !322}
!677 = !{!"branch_weights", i32 23463, i32 34462}
!678 = !{!"branch_weights", i32 21050, i32 20847}
!679 = distinct !{!679, !322}
!680 = !{!"branch_weights", i32 8920, i32 11928}
!681 = !{!"branch_weights", i32 4973, i32 3949}
!682 = !{!"function_entry_count", i64 68289}
!683 = !{!"tree-cfgcleanup.c:VEC_edge_var_map_base_iterate"}
!684 = !{!"branch_weights", i32 1, i32 68290}
!685 = !{!686, !292, i64 0}
!686 = !{!"VEC_edge_var_map_base", !292, i64 0, !292, i64 4, !288, i64 8}
!687 = !{!"branch_weights", i32 57924, i32 10367}
!688 = !{!"function_entry_count", i64 57923}
!689 = !{!"tree-cfgcleanup.c:redirect_edge_var_map_result"}
!690 = !{!691, !287, i64 0}
!691 = !{!"_edge_var_map", !287, i64 0, !287, i64 8, !292, i64 16}
!692 = !{!"tree-cfgcleanup.c:redirect_edge_var_map_def"}
!693 = !{!691, !287, i64 8}
!694 = !{!"function_entry_count", i64 23462}
!695 = !{!"tree-cfgcleanup.c:redirect_edge_var_map_location"}
!696 = !{!691, !292, i64 16}
