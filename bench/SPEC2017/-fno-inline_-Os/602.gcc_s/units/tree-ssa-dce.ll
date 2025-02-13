; ModuleID = 'tree-ssa-dce.c'
source_filename = "tree-ssa-dce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmt_stats = type { i32, i32, i32, i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.edge_list = type { i32, i32, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.loop_iterator = type { ptr, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.def_optype_d = type { ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.ao_ref_s = type { ptr, ptr, i64, i64, i64, i32, i32 }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_bb_info = type { ptr, ptr }

@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [31 x i8] c"Marking result for renaming : \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@pass_dce = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.5, ptr @gate_dce, ptr @tree_ssa_dce, ptr null, ptr null, i32 0, i32 76, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"dce\00", align 1
@flag_tree_dce = external local_unnamed_addr global i32, align 4
@timevar_enable = external local_unnamed_addr global i8, align 1
@cfun = external local_unnamed_addr global ptr, align 8
@visited_control_parents = internal unnamed_addr global ptr null, align 8
@longest_chain = internal unnamed_addr global i32 0, align 4
@total_chain = internal unnamed_addr global i32 0, align 4
@nr_walks = internal unnamed_addr global i32 0, align 4
@chain_ovfl = internal unnamed_addr global i1 false, align 1
@visited = internal global ptr null, align 8
@cfg_altered = internal unnamed_addr global i1 false, align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Statements deleted\00", align 1
@stats = internal unnamed_addr global %struct.stmt_stats zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"PHI nodes deleted\00", align 1
@control_dependence_map = internal unnamed_addr global ptr null, align 8
@last_stmt_necessary = internal unnamed_addr global ptr null, align 8
@bb_contains_live_stmts = internal unnamed_addr global ptr null, align 8
@processed = internal unnamed_addr global ptr null, align 8
@worklist = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"tree-ssa-dce.c\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [46 x i8] c"Marking back edge of irreducible loop %i->%i\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"can not prove finiteness of loop %i\0A\00", align 1
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"Marking useful stmt: \00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.13 = private unnamed_addr constant [23 x i8] c"\0AProcessing worklist:\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"processing: \00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"marking necessary through \00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c" stmt \00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.17 = private unnamed_addr constant [38 x i8] c"\0AEliminating unnecessary statements:\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Deleting LHS of call: \00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"Deleting : \00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Redirecting edge %i->%i to %i\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"Removed %d of %d statements (%d%%)\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"Removed %d of %d PHI nodes (%d%%)\0A\00", align 1
@pass_dce_loop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.23, ptr @gate_dce, ptr @tree_ssa_dce_loop, ptr null, ptr null, i32 0, i32 76, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@.str.23 = private unnamed_addr constant [8 x i8] c"dceloop\00", align 1
@pass_cd_dce = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.24, ptr @gate_dce, ptr @tree_ssa_cd_dce, ptr null, ptr null, i32 0, i32 77, i32 40, i32 0, i32 0, i32 0, i32 13 } }, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"cddce\00", align 1
@optimize = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_virtual_phi_result_for_renaming(ptr noundef %0) local_unnamed_addr #0 !prof !420 {
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #21
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !425

5:                                                ; preds = %1
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !426
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str, i64 30, i64 1, ptr nonnull %3)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !421
  tail call void @print_gimple_stmt(ptr noundef %11, ptr noundef %0, i32 noundef 0, i32 noundef 2) #22
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %13 = tail call i32 @fputc(i32 10, ptr %12)
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #23
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !428
  %18 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %2, ptr noundef %15) #23
  %19 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #23, !range !429
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %36, !prof !430

21:                                               ; preds = %14, %31
  %22 = phi ptr [ %32, %31 ], [ %18, %14 ]
  %23 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %2) #23
  %24 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %2) #23, !range !429
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %31, !prof !431

26:                                               ; preds = %21, %26
  %27 = phi ptr [ %28, %26 ], [ %23, %21 ]
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %27, ptr noundef %17) #23
  %28 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %2) #23
  %29 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %2) #23, !range !429
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %26, label %31, !prof !432, !llvm.loop !433

31:                                               ; preds = %26, %21
  call fastcc void @update_stmt(ptr noundef %22) #23
  %32 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %2) #23
  %33 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #23, !range !429
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %21, label %35, !prof !435, !llvm.loop !436

35:                                               ; preds = %31
  call void @mark_sym_for_renaming(ptr noundef %17) #22
  br label %36

36:                                               ; preds = %14, %35
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !437 !PGOFuncName !438 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !428
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !439 !PGOFuncName !440 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !441
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !444
  store ptr %6, ptr %0, align 8, !tbaa !445
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #23, !range !429
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14, !prof !446

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #23
  %11 = load ptr, ptr %0, align 8, !tbaa !445
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !428
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !447 !PGOFuncName !448 {
  %2 = load ptr, ptr %0, align 8, !tbaa !445
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !441
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #5 !prof !449 !PGOFuncName !450 {
  %2 = load ptr, ptr %0, align 8, !tbaa !445
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !444
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !451
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #4 !prof !452 !PGOFuncName !453 {
  %2 = load ptr, ptr %0, align 8, !tbaa !445
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !454 !PGOFuncName !455 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !456
  store ptr %1, ptr %4, align 8, !tbaa !421
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #5 !prof !454 !PGOFuncName !457 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !451
  store ptr %3, ptr %0, align 8, !tbaa !445
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #23, !range !429
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !458

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !444
  store ptr %8, ptr %2, align 8, !tbaa !451
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !459 !PGOFuncName !460 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !429
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !461

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #22
  tail call void @update_stmt_operands(ptr noundef %0) #22
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 !prof !449 !PGOFuncName !462 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !463
  store ptr %4, ptr %0, align 8, !tbaa !445
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #23, !range !429
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !464

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !465
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !466

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #23
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #23
  %12 = load ptr, ptr %0, align 8, !tbaa !445
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !428
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !467 !PGOFuncName !468 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !428
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #23
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #22
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #23, !range !469
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28, !prof !470

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #23
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53, !prof !471

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #23
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23, !prof !472

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #23
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #23
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #23
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !prof !473, !llvm.loop !474

28:                                               ; preds = %2
  br i1 %8, label %45, label %29, !prof !475

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #23
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #23
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #23
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #23
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #23
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #23
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !llvm.loop !476

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #23
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48, !prof !477

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #23
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53, !prof !475

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #23
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !465
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !478

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #23
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !479 !PGOFuncName !480 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !456
  %4 = load ptr, ptr %3, align 8, !tbaa !421
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !481 !PGOFuncName !482 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !483 !PGOFuncName !484 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #23
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #23
  store i8 0, ptr %0, align 8, !tbaa !485
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !487

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 918, ptr noundef nonnull @.str.3) #22
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #22
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !487

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !485
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !488
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #23
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !489
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !490
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #23
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !491 !PGOFuncName !492 {
  %2 = load i8, ptr %0, align 8, !tbaa !485
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #6 !prof !493 !PGOFuncName !494 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5, !prof !495

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !444
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9, !prof !496

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #23
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #23
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !497 !PGOFuncName !498 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !499
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !500

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !501
  store ptr %7, ptr %2, align 8, !tbaa !499
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !503
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !489
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !504

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !488
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !503
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #23
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !485
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !505 !PGOFuncName !506 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 771, ptr noundef nonnull @.str.3) #22
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #23
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !490
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #23
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #7 !prof !507 !PGOFuncName !508 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #23, !range !429
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4, !prof !477

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !428
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8, !prof !477

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !509
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null, !prof !475
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #6 !prof !510 !PGOFuncName !511 {
  %2 = load ptr, ptr %0, align 8, !tbaa !512
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !513

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !444
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !444
  store ptr %2, ptr %6, align 8, !tbaa !512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !514 !PGOFuncName !515 {
  store ptr %1, ptr %0, align 8, !tbaa !512
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !444
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !444
  store ptr %0, ptr %4, align 8, !tbaa !512
  store ptr %0, ptr %3, align 8, !tbaa !444
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #8 !prof !483 !PGOFuncName !516 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !485
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !517 !PGOFuncName !518 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !428
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !519 !PGOFuncName !520 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #23
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !521 !PGOFuncName !522 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !428
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !523

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.3) #22
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !524 !PGOFuncName !525 {
  %4 = and i32 %2, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !526

6:                                                ; preds = %3
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 747, ptr noundef nonnull @.str.3) #22
  br label %10

10:                                               ; preds = %3, %6, %9
  %11 = and i32 %2, 10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !526

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !527
  br label %24

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #23
  %17 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !527
  %18 = icmp eq ptr %16, null
  br i1 %18, label %24, label %19, !prof !528

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #23
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %16, align 8, !tbaa !529
  store ptr %23, ptr %17, align 8, !tbaa !527
  br label %24

24:                                               ; preds = %13, %22, %19, %15
  %25 = and i32 %2, 5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29, !prof !531

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %28, align 8, !tbaa !499
  br label %40

29:                                               ; preds = %24
  %30 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #23
  %31 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %30, ptr %31, align 8, !tbaa !499
  %32 = icmp ne i32 %4, 0
  %33 = icmp eq ptr %30, null
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %40, label %35, !prof !532

35:                                               ; preds = %29
  %36 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #23
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !533

38:                                               ; preds = %35
  %39 = load ptr, ptr %30, align 8, !tbaa !501
  store ptr %39, ptr %31, align 8, !tbaa !499
  br label %40

40:                                               ; preds = %27, %38, %35, %29
  store i8 0, ptr %0, align 8, !tbaa !485
  %41 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !505 !PGOFuncName !534 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !429
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !428
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !505 !PGOFuncName !535 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #23, !range !429
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !428
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !524 !PGOFuncName !536 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !429
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !531

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !428
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !537 !PGOFuncName !538 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #23, !range !429
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !539

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !428
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !540 !PGOFuncName !541 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !469
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !542 !PGOFuncName !543 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !469
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !454 !PGOFuncName !544 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !545

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !546

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !512
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #23
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_dce() #9 !prof !547 !PGOFuncName !548 {
  %1 = load i32, ptr @flag_tree_dce, align 4, !tbaa !426
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_dce() #0 !prof !549 !PGOFuncName !550 {
  %1 = tail call fastcc i32 @perform_tree_ssa_dce(i8 noundef zeroext 0) #23, !range !551
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @perform_tree_ssa_dce(i8 noundef zeroext %0) unnamed_addr #0 !prof !547 !PGOFuncName !552 {
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %12, label %3, !prof !553

3:                                                ; preds = %1
  tail call void @loop_optimizer_init(i32 noundef 15) #22
  tail call fastcc void @tree_dce_init(i8 noundef zeroext %0) #23
  %4 = load i8, ptr @timevar_enable, align 1, !tbaa !428
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !554

6:                                                ; preds = %3
  tail call void @timevar_push_1(i32 noundef 113) #22
  br label %7

7:                                                ; preds = %6, %3
  tail call void @calculate_dominance_info(i32 noundef 2) #22
  %8 = tail call ptr @create_edge_list() #22
  tail call fastcc void @find_all_control_dependences(ptr noundef %8) #23
  %9 = load i8, ptr @timevar_enable, align 1, !tbaa !428
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11, !prof !554

11:                                               ; preds = %7
  tail call void @timevar_pop_1(i32 noundef 113) #22
  br label %13

12:                                               ; preds = %1
  tail call fastcc void @tree_dce_init(i8 noundef zeroext 0) #23
  tail call fastcc void @find_obviously_necessary_stmts(ptr noundef null) #23
  br label %21

13:                                               ; preds = %11, %7
  %14 = load ptr, ptr @cfun, align 8, !tbaa !421
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !555
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !557
  %19 = tail call ptr @sbitmap_alloc(i32 noundef %18) #22
  store ptr %19, ptr @visited_control_parents, align 8, !tbaa !421
  tail call void @sbitmap_zero(ptr noundef %19) #22
  %20 = tail call zeroext i8 @mark_dfs_back_edges() #22
  tail call fastcc void @find_obviously_necessary_stmts(ptr noundef %8) #23
  tail call void @loop_optimizer_finalize() #22
  br label %21

21:                                               ; preds = %12, %13
  %22 = phi ptr [ null, %12 ], [ %8, %13 ]
  store i32 0, ptr @longest_chain, align 4, !tbaa !426
  store i32 0, ptr @total_chain, align 4, !tbaa !426
  store i32 0, ptr @nr_walks, align 4, !tbaa !426
  store i1 false, ptr @chain_ovfl, align 1
  %23 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %23, ptr @visited, align 8, !tbaa !421
  tail call fastcc void @propagate_necessity(ptr noundef %22) #23
  %24 = load ptr, ptr @visited, align 8, !tbaa !421
  tail call void @bitmap_obstack_free(ptr noundef %24) #22
  store ptr null, ptr @visited, align 8, !tbaa !421
  %25 = tail call fastcc zeroext i8 @eliminate_unnecessary_stmts() #23, !range !429
  %26 = load i1, ptr @cfg_altered, align 1
  tail call void @free_dominance_info(i32 noundef 2) #22
  %27 = load i1, ptr @cfg_altered, align 1
  br i1 %27, label %28, label %29, !prof !559

28:                                               ; preds = %21
  tail call void @free_dominance_info(i32 noundef 1) #22
  br label %29

29:                                               ; preds = %28, %21
  %30 = load ptr, ptr @cfun, align 8, !tbaa !421
  %31 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !560
  tail call void @statistics_counter_event(ptr noundef %30, ptr noundef nonnull @.str.6, i32 noundef %31) #22
  %32 = load ptr, ptr @cfun, align 8, !tbaa !421
  %33 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !562
  tail call void @statistics_counter_event(ptr noundef %32, ptr noundef nonnull @.str.7, i32 noundef %33) #22
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36, !prof !563

36:                                               ; preds = %29
  %37 = load i32, ptr @dump_flags, align 4, !tbaa !426
  %38 = and i32 %37, 24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call fastcc void @print_stats() #23
  br label %41

41:                                               ; preds = %40, %36, %29
  %42 = zext i1 %26 to i8
  %43 = or i8 %25, %42
  tail call fastcc void @tree_dce_done(i8 noundef zeroext %0) #23
  tail call void @free_edge_list(ptr noundef %22) #22
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %44, i32 0, i32 34850, !prof !564
  ret i32 %45
}

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_dce_init(i8 noundef zeroext %0) unnamed_addr #0 !prof !547 !PGOFuncName !565 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @stats, i8 0, i64 16, i1 false)
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %40, label %3, !prof !553

3:                                                ; preds = %1
  %4 = load ptr, ptr @cfun, align 8, !tbaa !421
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !555
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !557
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @xmalloc(i64 noundef %10) #22
  store ptr %11, ptr @control_dependence_map, align 8, !tbaa !421
  %12 = load ptr, ptr @cfun, align 8, !tbaa !421
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !555
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !557
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31, !prof !566

18:                                               ; preds = %3, %18
  %19 = phi i64 [ %23, %18 ], [ 0, %3 ]
  %20 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %21 = load ptr, ptr @control_dependence_map, align 8, !tbaa !421
  %22 = getelementptr inbounds ptr, ptr %21, i64 %19
  store ptr %20, ptr %22, align 8, !tbaa !421
  %23 = add nuw nsw i64 %19, 1
  %24 = load ptr, ptr @cfun, align 8, !tbaa !421
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !555
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !557
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %23, %29
  br i1 %30, label %18, label %31, !prof !567, !llvm.loop !568

31:                                               ; preds = %18, %3
  %32 = phi i32 [ %16, %3 ], [ %28, %18 ]
  %33 = tail call ptr @sbitmap_alloc(i32 noundef %32) #22
  store ptr %33, ptr @last_stmt_necessary, align 8, !tbaa !421
  tail call void @sbitmap_zero(ptr noundef %33) #22
  %34 = load ptr, ptr @cfun, align 8, !tbaa !421
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !555
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !557
  %39 = tail call ptr @sbitmap_alloc(i32 noundef %38) #22
  store ptr %39, ptr @bb_contains_live_stmts, align 8, !tbaa !421
  tail call void @sbitmap_zero(ptr noundef %39) #22
  br label %40

40:                                               ; preds = %31, %1
  %41 = load ptr, ptr @cfun, align 8, !tbaa !421
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !569
  %44 = getelementptr inbounds %struct.gimple_df, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !570
  %46 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %45) #23
  %47 = add i32 %46, 1
  %48 = tail call ptr @sbitmap_alloc(i32 noundef %47) #22
  store ptr %48, ptr @processed, align 8, !tbaa !421
  tail call void @sbitmap_zero(ptr noundef %48) #22
  %49 = tail call fastcc ptr @VEC_gimple_heap_alloc() #23
  store ptr %49, ptr @worklist, align 8, !tbaa !421
  store i1 false, ptr @cfg_altered, align 1
  ret void
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_edge_list() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_all_control_dependences(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !574 !PGOFuncName !575 {
  %2 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !576
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %10, !prof !566

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %7, %5 ], [ 0, %1 ]
  tail call fastcc void @find_control_dependence(ptr noundef nonnull %0, i32 noundef %6) #23
  %7 = add nuw nsw i32 %6, 1
  %8 = load i32, ptr %2, align 4, !tbaa !576
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %5, label %10, !prof !578, !llvm.loop !579

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_obviously_necessary_stmts(ptr noundef readonly %0) unnamed_addr #0 !prof !547 !PGOFuncName !580 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.loop_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %8 = load ptr, ptr @cfun, align 8, !tbaa !421
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !555
  %11 = load ptr, ptr %10, align 8, !tbaa !581
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !582
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !585
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %44, label %17, !prof !586

17:                                               ; preds = %1
  %18 = icmp ne ptr %0, null
  %19 = zext i1 %18 to i8
  br label %29

20:                                               ; preds = %40, %37
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !582
  %23 = load ptr, ptr @cfun, align 8, !tbaa !421
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !555
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !585
  %28 = icmp eq ptr %22, %27
  br i1 %28, label %44, label %29, !prof !587, !llvm.loop !588

29:                                               ; preds = %17, %20
  %30 = phi ptr [ %13, %17 ], [ %22, %20 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %30) #22
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !429
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %37, !prof !589

33:                                               ; preds = %29, %33
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  call fastcc void @gimple_set_plf(ptr noundef %34, i8 noundef zeroext 0) #23
  call fastcc void @gsi_next(ptr noundef nonnull %2) #23
  %35 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !429
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %33, label %37, !prof !590, !llvm.loop !591

37:                                               ; preds = %33, %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %30) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !592
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !429
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %20, !prof !593

40:                                               ; preds = %37, %40
  %41 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  call fastcc void @gimple_set_plf(ptr noundef %41, i8 noundef zeroext 0) #23
  call fastcc void @mark_stmt_if_obviously_necessary(ptr noundef %41, i8 noundef zeroext %19) #23
  call fastcc void @gsi_next(ptr noundef nonnull %2) #23
  %42 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !429
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %40, label %20, !prof !594, !llvm.loop !595

44:                                               ; preds = %20, %1
  %45 = load ptr, ptr @current_function_decl, align 8, !tbaa !421
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 1048576
  %48 = icmp eq i64 %47, 0
  %49 = getelementptr inbounds %struct.tree_function_decl, ptr %45, i64 0, i32 5
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 134217728
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %48, i1 %52, i1 false
  br i1 %53, label %59, label %54, !prof !596

54:                                               ; preds = %44
  %55 = and i32 %50, 268435456
  %56 = icmp eq i32 %55, 0
  %57 = icmp eq ptr %0, null
  %58 = or i1 %57, %56
  br i1 %58, label %137, label %61, !prof !597

59:                                               ; preds = %44
  %60 = icmp eq ptr %0, null
  br i1 %60, label %137, label %61, !prof !598

61:                                               ; preds = %54, %59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @scev_initialize() #22
  %62 = call zeroext i8 @mark_irreducible_loops() #22
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %117, label %64, !prof !599

64:                                               ; preds = %61
  %65 = load ptr, ptr @cfun, align 8, !tbaa !421
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !555
  %68 = load ptr, ptr %67, align 8, !tbaa !581
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !582
  %71 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !585
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %117, label %74, !prof !600

74:                                               ; preds = %64
  %75 = getelementptr inbounds i8, ptr %7, i64 8
  br label %76

76:                                               ; preds = %74, %108
  %77 = phi ptr [ %70, %74 ], [ %110, %108 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #21
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 1
  %79 = call fastcc ptr @ei_start_1(ptr noundef nonnull %78) #23
  store i32 0, ptr %7, align 8, !tbaa.struct !601
  store ptr %79, ptr %75, align 8, !tbaa.struct !602
  %80 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %79, ptr noundef nonnull %3) #23, !range !429
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %108, label %82, !prof !603

82:                                               ; preds = %76, %103
  %83 = load ptr, ptr %3, align 8, !tbaa !421
  %84 = getelementptr inbounds %struct.edge_def, ptr %83, i64 0, i32 7
  %85 = load i32, ptr %84, align 8, !tbaa !604
  %86 = and i32 %85, 160
  %87 = icmp eq i32 %86, 160
  br i1 %87, label %88, label %103, !prof !606

88:                                               ; preds = %82
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %90 = icmp eq ptr %89, null
  br i1 %90, label %100, label %91, !prof !607

91:                                               ; preds = %88
  %92 = load ptr, ptr %83, align 8, !tbaa !608
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 9
  %94 = load i32, ptr %93, align 8, !tbaa !609
  %95 = getelementptr inbounds %struct.edge_def, ptr %83, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !610
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 9
  %98 = load i32, ptr %97, align 8, !tbaa !609
  %99 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %89, ptr noundef nonnull @.str.10, i32 noundef %94, i32 noundef %98) #23
  br label %100

100:                                              ; preds = %91, %88
  %101 = getelementptr inbounds %struct.edge_def, ptr %83, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !610
  call fastcc void @mark_control_dependent_edges_necessary(ptr noundef %102, ptr noundef nonnull %0) #23
  br label %103

103:                                              ; preds = %82, %100
  call fastcc void @ei_next(ptr noundef nonnull %7) #23
  %104 = load i32, ptr %7, align 8
  %105 = load ptr, ptr %75, align 8
  %106 = call fastcc zeroext i8 @ei_cond(i32 %104, ptr %105, ptr noundef nonnull %3) #23, !range !429
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %82, !prof !611, !llvm.loop !612

108:                                              ; preds = %103, %76
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #21
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !582
  %111 = load ptr, ptr @cfun, align 8, !tbaa !421
  %112 = getelementptr inbounds %struct.function, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !555
  %114 = getelementptr inbounds %struct.control_flow_graph, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !585
  %116 = icmp eq ptr %110, %115
  br i1 %116, label %117, label %76, !prof !613, !llvm.loop !614

117:                                              ; preds = %108, %64, %61
  call fastcc void @fel_init(ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  %118 = load ptr, ptr %6, align 8, !tbaa !421
  %119 = icmp eq ptr %118, null
  br i1 %119, label %136, label %120, !prof !615

120:                                              ; preds = %117, %133
  %121 = phi ptr [ %134, %133 ], [ %118, %117 ]
  %122 = call zeroext i8 @finite_loop_p(ptr noundef nonnull %121) #22
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %133, !prof !616

124:                                              ; preds = %120
  %125 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127, !prof !617

127:                                              ; preds = %124
  %128 = load i32, ptr %121, align 8, !tbaa !618
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %125, ptr noundef nonnull @.str.11, i32 noundef %128) #23
  br label %130

130:                                              ; preds = %127, %124
  %131 = getelementptr inbounds %struct.loop, ptr %121, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !622
  call fastcc void @mark_control_dependent_edges_necessary(ptr noundef %132, ptr noundef nonnull %0) #23
  br label %133

133:                                              ; preds = %120, %130
  call fastcc void @fel_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  %134 = load ptr, ptr %6, align 8, !tbaa !421
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %120, !prof !623, !llvm.loop !624

136:                                              ; preds = %133, %117
  call void @scev_finalize() #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  br label %137

137:                                              ; preds = %59, %136, %54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  ret void
}

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_necessity(ptr noundef readonly %0) unnamed_addr #0 !prof !547 !PGOFuncName !625 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  %3 = icmp eq ptr %0, null
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !563

6:                                                ; preds = %1
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !426
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 22, i64 1, ptr nonnull %4)
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = load ptr, ptr @worklist, align 8
  %14 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %13) #23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %239, label %16, !prof !586

16:                                               ; preds = %12, %235
  %17 = phi ptr [ %236, %235 ], [ %13, %12 ]
  %18 = tail call fastcc ptr @VEC_gimple_base_pop(ptr noundef %17) #23
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21, !prof !626

21:                                               ; preds = %16
  %22 = load i32, ptr @dump_flags, align 4, !tbaa !426
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 12, i64 1, ptr nonnull %19)
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !421
  tail call void @print_gimple_stmt(ptr noundef %27, ptr noundef %18, i32 noundef 0, i32 noundef 2) #22
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %29 = tail call i32 @fputc(i32 10, ptr %28)
  br label %30

30:                                               ; preds = %25, %21, %16
  br i1 %3, label %52, label %31, !prof !627

31:                                               ; preds = %30
  %32 = tail call fastcc ptr @gimple_bb(ptr noundef %18) #23
  %33 = load ptr, ptr @cfun, align 8, !tbaa !421
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !555
  %36 = load ptr, ptr %35, align 8, !tbaa !581
  %37 = icmp eq ptr %32, %36
  br i1 %37, label %52, label %38, !prof !628

38:                                               ; preds = %31
  %39 = load ptr, ptr @visited_control_parents, align 8, !tbaa !421
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !609
  %42 = lshr i32 %41, 6
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds %struct.simple_bitmap_def, ptr %39, i64 0, i32 3, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !629
  %46 = and i32 %41, 63
  %47 = zext nneg i32 %46 to i64
  %48 = shl nuw i64 1, %47
  %49 = and i64 %48, %45
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52, !prof !630

51:                                               ; preds = %38
  tail call fastcc void @SET_BIT(ptr noundef nonnull %39, i32 noundef %41) #23
  tail call fastcc void @mark_control_dependent_edges_necessary(ptr noundef nonnull %32, ptr noundef nonnull %0) #23
  br label %52

52:                                               ; preds = %31, %38, %51, %30
  %53 = tail call fastcc i32 @gimple_code(ptr noundef %18) #23, !range !469
  %54 = icmp eq i32 %53, 16
  br i1 %54, label %55, label %115, !prof !631

55:                                               ; preds = %52
  %56 = tail call fastcc ptr @gimple_phi_result(ptr noundef %18) #23
  %57 = tail call zeroext i8 @is_gimple_reg(ptr noundef %56) #22
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %115, label %59, !prof !632

59:                                               ; preds = %55
  %60 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %18) #23
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %76, label %62, !prof !633

62:                                               ; preds = %59, %71
  %63 = phi i64 [ %72, %71 ], [ 0, %59 ]
  %64 = trunc i64 %63 to i32
  %65 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %18, i32 noundef %64) #23
  %66 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %65) #23
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 141
  br i1 %69, label %70, label %71, !prof !634

70:                                               ; preds = %62
  tail call fastcc void @mark_operand_necessary(ptr noundef nonnull %66) #23
  br label %71

71:                                               ; preds = %70, %62
  %72 = add nuw nsw i64 %63, 1
  %73 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %18) #23
  %74 = zext i32 %73 to i64
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %62, label %76, !prof !635, !llvm.loop !636

76:                                               ; preds = %71, %59
  br i1 %3, label %235, label %77, !prof !637

77:                                               ; preds = %76
  %78 = tail call fastcc zeroext i8 @degenerate_phi_p(ptr noundef %18) #23, !range !429
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %235, !prof !638

80:                                               ; preds = %77
  %81 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %18) #23
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %235, label %83, !prof !639

83:                                               ; preds = %80
  %84 = load ptr, ptr @cfun, align 8, !tbaa !421
  br label %85

85:                                               ; preds = %83, %109
  %86 = phi ptr [ %110, %109 ], [ %84, %83 ]
  %87 = phi i64 [ %111, %109 ], [ 0, %83 ]
  %88 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %18, i64 noundef %87) #23
  %89 = load ptr, ptr %88, align 8, !tbaa !608
  %90 = getelementptr inbounds %struct.function, ptr %86, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !555
  %92 = load ptr, ptr %91, align 8, !tbaa !581
  %93 = icmp eq ptr %89, %92
  br i1 %93, label %109, label %94, !prof !640

94:                                               ; preds = %85
  %95 = load ptr, ptr @visited_control_parents, align 8, !tbaa !421
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 9
  %97 = load i32, ptr %96, align 8, !tbaa !609
  %98 = lshr i32 %97, 6
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds %struct.simple_bitmap_def, ptr %95, i64 0, i32 3, i64 %99
  %101 = load i64, ptr %100, align 8, !tbaa !629
  %102 = and i32 %97, 63
  %103 = zext nneg i32 %102 to i64
  %104 = shl nuw i64 1, %103
  %105 = and i64 %104, %101
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109, !prof !641

107:                                              ; preds = %94
  tail call fastcc void @SET_BIT(ptr noundef nonnull %95, i32 noundef %97) #23
  tail call fastcc void @mark_control_dependent_edges_necessary(ptr noundef nonnull %89, ptr noundef nonnull %0) #23
  %108 = load ptr, ptr @cfun, align 8, !tbaa !421
  br label %109

109:                                              ; preds = %107, %94, %85
  %110 = phi ptr [ %108, %107 ], [ %86, %94 ], [ %86, %85 ]
  %111 = add nuw nsw i64 %87, 1
  %112 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %18) #23
  %113 = zext i32 %112 to i64
  %114 = icmp ult i64 %111, %113
  br i1 %114, label %85, label %235, !prof !642, !llvm.loop !643

115:                                              ; preds = %55, %52
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #21
  %116 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %18) #23
  %117 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #23
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %124, !prof !644

119:                                              ; preds = %115, %119
  %120 = phi ptr [ %121, %119 ], [ %116, %115 ]
  tail call fastcc void @mark_operand_necessary(ptr noundef %120) #23
  %121 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #23
  %122 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #23
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %119, label %124, !prof !645, !llvm.loop !646

124:                                              ; preds = %119, %115
  %125 = tail call fastcc ptr @gimple_vuse(ptr noundef %18) #23
  %126 = icmp eq ptr %125, null
  br i1 %126, label %234, label %127, !prof !647, !llvm.loop !648

127:                                              ; preds = %124
  %128 = load i1, ptr @chain_ovfl, align 1
  br i1 %128, label %129, label %130, !prof !649

129:                                              ; preds = %127
  tail call fastcc void @mark_all_reaching_defs_necessary(ptr noundef %18) #23
  br label %234, !llvm.loop !648

130:                                              ; preds = %127
  %131 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %18) #23, !range !429
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %163, label %133, !prof !650

133:                                              ; preds = %130
  %134 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %18) #23
  %135 = icmp eq ptr %134, null
  br i1 %135, label %143, label %136, !prof !651

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.tree_function_decl, ptr %134, i64 0, i32 5
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 6144
  %140 = icmp eq i32 %139, 6144
  br i1 %140, label %141, label %143, !prof !652

141:                                              ; preds = %136
  %142 = and i32 %138, 2047
  switch i32 %142, label %143 [
    i32 333, label %234
    i32 491, label %234
    i32 455, label %234
  ], !prof !653, !llvm.loop !648

143:                                              ; preds = %141, %136, %133
  tail call fastcc void @mark_all_reaching_defs_necessary(ptr noundef %18) #23
  %144 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %18) #23
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %218, label %146, !prof !654

146:                                              ; preds = %143, %159
  %147 = phi i32 [ %160, %159 ], [ 0, %143 ]
  %148 = tail call fastcc ptr @gimple_call_arg(ptr noundef %18, i32 noundef %147) #23
  %149 = load i64, ptr %148, align 8
  %150 = and i64 %149, 65535
  %151 = icmp eq i64 %150, 141
  br i1 %151, label %159, label %152, !prof !655

152:                                              ; preds = %146
  %153 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %148) #22
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %159, !prof !656

155:                                              ; preds = %152
  %156 = tail call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef nonnull %148) #23, !range !429
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %159, !prof !657

158:                                              ; preds = %155
  tail call fastcc void @mark_aliased_reaching_defs_necessary(ptr noundef %18, ptr noundef nonnull %148) #23
  br label %159

159:                                              ; preds = %155, %158, %146, %152
  %160 = add nuw i32 %147, 1
  %161 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %18) #23
  %162 = icmp ult i32 %160, %161
  br i1 %162, label %146, label %218, !prof !658, !llvm.loop !659

163:                                              ; preds = %130
  %164 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %18) #22
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %179, label %166, !prof !660

166:                                              ; preds = %163
  %167 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #23
  %168 = load i64, ptr %167, align 8
  %169 = and i64 %168, 65535
  %170 = icmp eq i64 %169, 141
  br i1 %170, label %218, label %171, !prof !661

171:                                              ; preds = %166
  %172 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %167) #22
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %218, !prof !662

174:                                              ; preds = %171
  %175 = tail call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef nonnull %167) #23, !range !429
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %178, !prof !663

177:                                              ; preds = %174
  tail call fastcc void @mark_aliased_reaching_defs_necessary(ptr noundef %18, ptr noundef nonnull %167) #23
  br label %218

178:                                              ; preds = %174
  tail call fastcc void @mark_all_reaching_defs_necessary(ptr noundef %18) #23
  br label %218

179:                                              ; preds = %163
  %180 = tail call fastcc i32 @gimple_code(ptr noundef %18) #23, !range !469
  %181 = trunc i32 %180 to i8
  switch i8 %181, label %217 [
    i8 9, label %182
    i8 7, label %195
  ], !prof !664

182:                                              ; preds = %179
  %183 = tail call fastcc ptr @gimple_return_retval(ptr noundef %18) #23
  %184 = load i64, ptr %183, align 8
  %185 = and i64 %184, 65535
  %186 = icmp eq i64 %185, 141
  br i1 %186, label %218, label %187, !prof !665

187:                                              ; preds = %182
  %188 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %183) #22
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %218, !prof !666

190:                                              ; preds = %187
  %191 = tail call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef nonnull %183) #23, !range !429
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %194, !prof !667

193:                                              ; preds = %190
  tail call fastcc void @mark_aliased_reaching_defs_necessary(ptr noundef %18, ptr noundef nonnull %183) #23
  br label %218

194:                                              ; preds = %190
  tail call fastcc void @mark_all_reaching_defs_necessary(ptr noundef %18) #23
  br label %218

195:                                              ; preds = %179
  tail call fastcc void @mark_all_reaching_defs_necessary(ptr noundef %18) #23
  %196 = tail call fastcc i32 @gimple_asm_ninputs(ptr noundef %18) #23, !range !469
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %218, label %198

198:                                              ; preds = %195, %213
  %199 = phi i32 [ %214, %213 ], [ 0, %195 ]
  %200 = tail call fastcc ptr @gimple_asm_input_op(ptr noundef %18, i32 noundef %199) #23
  %201 = getelementptr inbounds %struct.tree_list, ptr %200, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !428
  %203 = load i64, ptr %202, align 8
  %204 = and i64 %203, 65535
  %205 = icmp eq i64 %204, 141
  br i1 %205, label %213, label %206

206:                                              ; preds = %198
  %207 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %202) #22
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = tail call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef nonnull %202) #23, !range !429
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  tail call fastcc void @mark_aliased_reaching_defs_necessary(ptr noundef %18, ptr noundef nonnull %202) #23
  br label %213

213:                                              ; preds = %212, %209, %206, %198
  %214 = add nuw nsw i32 %199, 1
  %215 = tail call fastcc i32 @gimple_asm_ninputs(ptr noundef %18) #23, !range !469
  %216 = icmp ult i32 %214, %215
  br i1 %216, label %198, label %218, !llvm.loop !668

217:                                              ; preds = %179
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 805, ptr noundef nonnull @.str.3) #22
  br label %218

218:                                              ; preds = %159, %213, %143, %195, %182, %187, %194, %193, %178, %166, %177, %171, %217
  %219 = load i32, ptr @total_chain, align 4, !tbaa !426
  %220 = icmp ugt i32 %219, 16384
  br i1 %220, label %221, label %233, !prof !669

221:                                              ; preds = %218
  %222 = load i32, ptr @longest_chain, align 4, !tbaa !426
  %223 = shl i32 %222, 5
  %224 = icmp ugt i32 %219, %223
  br i1 %224, label %225, label %233, !prof !670

225:                                              ; preds = %221
  %226 = load i32, ptr @nr_walks, align 4, !tbaa !426
  %227 = shl i32 %226, 5
  %228 = icmp ugt i32 %219, %227
  br i1 %228, label %229, label %233, !prof !671

229:                                              ; preds = %225
  store i1 true, ptr @chain_ovfl, align 1
  %230 = load ptr, ptr @visited, align 8, !tbaa !421
  %231 = icmp eq ptr %230, null
  br i1 %231, label %233, label %232, !prof !672

232:                                              ; preds = %229
  tail call void @bitmap_clear(ptr noundef nonnull %230) #22
  br label %233

233:                                              ; preds = %229, %232, %225, %221, %218
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #21
  br label %235

234:                                              ; preds = %141, %141, %141, %124, %129
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #21
  br label %235

235:                                              ; preds = %109, %77, %76, %233, %80, %234
  %236 = load ptr, ptr @worklist, align 8
  %237 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %236) #23
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %16, !prof !673, !llvm.loop !648

239:                                              ; preds = %235, %12
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @eliminate_unnecessary_stmts() unnamed_addr #0 !prof !547 !PGOFuncName !674 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9, !prof !563

9:                                                ; preds = %0
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !426
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 37, i64 1, ptr nonnull %7)
  br label %15

15:                                               ; preds = %13, %9, %0
  tail call void @clear_special_calls() #22
  %16 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #22
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19, !prof !675

18:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1090, ptr noundef nonnull @.str.3) #22
  br label %19

19:                                               ; preds = %15, %18
  %20 = load ptr, ptr @cfun, align 8, !tbaa !421
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !555
  %23 = load ptr, ptr %22, align 8, !tbaa !581
  %24 = tail call fastcc ptr @single_succ(ptr noundef %23) #23
  %25 = tail call ptr @get_all_dominated_blocks(i32 noundef 1, ptr noundef %24) #22
  store ptr %25, ptr %3, align 8, !tbaa !421
  %26 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %25) #23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %94, label %32, !prof !586

28:                                               ; preds = %90, %32
  %29 = phi i8 [ %33, %32 ], [ %91, %90 ]
  %30 = call fastcc i32 @VEC_basic_block_base_length(ptr noundef %25) #23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %94, label %32, !prof !587, !llvm.loop !676

32:                                               ; preds = %19, %28
  %33 = phi i8 [ %29, %28 ], [ 0, %19 ]
  %34 = call fastcc ptr @VEC_basic_block_base_pop(ptr noundef %25) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %34) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !592
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %35 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !429
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %28, !prof !593

37:                                               ; preds = %32, %90
  %38 = phi i8 [ %91, %90 ], [ %33, %32 ]
  %39 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !592
  call fastcc void @gsi_prev(ptr noundef nonnull %2) #23
  %40 = load i32, ptr @stats, align 4, !tbaa !677
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr @stats, align 4, !tbaa !677
  %42 = call fastcc i32 @gimple_plf(ptr noundef %39) #23
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48, !prof !678

44:                                               ; preds = %37
  %45 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %39) #23, !range !429
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, i8 1, i8 %38, !prof !679
  call fastcc void @remove_dead_stmt(ptr noundef nonnull %1, ptr noundef %34) #23
  br label %90

48:                                               ; preds = %37
  %49 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %39) #23, !range !429
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %90, label %51, !prof !680

51:                                               ; preds = %48
  %52 = call fastcc ptr @gimple_call_fndecl(ptr noundef %39) #23
  %53 = icmp eq ptr %52, null
  br i1 %53, label %90, label %54, !prof !681

54:                                               ; preds = %51
  %55 = call fastcc ptr @gimple_call_lhs(ptr noundef %39) #23
  %56 = icmp eq ptr %55, null
  br i1 %56, label %88, label %57, !prof !682

57:                                               ; preds = %54
  %58 = load i64, ptr %55, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 141
  br i1 %60, label %61, label %88, !prof !683

61:                                               ; preds = %57
  %62 = load ptr, ptr @processed, align 8, !tbaa !421
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %55, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !428
  %65 = lshr i32 %64, 6
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds %struct.simple_bitmap_def, ptr %62, i64 0, i32 3, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !629
  %69 = and i32 %64, 63
  %70 = zext nneg i32 %69 to i64
  %71 = shl nuw i64 1, %70
  %72 = and i64 %71, %68
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %88, !prof !684

74:                                               ; preds = %61
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %76 = icmp eq ptr %75, null
  br i1 %76, label %86, label %77, !prof !685

77:                                               ; preds = %74
  %78 = load i32, ptr @dump_flags, align 4, !tbaa !426
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = call i64 @fwrite(ptr nonnull @.str.18, i64 22, i64 1, ptr nonnull %75)
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !421
  call void @print_gimple_stmt(ptr noundef %83, ptr noundef %39, i32 noundef 0, i32 noundef 2) #22
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %85 = call i32 @fputc(i32 10, ptr %84)
  br label %86

86:                                               ; preds = %81, %77, %74
  call fastcc void @gimple_call_set_lhs(ptr noundef %39) #23
  %87 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %39, ptr noundef %39) #22
  call fastcc void @update_stmt(ptr noundef %39) #23
  call void @release_ssa_name(ptr noundef nonnull %55) #22
  br label %88

88:                                               ; preds = %86, %61, %57, %54
  %89 = phi i8 [ %38, %61 ], [ 1, %86 ], [ %38, %57 ], [ %38, %54 ]
  call void @notice_special_calls(ptr noundef %39) #22
  br label %90

90:                                               ; preds = %44, %51, %88, %48
  %91 = phi i8 [ %89, %88 ], [ %38, %51 ], [ %38, %48 ], [ %47, %44 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !592
  %92 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %37, label %28, !prof !594, !llvm.loop !686

94:                                               ; preds = %28, %19
  %95 = phi i8 [ 0, %19 ], [ %29, %28 ]
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %3) #23
  %96 = load i1, ptr @cfg_altered, align 1
  br i1 %96, label %102, label %97, !prof !559

97:                                               ; preds = %94
  %98 = load ptr, ptr @cfun, align 8, !tbaa !421
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !555
  %101 = load ptr, ptr %100, align 8, !tbaa !581
  br label %207

102:                                              ; preds = %94
  call void @find_unreachable_blocks() #22
  %103 = load ptr, ptr @cfun, align 8, !tbaa !421
  %104 = getelementptr inbounds %struct.function, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !555
  %106 = getelementptr inbounds %struct.control_flow_graph, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !585
  %108 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !687
  %110 = load ptr, ptr %105, align 8, !tbaa !581
  %111 = icmp eq ptr %109, %110
  br i1 %111, label %207, label %112, !prof !688

112:                                              ; preds = %102, %200
  %113 = phi ptr [ %201, %200 ], [ %109, %102 ]
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !687
  %116 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !421
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 9
  %118 = load i32, ptr %117, align 8, !tbaa !609
  %119 = lshr i32 %118, 6
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds %struct.simple_bitmap_def, ptr %116, i64 0, i32 3, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !629
  %123 = and i32 %118, 63
  %124 = zext nneg i32 %123 to i64
  %125 = shl nuw i64 1, %124
  %126 = and i64 %125, %122
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %133, label %128, !prof !689

128:                                              ; preds = %112
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 13
  %130 = load i32, ptr %129, align 8, !tbaa !690
  %131 = and i32 %130, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %200, !prof !691

133:                                              ; preds = %128, %112
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %113) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !592
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  %134 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !429
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %170, !prof !692

136:                                              ; preds = %133, %167
  %137 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23
  %138 = call fastcc ptr @gimple_phi_result(ptr noundef %137) #23
  %139 = call zeroext i8 @is_gimple_reg(ptr noundef %138) #22
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %167, !prof !693

141:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #21
  %142 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23
  %143 = call fastcc ptr @gimple_phi_result(ptr noundef %142) #23
  %144 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %6, ptr noundef %143) #23
  %145 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %6) #23, !range !429
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %166, !prof !694

147:                                              ; preds = %141, %160
  %148 = phi ptr [ %161, %160 ], [ %144, %141 ]
  %149 = call fastcc ptr @gimple_bb(ptr noundef %148) #23
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %149, i64 0, i32 13
  %151 = load i32, ptr %150, align 8, !tbaa !690
  %152 = and i32 %151, 2
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %160, label %154, !prof !695

154:                                              ; preds = %147
  %155 = call fastcc i32 @gimple_code(ptr noundef %148) #23, !range !469
  %156 = icmp eq i32 %155, 16
  br i1 %156, label %164, label %157, !prof !696

157:                                              ; preds = %154
  %158 = call fastcc i32 @gimple_plf(ptr noundef %148) #23
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164, !prof !697

160:                                              ; preds = %157, %147
  %161 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %6) #23
  %162 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %6) #23, !range !429
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %147, label %166, !prof !698, !llvm.loop !699

164:                                              ; preds = %154, %157
  call fastcc void @end_imm_use_stmt_traverse(ptr noundef nonnull %6) #23
  %165 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23
  call void @mark_virtual_phi_result_for_renaming(ptr noundef %165) #23
  br label %166

166:                                              ; preds = %160, %141, %164
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #21
  br label %167

167:                                              ; preds = %136, %166
  call fastcc void @gsi_next(ptr noundef nonnull %1) #23
  %168 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !429
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %136, label %170, !prof !700, !llvm.loop !701

170:                                              ; preds = %167, %133
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 13
  %172 = load i32, ptr %171, align 8, !tbaa !690
  %173 = and i32 %172, 2
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %200, !prof !702

175:                                              ; preds = %170
  %176 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !426
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178, !prof !703

178:                                              ; preds = %175
  %179 = call ptr @first_dom_son(i32 noundef 1, ptr noundef nonnull %113) #22
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %178, %175
  call void @delete_basic_block(ptr noundef nonnull %113) #22
  br label %200

182:                                              ; preds = %178
  %183 = call ptr @get_all_dominated_blocks(i32 noundef 1, ptr noundef nonnull %113) #22
  store ptr %183, ptr %3, align 8, !tbaa !421
  %184 = call fastcc i32 @VEC_basic_block_base_length(ptr noundef %183) #23
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %198, label %186

186:                                              ; preds = %182, %195
  %187 = call fastcc ptr @VEC_basic_block_base_pop(ptr noundef %183) #23
  %188 = getelementptr inbounds %struct.basic_block_def, ptr %187, i64 0, i32 5
  %189 = load ptr, ptr %188, align 8, !tbaa !687
  %190 = getelementptr inbounds %struct.basic_block_def, ptr %187, i64 0, i32 13
  %191 = load i32, ptr %190, align 8, !tbaa !690
  %192 = and i32 %191, 2
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  call void @delete_basic_block(ptr noundef nonnull %187) #22
  br label %195

195:                                              ; preds = %194, %186
  %196 = call fastcc i32 @VEC_basic_block_base_length(ptr noundef %183) #23
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %186, !llvm.loop !704

198:                                              ; preds = %195, %182
  %199 = phi ptr [ %115, %182 ], [ %189, %195 ]
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %3) #23
  br label %200

200:                                              ; preds = %128, %181, %198, %170
  %201 = phi ptr [ %115, %128 ], [ %115, %170 ], [ %199, %198 ], [ %115, %181 ]
  %202 = load ptr, ptr @cfun, align 8, !tbaa !421
  %203 = getelementptr inbounds %struct.function, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !555
  %205 = load ptr, ptr %204, align 8, !tbaa !581
  %206 = icmp eq ptr %201, %205
  br i1 %206, label %207, label %112, !prof !705, !llvm.loop !706

207:                                              ; preds = %200, %97, %102
  %208 = phi ptr [ %101, %97 ], [ %109, %102 ], [ %201, %200 ]
  %209 = phi ptr [ %100, %97 ], [ %105, %102 ], [ %204, %200 ]
  %210 = getelementptr inbounds %struct.basic_block_def, ptr %208, i64 0, i32 6
  %211 = load ptr, ptr %210, align 8, !tbaa !582
  %212 = getelementptr inbounds %struct.control_flow_graph, ptr %209, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !585
  %214 = icmp eq ptr %211, %213
  br i1 %214, label %228, label %215, !prof !586

215:                                              ; preds = %207, %215
  %216 = phi ptr [ %221, %215 ], [ %211, %207 ]
  %217 = phi i8 [ %219, %215 ], [ %95, %207 ]
  %218 = call fastcc zeroext i8 @remove_dead_phis(ptr noundef %216) #23, !range !429
  %219 = or i8 %218, %217
  %220 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 6
  %221 = load ptr, ptr %220, align 8, !tbaa !582
  %222 = load ptr, ptr @cfun, align 8, !tbaa !421
  %223 = getelementptr inbounds %struct.function, ptr %222, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !555
  %225 = getelementptr inbounds %struct.control_flow_graph, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !585
  %227 = icmp eq ptr %221, %226
  br i1 %227, label %228, label %215, !prof !707, !llvm.loop !708

228:                                              ; preds = %215, %207
  %229 = phi i8 [ %95, %207 ], [ %219, %215 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #21
  ret i8 %229
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_stats() unnamed_addr #10 !prof !505 !PGOFuncName !709 {
  %1 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !560
  %2 = sitofp i32 %1 to float
  %3 = load i32, ptr @stats, align 4, !tbaa !677
  %4 = sitofp i32 %3 to float
  %5 = fdiv float %2, %4
  %6 = fmul float %5, 1.000000e+02
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %8 = fptosi float %6 to i32
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.21, i32 noundef %1, i32 noundef %3, i32 noundef %8) #23
  %10 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !710
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !562
  br i1 %11, label %19, label %13

13:                                               ; preds = %0
  %14 = sitofp i32 %12 to float
  %15 = sitofp i32 %10 to float
  %16 = fdiv float %14, %15
  %17 = fmul float %16, 1.000000e+02
  %18 = fptosi float %17 to i32
  br label %19

19:                                               ; preds = %0, %13
  %20 = phi i32 [ %18, %13 ], [ 0, %0 ]
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.22, i32 noundef %12, i32 noundef %10, i32 noundef %20) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_dce_done(i8 noundef zeroext %0) unnamed_addr #0 !prof !547 !PGOFuncName !711 {
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %34, label %3, !prof !553

3:                                                ; preds = %1
  %4 = load ptr, ptr @cfun, align 8, !tbaa !421
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !555
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !557
  %9 = icmp sgt i32 %8, 0
  %10 = load ptr, ptr @control_dependence_map, align 8, !tbaa !421
  br i1 %9, label %11, label %26, !prof !566

11:                                               ; preds = %3, %11
  %12 = phi ptr [ %16, %11 ], [ %10, %3 ]
  %13 = phi i64 [ %18, %11 ], [ 0, %3 ]
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !421
  tail call void @bitmap_obstack_free(ptr noundef %15) #22
  %16 = load ptr, ptr @control_dependence_map, align 8, !tbaa !421
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  store ptr null, ptr %17, align 8, !tbaa !421
  %18 = add nuw nsw i64 %13, 1
  %19 = load ptr, ptr @cfun, align 8, !tbaa !421
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !555
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !557
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %18, %24
  br i1 %25, label %11, label %26, !prof !567, !llvm.loop !712

26:                                               ; preds = %11, %3
  %27 = phi ptr [ %10, %3 ], [ %16, %11 ]
  tail call void @free(ptr noundef %27) #23
  %28 = load ptr, ptr @visited_control_parents, align 8, !tbaa !421
  %29 = load ptr, ptr %28, align 8, !tbaa !713
  tail call void @free(ptr noundef %29) #23
  tail call void @free(ptr noundef %28) #23
  %30 = load ptr, ptr @last_stmt_necessary, align 8, !tbaa !421
  %31 = load ptr, ptr %30, align 8, !tbaa !713
  tail call void @free(ptr noundef %31) #23
  tail call void @free(ptr noundef %30) #23
  %32 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !421
  %33 = load ptr, ptr %32, align 8, !tbaa !713
  tail call void @free(ptr noundef %33) #23
  tail call void @free(ptr noundef %32) #23
  store ptr null, ptr @bb_contains_live_stmts, align 8, !tbaa !421
  br label %34

34:                                               ; preds = %26, %1
  %35 = load ptr, ptr @processed, align 8, !tbaa !421
  %36 = load ptr, ptr %35, align 8, !tbaa !713
  tail call void @free(ptr noundef %36) #23
  tail call void @free(ptr noundef %35) #23
  tail call fastcc void @VEC_gimple_heap_free() #23
  ret void
}

; Function Attrs: optsize
declare void @free_edge_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !547 !PGOFuncName !715 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !675

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !716
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc() unnamed_addr #0 !prof !547 !PGOFuncName !718 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 64) #22
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_control_dependence(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !719 !PGOFuncName !720 {
  %3 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !721
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !421
  %8 = load ptr, ptr %7, align 8, !tbaa !608
  %9 = load ptr, ptr @cfun, align 8, !tbaa !421
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !555
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !585
  %14 = icmp eq ptr %8, %13
  br i1 %14, label %15, label %23, !prof !722

15:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 168, ptr noundef nonnull @.str.3) #22
  %16 = load ptr, ptr %3, align 8, !tbaa !721
  %17 = getelementptr inbounds ptr, ptr %16, i64 %5
  %18 = load ptr, ptr %17, align 8, !tbaa !421
  %19 = load ptr, ptr %18, align 8, !tbaa !608
  %20 = load ptr, ptr @cfun, align 8, !tbaa !421
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !555
  br label %23

23:                                               ; preds = %2, %15
  %24 = phi ptr [ %11, %2 ], [ %22, %15 ]
  %25 = phi ptr [ %8, %2 ], [ %19, %15 ]
  %26 = load ptr, ptr %24, align 8, !tbaa !581
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %30, !prof !723

28:                                               ; preds = %23
  %29 = tail call fastcc ptr @single_succ(ptr noundef %25) #23
  br label %32

30:                                               ; preds = %23
  %31 = tail call fastcc ptr @find_pdom(ptr noundef %25) #23
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi ptr [ %29, %28 ], [ %31, %30 ]
  %34 = load ptr, ptr %3, align 8, !tbaa !721
  %35 = getelementptr inbounds ptr, ptr %34, i64 %5
  %36 = load ptr, ptr %35, align 8, !tbaa !421
  %37 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !610
  %39 = icmp eq ptr %38, %33
  br i1 %39, label %60, label %40, !prof !724

40:                                               ; preds = %32, %57
  %41 = phi ptr [ %58, %57 ], [ %38, %32 ]
  %42 = load ptr, ptr @cfun, align 8, !tbaa !421
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !555
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !585
  %47 = icmp eq ptr %41, %46
  br i1 %47, label %60, label %48, !prof !725

48:                                               ; preds = %40
  %49 = load ptr, ptr %3, align 8, !tbaa !721
  %50 = getelementptr inbounds ptr, ptr %49, i64 %5
  %51 = load ptr, ptr %50, align 8, !tbaa !421
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !604
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57, !prof !726

56:                                               ; preds = %48
  tail call fastcc void @set_control_dependence_map_bit(ptr noundef %41, i32 noundef %1) #23
  br label %57

57:                                               ; preds = %48, %56
  %58 = tail call fastcc ptr @find_pdom(ptr noundef %41) #23
  %59 = icmp eq ptr %58, %33
  br i1 %59, label %60, label %40, !prof !727, !llvm.loop !728

60:                                               ; preds = %40, %57, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !729 !PGOFuncName !730 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !610
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_pdom(ptr noundef %0) unnamed_addr #0 !prof !731 !PGOFuncName !732 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !421
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !555
  %5 = load ptr, ptr %4, align 8, !tbaa !581
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %11, !prof !733

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 145, ptr noundef nonnull @.str.3) #22
  %8 = load ptr, ptr @cfun, align 8, !tbaa !421
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !555
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %4, %1 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !585
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %25, label %16, !prof !733

16:                                               ; preds = %11
  %17 = tail call ptr @get_immediate_dominator(i32 noundef 2, ptr noundef %0) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %25, !prof !733

19:                                               ; preds = %16
  %20 = load ptr, ptr @cfun, align 8, !tbaa !421
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !555
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !585
  br label %25

25:                                               ; preds = %19, %16, %11
  %26 = phi ptr [ %0, %11 ], [ %24, %19 ], [ %17, %16 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_control_dependence_map_bit(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !734 !PGOFuncName !735 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !421
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !555
  %6 = load ptr, ptr %5, align 8, !tbaa !581
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %21, label %8, !prof !736

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !585
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %13, !prof !736

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 127, ptr noundef nonnull @.str.3) #22
  br label %13

13:                                               ; preds = %8, %12
  %14 = load ptr, ptr @control_dependence_map, align 8, !tbaa !421
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !609
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %14, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !421
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %19, i32 noundef %1) #22
  br label %21

21:                                               ; preds = %2, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !729 !PGOFuncName !737 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #23, !range !429
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !738

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.3) #22
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !739
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #23
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !729 !PGOFuncName !740 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !739
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #23
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !741 !PGOFuncName !742 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !421
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !743 !PGOFuncName !744 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !745

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !746
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !748 !PGOFuncName !749 {
  %2 = load ptr, ptr %0, align 8, !tbaa !750
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !752 !PGOFuncName !753 {
  %2 = load ptr, ptr %0, align 8, !tbaa !750
  %3 = load ptr, ptr %2, align 8, !tbaa !754
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_plf(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #13 !prof !756 !PGOFuncName !757 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -2049
  %6 = select i1 %3, i32 0, i32 2048, !prof !758
  %7 = or disjoint i32 %5, %6
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !759 !PGOFuncName !760 {
  %2 = load ptr, ptr %0, align 8, !tbaa !750
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !761
  store ptr %4, ptr %0, align 8, !tbaa !750
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !762 !PGOFuncName !763 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #23
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #23
  store ptr %4, ptr %0, align 8, !tbaa !750
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !764
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !765
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_stmt_if_obviously_necessary(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !766 !PGOFuncName !767 {
  %3 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !426
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !768

5:                                                ; preds = %2
  %6 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %0) #22
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %54

8:                                                ; preds = %5, %2
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !469
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %45 [
    i8 33, label %54
    i8 4, label %54
    i8 7, label %11
    i8 14, label %11
    i8 9, label %11
    i8 8, label %12
    i8 6, label %21
    i8 2, label %23
    i8 3, label %31
    i8 1, label %35
    i8 5, label %42
  ], !prof !769

11:                                               ; preds = %8, %8, %8
  br label %54

12:                                               ; preds = %8
  %13 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %0) #22
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %54, !prof !770

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %56, label %18, !prof !771

18:                                               ; preds = %15
  %19 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %45, !prof !772

21:                                               ; preds = %8, %18
  %22 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #23
  br label %45

23:                                               ; preds = %8
  %24 = tail call fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %0) #23, !range !429
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @gimple_debug_bind_get_var(ptr noundef %0) #23
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 37
  br i1 %30, label %56, label %54

31:                                               ; preds = %8
  %32 = tail call zeroext i8 @simple_goto_p(ptr noundef %0) #22
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 338, ptr noundef nonnull @.str.3) #22
  br label %54

35:                                               ; preds = %8
  %36 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #23
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !739
  %39 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %38) #23
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %42, label %41, !prof !773

41:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 343, ptr noundef nonnull @.str.3) #22
  br label %42

42:                                               ; preds = %41, %35, %8
  %43 = icmp eq i8 %1, 0
  br i1 %43, label %44, label %45, !prof !774

44:                                               ; preds = %42
  tail call fastcc void @mark_stmt_necessary(ptr noundef %0, i8 noundef zeroext 1) #23
  br label %45

45:                                               ; preds = %8, %42, %44, %18, %21
  %46 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #23, !range !429
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %54, !prof !775

48:                                               ; preds = %45
  %49 = tail call zeroext i8 @is_ctrl_altering_stmt(ptr noundef %0) #22
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %54, !prof !776

51:                                               ; preds = %48
  %52 = tail call zeroext i8 @is_hidden_global_store(ptr noundef %0) #22
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54, !prof !777

54:                                               ; preds = %51, %45, %48, %34, %31, %23, %26, %12, %8, %8, %5, %11
  %55 = phi i8 [ 1, %11 ], [ 1, %5 ], [ 0, %8 ], [ 0, %8 ], [ 1, %12 ], [ 0, %26 ], [ 0, %23 ], [ 1, %31 ], [ 1, %34 ], [ 1, %48 ], [ 1, %45 ], [ 1, %51 ]
  tail call fastcc void @mark_stmt_necessary(ptr noundef %0, i8 noundef zeroext %55) #23
  br label %56

56:                                               ; preds = %54, %51, %26, %15
  ret void
}

; Function Attrs: optsize
declare void @scev_initialize() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #14 !prof !778 !PGOFuncName !779 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !780 !PGOFuncName !781 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #23, !range !429
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !782

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #23
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !421
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_control_dependent_edges_necessary(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !783 !PGOFuncName !784 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %5 = load ptr, ptr @cfun, align 8, !tbaa !421
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !555
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !585
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %15, !prof !785

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 383, ptr noundef nonnull @.str.3) #22
  %12 = load ptr, ptr @cfun, align 8, !tbaa !421
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !555
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi ptr [ %7, %2 ], [ %14, %11 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !581
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %61, label %19, !prof !785

19:                                               ; preds = %15
  %20 = load ptr, ptr @control_dependence_map, align 8, !tbaa !421
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !609
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !421
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %25, ptr noundef nonnull %4) #23
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !429
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %61, label %28, !prof !786

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.edge_list, ptr %1, i64 0, i32 2
  br label %30

30:                                               ; preds = %28, %58
  %31 = load ptr, ptr %29, align 8, !tbaa !721
  %32 = load i32, ptr %4, align 4, !tbaa !426
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !421
  %36 = load ptr, ptr %35, align 8, !tbaa !608
  %37 = load ptr, ptr @last_stmt_necessary, align 8, !tbaa !421
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !609
  %40 = lshr i32 %39, 6
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds %struct.simple_bitmap_def, ptr %37, i64 0, i32 3, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !629
  %44 = and i32 %39, 63
  %45 = zext nneg i32 %44 to i64
  %46 = shl nuw i64 1, %45
  %47 = and i64 %46, %43
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %58, !prof !787

49:                                               ; preds = %30
  tail call fastcc void @SET_BIT(ptr noundef nonnull %37, i32 noundef %39) #23
  %50 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !421
  %51 = load i32, ptr %38, align 8, !tbaa !609
  tail call fastcc void @SET_BIT(ptr noundef %50, i32 noundef %51) #23
  %52 = tail call ptr @last_stmt(ptr noundef nonnull %36) #22
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54, !prof !788

54:                                               ; preds = %49
  %55 = tail call zeroext i8 @is_ctrl_stmt(ptr noundef nonnull %52) #22
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57, !prof !789

57:                                               ; preds = %54
  tail call fastcc void @mark_stmt_necessary(ptr noundef nonnull %52, i8 noundef zeroext 1) #23
  br label %58

58:                                               ; preds = %49, %54, %57, %30
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %59 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !429
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %30, !prof !790, !llvm.loop !791

61:                                               ; preds = %58, %19, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !792 !PGOFuncName !793 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !794

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #23
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #23
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !795

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.3) #22
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !796
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !796
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !798 !PGOFuncName !799 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !800
  %4 = load ptr, ptr @cfun, align 8, !tbaa !421
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !802
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !803

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !804
  store ptr null, ptr %1, align 8, !tbaa !421
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #23
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #23
  store ptr %11, ptr %0, align 8, !tbaa !804
  %12 = load ptr, ptr @cfun, align 8, !tbaa !421
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !802
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !805
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !618
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23, !prof !807

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !804
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #23
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !808
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !809

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !810
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27, !prof !811

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #23
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !prof !812, !llvm.loop !813

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #23
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @finite_loop_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !814 !PGOFuncName !815 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !800
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !804
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #23, !range !816
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !817

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !800
  %13 = load i32, ptr %3, align 4, !tbaa !426
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #23
  store ptr %14, ptr %1, align 8, !tbaa !421
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !prof !818, !llvm.loop !819

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #23
  store ptr null, ptr %1, align 8, !tbaa !421
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare void @scev_finalize() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !820 !PGOFuncName !821 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !690
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !822

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !428
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !823

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !824
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !826 !PGOFuncName !827 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !828

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !829
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_stmt_necessary(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !831 !PGOFuncName !832 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !833

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 209, ptr noundef nonnull @.str.3) #22
  br label %5

5:                                                ; preds = %2, %4
  %6 = tail call fastcc i32 @gimple_plf(ptr noundef %0) #23
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %33, !prof !834

8:                                                ; preds = %5
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11, !prof !834

11:                                               ; preds = %8
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !426
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 21, i64 1, ptr nonnull %9)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !421
  tail call void @print_gimple_stmt(ptr noundef %17, ptr noundef %0, i32 noundef 0, i32 noundef 2) #22
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %19 = tail call i32 @fputc(i32 10, ptr %18)
  br label %20

20:                                               ; preds = %15, %11, %8
  tail call fastcc void @gimple_set_plf(ptr noundef %0, i8 noundef zeroext 1) #23
  %21 = icmp eq i8 %1, 0
  br i1 %21, label %23, label %22, !prof !835

22:                                               ; preds = %20
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef %0) #23
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !421
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26, !prof !836

26:                                               ; preds = %23
  %27 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #23, !range !429
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33, !prof !837

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #23
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !609
  tail call fastcc void @SET_BIT(ptr noundef nonnull %24, i32 noundef %32) #23
  br label %33

33:                                               ; preds = %5, %29, %26, %23
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !838 !PGOFuncName !839 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !840 !PGOFuncName !841 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %0) unnamed_addr #0 !prof !505 !PGOFuncName !842 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #23
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_debug_bind_get_var(ptr noundef %0) unnamed_addr #0 !prof !505 !PGOFuncName !843 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @simple_goto_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !844 !PGOFuncName !845 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !428
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !846 !PGOFuncName !847 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #23, !range !429
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !848

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 14
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8 [ %8, %4 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @is_ctrl_altering_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_hidden_global_store(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_plf(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !849 !PGOFuncName !850 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 11
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !851 !PGOFuncName !852 {
  tail call fastcc void @VEC_gimple_heap_reserve() #23
  %2 = load ptr, ptr @worklist, align 8, !tbaa !421
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !853 !PGOFuncName !854 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !469
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 !prof !855 !PGOFuncName !856 {
  %3 = load ptr, ptr %0, align 8, !tbaa !713
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !857

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
  %15 = load i64, ptr %14, align 8, !tbaa !629
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !428
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !428
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !629
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !629
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve() unnamed_addr #0 !prof !851 !PGOFuncName !858 {
  %1 = load ptr, ptr @worklist, align 8, !tbaa !421
  %2 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %1) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !859

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #22
  store ptr %5, ptr @worklist, align 8, !tbaa !421
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !851 !PGOFuncName !860 {
  %3 = load i32, ptr %0, align 8, !tbaa !861
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !861
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !421
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !851 !PGOFuncName !863 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !864

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !865
  %6 = load i32, ptr %0, align 8, !tbaa !861
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !866 !PGOFuncName !867 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !429
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !868

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #23
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !421
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !869 !PGOFuncName !870 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #23
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !629
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !871

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #22
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !869 !PGOFuncName !872 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !469
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #23
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #14 !prof !869 !PGOFuncName !873 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !426
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !874 !PGOFuncName !875 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !876

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #23
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #23
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !877 !PGOFuncName !878 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !879

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #23
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #23
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !880 !PGOFuncName !881 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !882

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 687, ptr noundef nonnull @.str.3) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !421
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !783 !PGOFuncName !883 {
  %4 = load ptr, ptr %1, align 8, !tbaa !884
  store ptr %4, ptr %0, align 8, !tbaa !886
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !888
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !889

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !886
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !890
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !892
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !629
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !893
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !426
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #16 !prof !894 !PGOFuncName !895 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !893
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !896

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !897

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !426
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !898, !llvm.loop !899

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !426
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !426
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !892
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !886
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !892
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !900

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !629
  store i64 %35, ptr %3, align 8, !tbaa !893
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !901

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !426
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !426
  %40 = load i32, ptr %23, align 8, !tbaa !892
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !892
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !902, !llvm.loop !903

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !904
  store ptr %44, ptr %0, align 8, !tbaa !886
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !905

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !890
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !426
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !893
  store i32 %16, ptr %1, align 4, !tbaa !426
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_ctrl_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 !prof !906 !PGOFuncName !907 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !893
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !893
  %6 = load i32, ptr %1, align 4, !tbaa !426
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !426
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !798 !PGOFuncName !908 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #22
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #7 !prof !798 !PGOFuncName !909 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !421
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !802
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !803

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !910
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #23
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #13 !prof !911 !PGOFuncName !912 {
  %3 = load i32, ptr %0, align 4, !tbaa !913
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !913
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !426
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !915 !PGOFuncName !916 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !917
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !918

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #23
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !919 !PGOFuncName !920 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !921

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !922
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !924 !PGOFuncName !925 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !421
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !814 !PGOFuncName !926 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !927

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !913
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !807

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !426
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !426
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #7 !prof !911 !PGOFuncName !928 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !421
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !802
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !910
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #23
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #17 !prof !798 !PGOFuncName !929 {
  %2 = load ptr, ptr %0, align 8, !tbaa !421
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !803

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !421
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !930 !PGOFuncName !931 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !932

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !861
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #13 !prof !851 !PGOFuncName !933 {
  %2 = load i32, ptr %0, align 8, !tbaa !861
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !861
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !421
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_operand_necessary(ptr noundef %0) unnamed_addr #0 !prof !934 !PGOFuncName !935 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !936

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 237, ptr noundef nonnull @.str.3) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !428
  %7 = load ptr, ptr @processed, align 8, !tbaa !421
  %8 = lshr i32 %6, 6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !629
  %12 = and i32 %6, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = and i64 %14, %11
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %26, label %17, !prof !937

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !428
  %20 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %19) #23, !range !429
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %58, !prof !938

22:                                               ; preds = %17
  %23 = tail call fastcc i32 @gimple_plf(ptr noundef %19) #23
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %58, !prof !939

25:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 244, ptr noundef nonnull @.str.3) #22
  br label %58

26:                                               ; preds = %4
  tail call fastcc void @SET_BIT(ptr noundef nonnull %7, i32 noundef %6) #23
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !428
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !940

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 250, ptr noundef nonnull @.str.3) #22
  br label %31

31:                                               ; preds = %26, %30
  %32 = tail call fastcc i32 @gimple_plf(ptr noundef %28) #23
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %58, !prof !941

34:                                               ; preds = %31
  %35 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %28) #23, !range !429
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %58, !prof !942

37:                                               ; preds = %34
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40, !prof !943

40:                                               ; preds = %37
  %41 = load i32, ptr @dump_flags, align 4, !tbaa !426
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 26, i64 1, ptr nonnull %38)
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !421
  tail call void @print_generic_expr(ptr noundef %46, ptr noundef nonnull %0, i32 noundef 0) #22
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %48 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 6, i64 1, ptr %47)
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !421
  tail call void @print_gimple_stmt(ptr noundef %49, ptr noundef %28, i32 noundef 0, i32 noundef 0) #22
  br label %50

50:                                               ; preds = %44, %40, %37
  tail call fastcc void @gimple_set_plf(ptr noundef %28, i8 noundef zeroext 1) #23
  %51 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !421
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53, !prof !944

53:                                               ; preds = %50
  %54 = tail call fastcc ptr @gimple_bb(ptr noundef %28) #23
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !609
  tail call fastcc void @SET_BIT(ptr noundef nonnull %51, i32 noundef %56) #23
  br label %57

57:                                               ; preds = %53, %50
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef %28) #23
  br label %58

58:                                               ; preds = %31, %34, %25, %22, %17, %57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @degenerate_phi_p(ptr noundef %0) unnamed_addr #0 !prof !945 !PGOFuncName !946 {
  %2 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef 0) #23
  %3 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #23
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %10, label %14, !prof !947

5:                                                ; preds = %10
  %6 = add nuw nsw i64 %11, 1
  %7 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #23
  %8 = zext i32 %7 to i64
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %14, !prof !948, !llvm.loop !949

10:                                               ; preds = %1, %5
  %11 = phi i64 [ %6, %5 ], [ 1, %1 ]
  %12 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %11) #23
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %5, label %14, !prof !950

14:                                               ; preds = %10, %5, %1
  %15 = phi i8 [ 1, %1 ], [ 1, %5 ], [ 0, %10 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #7 !prof !951 !PGOFuncName !952 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #23
  %4 = load ptr, ptr %3, align 8, !tbaa !953
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #23
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !524 !PGOFuncName !954 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 1) #23
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !490
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #23
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #5 !prof !955 !PGOFuncName !956 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !499
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !957

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #23
  %8 = load ptr, ptr %3, align 8, !tbaa !501
  store ptr %8, ptr %2, align 8, !tbaa !499
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !527
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !526

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !958
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #23
  %17 = load ptr, ptr %11, align 8, !tbaa !529
  store ptr %17, ptr %10, align 8, !tbaa !527
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !485
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_all_reaching_defs_necessary(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !959 !PGOFuncName !960 {
  %2 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #23
  %3 = tail call i32 @walk_aliased_vdefs(ptr noundef null, ptr noundef %2, ptr noundef nonnull @mark_all_reaching_defs_necessary_1, ptr noundef null, ptr noundef nonnull @visited) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !961 !PGOFuncName !962 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !469
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !963 !PGOFuncName !964 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #23
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !965

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !428
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !966 !PGOFuncName !967 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #23
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !968 !PGOFuncName !969 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #23
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ref_may_be_aliased(ptr nocapture noundef readonly %0) unnamed_addr #19 !prof !970 !PGOFuncName !971 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #23, !range !429
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4, !prof !972

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !428
  %8 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %7) #23, !range !429
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %4, !prof !973, !llvm.loop !974

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !426
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %19, !prof !975

17:                                               ; preds = %10
  %18 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef nonnull %11) #23, !range !429
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi i8 [ 1, %10 ], [ %18, %17 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_aliased_reaching_defs_necessary(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !976 !PGOFuncName !977 {
  %3 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #21
  %4 = load i1, ptr @chain_ovfl, align 1
  br i1 %4, label %5, label %6, !prof !978

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 553, ptr noundef nonnull @.str.3) #22
  br label %6

6:                                                ; preds = %2, %5
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef %1) #22
  %7 = call fastcc ptr @gimple_vuse(ptr noundef %0) #23
  %8 = call fastcc ptr @gimple_bb(ptr noundef %0) #23
  %9 = call i32 @walk_aliased_vdefs(ptr noundef nonnull %3, ptr noundef %7, ptr noundef nonnull @mark_aliased_reaching_defs_necessary_1, ptr noundef %8, ptr noundef null) #22
  %10 = load i32, ptr @longest_chain, align 4, !tbaa !426
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %12, label %13, !prof !979

12:                                               ; preds = %6
  store i32 %9, ptr @longest_chain, align 4, !tbaa !426
  br label %13

13:                                               ; preds = %12, %6
  %14 = load i32, ptr @total_chain, align 4, !tbaa !426
  %15 = add i32 %14, %9
  store i32 %15, ptr @total_chain, align 4, !tbaa !426
  %16 = load i32, ptr @nr_walks, align 4, !tbaa !426
  %17 = add i32 %16, 1
  store i32 %17, ptr @nr_walks, align 4, !tbaa !426
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !980 !PGOFuncName !981 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #0 !prof !982 !PGOFuncName !983 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !505 !PGOFuncName !984 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !428
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !505 !PGOFuncName !985 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !428
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2622, ptr noundef nonnull @.str.3) #22
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %1) #23
  ret ptr %9
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !986 !PGOFuncName !987 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !469
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !988 !PGOFuncName !989 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #23
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #23
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !505 !PGOFuncName !990 {
  %2 = load ptr, ptr %0, align 8, !tbaa !421
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @walk_aliased_vdefs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @mark_all_reaching_defs_necessary_1(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 !prof !991 !PGOFuncName !992 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !428
  %6 = load i1, ptr @chain_ovfl, align 1
  br i1 %6, label %7, label %27, !prof !993

7:                                                ; preds = %3
  %8 = load ptr, ptr @processed, align 8, !tbaa !421
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !428
  %11 = lshr i32 %10, 6
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !629
  %15 = and i32 %10, 63
  %16 = zext nneg i32 %15 to i64
  %17 = shl nuw i64 1, %16
  %18 = and i64 %17, %14
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %34, label %20, !prof !994

20:                                               ; preds = %7
  %21 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %5) #23, !range !429
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %35, !prof !995

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @gimple_plf(ptr noundef %5) #23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35, !prof !996

26:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 582, ptr noundef nonnull @.str.3) #22
  br label %35

27:                                               ; preds = %3
  %28 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %5) #22
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30, !prof !997

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %5) #23
  %32 = tail call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef %31) #23, !range !429
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %7, %30, %27
  tail call fastcc void @mark_operand_necessary(ptr noundef nonnull %1) #23
  br label %35

35:                                               ; preds = %26, %23, %20, %30, %34
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !963 !PGOFuncName !998 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !999 !PGOFuncName !1000 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !428
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1001 !PGOFuncName !1002 {
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
  ], !prof !1003

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @may_be_aliased(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !1004 !PGOFuncName !1005 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 33
  br i1 %4, label %37, label %5, !prof !1006

5:                                                ; preds = %1
  %6 = and i64 %2, 134217728
  %7 = icmp eq i64 %6, 0
  %8 = and i64 %2, 201326592
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15, !prof !1007

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33554432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %29, label %15, !prof !1008

15:                                               ; preds = %10, %5
  %16 = and i64 %2, 1048576
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %25, label %18, !prof !1009

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !428
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25, !prof !1010

25:                                               ; preds = %18, %15
  br i1 %7, label %26, label %37, !prof !1011

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %28 = load i64, ptr %27, align 8
  br label %29

29:                                               ; preds = %26, %10
  %30 = phi i64 [ %28, %26 ], [ %12, %10 ]
  %31 = and i64 %30, 33554432
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37, !prof !1012

33:                                               ; preds = %29
  %34 = lshr i64 %2, 18
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  br label %37

37:                                               ; preds = %25, %29, %33, %18, %1
  %38 = phi i8 [ 0, %18 ], [ 0, %1 ], [ 1, %29 ], [ 1, %25 ], [ %36, %33 ]
  ret i8 %38
}

; Function Attrs: optsize
declare void @ao_ref_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @mark_aliased_reaching_defs_necessary_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !prof !1013 !PGOFuncName !1014 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !428
  tail call fastcc void @mark_operand_necessary(ptr noundef %1) #23
  %9 = tail call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %8) #23, !range !429
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %55, label %11, !prof !1015

11:                                               ; preds = %3
  %12 = tail call ptr @gimple_get_lhs(ptr noundef %8) #22
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %55, label %16, !prof !1016

16:                                               ; preds = %11
  %17 = tail call ptr @gimple_get_lhs(ptr noundef %8) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %18 = tail call ptr @ao_ref_base(ptr noundef %0) #22
  %19 = call ptr @get_ref_base_and_extent(ptr noundef %17, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #22
  %20 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !1017
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %53, !prof !1019

23:                                               ; preds = %16
  %24 = load i64, ptr %4, align 8, !tbaa !629
  %25 = icmp ne i64 %24, -1
  %26 = load i64, ptr %6, align 8
  %27 = icmp eq i64 %24, %26
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %42, !prof !1020

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  %31 = load i64, ptr %30, align 8, !tbaa !1021
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %42, label %33, !prof !1022

33:                                               ; preds = %29
  %34 = load i64, ptr %5, align 8, !tbaa !629
  %35 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !1023
  %37 = icmp sgt i64 %34, %36
  br i1 %37, label %53, label %38, !prof !1024

38:                                               ; preds = %33
  %39 = add nsw i64 %34, %24
  %40 = add nsw i64 %36, %31
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %53, label %54, !prof !1025

42:                                               ; preds = %29, %23
  %43 = load ptr, ptr %0, align 8, !tbaa !1026
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45, !prof !1027

45:                                               ; preds = %42
  %46 = call fastcc ptr @gimple_bb(ptr noundef %8) #23
  %47 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %2, ptr noundef %46) #22
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49, !prof !1028

49:                                               ; preds = %45
  %50 = load ptr, ptr %0, align 8, !tbaa !1026
  %51 = call i32 @operand_equal_p(ptr noundef %50, ptr noundef %17, i32 noundef 0) #22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54, !prof !1029

53:                                               ; preds = %38, %33, %49, %45, %42, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %55

54:                                               ; preds = %49, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %55

55:                                               ; preds = %3, %11, %53, %54
  %56 = phi i8 [ 1, %54 ], [ 0, %53 ], [ 0, %11 ], [ 0, %3 ]
  ret i8 %56
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #0 !prof !1013 !PGOFuncName !1030 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #23, !range !429
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11, !prof !1031

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #23, !range !429
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !1032

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %4, %7, %1
  %12 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ao_ref_base(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1013 !PGOFuncName !1033 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !469
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @clear_special_calls() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_all_dominated_blocks(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !1034 !PGOFuncName !1035 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1036

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1037
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_basic_block_base_pop(ptr nocapture noundef %0) unnamed_addr #13 !prof !762 !PGOFuncName !1039 {
  %2 = load i32, ptr %0, align 8, !tbaa !1037
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !1037
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !421
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !762 !PGOFuncName !1040 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #23
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #23
  store ptr %4, ptr %0, align 8, !tbaa !750
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !764
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !765
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #5 !prof !766 !PGOFuncName !1041 {
  %2 = load ptr, ptr %0, align 8, !tbaa !750
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1042
  store ptr %4, ptr %0, align 8, !tbaa !750
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_dead_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1043 !PGOFuncName !1044 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #23
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7, !prof !679

7:                                                ; preds = %2
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !426
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 11, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !421
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %4, i32 noundef 0, i32 noundef 2) #22
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %15 = tail call i32 @fputc(i32 10, ptr %14)
  br label %16

16:                                               ; preds = %11, %7, %2
  %17 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !560
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !560
  %19 = tail call zeroext i8 @is_ctrl_stmt(ptr noundef %4) #22
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %77, label %21, !prof !1045

21:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %22 = tail call ptr @get_immediate_dominator(i32 noundef 2, ptr noundef %1) #22
  %23 = tail call ptr @find_edge(ptr noundef %1, ptr noundef %22) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %47, !prof !1046

25:                                               ; preds = %21
  %26 = icmp eq ptr %22, null
  br i1 %26, label %34, label %27, !prof !1047

27:                                               ; preds = %25
  %28 = load ptr, ptr @cfun, align 8, !tbaa !421
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !555
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !585
  %33 = icmp eq ptr %22, %32
  br i1 %33, label %34, label %38, !prof !1048

34:                                               ; preds = %27, %25
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !739
  %37 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %36, i32 noundef 0) #23
  br label %43

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !739
  %41 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %40, i32 noundef 0) #23
  %42 = tail call fastcc ptr @forward_edge_to_pdom(ptr noundef %41, ptr noundef nonnull %22) #23
  br label %43

43:                                               ; preds = %34, %38
  %44 = phi ptr [ %37, %34 ], [ %42, %38 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47, !prof !1049

46:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1023, ptr noundef nonnull @.str.3) #22
  br label %47

47:                                               ; preds = %21, %43, %46
  %48 = phi ptr [ %44, %43 ], [ null, %46 ], [ %23, %21 ]
  %49 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 8
  store i32 10000, ptr %49, align 4, !tbaa !1050
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 8
  %51 = load i64, ptr %50, align 8, !tbaa !1051
  %52 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 9
  store i64 %51, ptr %52, align 8, !tbaa !1052
  %53 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 7
  %54 = load i32, ptr %53, align 8, !tbaa !604
  %55 = and i32 %54, -3074
  %56 = or disjoint i32 %55, 1
  store i32 %56, ptr %53, align 8, !tbaa !604
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %58 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %57) #23
  store i32 0, ptr %3, align 8, !tbaa.struct !601
  %59 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %58, ptr %59, align 8, !tbaa.struct !602
  %60 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %58) #23
  %61 = icmp eq ptr %60, null
  br i1 %61, label %76, label %62, !prof !1053

62:                                               ; preds = %47, %71
  %63 = phi ptr [ %72, %71 ], [ %58, %47 ]
  %64 = phi i32 [ %73, %71 ], [ 0, %47 ]
  %65 = phi ptr [ %74, %71 ], [ %60, %47 ]
  %66 = icmp eq ptr %48, %65
  br i1 %66, label %68, label %67, !prof !1054

67:                                               ; preds = %62
  store i1 true, ptr @cfg_altered, align 1
  tail call void @remove_edge(ptr noundef nonnull %65) #22
  br label %71

68:                                               ; preds = %62
  call fastcc void @ei_next(ptr noundef nonnull %3) #23
  %69 = load i32, ptr %3, align 8
  %70 = load ptr, ptr %59, align 8
  br label %71

71:                                               ; preds = %68, %67
  %72 = phi ptr [ %70, %68 ], [ %63, %67 ]
  %73 = phi i32 [ %69, %68 ], [ %64, %67 ]
  %74 = tail call fastcc ptr @ei_safe_edge(i32 %73, ptr %72) #23
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %62, !prof !1055, !llvm.loop !1056

76:                                               ; preds = %71, %47
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  br label %77

77:                                               ; preds = %76, %16
  tail call void @unlink_stmt_vdef(ptr noundef %4) #22
  tail call void @gsi_remove(ptr noundef %0, i8 noundef zeroext 1) #22
  tail call void @release_defs(ptr noundef %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0) unnamed_addr #0 !prof !1057 !PGOFuncName !1058 {
  tail call fastcc void @gimple_set_op(ptr noundef %0) #23
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @release_ssa_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @notice_special_calls(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #17 !prof !547 !PGOFuncName !1059 {
  %2 = load ptr, ptr %0, align 8, !tbaa !421
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !675

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !421
  ret void
}

; Function Attrs: optsize
declare void @find_unreachable_blocks() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @end_imm_use_stmt_traverse(ptr nocapture noundef %0) unnamed_addr #6 !prof !1060 !PGOFuncName !1061 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @remove_dead_phis(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1062 !PGOFuncName !1063 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  %4 = tail call fastcc ptr @phi_nodes(ptr noundef %0) #23
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %4) #23
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !429
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %73, !prof !1064

7:                                                ; preds = %1, %65
  %8 = phi i8 [ 1, %65 ], [ 0, %1 ]
  br label %9

9:                                                ; preds = %7, %70
  %10 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !710
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !710
  %12 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  %13 = call fastcc ptr @gimple_phi_result(ptr noundef %12) #23
  %14 = call zeroext i8 @is_gimple_reg(ptr noundef %13) #22
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %50, !prof !1065

16:                                               ; preds = %9
  %17 = call fastcc zeroext i8 @degenerate_phi_p(ptr noundef %12) #23, !range !429
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %49, label %19, !prof !1066

19:                                               ; preds = %16
  %20 = call fastcc ptr @gimple_phi_result(ptr noundef %12) #23
  %21 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %12, i64 noundef 0) #23
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #21
  %22 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %20) #23
  %23 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #23, !range !429
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %38, !prof !1067

25:                                               ; preds = %19, %34
  %26 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %3) #23
  %27 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #23, !range !429
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %34, !prof !1068

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %31, %29 ], [ %26, %25 ]
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %30, ptr noundef %21) #23
  %31 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %3) #23
  %32 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #23, !range !429
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %29, label %34, !prof !1069, !llvm.loop !1070

34:                                               ; preds = %29, %25
  %35 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %3) #23
  %36 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #23, !range !429
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %25, label %38, !prof !1071, !llvm.loop !1072

38:                                               ; preds = %34, %19
  %39 = load i64, ptr %20, align 8
  %40 = and i64 %39, 4194304
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %48, label %42, !prof !1073

42:                                               ; preds = %38
  %43 = load i64, ptr %21, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 141
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = or i64 %43, 4194304
  store i64 %47, ptr %21, align 8
  br label %48

48:                                               ; preds = %46, %42, %38
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #21
  br label %50

49:                                               ; preds = %16
  call fastcc void @gimple_set_plf(ptr noundef %12, i8 noundef zeroext 1) #23
  br label %50

50:                                               ; preds = %48, %49, %9
  %51 = call fastcc i32 @gimple_plf(ptr noundef %12) #23
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %70, !prof !1074

53:                                               ; preds = %50
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56, !prof !1075

56:                                               ; preds = %53
  %57 = load i32, ptr @dump_flags, align 4, !tbaa !426
  %58 = and i32 %57, 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = call i64 @fwrite(ptr nonnull @.str.19, i64 11, i64 1, ptr nonnull %54)
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !421
  call void @print_gimple_stmt(ptr noundef %62, ptr noundef %12, i32 noundef 0, i32 noundef 2) #22
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %64 = call i32 @fputc(i32 10, ptr %63)
  br label %65

65:                                               ; preds = %60, %56, %53
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 1) #22
  %66 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !562
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !562
  %68 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !429
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %7, label %73, !prof !1076, !llvm.loop !1077

70:                                               ; preds = %50
  call fastcc void @gsi_next(ptr noundef nonnull %2) #23
  %71 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !429
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %9, label %73, !prof !1076, !llvm.loop !1077

73:                                               ; preds = %65, %70, %1
  %74 = phi i8 [ 0, %1 ], [ %8, %70 ], [ 1, %65 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  ret i8 %74
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #4 !prof !762 !PGOFuncName !1078 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !1079

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1080
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @forward_edge_to_pdom(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1081 !PGOFuncName !1082 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !421
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8, !prof !1083

8:                                                ; preds = %2
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !426
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !608
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !609
  %16 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !610
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !609
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !609
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, i32 noundef %15, i32 noundef %19, i32 noundef %21) #23
  br label %23

23:                                               ; preds = %12, %8, %2
  %24 = tail call ptr @redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) #22
  store ptr %24, ptr %4, align 8, !tbaa !421
  store i1 true, ptr @cfg_altered, align 1
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %75, !prof !1083

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @phi_nodes(ptr noundef %1) #23
  %28 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %27) #23, !range !429
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %75, !prof !1083

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @ei_start_1(ptr noundef %1) #23
  store i32 0, ptr %5, align 8, !tbaa.struct !601
  %32 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %31, ptr %32, align 8, !tbaa.struct !602
  %33 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %31, ptr noundef nonnull %4) #23, !range !429
  %34 = icmp ne i8 %33, 0
  %35 = load ptr, ptr %4, align 8
  %36 = icmp eq ptr %35, %0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %46, !prof !1084

38:                                               ; preds = %30, %38
  call fastcc void @ei_next(ptr noundef nonnull %5) #23
  %39 = load i32, ptr %5, align 8
  %40 = load ptr, ptr %32, align 8
  %41 = call fastcc zeroext i8 @ei_cond(i32 %39, ptr %40, ptr noundef nonnull %4) #23, !range !429
  %42 = icmp ne i8 %41, 0
  %43 = load ptr, ptr %4, align 8
  %44 = icmp eq ptr %43, %0
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %38, label %46, !prof !1085, !llvm.loop !1086

46:                                               ; preds = %38, %30
  %47 = phi ptr [ %35, %30 ], [ %43, %38 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #22
  %48 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #23, !range !429
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %75, !prof !694

50:                                               ; preds = %46, %72
  %51 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #23
  %52 = call fastcc ptr @gimple_phi_result(ptr noundef %51) #23
  %53 = call zeroext i8 @is_gimple_reg(ptr noundef %52) #22
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %56, !prof !1087

55:                                               ; preds = %50
  call void @mark_virtual_phi_result_for_renaming(ptr noundef %51) #23
  call void @remove_phi_node(ptr noundef nonnull %3, i8 noundef zeroext 1) #22
  br label %72, !llvm.loop !1088

56:                                               ; preds = %50
  %57 = call fastcc i32 @gimple_plf(ptr noundef %51) #23
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60, !prof !1089

59:                                               ; preds = %56
  call fastcc void @gsi_next(ptr noundef nonnull %3) #23
  br label %72, !llvm.loop !1088

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 6
  %62 = load i32, ptr %61, align 4, !tbaa !1090
  %63 = zext i32 %62 to i64
  %64 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %51, i64 noundef %63) #23
  %65 = load i32, ptr %61, align 4, !tbaa !1090
  %66 = zext i32 %65 to i64
  %67 = call fastcc i32 @gimple_phi_arg_location(ptr noundef %51, i64 noundef %66) #23
  call void @add_phi_arg(ptr noundef %51, ptr noundef %64, ptr noundef %0, i32 noundef %67) #22
  %68 = call fastcc zeroext i8 @degenerate_phi_p(ptr noundef %51) #23, !range !429
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 973, ptr noundef nonnull @.str.3) #22
  br label %71

71:                                               ; preds = %60, %70
  call fastcc void @gsi_next(ptr noundef nonnull %3) #23
  br label %72

72:                                               ; preds = %71, %59, %55
  %73 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #23, !range !429
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %50, label %75, !prof !1091

75:                                               ; preds = %72, %46, %26, %23
  %76 = phi ptr [ %24, %23 ], [ %0, %26 ], [ %0, %46 ], [ %0, %72 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  ret ptr %76
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1092 !PGOFuncName !1093 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #23, !range !429
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !1094

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #23
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #4 !prof !1081 !PGOFuncName !1095 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !1096

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !829
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1097 !PGOFuncName !1098 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !690
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !1099

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 510, ptr noundef nonnull @.str.3) #22
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !428
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !1100

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1101
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !505 !PGOFuncName !1102 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #23
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !1103
  ret i32 %6
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0) unnamed_addr #0 !prof !1057 !PGOFuncName !1105 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !429
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1106

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !1106

7:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1665, ptr noundef nonnull @.str.3) #22
  br label %8

8:                                                ; preds = %4, %7
  %9 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #23
  store ptr null, ptr %9, align 8, !tbaa !421
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !1062 !PGOFuncName !1107 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #23
  store ptr %3, ptr %0, align 8, !tbaa !750
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !764
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !1108

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !754
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !1109

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #23
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !765
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free() unnamed_addr #17 !prof !547 !PGOFuncName !1110 {
  %1 = load ptr, ptr @worklist, align 8, !tbaa !421
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !675

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #23
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @worklist, align 8, !tbaa !421
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_dce_loop() #0 !prof !549 !PGOFuncName !1111 {
  %1 = tail call fastcc i32 @perform_tree_ssa_dce(i8 noundef zeroext 0) #23, !range !551
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !1112

3:                                                ; preds = %0
  tail call void @free_numbers_of_iterations_estimates() #22
  tail call void @scev_reset() #22
  br label %4

4:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: optsize
declare void @free_numbers_of_iterations_estimates() local_unnamed_addr #3

; Function Attrs: optsize
declare void @scev_reset() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_cd_dce() #0 !prof !574 !PGOFuncName !1113 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !426
  %2 = icmp sgt i32 %1, 1
  %3 = zext i1 %2 to i8
  %4 = tail call fastcc i32 @perform_tree_ssa_dce(i8 noundef zeroext %3) #23, !range !551
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nounwind }
attributes #22 = { nounwind optsize }
attributes #23 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!419}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418}
!36 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @gimple_phi_result, i64 736}
!37 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @first_imm_use_stmt, i64 736}
!38 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @end_imm_use_stmt_p, i64 1517}
!39 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @first_imm_use_on_stmt, i64 781}
!40 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @end_imm_use_on_stmt_p, i64 1562}
!41 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @set_ssa_use_from_ptr, i64 781}
!42 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @next_imm_use_on_stmt, i64 781}
!43 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @update_stmt, i64 781}
!44 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @next_imm_use_stmt, i64 781}
!45 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @mark_sym_for_renaming, i64 735}
!46 = !{ptr @first_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 18679}
!47 = !{ptr @first_imm_use_stmt, ptr @link_use_stmts_after, i64 18590}
!48 = !{ptr @set_ssa_use_from_ptr, ptr @delink_imm_use, i64 24339}
!49 = !{ptr @set_ssa_use_from_ptr, ptr @link_imm_use, i64 24339}
!50 = !{ptr @next_imm_use_on_stmt, ptr @end_imm_use_on_stmt_p, i64 24339}
!51 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 1086}
!52 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 351}
!53 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 351}
!54 = !{ptr @next_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 23950}
!55 = !{ptr @next_imm_use_stmt, ptr @delink_imm_use, i64 17855}
!56 = !{ptr @next_imm_use_stmt, ptr @link_use_stmts_after, i64 6094}
!57 = !{ptr @link_use_stmts_after, ptr @get_use_from_ptr, i64 76275}
!58 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 24685}
!59 = !{ptr @link_use_stmts_after, ptr @gimple_code, i64 24685}
!60 = !{ptr @link_use_stmts_after, ptr @op_iter_init_phiuse, i64 19040}
!61 = !{ptr @link_use_stmts_after, ptr @op_iter_done, i64 64988}
!62 = !{ptr @link_use_stmts_after, ptr @move_use_after_head, i64 25075}
!63 = !{ptr @link_use_stmts_after, ptr @op_iter_next_use, i64 45947}
!64 = !{ptr @link_use_stmts_after, ptr @op_iter_init_use, i64 1}
!65 = !{ptr @link_use_stmts_after, ptr @gimple_vuse_op, i64 5644}
!66 = !{ptr @link_use_stmts_after, ptr @delink_imm_use, i64 6095}
!67 = !{ptr @link_use_stmts_after, ptr @link_imm_use_to_list, i64 24685}
!68 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 19041}
!69 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 19041}
!70 = !{ptr @op_iter_init_phiuse, ptr @fancy_abort, i64 1}
!71 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 19041}
!72 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 19040}
!73 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 19040}
!74 = !{ptr @move_use_after_head, ptr @delink_imm_use, i64 200}
!75 = !{ptr @move_use_after_head, ptr @link_imm_use_to_list, i64 200}
!76 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 45937}
!77 = !{ptr @gimple_vuse_op, ptr @gimple_has_mem_ops, i64 5644}
!78 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 1087024}
!79 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!80 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 1}
!81 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1}
!82 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 3947531}
!83 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 3926289}
!84 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 3947532}
!85 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 9759896}
!86 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 12075186}
!87 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 13179476}
!88 = !{ptr @link_imm_use, ptr @link_imm_use_to_list, i64 23556}
!89 = !{ptr @tree_ssa_dce, ptr @perform_tree_ssa_dce, i64 13304}
!90 = !{ptr @perform_tree_ssa_dce, ptr @loop_optimizer_init, i64 15616}
!91 = !{ptr @perform_tree_ssa_dce, ptr @tree_dce_init, i64 42224}
!92 = !{ptr @perform_tree_ssa_dce, ptr @timevar_push_1, i64 1}
!93 = !{ptr @perform_tree_ssa_dce, ptr @calculate_dominance_info, i64 15616}
!94 = !{ptr @perform_tree_ssa_dce, ptr @create_edge_list, i64 15616}
!95 = !{ptr @perform_tree_ssa_dce, ptr @find_all_control_dependences, i64 15616}
!96 = !{ptr @perform_tree_ssa_dce, ptr @timevar_pop_1, i64 1}
!97 = !{ptr @perform_tree_ssa_dce, ptr @find_obviously_necessary_stmts, i64 42224}
!98 = !{ptr @perform_tree_ssa_dce, ptr @sbitmap_alloc, i64 15616}
!99 = !{ptr @perform_tree_ssa_dce, ptr @sbitmap_zero, i64 15616}
!100 = !{ptr @perform_tree_ssa_dce, ptr @mark_dfs_back_edges, i64 15616}
!101 = !{ptr @perform_tree_ssa_dce, ptr @loop_optimizer_finalize, i64 15616}
!102 = !{ptr @perform_tree_ssa_dce, ptr @bitmap_obstack_alloc_stat, i64 42224}
!103 = !{ptr @perform_tree_ssa_dce, ptr @propagate_necessity, i64 42224}
!104 = !{ptr @perform_tree_ssa_dce, ptr @bitmap_obstack_free, i64 42224}
!105 = !{ptr @perform_tree_ssa_dce, ptr @eliminate_unnecessary_stmts, i64 42224}
!106 = !{ptr @perform_tree_ssa_dce, ptr @free_dominance_info, i64 42394}
!107 = !{ptr @perform_tree_ssa_dce, ptr @statistics_counter_event, i64 84448}
!108 = !{ptr @perform_tree_ssa_dce, ptr @print_stats, i64 1}
!109 = !{ptr @perform_tree_ssa_dce, ptr @tree_dce_done, i64 42224}
!110 = !{ptr @perform_tree_ssa_dce, ptr @free_edge_list, i64 42224}
!111 = !{ptr @tree_dce_init, ptr @xmalloc, i64 15616}
!112 = !{ptr @tree_dce_init, ptr @bitmap_obstack_alloc_stat, i64 527002}
!113 = !{ptr @tree_dce_init, ptr @sbitmap_alloc, i64 73456}
!114 = !{ptr @tree_dce_init, ptr @sbitmap_zero, i64 73456}
!115 = !{ptr @tree_dce_init, ptr @VEC_tree_base_length, i64 42224}
!116 = !{ptr @tree_dce_init, ptr @VEC_gimple_heap_alloc, i64 42224}
!117 = !{ptr @find_all_control_dependences, ptr @find_control_dependence, i64 808744}
!118 = !{ptr @find_obviously_necessary_stmts, ptr @gsi_start_phis, i64 1482337}
!119 = !{ptr @find_obviously_necessary_stmts, ptr @gsi_end_p, i64 7762664}
!120 = !{ptr @find_obviously_necessary_stmts, ptr @gsi_stmt, i64 4797990}
!121 = !{ptr @find_obviously_necessary_stmts, ptr @gimple_set_plf, i64 4797990}
!122 = !{ptr @find_obviously_necessary_stmts, ptr @gsi_next, i64 4797990}
!123 = !{ptr @find_obviously_necessary_stmts, ptr @gsi_start_bb, i64 1482337}
!124 = !{ptr @find_obviously_necessary_stmts, ptr @mark_stmt_if_obviously_necessary, i64 4134636}
!125 = !{ptr @find_obviously_necessary_stmts, ptr @scev_initialize, i64 15070}
!126 = !{ptr @find_obviously_necessary_stmts, ptr @mark_irreducible_loops, i64 15070}
!127 = !{ptr @find_obviously_necessary_stmts, ptr @ei_start_1, i64 1792}
!128 = !{ptr @find_obviously_necessary_stmts, ptr @ei_cond, i64 4937}
!129 = !{ptr @find_obviously_necessary_stmts, ptr @fprintf, i64 2}
!130 = !{ptr @find_obviously_necessary_stmts, ptr @mark_control_dependent_edges_necessary, i64 19046}
!131 = !{ptr @find_obviously_necessary_stmts, ptr @ei_next, i64 3145}
!132 = !{ptr @find_obviously_necessary_stmts, ptr @fel_init, i64 15070}
!133 = !{ptr @find_obviously_necessary_stmts, ptr @finite_loop_p, i64 25581}
!134 = !{ptr @find_obviously_necessary_stmts, ptr @fel_next, i64 25581}
!135 = !{ptr @find_obviously_necessary_stmts, ptr @scev_finalize, i64 15070}
!136 = !{ptr @propagate_necessity, ptr @VEC_gimple_base_length, i64 4354214}
!137 = !{ptr @propagate_necessity, ptr @VEC_gimple_base_pop, i64 4311990}
!138 = !{ptr @propagate_necessity, ptr @gimple_bb, i64 1465173}
!139 = !{ptr @propagate_necessity, ptr @SET_BIT, i64 488815}
!140 = !{ptr @propagate_necessity, ptr @mark_control_dependent_edges_necessary, i64 488815}
!141 = !{ptr @propagate_necessity, ptr @gimple_code, i64 4312092}
!142 = !{ptr @propagate_necessity, ptr @gimple_phi_result, i64 364551}
!143 = !{ptr @propagate_necessity, ptr @is_gimple_reg, i64 364551}
!144 = !{ptr @propagate_necessity, ptr @gimple_phi_num_args, i64 1826642}
!145 = !{ptr @propagate_necessity, ptr @gimple_phi_arg_imm_use_ptr, i64 1041059}
!146 = !{ptr @propagate_necessity, ptr @get_use_from_ptr, i64 1041059}
!147 = !{ptr @propagate_necessity, ptr @mark_operand_necessary, i64 5001867}
!148 = !{ptr @propagate_necessity, ptr @degenerate_phi_p, i64 118618}
!149 = !{ptr @propagate_necessity, ptr @gimple_phi_arg_edge, i64 324036}
!150 = !{ptr @propagate_necessity, ptr @op_iter_init_tree, i64 3947440}
!151 = !{ptr @propagate_necessity, ptr @op_iter_done, i64 8196542}
!152 = !{ptr @propagate_necessity, ptr @op_iter_next_tree, i64 4249102}
!153 = !{ptr @propagate_necessity, ptr @gimple_vuse, i64 3947440}
!154 = !{ptr @propagate_necessity, ptr @mark_all_reaching_defs_necessary, i64 1814967}
!155 = !{ptr @propagate_necessity, ptr @is_gimple_call, i64 2188171}
!156 = !{ptr @propagate_necessity, ptr @gimple_call_fndecl, i64 543976}
!157 = !{ptr @propagate_necessity, ptr @gimple_call_num_args, i64 1639619}
!158 = !{ptr @propagate_necessity, ptr @gimple_call_arg, i64 1113718}
!159 = !{ptr @propagate_necessity, ptr @is_gimple_min_invariant, i64 1812454}
!160 = !{ptr @propagate_necessity, ptr @ref_may_be_aliased, i64 1319649}
!161 = !{ptr @propagate_necessity, ptr @mark_aliased_reaching_defs_necessary, i64 71058}
!162 = !{ptr @propagate_necessity, ptr @gimple_assign_single_p, i64 1644195}
!163 = !{ptr @propagate_necessity, ptr @gimple_assign_rhs1, i64 1644093}
!164 = !{ptr @propagate_necessity, ptr @gimple_return_retval, i64 101}
!165 = !{ptr @propagate_necessity, ptr @gimple_asm_input_op, i64 10}
!166 = !{ptr @propagate_necessity, ptr @gimple_asm_ninputs, i64 10}
!167 = !{ptr @propagate_necessity, ptr @bitmap_clear, i64 51}
!168 = !{ptr @eliminate_unnecessary_stmts, ptr @clear_special_calls, i64 42224}
!169 = !{ptr @eliminate_unnecessary_stmts, ptr @dom_info_available_p, i64 42224}
!170 = !{ptr @eliminate_unnecessary_stmts, ptr @fancy_abort, i64 1}
!171 = !{ptr @eliminate_unnecessary_stmts, ptr @single_succ, i64 42224}
!172 = !{ptr @eliminate_unnecessary_stmts, ptr @get_all_dominated_blocks, i64 42225}
!173 = !{ptr @eliminate_unnecessary_stmts, ptr @VEC_basic_block_base_length, i64 1524574}
!174 = !{ptr @eliminate_unnecessary_stmts, ptr @VEC_basic_block_base_pop, i64 1482349}
!175 = !{ptr @eliminate_unnecessary_stmts, ptr @gsi_last_bb, i64 1482337}
!176 = !{ptr @eliminate_unnecessary_stmts, ptr @gsi_end_p, i64 5620464}
!177 = !{ptr @eliminate_unnecessary_stmts, ptr @gsi_stmt, i64 4137040}
!178 = !{ptr @eliminate_unnecessary_stmts, ptr @gsi_prev, i64 4134636}
!179 = !{ptr @eliminate_unnecessary_stmts, ptr @gimple_plf, i64 4134640}
!180 = !{ptr @eliminate_unnecessary_stmts, ptr @is_gimple_debug, i64 44559}
!181 = !{ptr @eliminate_unnecessary_stmts, ptr @remove_dead_stmt, i64 44559}
!182 = !{ptr @eliminate_unnecessary_stmts, ptr @is_gimple_call, i64 4090077}
!183 = !{ptr @eliminate_unnecessary_stmts, ptr @gimple_call_fndecl, i64 553455}
!184 = !{ptr @eliminate_unnecessary_stmts, ptr @gimple_call_lhs, i64 535165}
!185 = !{ptr @eliminate_unnecessary_stmts, ptr @gimple_call_set_lhs, i64 306}
!186 = !{ptr @eliminate_unnecessary_stmts, ptr @maybe_clean_or_replace_eh_stmt, i64 306}
!187 = !{ptr @eliminate_unnecessary_stmts, ptr @update_stmt, i64 306}
!188 = !{ptr @eliminate_unnecessary_stmts, ptr @release_ssa_name, i64 306}
!189 = !{ptr @eliminate_unnecessary_stmts, ptr @notice_special_calls, i64 535165}
!190 = !{ptr @eliminate_unnecessary_stmts, ptr @VEC_basic_block_heap_free, i64 42225}
!191 = !{ptr @eliminate_unnecessary_stmts, ptr @find_unreachable_blocks, i64 170}
!192 = !{ptr @eliminate_unnecessary_stmts, ptr @gsi_start_phis, i64 2558}
!193 = !{ptr @eliminate_unnecessary_stmts, ptr @gimple_phi_result, i64 1671}
!194 = !{ptr @eliminate_unnecessary_stmts, ptr @is_gimple_reg, i64 933}
!195 = !{ptr @eliminate_unnecessary_stmts, ptr @first_imm_use_stmt, i64 738}
!196 = !{ptr @eliminate_unnecessary_stmts, ptr @end_imm_use_stmt_p, i64 740}
!197 = !{ptr @eliminate_unnecessary_stmts, ptr @gimple_bb, i64 734}
!198 = !{ptr @eliminate_unnecessary_stmts, ptr @gimple_code, i64 733}
!199 = !{ptr @eliminate_unnecessary_stmts, ptr @next_imm_use_stmt, i64 2}
!200 = !{ptr @eliminate_unnecessary_stmts, ptr @end_imm_use_stmt_traverse, i64 733}
!201 = !{ptr @eliminate_unnecessary_stmts, ptr @mark_virtual_phi_result_for_renaming, i64 733}
!202 = !{ptr @eliminate_unnecessary_stmts, ptr @gsi_next, i64 933}
!203 = !{ptr @eliminate_unnecessary_stmts, ptr @first_dom_son, i64 1}
!204 = !{ptr @eliminate_unnecessary_stmts, ptr @delete_basic_block, i64 395}
!205 = !{ptr @eliminate_unnecessary_stmts, ptr @remove_dead_phis, i64 1481948}
!206 = !{ptr @tree_dce_done, ptr @bitmap_obstack_free, i64 527002}
!207 = !{ptr @tree_dce_done, ptr @free, i64 193760}
!208 = !{ptr @tree_dce_done, ptr @VEC_gimple_heap_free, i64 42224}
!209 = !{ptr @VEC_gimple_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 42224}
!210 = !{ptr @find_control_dependence, ptr @fancy_abort, i64 1}
!211 = !{ptr @find_control_dependence, ptr @single_succ, i64 15617}
!212 = !{ptr @find_control_dependence, ptr @find_pdom, i64 1088409}
!213 = !{ptr @find_control_dependence, ptr @set_control_dependence_map_bit, i64 295230}
!214 = !{ptr @single_succ, ptr @single_succ_edge, i64 57840}
!215 = !{ptr @find_pdom, ptr @fancy_abort, i64 1}
!216 = !{ptr @find_pdom, ptr @get_immediate_dominator, i64 1451255}
!217 = !{ptr @set_control_dependence_map_bit, ptr @fancy_abort, i64 1}
!218 = !{ptr @set_control_dependence_map_bit, ptr @bitmap_set_bit, i64 658076}
!219 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 57840}
!220 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!221 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 57840}
!222 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 57840}
!223 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 1482371}
!224 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 1482371}
!225 = !{ptr @mark_stmt_if_obviously_necessary, ptr @stmt_could_throw_p, i64 1}
!226 = !{ptr @mark_stmt_if_obviously_necessary, ptr @gimple_code, i64 4134732}
!227 = !{ptr @mark_stmt_if_obviously_necessary, ptr @gimple_has_side_effects, i64 553509}
!228 = !{ptr @mark_stmt_if_obviously_necessary, ptr @gimple_call_lhs, i64 34888}
!229 = !{ptr @mark_stmt_if_obviously_necessary, ptr @gimple_assign_lhs, i64 2549829}
!230 = !{ptr @mark_stmt_if_obviously_necessary, ptr @gimple_debug_bind_has_value_p, i64 1}
!231 = !{ptr @mark_stmt_if_obviously_necessary, ptr @simple_goto_p, i64 1}
!232 = !{ptr @mark_stmt_if_obviously_necessary, ptr @fancy_abort, i64 2}
!233 = !{ptr @mark_stmt_if_obviously_necessary, ptr @gimple_bb, i64 847581}
!234 = !{ptr @mark_stmt_if_obviously_necessary, ptr @VEC_edge_base_length, i64 847581}
!235 = !{ptr @mark_stmt_if_obviously_necessary, ptr @mark_stmt_necessary, i64 1596676}
!236 = !{ptr @mark_stmt_if_obviously_necessary, ptr @gimple_has_volatile_ops, i64 3413930}
!237 = !{ptr @mark_stmt_if_obviously_necessary, ptr @is_ctrl_altering_stmt, i64 3413877}
!238 = !{ptr @mark_stmt_if_obviously_necessary, ptr @is_hidden_global_store, i64 3413876}
!239 = !{ptr @ei_cond, ptr @ei_end_p, i64 4942}
!240 = !{ptr @ei_cond, ptr @ei_edge, i64 3151}
!241 = !{ptr @mark_control_dependent_edges_necessary, ptr @fancy_abort, i64 1}
!242 = !{ptr @mark_control_dependent_edges_necessary, ptr @bmp_iter_set_init, i64 507874}
!243 = !{ptr @mark_control_dependent_edges_necessary, ptr @bmp_iter_set, i64 1179517}
!244 = !{ptr @mark_control_dependent_edges_necessary, ptr @SET_BIT, i64 569268}
!245 = !{ptr @mark_control_dependent_edges_necessary, ptr @last_stmt, i64 284634}
!246 = !{ptr @mark_control_dependent_edges_necessary, ptr @is_ctrl_stmt, i64 284628}
!247 = !{ptr @mark_control_dependent_edges_necessary, ptr @mark_stmt_necessary, i64 284627}
!248 = !{ptr @mark_control_dependent_edges_necessary, ptr @bmp_iter_next, i64 671643}
!249 = !{ptr @ei_next, ptr @ei_container, i64 6973}
!250 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 3487}
!251 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!252 = !{ptr @fel_init, ptr @number_of_loops, i64 15069}
!253 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 15069}
!254 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 50575}
!255 = !{ptr @fel_init, ptr @loop_outer, i64 40648}
!256 = !{ptr @fel_init, ptr @fel_next, i64 15069}
!257 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 40653}
!258 = !{ptr @fel_next, ptr @get_loop, i64 25582}
!259 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 15071}
!260 = !{ptr @mark_stmt_necessary, ptr @fancy_abort, i64 1}
!261 = !{ptr @mark_stmt_necessary, ptr @gimple_plf, i64 1881300}
!262 = !{ptr @mark_stmt_necessary, ptr @gimple_set_plf, i64 1881299}
!263 = !{ptr @mark_stmt_necessary, ptr @VEC_gimple_heap_safe_push, i64 1738656}
!264 = !{ptr @mark_stmt_necessary, ptr @is_gimple_debug, i64 620534}
!265 = !{ptr @mark_stmt_necessary, ptr @gimple_bb, i64 620533}
!266 = !{ptr @mark_stmt_necessary, ptr @SET_BIT, i64 620533}
!267 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 1434411}
!268 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 2836413}
!269 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 3413936}
!270 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_heap_reserve, i64 4312091}
!271 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_base_quick_push, i64 4312091}
!272 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 665093}
!273 = !{ptr @VEC_gimple_heap_reserve, ptr @VEC_gimple_base_space, i64 4312091}
!274 = !{ptr @VEC_gimple_heap_reserve, ptr @vec_heap_p_reserve, i64 11360}
!275 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 8126263}
!276 = !{ptr @gimple_op, ptr @gimple_ops, i64 8126262}
!277 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 8126568}
!278 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!279 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 8126568}
!280 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 8126568}
!281 = !{ptr @ei_end_p, ptr @ei_container, i64 11941}
!282 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 5971}
!283 = !{ptr @ei_edge, ptr @ei_container, i64 7673}
!284 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 3837}
!285 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!286 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 15070}
!287 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 15069}
!288 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 28596}
!289 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 13526}
!290 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 25582}
!291 = !{ptr @VEC_int_heap_free, ptr @free, i64 15069}
!292 = !{ptr @mark_operand_necessary, ptr @fancy_abort, i64 3}
!293 = !{ptr @mark_operand_necessary, ptr @gimple_nop_p, i64 5643214}
!294 = !{ptr @mark_operand_necessary, ptr @gimple_plf, i64 6256010}
!295 = !{ptr @mark_operand_necessary, ptr @SET_BIT, i64 4560503}
!296 = !{ptr @mark_operand_necessary, ptr @gimple_set_plf, i64 2573432}
!297 = !{ptr @mark_operand_necessary, ptr @gimple_bb, i64 896828}
!298 = !{ptr @mark_operand_necessary, ptr @VEC_gimple_heap_safe_push, i64 2573432}
!299 = !{ptr @degenerate_phi_p, ptr @gimple_phi_arg_def, i64 868977}
!300 = !{ptr @degenerate_phi_p, ptr @gimple_phi_num_args, i64 471856}
!301 = !{ptr @gimple_phi_arg_edge, ptr @gimple_bb, i64 324047}
!302 = !{ptr @gimple_phi_arg_edge, ptr @VEC_edge_base_index, i64 324047}
!303 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 3947532}
!304 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 3947532}
!305 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 4249201}
!306 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 1}
!307 = !{ptr @mark_all_reaching_defs_necessary, ptr @gimple_vuse, i64 1815013}
!308 = !{ptr @mark_all_reaching_defs_necessary, ptr @walk_aliased_vdefs, i64 1815013}
!309 = !{ptr @is_gimple_call, ptr @gimple_code, i64 7142743}
!310 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 1097455}
!311 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 1639664}
!312 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 1113749}
!313 = !{ptr @ref_may_be_aliased, ptr @handled_component_p, i64 3970035}
!314 = !{ptr @ref_may_be_aliased, ptr @may_be_aliased, i64 489133}
!315 = !{ptr @mark_aliased_reaching_defs_necessary, ptr @fancy_abort, i64 1}
!316 = !{ptr @mark_aliased_reaching_defs_necessary, ptr @ao_ref_init, i64 71060}
!317 = !{ptr @mark_aliased_reaching_defs_necessary, ptr @gimple_vuse, i64 71060}
!318 = !{ptr @mark_aliased_reaching_defs_necessary, ptr @gimple_bb, i64 71060}
!319 = !{ptr @mark_aliased_reaching_defs_necessary, ptr @walk_aliased_vdefs, i64 71060}
!320 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 1644134}
!321 = !{ptr @gimple_return_retval, ptr @gimple_op, i64 101}
!322 = !{ptr @gimple_nop_p, ptr @gimple_code, i64 5666936}
!323 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 847967}
!324 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 847967}
!325 = !{ptr @mark_all_reaching_defs_necessary_1, ptr @gimple_nop_p, i64 23721}
!326 = !{ptr @mark_all_reaching_defs_necessary_1, ptr @gimple_plf, i64 23720}
!327 = !{ptr @mark_all_reaching_defs_necessary_1, ptr @fancy_abort, i64 1}
!328 = !{ptr @mark_all_reaching_defs_necessary_1, ptr @gimple_assign_single_p, i64 753877}
!329 = !{ptr @mark_all_reaching_defs_necessary_1, ptr @gimple_assign_lhs, i64 303893}
!330 = !{ptr @mark_all_reaching_defs_necessary_1, ptr @ref_may_be_aliased, i64 303893}
!331 = !{ptr @mark_all_reaching_defs_necessary_1, ptr @mark_operand_necessary, i64 641335}
!332 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 1097455}
!333 = !{ptr @mark_aliased_reaching_defs_necessary_1, ptr @mark_operand_necessary, i64 917855}
!334 = !{ptr @mark_aliased_reaching_defs_necessary_1, ptr @gimple_has_lhs, i64 917855}
!335 = !{ptr @mark_aliased_reaching_defs_necessary_1, ptr @gimple_get_lhs, i64 510359}
!336 = !{ptr @mark_aliased_reaching_defs_necessary_1, ptr @ao_ref_base, i64 54669}
!337 = !{ptr @mark_aliased_reaching_defs_necessary_1, ptr @get_ref_base_and_extent, i64 54669}
!338 = !{ptr @mark_aliased_reaching_defs_necessary_1, ptr @gimple_bb, i64 11262}
!339 = !{ptr @mark_aliased_reaching_defs_necessary_1, ptr @dominated_by_p, i64 11262}
!340 = !{ptr @mark_aliased_reaching_defs_necessary_1, ptr @operand_equal_p, i64 2080}
!341 = !{ptr @gimple_has_lhs, ptr @is_gimple_assign, i64 917855}
!342 = !{ptr @gimple_has_lhs, ptr @is_gimple_call, i64 864345}
!343 = !{ptr @gimple_has_lhs, ptr @gimple_call_lhs, i64 864344}
!344 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 917855}
!345 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 1482371}
!346 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 1482371}
!347 = !{ptr @remove_dead_stmt, ptr @gsi_stmt, i64 44559}
!348 = !{ptr @remove_dead_stmt, ptr @is_ctrl_stmt, i64 44559}
!349 = !{ptr @remove_dead_stmt, ptr @get_immediate_dominator, i64 344}
!350 = !{ptr @remove_dead_stmt, ptr @find_edge, i64 344}
!351 = !{ptr @remove_dead_stmt, ptr @VEC_edge_base_index, i64 9}
!352 = !{ptr @remove_dead_stmt, ptr @forward_edge_to_pdom, i64 6}
!353 = !{ptr @remove_dead_stmt, ptr @fancy_abort, i64 1}
!354 = !{ptr @remove_dead_stmt, ptr @ei_start_1, i64 344}
!355 = !{ptr @remove_dead_stmt, ptr @ei_safe_edge, i64 1031}
!356 = !{ptr @remove_dead_stmt, ptr @remove_edge, i64 343}
!357 = !{ptr @remove_dead_stmt, ptr @ei_next, i64 343}
!358 = !{ptr @remove_dead_stmt, ptr @unlink_stmt_vdef, i64 44559}
!359 = !{ptr @remove_dead_stmt, ptr @gsi_remove, i64 44559}
!360 = !{ptr @remove_dead_stmt, ptr @release_defs, i64 44559}
!361 = !{ptr @gimple_call_set_lhs, ptr @gimple_set_op, i64 305}
!362 = !{ptr @VEC_basic_block_heap_free, ptr @free, i64 42223}
!363 = !{ptr @end_imm_use_stmt_traverse, ptr @delink_imm_use, i64 735}
!364 = !{ptr @remove_dead_phis, ptr @phi_nodes, i64 1481982}
!365 = !{ptr @remove_dead_phis, ptr @gsi_start, i64 1481982}
!366 = !{ptr @remove_dead_phis, ptr @gsi_end_p, i64 2682634}
!367 = !{ptr @remove_dead_phis, ptr @gsi_stmt, i64 1200652}
!368 = !{ptr @remove_dead_phis, ptr @gimple_phi_result, i64 1231798}
!369 = !{ptr @remove_dead_phis, ptr @is_gimple_reg, i64 1200652}
!370 = !{ptr @remove_dead_phis, ptr @degenerate_phi_p, i64 515417}
!371 = !{ptr @remove_dead_phis, ptr @gimple_phi_arg_def, i64 31146}
!372 = !{ptr @remove_dead_phis, ptr @first_imm_use_stmt, i64 31146}
!373 = !{ptr @remove_dead_phis, ptr @end_imm_use_stmt_p, i64 73087}
!374 = !{ptr @remove_dead_phis, ptr @first_imm_use_on_stmt, i64 41941}
!375 = !{ptr @remove_dead_phis, ptr @end_imm_use_on_stmt_p, i64 84586}
!376 = !{ptr @remove_dead_phis, ptr @set_ssa_use_from_ptr, i64 42645}
!377 = !{ptr @remove_dead_phis, ptr @next_imm_use_on_stmt, i64 42645}
!378 = !{ptr @remove_dead_phis, ptr @next_imm_use_stmt, i64 41941}
!379 = !{ptr @remove_dead_phis, ptr @gimple_set_plf, i64 484271}
!380 = !{ptr @remove_dead_phis, ptr @gimple_plf, i64 1200652}
!381 = !{ptr @remove_dead_phis, ptr @fwrite, i64 1}
!382 = !{ptr @remove_dead_phis, ptr @print_gimple_stmt, i64 1}
!383 = !{ptr @remove_dead_phis, ptr @fputc, i64 1}
!384 = !{ptr @remove_dead_phis, ptr @remove_phi_node, i64 56468}
!385 = !{ptr @remove_dead_phis, ptr @gsi_next, i64 1144184}
!386 = !{ptr @forward_edge_to_pdom, ptr @redirect_edge_and_branch, i64 7}
!387 = !{ptr @forward_edge_to_pdom, ptr @phi_nodes, i64 6}
!388 = !{ptr @forward_edge_to_pdom, ptr @gimple_seq_empty_p, i64 6}
!389 = !{ptr @forward_edge_to_pdom, ptr @ei_start_1, i64 6}
!390 = !{ptr @forward_edge_to_pdom, ptr @ei_cond, i64 7}
!391 = !{ptr @forward_edge_to_pdom, ptr @ei_next, i64 1}
!392 = !{ptr @forward_edge_to_pdom, ptr @gsi_start_phis, i64 6}
!393 = !{ptr @forward_edge_to_pdom, ptr @gsi_end_p, i64 12}
!394 = !{ptr @forward_edge_to_pdom, ptr @gsi_stmt, i64 6}
!395 = !{ptr @forward_edge_to_pdom, ptr @gimple_phi_result, i64 6}
!396 = !{ptr @forward_edge_to_pdom, ptr @is_gimple_reg, i64 6}
!397 = !{ptr @forward_edge_to_pdom, ptr @mark_virtual_phi_result_for_renaming, i64 1}
!398 = !{ptr @forward_edge_to_pdom, ptr @remove_phi_node, i64 1}
!399 = !{ptr @forward_edge_to_pdom, ptr @gimple_plf, i64 4}
!400 = !{ptr @forward_edge_to_pdom, ptr @gsi_next, i64 5}
!401 = !{ptr @forward_edge_to_pdom, ptr @gimple_phi_arg_def, i64 1}
!402 = !{ptr @forward_edge_to_pdom, ptr @gimple_phi_arg_location, i64 1}
!403 = !{ptr @forward_edge_to_pdom, ptr @add_phi_arg, i64 1}
!404 = !{ptr @forward_edge_to_pdom, ptr @degenerate_phi_p, i64 1}
!405 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 1029}
!406 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 686}
!407 = !{ptr @phi_nodes, ptr @fancy_abort, i64 1}
!408 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 305}
!409 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 304}
!410 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!411 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 305}
!412 = !{ptr @gsi_start, ptr @gimple_seq_first, i64 1481982}
!413 = !{ptr @gsi_start, ptr @gimple_bb, i64 421554}
!414 = !{ptr @VEC_gimple_heap_free, ptr @free, i64 42223}
!415 = !{ptr @tree_ssa_dce_loop, ptr @perform_tree_ssa_dce, i64 13304}
!416 = !{ptr @tree_ssa_dce_loop, ptr @free_numbers_of_iterations_estimates, i64 2244}
!417 = !{ptr @tree_ssa_dce_loop, ptr @scev_reset, i64 2244}
!418 = !{ptr @tree_ssa_cd_dce, ptr @perform_tree_ssa_dce, i64 15616}
!419 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!420 = !{!"function_entry_count", i64 736}
!421 = !{!422, !422, i64 0}
!422 = !{!"any pointer", !423, i64 0}
!423 = !{!"omnipotent char", !424, i64 0}
!424 = !{!"Simple C/C++ TBAA"}
!425 = !{!"branch_weights", i32 737, i32 1}
!426 = !{!427, !427, i64 0}
!427 = !{!"int", !423, i64 0}
!428 = !{!423, !423, i64 0}
!429 = !{i8 0, i8 2}
!430 = !{!"branch_weights", i32 736, i32 1}
!431 = !{!"branch_weights", i32 781, i32 1}
!432 = !{!"branch_weights", i32 1, i32 781}
!433 = distinct !{!433, !434}
!434 = !{!"llvm.loop.mustprogress"}
!435 = !{!"branch_weights", i32 46, i32 736}
!436 = distinct !{!436, !434}
!437 = !{!"function_entry_count", i64 1066500}
!438 = !{!"tree-ssa-dce.c:gimple_phi_result"}
!439 = !{!"function_entry_count", i64 18679}
!440 = !{!"tree-ssa-dce.c:first_imm_use_stmt"}
!441 = !{!442, !422, i64 8}
!442 = !{!"immediate_use_iterator_d", !422, i64 0, !422, i64 8, !443, i64 16, !422, i64 48}
!443 = !{!"ssa_use_operand_d", !422, i64 0, !422, i64 8, !423, i64 16, !422, i64 24}
!444 = !{!443, !422, i64 8}
!445 = !{!442, !422, i64 0}
!446 = !{!"branch_weights", i32 18592, i32 89}
!447 = !{!"function_entry_count", i64 85258}
!448 = !{!"tree-ssa-dce.c:end_imm_use_stmt_p"}
!449 = !{!"function_entry_count", i64 23950}
!450 = !{!"tree-ssa-dce.c:first_imm_use_on_stmt"}
!451 = !{!442, !422, i64 48}
!452 = !{!"function_entry_count", i64 72628}
!453 = !{!"tree-ssa-dce.c:end_imm_use_on_stmt_p"}
!454 = !{!"function_entry_count", i64 24339}
!455 = !{!"tree-ssa-dce.c:set_ssa_use_from_ptr"}
!456 = !{!443, !422, i64 24}
!457 = !{!"tree-ssa-dce.c:next_imm_use_on_stmt"}
!458 = !{!"branch_weights", i32 390, i32 23951}
!459 = !{!"function_entry_count", i64 1086}
!460 = !{!"tree-ssa-dce.c:update_stmt"}
!461 = !{!"branch_weights", i32 736, i32 352}
!462 = !{!"tree-ssa-dce.c:next_imm_use_stmt"}
!463 = !{!442, !422, i64 24}
!464 = !{!"branch_weights", i32 6095, i32 17857}
!465 = !{!442, !422, i64 16}
!466 = !{!"branch_weights", i32 1, i32 17857}
!467 = !{!"function_entry_count", i64 24685}
!468 = !{!"tree-ssa-dce.c:link_use_stmts_after"}
!469 = !{i32 0, i32 256}
!470 = !{!"branch_weights", i32 19042, i32 5645}
!471 = !{!"branch_weights", i32 19041, i32 1}
!472 = !{!"branch_weights", i32 19431, i32 26509}
!473 = !{!"branch_weights", i32 26898, i32 19041}
!474 = distinct !{!474, !434}
!475 = !{!"branch_weights", i32 5645, i32 1}
!476 = distinct !{!476, !434}
!477 = !{!"branch_weights", i32 1, i32 5645}
!478 = !{!"branch_weights", i32 18592, i32 6095}
!479 = !{!"function_entry_count", i64 6214521}
!480 = !{!"tree-ssa-dce.c:get_use_from_ptr"}
!481 = !{!"function_entry_count", i64 78909711}
!482 = !{!"tree-ssa-dce.c:gimple_code"}
!483 = !{!"function_entry_count", i64 19041}
!484 = !{!"tree-ssa-dce.c:op_iter_init_phiuse"}
!485 = !{!486, !423, i64 0}
!486 = !{!"ssa_operand_iterator_d", !423, i64 0, !427, i64 4, !422, i64 8, !422, i64 16, !427, i64 24, !427, i64 28, !422, i64 32}
!487 = !{!"branch_weights", i32 1, i32 19042}
!488 = !{!486, !422, i64 32}
!489 = !{!486, !427, i64 28}
!490 = !{!486, !427, i64 4}
!491 = !{!"function_entry_count", i64 8261712}
!492 = !{!"tree-ssa-dce.c:op_iter_done"}
!493 = !{!"function_entry_count", i64 25074}
!494 = !{!"tree-ssa-dce.c:move_use_after_head"}
!495 = !{!"branch_weights", i32 24686, i32 390}
!496 = !{!"branch_weights", i32 190, i32 201}
!497 = !{!"function_entry_count", i64 64979}
!498 = !{!"tree-ssa-dce.c:op_iter_next_use"}
!499 = !{!486, !422, i64 16}
!500 = !{!"branch_weights", i32 64980, i32 1}
!501 = !{!502, !422, i64 0}
!502 = !{!"use_optype_d", !422, i64 0, !443, i64 8}
!503 = !{!486, !427, i64 24}
!504 = !{!"branch_weights", i32 45939, i32 19042}
!505 = !{!"function_entry_count", i64 0}
!506 = !{!"tree-ssa-dce.c:op_iter_init_use"}
!507 = !{!"function_entry_count", i64 5644}
!508 = !{!"tree-ssa-dce.c:gimple_vuse_op"}
!509 = !{!502, !422, i64 32}
!510 = !{!"function_entry_count", i64 49224}
!511 = !{!"tree-ssa-dce.c:delink_imm_use"}
!512 = !{!443, !422, i64 0}
!513 = !{!"branch_weights", i32 1, i32 49225}
!514 = !{!"function_entry_count", i64 48443}
!515 = !{!"tree-ssa-dce.c:link_imm_use_to_list"}
!516 = !{!"tree-ssa-dce.c:clear_and_done_ssa_iter"}
!517 = !{!"function_entry_count", i64 2311966}
!518 = !{!"tree-ssa-dce.c:gimple_phi_num_args"}
!519 = !{!"function_entry_count", i64 1087024}
!520 = !{!"tree-ssa-dce.c:gimple_phi_arg_imm_use_ptr"}
!521 = !{!"function_entry_count", i64 1934991}
!522 = !{!"tree-ssa-dce.c:gimple_phi_arg"}
!523 = !{!"branch_weights", i32 1, i32 1934992}
!524 = !{!"function_entry_count", i64 3947532}
!525 = !{!"tree-ssa-dce.c:op_iter_init"}
!526 = !{!"branch_weights", i32 3947533, i32 1}
!527 = !{!486, !422, i64 8}
!528 = !{!"branch_weights", i32 0, i32 -2147483648}
!529 = !{!530, !422, i64 0}
!530 = !{!"def_optype_d", !422, i64 0, !422, i64 8}
!531 = !{!"branch_weights", i32 1, i32 3947533}
!532 = !{!"branch_weights", i32 11555783, i32 2135927865}
!533 = !{!"branch_weights", i32 1696810, i32 2229483}
!534 = !{!"tree-ssa-dce.c:gimple_def_ops"}
!535 = !{!"tree-ssa-dce.c:gimple_vdef"}
!536 = !{!"tree-ssa-dce.c:gimple_use_ops"}
!537 = !{!"function_entry_count", i64 9759896}
!538 = !{!"tree-ssa-dce.c:gimple_vuse"}
!539 = !{!"branch_weights", i32 1727198, i32 8032700}
!540 = !{!"function_entry_count", i64 12075186}
!541 = !{!"tree-ssa-dce.c:gimple_has_ops"}
!542 = !{!"function_entry_count", i64 13179476}
!543 = !{!"tree-ssa-dce.c:gimple_has_mem_ops"}
!544 = !{!"tree-ssa-dce.c:link_imm_use"}
!545 = !{!"branch_weights", i32 1, i32 24340}
!546 = !{!"branch_weights", i32 23559, i32 782}
!547 = !{!"function_entry_count", i64 42224}
!548 = !{!"tree-ssa-dce.c:gate_dce"}
!549 = !{!"function_entry_count", i64 13304}
!550 = !{!"tree-ssa-dce.c:tree_ssa_dce"}
!551 = !{i32 0, i32 34851}
!552 = !{!"tree-ssa-dce.c:perform_tree_ssa_dce"}
!553 = !{!"branch_weights", i32 26609, i32 15617}
!554 = !{!"branch_weights", i32 15617, i32 1}
!555 = !{!556, !422, i64 8}
!556 = !{!"function", !422, i64 0, !422, i64 8, !422, i64 16, !422, i64 24, !422, i64 32, !422, i64 40, !422, i64 48, !422, i64 56, !422, i64 64, !422, i64 72, !422, i64 80, !422, i64 88, !422, i64 96, !427, i64 104, !427, i64 108, !427, i64 112, !427, i64 116, !427, i64 120, !427, i64 124, !422, i64 128, !427, i64 136, !427, i64 137, !427, i64 138, !427, i64 138, !427, i64 138, !427, i64 138, !427, i64 138, !427, i64 138, !427, i64 138, !427, i64 139, !427, i64 139, !427, i64 139, !427, i64 139, !427, i64 139, !427, i64 139, !427, i64 139}
!557 = !{!558, !427, i64 32}
!558 = !{!"control_flow_graph", !422, i64 0, !422, i64 8, !422, i64 16, !427, i64 24, !427, i64 28, !427, i64 32, !422, i64 40, !427, i64 48, !423, i64 52, !423, i64 60, !427, i64 68, !427, i64 72}
!559 = !{!"branch_weights", i32 170, i32 42056}
!560 = !{!561, !427, i64 8}
!561 = !{!"stmt_stats", !427, i64 0, !427, i64 4, !427, i64 8, !427, i64 12}
!562 = !{!561, !427, i64 12}
!563 = !{!"branch_weights", i32 42225, i32 1}
!564 = !{!"branch_weights", i32 31291, i32 10935}
!565 = !{!"tree-ssa-dce.c:tree_dce_init"}
!566 = !{!"branch_weights", i32 15616, i32 1}
!567 = !{!"branch_weights", i32 511411, i32 15616}
!568 = distinct !{!568, !434}
!569 = !{!556, !422, i64 24}
!570 = !{!571, !422, i64 16}
!571 = !{!"gimple_df", !422, i64 0, !422, i64 8, !422, i64 16, !422, i64 24, !572, i64 32, !572, i64 48, !422, i64 64, !422, i64 72, !422, i64 80, !422, i64 88, !427, i64 96, !573, i64 104}
!572 = !{!"pt_solution", !427, i64 0, !427, i64 0, !427, i64 0, !427, i64 0, !427, i64 0, !427, i64 0, !422, i64 8}
!573 = !{!"ssa_operands", !422, i64 0, !427, i64 8, !427, i64 12, !423, i64 16, !422, i64 24, !422, i64 32}
!574 = !{!"function_entry_count", i64 15616}
!575 = !{!"tree-ssa-dce.c:find_all_control_dependences"}
!576 = !{!577, !427, i64 4}
!577 = !{!"edge_list", !427, i64 0, !427, i64 4, !422, i64 8}
!578 = !{!"branch_weights", i32 793180, i32 15616}
!579 = distinct !{!579, !434}
!580 = !{!"tree-ssa-dce.c:find_obviously_necessary_stmts"}
!581 = !{!558, !422, i64 0}
!582 = !{!583, !422, i64 56}
!583 = !{!"basic_block_def", !422, i64 0, !422, i64 8, !422, i64 16, !422, i64 24, !423, i64 32, !422, i64 48, !422, i64 56, !423, i64 64, !584, i64 72, !427, i64 80, !427, i64 84, !427, i64 88, !427, i64 92, !427, i64 96}
!584 = !{!"long", !423, i64 0}
!585 = !{!558, !422, i64 8}
!586 = !{!"branch_weights", i32 1, i32 42224}
!587 = !{!"branch_weights", i32 42224, i32 1440148}
!588 = distinct !{!588, !434}
!589 = !{!"branch_weights", i32 663370, i32 819002}
!590 = !{!"branch_weights", i32 0, i32 663370}
!591 = distinct !{!591, !434}
!592 = !{i64 0, i64 8, !421, i64 8, i64 8, !421, i64 16, i64 8, !421}
!593 = !{!"branch_weights", i32 1482371, i32 1}
!594 = !{!"branch_weights", i32 2652363, i32 1482371}
!595 = distinct !{!595, !434}
!596 = !{!"branch_weights", i32 1587942450, i32 159622786}
!597 = !{!"branch_weights", i32 135366126, i32 16969946}
!598 = !{!"branch_weights", i32 24425, i32 15071}
!599 = !{!"branch_weights", i32 15069, i32 3}
!600 = !{!"branch_weights", i32 1, i32 191}
!601 = !{i64 0, i64 4, !426, i64 8, i64 8, !421}
!602 = !{i64 0, i64 8, !421}
!603 = !{!"branch_weights", i32 1, i32 1791}
!604 = !{!605, !427, i64 48}
!605 = !{!"edge_def", !422, i64 0, !422, i64 8, !423, i64 16, !422, i64 24, !422, i64 32, !427, i64 40, !427, i64 44, !427, i64 48, !427, i64 52, !584, i64 56}
!606 = !{!"branch_weights", i32 1040, i32 329290}
!607 = !{!"branch_weights", i32 10, i32 1}
!608 = !{!605, !422, i64 0}
!609 = !{!583, !427, i64 80}
!610 = !{!605, !422, i64 8}
!611 = !{!"branch_weights", i32 1791, i32 1354}
!612 = distinct !{!612, !434}
!613 = !{!"branch_weights", i32 191, i32 114497}
!614 = distinct !{!614, !434}
!615 = !{!"branch_weights", i32 1, i32 15070}
!616 = !{!"branch_weights", i32 19038, i32 6546}
!617 = !{!"branch_weights", i32 19038, i32 1}
!618 = !{!619, !427, i64 0}
!619 = !{!"loop", !427, i64 0, !427, i64 4, !422, i64 8, !422, i64 16, !620, i64 24, !427, i64 32, !427, i64 36, !422, i64 40, !422, i64 48, !422, i64 56, !422, i64 64, !422, i64 72, !621, i64 80, !621, i64 96, !423, i64 112, !423, i64 113, !427, i64 116, !422, i64 120, !422, i64 128, !423, i64 136, !422, i64 144}
!620 = !{!"lpt_decision", !427, i64 0, !427, i64 4}
!621 = !{!"", !584, i64 0, !584, i64 8}
!622 = !{!619, !422, i64 16}
!623 = !{!"branch_weights", i32 15070, i32 10513}
!624 = distinct !{!624, !434}
!625 = !{!"tree-ssa-dce.c:propagate_necessity"}
!626 = !{!"branch_weights", i32 4312092, i32 1}
!627 = !{!"branch_weights", i32 2846885, i32 1465208}
!628 = !{!"branch_weights", i32 1, i32 1465208}
!629 = !{!584, !584, i64 0}
!630 = !{!"branch_weights", i32 283515, i32 1181694}
!631 = !{!"branch_weights", i32 364560, i32 3947533}
!632 = !{!"branch_weights", i32 1, i32 364560}
!633 = !{!"branch_weights", i32 1, i32 364559}
!634 = !{!"branch_weights", i32 752786, i32 288302}
!635 = !{!"branch_weights", i32 676528, i32 364559}
!636 = distinct !{!636, !434}
!637 = !{!"branch_weights", i32 245940, i32 118621}
!638 = !{!"branch_weights", i32 97001, i32 21621}
!639 = !{!"branch_weights", i32 1, i32 97000}
!640 = !{!"branch_weights", i32 1, i32 324048}
!641 = !{!"branch_weights", i32 205316, i32 118733}
!642 = !{!"branch_weights", i32 227048, i32 97000}
!643 = distinct !{!643, !434}
!644 = !{!"branch_weights", i32 3947532, i32 1}
!645 = !{!"branch_weights", i32 301670, i32 3947532}
!646 = distinct !{!646, !434}
!647 = !{!"branch_weights", i32 1718051, i32 2229483}
!648 = distinct !{!648, !434}
!649 = !{!"branch_weights", i32 41260, i32 2188224}
!650 = !{!"branch_weights", i32 1644236, i32 543989}
!651 = !{!"branch_weights", i32 18052, i32 525938}
!652 = !{!"branch_weights", i32 62448, i32 463491}
!653 = !{!"branch_weights", i32 -320297528, i32 732799409, i32 16570760, i32 869724922}
!654 = !{!"branch_weights", i32 1, i32 525915}
!655 = !{!"branch_weights", i32 725604, i32 388147}
!656 = !{!"branch_weights", i32 1232, i32 386916}
!657 = !{!"branch_weights", i32 449, i32 784}
!658 = !{!"branch_weights", i32 587835, i32 525915}
!659 = distinct !{!659, !434}
!660 = !{!"branch_weights", i32 102, i32 1644135}
!661 = !{!"branch_weights", i32 219885, i32 1424251}
!662 = !{!"branch_weights", i32 1318351, i32 105901}
!663 = !{!"branch_weights", i32 70519, i32 1247833}
!664 = !{!"branch_weights", i32 1, i32 204, i32 1}
!665 = !{!"branch_weights", i32 1, i32 102}
!666 = !{!"branch_weights", i32 102, i32 1}
!667 = !{!"branch_weights", i32 95, i32 8}
!668 = distinct !{!668, !434}
!669 = !{!"branch_weights", i32 22478, i32 2147674}
!670 = !{!"branch_weights", i32 53, i32 22426}
!671 = !{!"branch_weights", i32 53, i32 1}
!672 = !{!"branch_weights", i32 1, i32 53}
!673 = !{!"branch_weights", i32 42224, i32 4269868}
!674 = !{!"tree-ssa-dce.c:eliminate_unnecessary_stmts"}
!675 = !{!"branch_weights", i32 1, i32 42225}
!676 = distinct !{!676, !434}
!677 = !{!561, !427, i64 0}
!678 = !{!"branch_weights", i32 44560, i32 4090175}
!679 = !{!"branch_weights", i32 44560, i32 1}
!680 = !{!"branch_weights", i32 3536708, i32 553468}
!681 = !{!"branch_weights", i32 18290, i32 535179}
!682 = !{!"branch_weights", i32 222607, i32 312573}
!683 = !{!"branch_weights", i32 312249, i32 325}
!684 = !{!"branch_weights", i32 306, i32 311944}
!685 = !{!"branch_weights", i32 306, i32 1}
!686 = distinct !{!686, !434}
!687 = !{!583, !422, i64 48}
!688 = !{!"branch_weights", i32 1, i32 169}
!689 = !{!"branch_weights", i32 2546, i32 37274}
!690 = !{!583, !427, i64 96}
!691 = !{!"branch_weights", i32 12, i32 37263}
!692 = !{!"branch_weights", i32 933, i32 1624}
!693 = !{!"branch_weights", i32 739, i32 195}
!694 = !{!"branch_weights", i32 127, i32 1}
!695 = !{!"branch_weights", i32 1, i32 736}
!696 = !{!"branch_weights", i32 733, i32 4}
!697 = !{!"branch_weights", i32 1, i32 4}
!698 = !{!"branch_weights", i32 23425, i32 127}
!699 = distinct !{!699, !434}
!700 = !{!"branch_weights", i32 0, i32 933}
!701 = distinct !{!701, !434}
!702 = !{!"branch_weights", i32 390, i32 2168}
!703 = !{!"branch_weights", i32 390, i32 1}
!704 = distinct !{!704, !434}
!705 = !{!"branch_weights", i32 169, i32 39650}
!706 = distinct !{!706, !434}
!707 = !{!"branch_weights", i32 42224, i32 1439759}
!708 = distinct !{!708, !434}
!709 = !{!"tree-ssa-dce.c:print_stats"}
!710 = !{!561, !427, i64 4}
!711 = !{!"tree-ssa-dce.c:tree_dce_done"}
!712 = distinct !{!712, !434}
!713 = !{!714, !422, i64 0}
!714 = !{!"simple_bitmap_def", !422, i64 0, !427, i64 8, !427, i64 12, !423, i64 16}
!715 = !{!"tree-ssa-dce.c:VEC_tree_base_length"}
!716 = !{!717, !427, i64 0}
!717 = !{!"VEC_tree_base", !427, i64 0, !427, i64 4, !423, i64 8}
!718 = !{!"tree-ssa-dce.c:VEC_gimple_heap_alloc"}
!719 = !{!"function_entry_count", i64 808795}
!720 = !{!"tree-ssa-dce.c:find_control_dependence"}
!721 = !{!577, !422, i64 8}
!722 = !{!"branch_weights", i32 1, i32 808796}
!723 = !{!"branch_weights", i32 15617, i32 793180}
!724 = !{!"branch_weights", i32 150718, i32 658078}
!725 = !{!"branch_weights", i32 808796, i32 658078}
!726 = !{!"branch_weights", i32 658078, i32 1}
!727 = !{!"branch_weights", i32 658078, i32 0}
!728 = distinct !{!728, !434}
!729 = !{!"function_entry_count", i64 57840}
!730 = !{!"tree-ssa-dce.c:single_succ"}
!731 = !{!"function_entry_count", i64 1451256}
!732 = !{!"tree-ssa-dce.c:find_pdom"}
!733 = !{!"branch_weights", i32 1, i32 1451257}
!734 = !{!"function_entry_count", i64 658077}
!735 = !{!"tree-ssa-dce.c:set_control_dependence_map_bit"}
!736 = !{!"branch_weights", i32 1, i32 658078}
!737 = !{!"tree-ssa-dce.c:single_succ_edge"}
!738 = !{!"branch_weights", i32 1, i32 57841}
!739 = !{!583, !422, i64 8}
!740 = !{!"tree-ssa-dce.c:single_succ_p"}
!741 = !{!"function_entry_count", i64 385732}
!742 = !{!"tree-ssa-dce.c:VEC_edge_base_index"}
!743 = !{!"function_entry_count", i64 914881}
!744 = !{!"tree-ssa-dce.c:VEC_edge_base_length"}
!745 = !{!"branch_weights", i32 1, i32 914882}
!746 = !{!747, !427, i64 0}
!747 = !{!"VEC_edge_base", !427, i64 0, !427, i64 4, !423, i64 8}
!748 = !{!"function_entry_count", i64 15528714}
!749 = !{!"tree-ssa-dce.c:gsi_end_p"}
!750 = !{!751, !422, i64 0}
!751 = !{!"", !422, i64 0, !422, i64 8, !422, i64 16}
!752 = !{!"function_entry_count", i64 9643088}
!753 = !{!"tree-ssa-dce.c:gsi_stmt"}
!754 = !{!755, !422, i64 0}
!755 = !{!"gimple_seq_node_d", !422, i64 0, !422, i64 8, !422, i64 16}
!756 = !{!"function_entry_count", i64 9520364}
!757 = !{!"tree-ssa-dce.c:gimple_set_plf"}
!758 = !{!"branch_weights", i32 4798103, i32 4722263}
!759 = !{!"function_entry_count", i64 5431128}
!760 = !{!"tree-ssa-dce.c:gsi_next"}
!761 = !{!755, !422, i64 16}
!762 = !{!"function_entry_count", i64 1482371}
!763 = !{!"tree-ssa-dce.c:gsi_start_bb"}
!764 = !{!751, !422, i64 8}
!765 = !{!751, !422, i64 16}
!766 = !{!"function_entry_count", i64 4134733}
!767 = !{!"tree-ssa-dce.c:mark_stmt_if_obviously_necessary"}
!768 = !{!"branch_weights", i32 4134734, i32 1}
!769 = !{!"branch_weights", i32 26, i32 1744, i32 140900, i32 1, i32 1, i32 42081, i32 553511, i32 2532521, i32 1, i32 1, i32 847584, i32 16374}
!770 = !{!"branch_weights", i32 17453, i32 536059}
!771 = !{!"branch_weights", i32 18, i32 17436}
!772 = !{!"branch_weights", i32 2532521, i32 17436}
!773 = !{!"branch_weights", i32 847584, i32 1}
!774 = !{!"branch_weights", i32 578984, i32 284974}
!775 = !{!"branch_weights", i32 3413885, i32 53}
!776 = !{!"branch_weights", i32 3413885, i32 1}
!777 = !{!"branch_weights", i32 3117030, i32 296856}
!778 = !{!"function_entry_count", i64 2141}
!779 = !{!"tree-ssa-dce.c:ei_start_1"}
!780 = !{!"function_entry_count", i64 4942}
!781 = !{!"tree-ssa-dce.c:ei_cond"}
!782 = !{!"branch_weights", i32 3152, i32 1792}
!783 = !{!"function_entry_count", i64 507875}
!784 = !{!"tree-ssa-dce.c:mark_control_dependent_edges_necessary"}
!785 = !{!"branch_weights", i32 1, i32 507876}
!786 = !{!"branch_weights", i32 1, i32 507875}
!787 = !{!"branch_weights", i32 284636, i32 387011}
!788 = !{!"branch_weights", i32 6, i32 284631}
!789 = !{!"branch_weights", i32 1, i32 284631}
!790 = !{!"branch_weights", i32 507875, i32 163771}
!791 = distinct !{!791, !434}
!792 = !{!"function_entry_count", i64 3487}
!793 = !{!"tree-ssa-dce.c:ei_next"}
!794 = !{!"branch_weights", i32 1, i32 3488}
!795 = !{!"branch_weights", i32 3488, i32 1}
!796 = !{!797, !427, i64 0}
!797 = !{!"", !427, i64 0, !422, i64 8}
!798 = !{!"function_entry_count", i64 15070}
!799 = !{!"tree-ssa-dce.c:fel_init"}
!800 = !{!801, !427, i64 8}
!801 = !{!"", !422, i64 0, !427, i64 8}
!802 = !{!556, !422, i64 32}
!803 = !{!"branch_weights", i32 1, i32 15071}
!804 = !{!801, !422, i64 0}
!805 = !{!806, !422, i64 24}
!806 = !{!"loops", !427, i64 0, !422, i64 8, !422, i64 16, !422, i64 24}
!807 = !{!"branch_weights", i32 25583, i32 15071}
!808 = !{!619, !422, i64 48}
!809 = !{!"branch_weights", i32 27127, i32 13527}
!810 = !{!619, !422, i64 56}
!811 = !{!"branch_weights", i32 28597, i32 27127}
!812 = !{!"branch_weights", i32 15071, i32 25582}
!813 = distinct !{!813, !434}
!814 = !{!"function_entry_count", i64 40652}
!815 = !{!"tree-ssa-dce.c:fel_next"}
!816 = !{i32 0, i32 2}
!817 = !{!"branch_weights", i32 15071, i32 25583}
!818 = !{!"branch_weights", i32 1, i32 25583}
!819 = distinct !{!819, !434}
!820 = !{!"function_entry_count", i64 2964742}
!821 = !{!"tree-ssa-dce.c:bb_seq"}
!822 = !{!"branch_weights", i32 2964743, i32 1}
!823 = !{!"branch_weights", i32 1, i32 2964743}
!824 = !{!825, !422, i64 0}
!825 = !{!"gimple_bb_info", !422, i64 0, !422, i64 8}
!826 = !{!"function_entry_count", i64 2964353}
!827 = !{!"tree-ssa-dce.c:gimple_seq_first"}
!828 = !{!"branch_weights", i32 1026303, i32 1938052}
!829 = !{!830, !422, i64 0}
!830 = !{!"gimple_seq_d", !422, i64 0, !422, i64 8, !422, i64 16}
!831 = !{!"function_entry_count", i64 1881300}
!832 = !{!"tree-ssa-dce.c:mark_stmt_necessary"}
!833 = !{!"branch_weights", i32 1, i32 1881301}
!834 = !{!"branch_weights", i32 1881301, i32 1}
!835 = !{!"branch_weights", i32 142643, i32 1738659}
!836 = !{!"branch_weights", i32 1260767, i32 620535}
!837 = !{!"branch_weights", i32 620535, i32 1}
!838 = !{!"function_entry_count", i64 1434411}
!839 = !{!"tree-ssa-dce.c:gimple_call_lhs"}
!840 = !{!"function_entry_count", i64 2836413}
!841 = !{!"tree-ssa-dce.c:gimple_assign_lhs"}
!842 = !{!"tree-ssa-dce.c:gimple_debug_bind_has_value_p"}
!843 = !{!"tree-ssa-dce.c:gimple_debug_bind_get_var"}
!844 = !{!"function_entry_count", i64 5830440}
!845 = !{!"tree-ssa-dce.c:gimple_bb"}
!846 = !{!"function_entry_count", i64 3413936}
!847 = !{!"tree-ssa-dce.c:gimple_has_volatile_ops"}
!848 = !{!"branch_weights", i32 863982, i32 2549956}
!849 = !{!"function_entry_count", i64 12959056}
!850 = !{!"tree-ssa-dce.c:gimple_plf"}
!851 = !{!"function_entry_count", i64 4312091}
!852 = !{!"tree-ssa-dce.c:VEC_gimple_heap_safe_push"}
!853 = !{!"function_entry_count", i64 665093}
!854 = !{!"tree-ssa-dce.c:is_gimple_debug"}
!855 = !{!"function_entry_count", i64 6239136}
!856 = !{!"tree-ssa-dce.c:SET_BIT"}
!857 = !{!"branch_weights", i32 6239137, i32 1}
!858 = !{!"tree-ssa-dce.c:VEC_gimple_heap_reserve"}
!859 = !{!"branch_weights", i32 11360, i32 4300733}
!860 = !{!"tree-ssa-dce.c:VEC_gimple_base_quick_push"}
!861 = !{!862, !427, i64 0}
!862 = !{!"VEC_gimple_base", !427, i64 0, !427, i64 4, !423, i64 8}
!863 = !{!"tree-ssa-dce.c:VEC_gimple_base_space"}
!864 = !{!"branch_weights", i32 1, i32 4312092}
!865 = !{!862, !427, i64 4}
!866 = !{!"function_entry_count", i64 8126263}
!867 = !{!"tree-ssa-dce.c:gimple_op"}
!868 = !{!"branch_weights", i32 1, i32 8126264}
!869 = !{!"function_entry_count", i64 8126568}
!870 = !{!"tree-ssa-dce.c:gimple_ops"}
!871 = !{!"branch_weights", i32 1, i32 8126569}
!872 = !{!"tree-ssa-dce.c:gimple_statement_structure"}
!873 = !{!"tree-ssa-dce.c:gss_for_code"}
!874 = !{!"function_entry_count", i64 5971}
!875 = !{!"tree-ssa-dce.c:ei_end_p"}
!876 = !{!"branch_weights", i32 1, i32 5972}
!877 = !{!"function_entry_count", i64 3837}
!878 = !{!"tree-ssa-dce.c:ei_edge"}
!879 = !{!"branch_weights", i32 1, i32 3838}
!880 = !{!"function_entry_count", i64 26590}
!881 = !{!"tree-ssa-dce.c:ei_container"}
!882 = !{!"branch_weights", i32 1, i32 26591}
!883 = !{!"tree-ssa-dce.c:bmp_iter_set_init"}
!884 = !{!885, !422, i64 0}
!885 = !{!"bitmap_head_def", !422, i64 0, !422, i64 8, !427, i64 16, !422, i64 24}
!886 = !{!887, !422, i64 0}
!887 = !{!"", !422, i64 0, !422, i64 8, !427, i64 16, !584, i64 24}
!888 = !{!887, !422, i64 8}
!889 = !{!"branch_weights", i32 31952, i32 475925}
!890 = !{!891, !427, i64 16}
!891 = !{!"bitmap_element_def", !422, i64 0, !422, i64 8, !427, i64 16, !423, i64 24}
!892 = !{!887, !427, i64 16}
!893 = !{!887, !584, i64 24}
!894 = !{!"function_entry_count", i64 1179520}
!895 = !{!"tree-ssa-dce.c:bmp_iter_set"}
!896 = !{!"branch_weights", i32 686635, i32 492887}
!897 = !{!"branch_weights", i32 671645, i32 1}
!898 = !{!"branch_weights", i32 12919371, i32 671645}
!899 = distinct !{!899, !434}
!900 = !{!"branch_weights", i32 1, i32 518585}
!901 = !{!"branch_weights", i32 350537, i32 178760}
!902 = !{!"branch_weights", i32 518585, i32 10711}
!903 = distinct !{!903, !434}
!904 = !{!891, !422, i64 0}
!905 = !{!"branch_weights", i32 507876, i32 10711}
!906 = !{!"function_entry_count", i64 671645}
!907 = !{!"tree-ssa-dce.c:bmp_iter_next"}
!908 = !{!"tree-ssa-dce.c:VEC_int_heap_alloc"}
!909 = !{!"tree-ssa-dce.c:number_of_loops"}
!910 = !{!806, !422, i64 8}
!911 = !{!"function_entry_count", i64 25582}
!912 = !{!"tree-ssa-dce.c:VEC_int_base_quick_push"}
!913 = !{!914, !427, i64 0}
!914 = !{!"VEC_int_base", !427, i64 0, !427, i64 4, !423, i64 8}
!915 = !{!"function_entry_count", i64 28596}
!916 = !{!"tree-ssa-dce.c:loop_outer"}
!917 = !{!619, !422, i64 40}
!918 = !{!"branch_weights", i32 15071, i32 13527}
!919 = !{!"function_entry_count", i64 43666}
!920 = !{!"tree-ssa-dce.c:VEC_loop_p_base_length"}
!921 = !{!"branch_weights", i32 15071, i32 28597}
!922 = !{!923, !427, i64 0}
!923 = !{!"VEC_loop_p_base", !427, i64 0, !427, i64 4, !423, i64 8}
!924 = !{!"function_entry_count", i64 39108}
!925 = !{!"tree-ssa-dce.c:VEC_loop_p_base_index"}
!926 = !{!"tree-ssa-dce.c:VEC_int_base_iterate"}
!927 = !{!"branch_weights", i32 1, i32 40653}
!928 = !{!"tree-ssa-dce.c:get_loop"}
!929 = !{!"tree-ssa-dce.c:VEC_int_heap_free"}
!930 = !{!"function_entry_count", i64 4354315}
!931 = !{!"tree-ssa-dce.c:VEC_gimple_base_length"}
!932 = !{!"branch_weights", i32 1, i32 4354316}
!933 = !{!"tree-ssa-dce.c:VEC_gimple_base_pop"}
!934 = !{!"function_entry_count", i64 6654346}
!935 = !{!"tree-ssa-dce.c:mark_operand_necessary"}
!936 = !{!"branch_weights", i32 1, i32 6654347}
!937 = !{!"branch_weights", i32 3663676, i32 2990672}
!938 = !{!"branch_weights", i32 2592337, i32 398336}
!939 = !{!"branch_weights", i32 1, i32 2592337}
!940 = !{!"branch_weights", i32 1, i32 3663676}
!941 = !{!"branch_weights", i32 2652545, i32 1011132}
!942 = !{!"branch_weights", i32 2573434, i32 79112}
!943 = !{!"branch_weights", i32 2573434, i32 1}
!944 = !{!"branch_weights", i32 1676606, i32 896829}
!945 = !{!"function_entry_count", i64 403354}
!946 = !{!"tree-ssa-dce.c:degenerate_phi_p"}
!947 = !{!"branch_weights", i32 38825, i32 1}
!948 = !{!"branch_weights", i32 388584, i32 38825}
!949 = distinct !{!949, !434}
!950 = !{!"branch_weights", i32 62880, i32 364530}
!951 = !{!"function_entry_count", i64 324047}
!952 = !{!"tree-ssa-dce.c:gimple_phi_arg_edge"}
!953 = !{!583, !422, i64 0}
!954 = !{!"tree-ssa-dce.c:op_iter_init_tree"}
!955 = !{!"function_entry_count", i64 8196733}
!956 = !{!"tree-ssa-dce.c:op_iter_next_tree"}
!957 = !{!"branch_weights", i32 3947533, i32 4249202}
!958 = !{!530, !422, i64 8}
!959 = !{!"function_entry_count", i64 1815013}
!960 = !{!"tree-ssa-dce.c:mark_all_reaching_defs_necessary"}
!961 = !{!"function_entry_count", i64 7142743}
!962 = !{!"tree-ssa-dce.c:is_gimple_call"}
!963 = !{!"function_entry_count", i64 1097455}
!964 = !{!"tree-ssa-dce.c:gimple_call_fndecl"}
!965 = !{!"branch_weights", i32 1061116, i32 36341}
!966 = !{!"function_entry_count", i64 1639664}
!967 = !{!"tree-ssa-dce.c:gimple_call_num_args"}
!968 = !{!"function_entry_count", i64 1113749}
!969 = !{!"tree-ssa-dce.c:gimple_call_arg"}
!970 = !{!"function_entry_count", i64 1623575}
!971 = !{!"tree-ssa-dce.c:ref_may_be_aliased"}
!972 = !{!"branch_weights", i32 1, i32 1623575}
!973 = !{!"branch_weights", i32 1623575, i32 722886}
!974 = distinct !{!974, !434}
!975 = !{!"branch_weights", i32 489134, i32 1134443}
!976 = !{!"function_entry_count", i64 71060}
!977 = !{!"tree-ssa-dce.c:mark_aliased_reaching_defs_necessary"}
!978 = !{!"branch_weights", i32 1, i32 71061}
!979 = !{!"branch_weights", i32 11643, i32 59419}
!980 = !{!"function_entry_count", i64 1644134}
!981 = !{!"tree-ssa-dce.c:gimple_assign_rhs1"}
!982 = !{!"function_entry_count", i64 101}
!983 = !{!"tree-ssa-dce.c:gimple_return_retval"}
!984 = !{!"tree-ssa-dce.c:gimple_asm_ninputs"}
!985 = !{!"tree-ssa-dce.c:gimple_asm_input_op"}
!986 = !{!"function_entry_count", i64 5666936}
!987 = !{!"tree-ssa-dce.c:gimple_nop_p"}
!988 = !{!"function_entry_count", i64 847967}
!989 = !{!"tree-ssa-dce.c:gimple_phi_arg_def"}
!990 = !{!"tree-ssa-dce.c:get_def_from_ptr"}
!991 = !{!"function_entry_count", i64 779016}
!992 = !{!"tree-ssa-dce.c:mark_all_reaching_defs_necessary_1"}
!993 = !{!"branch_weights", i32 25139, i32 753879}
!994 = !{!"branch_weights", i32 1418, i32 23722}
!995 = !{!"branch_weights", i32 23722, i32 1}
!996 = !{!"branch_weights", i32 1, i32 23722}
!997 = !{!"branch_weights", i32 449986, i32 303894}
!998 = !{!"tree-ssa-dce.c:gimple_call_fn"}
!999 = !{!"function_entry_count", i64 1639969}
!1000 = !{!"tree-ssa-dce.c:gimple_num_ops"}
!1001 = !{!"function_entry_count", i64 3970035}
!1002 = !{!"tree-ssa-dce.c:handled_component_p"}
!1003 = !{!"branch_weights", i32 1623576, i32 33354, i32 1818133, i32 494976, i32 1, i32 1, i32 1, i32 1}
!1004 = !{!"function_entry_count", i64 489133}
!1005 = !{!"tree-ssa-dce.c:may_be_aliased"}
!1006 = !{!"branch_weights", i32 1, i32 489134}
!1007 = !{!"branch_weights", i32 764375840, i32 -199114351}
!1008 = !{!"branch_weights", i32 76928, i32 1}
!1009 = !{!"branch_weights", i32 381673, i32 30535}
!1010 = !{!"branch_weights", i32 30535, i32 1}
!1011 = !{!"branch_weights", i32 515092057, i32 1632391591}
!1012 = !{!"branch_weights", i32 168474, i32 1}
!1013 = !{!"function_entry_count", i64 917855}
!1014 = !{!"tree-ssa-dce.c:mark_aliased_reaching_defs_necessary_1"}
!1015 = !{!"branch_weights", i32 462166, i32 455691}
!1016 = !{!"branch_weights", i32 401023, i32 54669}
!1017 = !{!1018, !422, i64 8}
!1018 = !{!"ao_ref_s", !422, i64 0, !422, i64 8, !584, i64 16, !584, i64 24, !584, i64 32, !427, i64 40, !427, i64 44}
!1019 = !{!"branch_weights", i32 43812, i32 10858}
!1020 = !{!"branch_weights", i32 1426124412, i32 493454557}
!1021 = !{!1018, !584, i64 32}
!1022 = !{!"branch_weights", i32 1, i32 32551}
!1023 = !{!1018, !584, i64 16}
!1024 = !{!"branch_weights", i32 3573, i32 28979}
!1025 = !{!"branch_weights", i32 2601, i32 26379}
!1026 = !{!1018, !422, i64 0}
!1027 = !{!"branch_weights", i32 1, i32 11262}
!1028 = !{!"branch_weights", i32 9183, i32 2080}
!1029 = !{!"branch_weights", i32 1564, i32 517}
!1030 = !{!"tree-ssa-dce.c:gimple_has_lhs"}
!1031 = !{!"branch_weights", i32 864347, i32 53510}
!1032 = !{!"branch_weights", i32 1, i32 864347}
!1033 = !{!"tree-ssa-dce.c:is_gimple_assign"}
!1034 = !{!"function_entry_count", i64 1524595}
!1035 = !{!"tree-ssa-dce.c:VEC_basic_block_base_length"}
!1036 = !{!"branch_weights", i32 1, i32 1524596}
!1037 = !{!1038, !427, i64 0}
!1038 = !{!"VEC_basic_block_base", !427, i64 0, !427, i64 4, !423, i64 8}
!1039 = !{!"tree-ssa-dce.c:VEC_basic_block_base_pop"}
!1040 = !{!"tree-ssa-dce.c:gsi_last_bb"}
!1041 = !{!"tree-ssa-dce.c:gsi_prev"}
!1042 = !{!755, !422, i64 8}
!1043 = !{!"function_entry_count", i64 44559}
!1044 = !{!"tree-ssa-dce.c:remove_dead_stmt"}
!1045 = !{!"branch_weights", i32 44217, i32 344}
!1046 = !{!"branch_weights", i32 9, i32 336}
!1047 = !{!"branch_weights", i32 1, i32 9}
!1048 = !{!"branch_weights", i32 2, i32 8}
!1049 = !{!"branch_weights", i32 238609282, i32 1908874366}
!1050 = !{!605, !427, i64 52}
!1051 = !{!583, !584, i64 72}
!1052 = !{!605, !584, i64 56}
!1053 = !{!"branch_weights", i32 1, i32 343}
!1054 = !{!"branch_weights", i32 344, i32 344}
!1055 = !{!"branch_weights", i32 343, i32 344}
!1056 = distinct !{!1056, !434}
!1057 = !{!"function_entry_count", i64 305}
!1058 = !{!"tree-ssa-dce.c:gimple_call_set_lhs"}
!1059 = !{!"tree-ssa-dce.c:VEC_basic_block_heap_free"}
!1060 = !{!"function_entry_count", i64 735}
!1061 = !{!"tree-ssa-dce.c:end_imm_use_stmt_traverse"}
!1062 = !{!"function_entry_count", i64 1481982}
!1063 = !{!"tree-ssa-dce.c:remove_dead_phis"}
!1064 = !{!"branch_weights", i32 663283, i32 155417}
!1065 = !{!"branch_weights", i32 284735, i32 378549}
!1066 = !{!"branch_weights", i32 267530, i32 17206}
!1067 = !{!"branch_weights", i32 17205, i32 1}
!1068 = !{!"branch_weights", i32 23169, i32 1}
!1069 = !{!"branch_weights", i32 390, i32 23169}
!1070 = distinct !{!1070, !434}
!1071 = !{!"branch_weights", i32 5965, i32 17205}
!1072 = distinct !{!1072, !434}
!1073 = !{!"branch_weights", i32 17206, i32 1}
!1074 = !{!"branch_weights", i32 31195, i32 632089}
!1075 = !{!"branch_weights", i32 31195, i32 1}
!1076 = !{!"branch_weights", i32 0, i32 663283}
!1077 = distinct !{!1077, !434}
!1078 = !{!"tree-ssa-dce.c:gimple_seq_last"}
!1079 = !{!"branch_weights", i32 1, i32 1482372}
!1080 = !{!830, !422, i64 8}
!1081 = !{!"function_entry_count", i64 7}
!1082 = !{!"tree-ssa-dce.c:forward_edge_to_pdom"}
!1083 = !{!"branch_weights", i32 8, i32 1}
!1084 = !{!"branch_weights", i32 8, i32 65}
!1085 = !{!"branch_weights", i32 0, i32 8}
!1086 = distinct !{!1086, !434}
!1087 = !{!"branch_weights", i32 2, i32 7}
!1088 = distinct !{!1088, !434}
!1089 = !{!"branch_weights", i32 7, i32 1}
!1090 = !{!605, !427, i64 44}
!1091 = !{!"branch_weights", i32 1, i32 127}
!1092 = !{!"function_entry_count", i64 1029}
!1093 = !{!"tree-ssa-dce.c:ei_safe_edge"}
!1094 = !{!"branch_weights", i32 687, i32 344}
!1095 = !{!"tree-ssa-dce.c:gimple_seq_empty_p"}
!1096 = !{!"branch_weights", i32 1, i32 8}
!1097 = !{!"function_entry_count", i64 1481989}
!1098 = !{!"tree-ssa-dce.c:phi_nodes"}
!1099 = !{!"branch_weights", i32 1481990, i32 1}
!1100 = !{!"branch_weights", i32 1, i32 1481990}
!1101 = !{!825, !422, i64 8}
!1102 = !{!"tree-ssa-dce.c:gimple_phi_arg_location"}
!1103 = !{!1104, !427, i64 40}
!1104 = !{!"phi_arg_d", !443, i64 0, !422, i64 32, !427, i64 40}
!1105 = !{!"tree-ssa-dce.c:gimple_set_op"}
!1106 = !{!"branch_weights", i32 1, i32 306}
!1107 = !{!"tree-ssa-dce.c:gsi_start"}
!1108 = !{!"branch_weights", i32 1060428, i32 421556}
!1109 = !{!"branch_weights", i32 1, i32 421556}
!1110 = !{!"tree-ssa-dce.c:VEC_gimple_heap_free"}
!1111 = !{!"tree-ssa-dce.c:tree_ssa_dce_loop"}
!1112 = !{!"branch_weights", i32 11062, i32 2244}
!1113 = !{!"tree-ssa-dce.c:tree_ssa_cd_dce"}
