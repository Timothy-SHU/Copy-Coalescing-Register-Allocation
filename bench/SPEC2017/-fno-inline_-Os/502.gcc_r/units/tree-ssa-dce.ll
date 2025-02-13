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
@.str.2 = private unnamed_addr constant [4 x i8] c"dce\00", align 1
@pass_dce = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @gate_dce, ptr @tree_ssa_dce, ptr null, ptr null, i32 0, i32 76, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"dceloop\00", align 1
@pass_dce_loop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.3, ptr @gate_dce, ptr @tree_ssa_dce_loop, ptr null, ptr null, i32 0, i32 76, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"cddce\00", align 1
@pass_cd_dce = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.4, ptr @gate_dce, ptr @tree_ssa_cd_dce, ptr null, ptr null, i32 0, i32 77, i32 40, i32 0, i32 0, i32 0, i32 13 } }, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
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
@.str.8 = private unnamed_addr constant [19 x i8] c"Statements deleted\00", align 1
@stats = internal unnamed_addr global %struct.stmt_stats zeroinitializer, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"PHI nodes deleted\00", align 1
@control_dependence_map = internal unnamed_addr global ptr null, align 8
@last_stmt_necessary = internal unnamed_addr global ptr null, align 8
@bb_contains_live_stmts = internal unnamed_addr global ptr null, align 8
@processed = internal unnamed_addr global ptr null, align 8
@worklist = internal unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"tree-ssa-dce.c\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [46 x i8] c"Marking back edge of irreducible loop %i->%i\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"can not prove finiteness of loop %i\0A\00", align 1
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"Marking useful stmt: \00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.15 = private unnamed_addr constant [23 x i8] c"\0AProcessing worklist:\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"processing: \00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"marking necessary through \00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c" stmt \00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.19 = private unnamed_addr constant [38 x i8] c"\0AEliminating unnecessary statements:\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Deleting LHS of call: \00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"Deleting : \00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Redirecting edge %i->%i to %i\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"Removed %d of %d statements (%d%%)\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Removed %d of %d PHI nodes (%d%%)\0A\00", align 1
@optimize = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_virtual_phi_result_for_renaming(ptr noundef %0) local_unnamed_addr #0 !prof !378 {
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #21
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !383

5:                                                ; preds = %1
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !384
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str, i64 30, i64 1, ptr nonnull %3)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !379
  tail call void @print_gimple_stmt(ptr noundef %11, ptr noundef %0, i32 noundef 0, i32 noundef 2) #22
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %13 = tail call i32 @fputc(i32 10, ptr %12)
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #23
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !386
  %18 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %2, ptr noundef %15) #23
  %19 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #23, !range !387
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %36, !prof !388

21:                                               ; preds = %14, %31
  %22 = phi ptr [ %32, %31 ], [ %18, %14 ]
  %23 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %2) #23
  %24 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %2) #23, !range !387
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %31, !prof !388

26:                                               ; preds = %21, %26
  %27 = phi ptr [ %28, %26 ], [ %23, %21 ]
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %27, ptr noundef %17) #23
  %28 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %2) #23
  %29 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %2) #23, !range !387
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %26, label %31, !prof !389, !llvm.loop !390

31:                                               ; preds = %26, %21
  call fastcc void @update_stmt(ptr noundef %22) #23
  %32 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %2) #23
  %33 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #23, !range !387
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %21, label %35, !prof !389, !llvm.loop !392

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
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !393 !PGOFuncName !394 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !386
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !395 !PGOFuncName !396 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !397
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !400
  store ptr %6, ptr %0, align 8, !tbaa !401
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #23, !range !387
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14, !prof !402

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #23
  %11 = load ptr, ptr %0, align 8, !tbaa !401
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !386
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !403 !PGOFuncName !404 {
  %2 = load ptr, ptr %0, align 8, !tbaa !401
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !397
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #5 !prof !405 !PGOFuncName !406 {
  %2 = load ptr, ptr %0, align 8, !tbaa !401
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !400
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !407
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #4 !prof !408 !PGOFuncName !409 {
  %2 = load ptr, ptr %0, align 8, !tbaa !401
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !405 !PGOFuncName !410 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !411
  store ptr %1, ptr %4, align 8, !tbaa !379
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #5 !prof !405 !PGOFuncName !412 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !407
  store ptr %3, ptr %0, align 8, !tbaa !401
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #23, !range !387
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !413

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !400
  store ptr %8, ptr %2, align 8, !tbaa !407
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !414 !PGOFuncName !415 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !387
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !416

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #22
  tail call void @update_stmt_operands(ptr noundef %0) #22
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 !prof !405 !PGOFuncName !417 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !418
  store ptr %4, ptr %0, align 8, !tbaa !401
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #23, !range !387
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !413

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !419
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !413

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #23
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #23
  %12 = load ptr, ptr %0, align 8, !tbaa !401
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !386
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_dce() #7 !prof !420 !PGOFuncName !421 {
  %1 = load i32, ptr @flag_tree_dce, align 4, !tbaa !384
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_dce() #0 !prof !422 !PGOFuncName !423 {
  %1 = tail call fastcc i32 @perform_tree_ssa_dce(i8 noundef zeroext 0) #23, !range !424
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_dce_loop() #0 !prof !422 !PGOFuncName !425 {
  %1 = tail call fastcc i32 @perform_tree_ssa_dce(i8 noundef zeroext 0) #23, !range !424
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !426

3:                                                ; preds = %0
  tail call void @free_numbers_of_iterations_estimates() #22
  tail call void @scev_reset() #22
  br label %4

4:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_cd_dce() #0 !prof !427 !PGOFuncName !428 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !384
  %2 = icmp sgt i32 %1, 1
  %3 = zext i1 %2 to i8
  %4 = tail call fastcc i32 @perform_tree_ssa_dce(i8 noundef zeroext %3) #23, !range !424
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !429 !PGOFuncName !430 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !386
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #23
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #22
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #23, !range !431
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28, !prof !432

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #23
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53, !prof !433

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #23
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23, !prof !434

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #23
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #23
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #23
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !prof !435, !llvm.loop !436

28:                                               ; preds = %2
  br i1 %8, label %45, label %29

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
  br i1 %44, label %33, label %53, !llvm.loop !437

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #23
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #23
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #23
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !419
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !432

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #23
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !438 !PGOFuncName !439 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !411
  %4 = load ptr, ptr %3, align 8, !tbaa !379
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !440 !PGOFuncName !441 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !429 !PGOFuncName !442 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #23
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #23
  store i8 0, ptr %0, align 8, !tbaa !443
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !445

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 918, ptr noundef nonnull @.str.6) #22
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #22
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !445

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !443
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !446
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #23
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !447
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !448
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #23
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !449 !PGOFuncName !450 {
  %2 = load i8, ptr %0, align 8, !tbaa !443
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #6 !prof !429 !PGOFuncName !451 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5, !prof !432

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !400
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #23
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #23
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !452 !PGOFuncName !453 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !454
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !455

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !456
  store ptr %7, ptr %2, align 8, !tbaa !454
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !458
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !447
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !459

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !446
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !458
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #23
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !443
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !460 !PGOFuncName !461 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 771, ptr noundef nonnull @.str.6) #22
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #23
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !448
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #23
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #8 !prof !460 !PGOFuncName !462 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #23, !range !387
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !386
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !463
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
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #6 !prof !464 !PGOFuncName !465 {
  %2 = load ptr, ptr %0, align 8, !tbaa !466
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !467

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !400
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !400
  store ptr %2, ptr %6, align 8, !tbaa !466
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !468 !PGOFuncName !469 {
  store ptr %1, ptr %0, align 8, !tbaa !466
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !400
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !400
  store ptr %0, ptr %4, align 8, !tbaa !466
  store ptr %0, ptr %3, align 8, !tbaa !400
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #9 !prof !429 !PGOFuncName !470 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !443
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !471 !PGOFuncName !472 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !386
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !473 !PGOFuncName !474 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #23
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !475 !PGOFuncName !476 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !386
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !477

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3103, ptr noundef nonnull @.str.6) #22
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !478 !PGOFuncName !479 {
  %4 = and i32 %2, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !480

6:                                                ; preds = %3
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 747, ptr noundef nonnull @.str.6) #22
  br label %10

10:                                               ; preds = %3, %6, %9
  %11 = and i32 %2, 10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !480

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !481
  br label %24

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #23
  %17 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !481
  %18 = icmp eq ptr %16, null
  br i1 %18, label %24, label %19, !prof !482

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #23
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %16, align 8, !tbaa !483
  store ptr %23, ptr %17, align 8, !tbaa !481
  br label %24

24:                                               ; preds = %13, %22, %19, %15
  %25 = and i32 %2, 5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29, !prof !485

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %28, align 8, !tbaa !454
  br label %40

29:                                               ; preds = %24
  %30 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #23
  %31 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %30, ptr %31, align 8, !tbaa !454
  %32 = icmp ne i32 %4, 0
  %33 = icmp eq ptr %30, null
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %40, label %35, !prof !486

35:                                               ; preds = %29
  %36 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #23
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !487

38:                                               ; preds = %35
  %39 = load ptr, ptr %30, align 8, !tbaa !456
  store ptr %39, ptr %31, align 8, !tbaa !454
  br label %40

40:                                               ; preds = %27, %38, %35, %29
  store i8 0, ptr %0, align 8, !tbaa !443
  %41 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !460 !PGOFuncName !488 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !387
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !386
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !460 !PGOFuncName !489 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #23, !range !387
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !386
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !478 !PGOFuncName !490 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !387
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !485

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !386
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !491 !PGOFuncName !492 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #23, !range !387
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !493

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !386
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !494 !PGOFuncName !495 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !431
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !496 !PGOFuncName !497 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !431
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !405 !PGOFuncName !498 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !413

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !499

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !466
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @perform_tree_ssa_dce(i8 noundef zeroext %0) unnamed_addr #0 !prof !420 !PGOFuncName !500 {
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %12, label %3, !prof !501

3:                                                ; preds = %1
  tail call void @loop_optimizer_init(i32 noundef 15) #22
  tail call fastcc void @tree_dce_init(i8 noundef zeroext %0) #23
  %4 = load i8, ptr @timevar_enable, align 1, !tbaa !386
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !502

6:                                                ; preds = %3
  tail call void @timevar_push_1(i32 noundef 113) #22
  br label %7

7:                                                ; preds = %6, %3
  tail call void @calculate_dominance_info(i32 noundef 2) #22
  %8 = tail call ptr @create_edge_list() #22
  tail call fastcc void @find_all_control_dependences(ptr noundef %8) #23
  %9 = load i8, ptr @timevar_enable, align 1, !tbaa !386
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11, !prof !502

11:                                               ; preds = %7
  tail call void @timevar_pop_1(i32 noundef 113) #22
  br label %13

12:                                               ; preds = %1
  tail call fastcc void @tree_dce_init(i8 noundef zeroext 0) #23
  tail call fastcc void @find_obviously_necessary_stmts(ptr noundef null) #23
  br label %21

13:                                               ; preds = %11, %7
  %14 = load ptr, ptr @cfun, align 8, !tbaa !379
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !503
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !505
  %19 = tail call ptr @sbitmap_alloc(i32 noundef %18) #22
  store ptr %19, ptr @visited_control_parents, align 8, !tbaa !379
  tail call void @sbitmap_zero(ptr noundef %19) #22
  %20 = tail call zeroext i8 @mark_dfs_back_edges() #22
  tail call fastcc void @find_obviously_necessary_stmts(ptr noundef %8) #23
  tail call void @loop_optimizer_finalize() #22
  br label %21

21:                                               ; preds = %12, %13
  %22 = phi ptr [ null, %12 ], [ %8, %13 ]
  store i32 0, ptr @longest_chain, align 4, !tbaa !384
  store i32 0, ptr @total_chain, align 4, !tbaa !384
  store i32 0, ptr @nr_walks, align 4, !tbaa !384
  store i1 false, ptr @chain_ovfl, align 1
  %23 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %23, ptr @visited, align 8, !tbaa !379
  tail call fastcc void @propagate_necessity(ptr noundef %22) #23
  %24 = load ptr, ptr @visited, align 8, !tbaa !379
  tail call void @bitmap_obstack_free(ptr noundef %24) #22
  store ptr null, ptr @visited, align 8, !tbaa !379
  %25 = tail call fastcc zeroext i8 @eliminate_unnecessary_stmts() #23, !range !387
  %26 = load i1, ptr @cfg_altered, align 1
  tail call void @free_dominance_info(i32 noundef 2) #22
  %27 = load i1, ptr @cfg_altered, align 1
  br i1 %27, label %28, label %29, !prof !507

28:                                               ; preds = %21
  tail call void @free_dominance_info(i32 noundef 1) #22
  br label %29

29:                                               ; preds = %28, %21
  %30 = load ptr, ptr @cfun, align 8, !tbaa !379
  %31 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !508
  tail call void @statistics_counter_event(ptr noundef %30, ptr noundef nonnull @.str.8, i32 noundef %31) #22
  %32 = load ptr, ptr @cfun, align 8, !tbaa !379
  %33 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !510
  tail call void @statistics_counter_event(ptr noundef %32, ptr noundef nonnull @.str.9, i32 noundef %33) #22
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36, !prof !511

36:                                               ; preds = %29
  %37 = load i32, ptr @dump_flags, align 4, !tbaa !384
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
  %45 = select i1 %44, i32 0, i32 34850, !prof !512
  ret i32 %45
}

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_dce_init(i8 noundef zeroext %0) unnamed_addr #0 !prof !420 !PGOFuncName !513 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @stats, i8 0, i64 16, i1 false)
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %40, label %3, !prof !501

3:                                                ; preds = %1
  %4 = load ptr, ptr @cfun, align 8, !tbaa !379
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !503
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !505
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @xmalloc(i64 noundef %10) #22
  store ptr %11, ptr @control_dependence_map, align 8, !tbaa !379
  %12 = load ptr, ptr @cfun, align 8, !tbaa !379
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !503
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !505
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31, !prof !514

18:                                               ; preds = %3, %18
  %19 = phi i64 [ %23, %18 ], [ 0, %3 ]
  %20 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %21 = load ptr, ptr @control_dependence_map, align 8, !tbaa !379
  %22 = getelementptr inbounds ptr, ptr %21, i64 %19
  store ptr %20, ptr %22, align 8, !tbaa !379
  %23 = add nuw nsw i64 %19, 1
  %24 = load ptr, ptr @cfun, align 8, !tbaa !379
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !503
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !505
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %23, %29
  br i1 %30, label %18, label %31, !prof !515, !llvm.loop !516

31:                                               ; preds = %18, %3
  %32 = phi i32 [ %16, %3 ], [ %28, %18 ]
  %33 = tail call ptr @sbitmap_alloc(i32 noundef %32) #22
  store ptr %33, ptr @last_stmt_necessary, align 8, !tbaa !379
  tail call void @sbitmap_zero(ptr noundef %33) #22
  %34 = load ptr, ptr @cfun, align 8, !tbaa !379
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !503
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !505
  %39 = tail call ptr @sbitmap_alloc(i32 noundef %38) #22
  store ptr %39, ptr @bb_contains_live_stmts, align 8, !tbaa !379
  tail call void @sbitmap_zero(ptr noundef %39) #22
  br label %40

40:                                               ; preds = %31, %1
  %41 = load ptr, ptr @cfun, align 8, !tbaa !379
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !517
  %44 = getelementptr inbounds %struct.gimple_df, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !518
  %46 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %45) #23
  %47 = add i32 %46, 1
  %48 = tail call ptr @sbitmap_alloc(i32 noundef %47) #22
  store ptr %48, ptr @processed, align 8, !tbaa !379
  tail call void @sbitmap_zero(ptr noundef %48) #22
  %49 = tail call fastcc ptr @VEC_gimple_heap_alloc() #23
  store ptr %49, ptr @worklist, align 8, !tbaa !379
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
define internal fastcc void @find_all_control_dependences(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !427 !PGOFuncName !522 {
  %2 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !523
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %10, !prof !514

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %7, %5 ], [ 0, %1 ]
  tail call fastcc void @find_control_dependence(ptr noundef nonnull %0, i32 noundef %6) #23
  %7 = add nuw nsw i32 %6, 1
  %8 = load i32, ptr %2, align 4, !tbaa !523
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %5, label %10, !prof !525, !llvm.loop !526

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
define internal fastcc void @find_obviously_necessary_stmts(ptr noundef readonly %0) unnamed_addr #0 !prof !420 !PGOFuncName !527 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.loop_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %8 = load ptr, ptr @cfun, align 8, !tbaa !379
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !503
  %11 = load ptr, ptr %10, align 8, !tbaa !528
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !529
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !532
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %44, label %17, !prof !533

17:                                               ; preds = %1
  %18 = icmp ne ptr %0, null
  %19 = zext i1 %18 to i8
  br label %29

20:                                               ; preds = %40, %37
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !529
  %23 = load ptr, ptr @cfun, align 8, !tbaa !379
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !503
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !532
  %28 = icmp eq ptr %22, %27
  br i1 %28, label %44, label %29, !prof !534, !llvm.loop !535

29:                                               ; preds = %17, %20
  %30 = phi ptr [ %13, %17 ], [ %22, %20 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %30) #22
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !387
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %37, !prof !536

33:                                               ; preds = %29, %33
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  call fastcc void @gimple_set_plf(ptr noundef %34, i8 noundef zeroext 0) #23
  call fastcc void @gsi_next(ptr noundef nonnull %2) #23
  %35 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !387
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %33, label %37, !prof !537, !llvm.loop !538

37:                                               ; preds = %33, %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %30) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !539
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !387
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %20, !prof !540

40:                                               ; preds = %37, %40
  %41 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  call fastcc void @gimple_set_plf(ptr noundef %41, i8 noundef zeroext 0) #23
  call fastcc void @mark_stmt_if_obviously_necessary(ptr noundef %41, i8 noundef zeroext %19) #23
  call fastcc void @gsi_next(ptr noundef nonnull %2) #23
  %42 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !387
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %40, label %20, !prof !541, !llvm.loop !542

44:                                               ; preds = %20, %1
  %45 = load ptr, ptr @current_function_decl, align 8, !tbaa !379
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 1048576
  %48 = icmp eq i64 %47, 0
  %49 = getelementptr inbounds %struct.tree_function_decl, ptr %45, i64 0, i32 5
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 134217728
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %48, i1 %52, i1 false
  br i1 %53, label %59, label %54, !prof !543

54:                                               ; preds = %44
  %55 = and i32 %50, 268435456
  %56 = icmp eq i32 %55, 0
  %57 = icmp eq ptr %0, null
  %58 = or i1 %57, %56
  br i1 %58, label %137, label %61, !prof !544

59:                                               ; preds = %44
  %60 = icmp eq ptr %0, null
  br i1 %60, label %137, label %61, !prof !501

61:                                               ; preds = %54, %59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @scev_initialize() #22
  %62 = call zeroext i8 @mark_irreducible_loops() #22
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %117, label %64, !prof !502

64:                                               ; preds = %61
  %65 = load ptr, ptr @cfun, align 8, !tbaa !379
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !503
  %68 = load ptr, ptr %67, align 8, !tbaa !528
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !529
  %71 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !532
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %117, label %74

74:                                               ; preds = %64
  %75 = getelementptr inbounds i8, ptr %7, i64 8
  br label %76

76:                                               ; preds = %74, %108
  %77 = phi ptr [ %70, %74 ], [ %110, %108 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #21
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 1
  %79 = call fastcc ptr @ei_start_1(ptr noundef nonnull %78) #23
  store i32 0, ptr %7, align 8, !tbaa.struct !545
  store ptr %79, ptr %75, align 8, !tbaa.struct !546
  %80 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %79, ptr noundef nonnull %3) #23, !range !387
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %108, label %82

82:                                               ; preds = %76, %103
  %83 = load ptr, ptr %3, align 8, !tbaa !379
  %84 = getelementptr inbounds %struct.edge_def, ptr %83, i64 0, i32 7
  %85 = load i32, ptr %84, align 8, !tbaa !547
  %86 = and i32 %85, 160
  %87 = icmp eq i32 %86, 160
  br i1 %87, label %88, label %103

88:                                               ; preds = %82
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %90 = icmp eq ptr %89, null
  br i1 %90, label %100, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %83, align 8, !tbaa !549
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 9
  %94 = load i32, ptr %93, align 8, !tbaa !550
  %95 = getelementptr inbounds %struct.edge_def, ptr %83, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !551
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 9
  %98 = load i32, ptr %97, align 8, !tbaa !550
  %99 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %89, ptr noundef nonnull @.str.12, i32 noundef %94, i32 noundef %98) #23
  br label %100

100:                                              ; preds = %91, %88
  %101 = getelementptr inbounds %struct.edge_def, ptr %83, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !551
  call fastcc void @mark_control_dependent_edges_necessary(ptr noundef %102, ptr noundef nonnull %0) #23
  br label %103

103:                                              ; preds = %82, %100
  call fastcc void @ei_next(ptr noundef nonnull %7) #23
  %104 = load i32, ptr %7, align 8
  %105 = load ptr, ptr %75, align 8
  %106 = call fastcc zeroext i8 @ei_cond(i32 %104, ptr %105, ptr noundef nonnull %3) #23, !range !387
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %82, !llvm.loop !552

108:                                              ; preds = %103, %76
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #21
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !529
  %111 = load ptr, ptr @cfun, align 8, !tbaa !379
  %112 = getelementptr inbounds %struct.function, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !503
  %114 = getelementptr inbounds %struct.control_flow_graph, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !532
  %116 = icmp eq ptr %110, %115
  br i1 %116, label %117, label %76, !llvm.loop !553

117:                                              ; preds = %108, %64, %61
  call fastcc void @fel_init(ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  %118 = load ptr, ptr %6, align 8, !tbaa !379
  %119 = icmp eq ptr %118, null
  br i1 %119, label %136, label %120, !prof !554

120:                                              ; preds = %117, %133
  %121 = phi ptr [ %134, %133 ], [ %118, %117 ]
  %122 = call zeroext i8 @finite_loop_p(ptr noundef nonnull %121) #22
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i32, ptr %121, align 8, !tbaa !555
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %125, ptr noundef nonnull @.str.13, i32 noundef %128) #23
  br label %130

130:                                              ; preds = %127, %124
  %131 = getelementptr inbounds %struct.loop, ptr %121, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !559
  call fastcc void @mark_control_dependent_edges_necessary(ptr noundef %132, ptr noundef nonnull %0) #23
  br label %133

133:                                              ; preds = %120, %130
  call fastcc void @fel_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  %134 = load ptr, ptr %6, align 8, !tbaa !379
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %120, !prof !560, !llvm.loop !561

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
define internal fastcc void @propagate_necessity(ptr noundef readonly %0) unnamed_addr #0 !prof !420 !PGOFuncName !562 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  %3 = icmp eq ptr %0, null
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !511

6:                                                ; preds = %1
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !384
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 22, i64 1, ptr nonnull %4)
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = load ptr, ptr @worklist, align 8
  %14 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %13) #23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %239, label %16, !prof !533

16:                                               ; preds = %12, %235
  %17 = phi ptr [ %236, %235 ], [ %13, %12 ]
  %18 = tail call fastcc ptr @VEC_gimple_base_pop(ptr noundef %17) #23
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21, !prof !563

21:                                               ; preds = %16
  %22 = load i32, ptr @dump_flags, align 4, !tbaa !384
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 12, i64 1, ptr nonnull %19)
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !379
  tail call void @print_gimple_stmt(ptr noundef %27, ptr noundef %18, i32 noundef 0, i32 noundef 2) #22
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %29 = tail call i32 @fputc(i32 10, ptr %28)
  br label %30

30:                                               ; preds = %25, %21, %16
  br i1 %3, label %52, label %31, !prof !564

31:                                               ; preds = %30
  %32 = tail call fastcc ptr @gimple_bb(ptr noundef %18) #23
  %33 = load ptr, ptr @cfun, align 8, !tbaa !379
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !503
  %36 = load ptr, ptr %35, align 8, !tbaa !528
  %37 = icmp eq ptr %32, %36
  br i1 %37, label %52, label %38, !prof !565

38:                                               ; preds = %31
  %39 = load ptr, ptr @visited_control_parents, align 8, !tbaa !379
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !550
  %42 = lshr i32 %41, 6
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds %struct.simple_bitmap_def, ptr %39, i64 0, i32 3, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !566
  %46 = and i32 %41, 63
  %47 = zext nneg i32 %46 to i64
  %48 = shl nuw i64 1, %47
  %49 = and i64 %48, %45
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52, !prof !567

51:                                               ; preds = %38
  tail call fastcc void @SET_BIT(ptr noundef nonnull %39, i32 noundef %41) #23
  tail call fastcc void @mark_control_dependent_edges_necessary(ptr noundef nonnull %32, ptr noundef nonnull %0) #23
  br label %52

52:                                               ; preds = %31, %38, %51, %30
  %53 = tail call fastcc i32 @gimple_code(ptr noundef %18) #23, !range !431
  %54 = icmp eq i32 %53, 16
  br i1 %54, label %55, label %115, !prof !568

55:                                               ; preds = %52
  %56 = tail call fastcc ptr @gimple_phi_result(ptr noundef %18) #23
  %57 = tail call zeroext i8 @is_gimple_reg(ptr noundef %56) #22
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %115, label %59, !prof !569

59:                                               ; preds = %55
  %60 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %18) #23
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %76, label %62, !prof !570

62:                                               ; preds = %59, %71
  %63 = phi i64 [ %72, %71 ], [ 0, %59 ]
  %64 = trunc i64 %63 to i32
  %65 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %18, i32 noundef %64) #23
  %66 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %65) #23
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 141
  br i1 %69, label %70, label %71, !prof !571

70:                                               ; preds = %62
  tail call fastcc void @mark_operand_necessary(ptr noundef nonnull %66) #23
  br label %71

71:                                               ; preds = %70, %62
  %72 = add nuw nsw i64 %63, 1
  %73 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %18) #23
  %74 = zext i32 %73 to i64
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %62, label %76, !prof !572, !llvm.loop !573

76:                                               ; preds = %71, %59
  br i1 %3, label %235, label %77, !prof !574

77:                                               ; preds = %76
  %78 = tail call fastcc zeroext i8 @degenerate_phi_p(ptr noundef %18) #23, !range !387
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %235, !prof !575

80:                                               ; preds = %77
  %81 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %18) #23
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %235, label %83, !prof !576

83:                                               ; preds = %80
  %84 = load ptr, ptr @cfun, align 8, !tbaa !379
  br label %85

85:                                               ; preds = %83, %109
  %86 = phi ptr [ %110, %109 ], [ %84, %83 ]
  %87 = phi i64 [ %111, %109 ], [ 0, %83 ]
  %88 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %18, i64 noundef %87) #23
  %89 = load ptr, ptr %88, align 8, !tbaa !549
  %90 = getelementptr inbounds %struct.function, ptr %86, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !503
  %92 = load ptr, ptr %91, align 8, !tbaa !528
  %93 = icmp eq ptr %89, %92
  br i1 %93, label %109, label %94, !prof !577

94:                                               ; preds = %85
  %95 = load ptr, ptr @visited_control_parents, align 8, !tbaa !379
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 9
  %97 = load i32, ptr %96, align 8, !tbaa !550
  %98 = lshr i32 %97, 6
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds %struct.simple_bitmap_def, ptr %95, i64 0, i32 3, i64 %99
  %101 = load i64, ptr %100, align 8, !tbaa !566
  %102 = and i32 %97, 63
  %103 = zext nneg i32 %102 to i64
  %104 = shl nuw i64 1, %103
  %105 = and i64 %104, %101
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109, !prof !578

107:                                              ; preds = %94
  tail call fastcc void @SET_BIT(ptr noundef nonnull %95, i32 noundef %97) #23
  tail call fastcc void @mark_control_dependent_edges_necessary(ptr noundef nonnull %89, ptr noundef nonnull %0) #23
  %108 = load ptr, ptr @cfun, align 8, !tbaa !379
  br label %109

109:                                              ; preds = %107, %94, %85
  %110 = phi ptr [ %108, %107 ], [ %86, %94 ], [ %86, %85 ]
  %111 = add nuw nsw i64 %87, 1
  %112 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %18) #23
  %113 = zext i32 %112 to i64
  %114 = icmp ult i64 %111, %113
  br i1 %114, label %85, label %235, !prof !579, !llvm.loop !580

115:                                              ; preds = %55, %52
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #21
  %116 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %18) #23
  %117 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #23
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %124, !prof !581

119:                                              ; preds = %115, %119
  %120 = phi ptr [ %121, %119 ], [ %116, %115 ]
  tail call fastcc void @mark_operand_necessary(ptr noundef %120) #23
  %121 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #23
  %122 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #23
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %119, label %124, !prof !582, !llvm.loop !583

124:                                              ; preds = %119, %115
  %125 = tail call fastcc ptr @gimple_vuse(ptr noundef %18) #23
  %126 = icmp eq ptr %125, null
  br i1 %126, label %234, label %127, !prof !584, !llvm.loop !585

127:                                              ; preds = %124
  %128 = load i1, ptr @chain_ovfl, align 1
  br i1 %128, label %129, label %130, !prof !586

129:                                              ; preds = %127
  tail call fastcc void @mark_all_reaching_defs_necessary(ptr noundef %18) #23
  br label %234, !llvm.loop !585

130:                                              ; preds = %127
  %131 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %18) #23, !range !387
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %163, label %133, !prof !587

133:                                              ; preds = %130
  %134 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %18) #23
  %135 = icmp eq ptr %134, null
  br i1 %135, label %143, label %136, !prof !588

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.tree_function_decl, ptr %134, i64 0, i32 5
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 6144
  %140 = icmp eq i32 %139, 6144
  br i1 %140, label %141, label %143, !prof !588

141:                                              ; preds = %136
  %142 = and i32 %138, 2047
  switch i32 %142, label %143 [
    i32 333, label %234
    i32 491, label %234
    i32 455, label %234
  ], !llvm.loop !585

143:                                              ; preds = %141, %136, %133
  tail call fastcc void @mark_all_reaching_defs_necessary(ptr noundef %18) #23
  %144 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %18) #23
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %218, label %146, !prof !589

146:                                              ; preds = %143, %159
  %147 = phi i32 [ %160, %159 ], [ 0, %143 ]
  %148 = tail call fastcc ptr @gimple_call_arg(ptr noundef %18, i32 noundef %147) #23
  %149 = load i64, ptr %148, align 8
  %150 = and i64 %149, 65535
  %151 = icmp eq i64 %150, 141
  br i1 %151, label %159, label %152, !prof !590

152:                                              ; preds = %146
  %153 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %148) #22
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %159, !prof !591

155:                                              ; preds = %152
  %156 = tail call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef nonnull %148) #23, !range !387
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  tail call fastcc void @mark_aliased_reaching_defs_necessary(ptr noundef %18, ptr noundef nonnull %148) #23
  br label %159

159:                                              ; preds = %155, %158, %146, %152
  %160 = add nuw i32 %147, 1
  %161 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %18) #23
  %162 = icmp ult i32 %160, %161
  br i1 %162, label %146, label %218, !prof !592, !llvm.loop !593

163:                                              ; preds = %130
  %164 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %18) #22
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %179, label %166, !prof !594

166:                                              ; preds = %163
  %167 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #23
  %168 = load i64, ptr %167, align 8
  %169 = and i64 %168, 65535
  %170 = icmp eq i64 %169, 141
  br i1 %170, label %218, label %171, !prof !595

171:                                              ; preds = %166
  %172 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %167) #22
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %218, !prof !596

174:                                              ; preds = %171
  %175 = tail call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef nonnull %167) #23, !range !387
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %178, !prof !597

177:                                              ; preds = %174
  tail call fastcc void @mark_aliased_reaching_defs_necessary(ptr noundef %18, ptr noundef nonnull %167) #23
  br label %218

178:                                              ; preds = %174
  tail call fastcc void @mark_all_reaching_defs_necessary(ptr noundef %18) #23
  br label %218

179:                                              ; preds = %163
  %180 = tail call fastcc i32 @gimple_code(ptr noundef %18) #23, !range !431
  %181 = trunc i32 %180 to i8
  switch i8 %181, label %217 [
    i8 9, label %182
    i8 7, label %195
  ]

182:                                              ; preds = %179
  %183 = tail call fastcc ptr @gimple_return_retval(ptr noundef %18) #23
  %184 = load i64, ptr %183, align 8
  %185 = and i64 %184, 65535
  %186 = icmp eq i64 %185, 141
  br i1 %186, label %218, label %187

187:                                              ; preds = %182
  %188 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %183) #22
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %218

190:                                              ; preds = %187
  %191 = tail call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef nonnull %183) #23, !range !387
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  tail call fastcc void @mark_aliased_reaching_defs_necessary(ptr noundef %18, ptr noundef nonnull %183) #23
  br label %218

194:                                              ; preds = %190
  tail call fastcc void @mark_all_reaching_defs_necessary(ptr noundef %18) #23
  br label %218

195:                                              ; preds = %179
  tail call fastcc void @mark_all_reaching_defs_necessary(ptr noundef %18) #23
  %196 = tail call fastcc i32 @gimple_asm_ninputs(ptr noundef %18) #23, !range !431
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %218, label %198

198:                                              ; preds = %195, %213
  %199 = phi i32 [ %214, %213 ], [ 0, %195 ]
  %200 = tail call fastcc ptr @gimple_asm_input_op(ptr noundef %18, i32 noundef %199) #23
  %201 = getelementptr inbounds %struct.tree_list, ptr %200, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !386
  %203 = load i64, ptr %202, align 8
  %204 = and i64 %203, 65535
  %205 = icmp eq i64 %204, 141
  br i1 %205, label %213, label %206

206:                                              ; preds = %198
  %207 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %202) #22
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = tail call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef nonnull %202) #23, !range !387
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  tail call fastcc void @mark_aliased_reaching_defs_necessary(ptr noundef %18, ptr noundef nonnull %202) #23
  br label %213

213:                                              ; preds = %212, %209, %206, %198
  %214 = add nuw nsw i32 %199, 1
  %215 = tail call fastcc i32 @gimple_asm_ninputs(ptr noundef %18) #23, !range !431
  %216 = icmp ult i32 %214, %215
  br i1 %216, label %198, label %218, !llvm.loop !598

217:                                              ; preds = %179
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 805, ptr noundef nonnull @.str.6) #22
  br label %218

218:                                              ; preds = %159, %213, %143, %195, %182, %187, %194, %193, %178, %166, %177, %171, %217
  %219 = load i32, ptr @total_chain, align 4, !tbaa !384
  %220 = icmp ugt i32 %219, 16384
  br i1 %220, label %221, label %233, !prof !586

221:                                              ; preds = %218
  %222 = load i32, ptr @longest_chain, align 4, !tbaa !384
  %223 = shl i32 %222, 5
  %224 = icmp ugt i32 %219, %223
  br i1 %224, label %225, label %233

225:                                              ; preds = %221
  %226 = load i32, ptr @nr_walks, align 4, !tbaa !384
  %227 = shl i32 %226, 5
  %228 = icmp ugt i32 %219, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %225
  store i1 true, ptr @chain_ovfl, align 1
  %230 = load ptr, ptr @visited, align 8, !tbaa !379
  %231 = icmp eq ptr %230, null
  br i1 %231, label %233, label %232

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
  br i1 %238, label %239, label %16, !prof !599, !llvm.loop !585

239:                                              ; preds = %235, %12
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @eliminate_unnecessary_stmts() unnamed_addr #0 !prof !420 !PGOFuncName !600 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9, !prof !511

9:                                                ; preds = %0
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !384
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 37, i64 1, ptr nonnull %7)
  br label %15

15:                                               ; preds = %13, %9, %0
  tail call void @clear_special_calls() #22
  %16 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #22
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19, !prof !601

18:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1090, ptr noundef nonnull @.str.6) #22
  br label %19

19:                                               ; preds = %15, %18
  %20 = load ptr, ptr @cfun, align 8, !tbaa !379
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !503
  %23 = load ptr, ptr %22, align 8, !tbaa !528
  %24 = tail call fastcc ptr @single_succ(ptr noundef %23) #23
  %25 = tail call ptr @get_all_dominated_blocks(i32 noundef 1, ptr noundef %24) #22
  store ptr %25, ptr %3, align 8, !tbaa !379
  %26 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %25) #23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %94, label %32, !prof !533

28:                                               ; preds = %90, %32
  %29 = phi i8 [ %33, %32 ], [ %91, %90 ]
  %30 = call fastcc i32 @VEC_basic_block_base_length(ptr noundef %25) #23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %94, label %32, !prof !534, !llvm.loop !602

32:                                               ; preds = %19, %28
  %33 = phi i8 [ %29, %28 ], [ 0, %19 ]
  %34 = call fastcc ptr @VEC_basic_block_base_pop(ptr noundef %25) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %34) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !539
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %35 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !387
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %28, !prof !540

37:                                               ; preds = %32, %90
  %38 = phi i8 [ %91, %90 ], [ %33, %32 ]
  %39 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !539
  call fastcc void @gsi_prev(ptr noundef nonnull %2) #23
  %40 = load i32, ptr @stats, align 4, !tbaa !603
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr @stats, align 4, !tbaa !603
  %42 = call fastcc i32 @gimple_plf(ptr noundef %39) #23
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48, !prof !604

44:                                               ; preds = %37
  %45 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %39) #23, !range !387
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, i8 1, i8 %38, !prof !605
  call fastcc void @remove_dead_stmt(ptr noundef nonnull %1, ptr noundef %34) #23
  br label %90

48:                                               ; preds = %37
  %49 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %39) #23, !range !387
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %90, label %51, !prof !606

51:                                               ; preds = %48
  %52 = call fastcc ptr @gimple_call_fndecl(ptr noundef %39) #23
  %53 = icmp eq ptr %52, null
  br i1 %53, label %90, label %54, !prof !588

54:                                               ; preds = %51
  %55 = call fastcc ptr @gimple_call_lhs(ptr noundef %39) #23
  %56 = icmp eq ptr %55, null
  br i1 %56, label %88, label %57, !prof !607

57:                                               ; preds = %54
  %58 = load i64, ptr %55, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 141
  br i1 %60, label %61, label %88, !prof !608

61:                                               ; preds = %57
  %62 = load ptr, ptr @processed, align 8, !tbaa !379
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %55, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !386
  %65 = lshr i32 %64, 6
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds %struct.simple_bitmap_def, ptr %62, i64 0, i32 3, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !566
  %69 = and i32 %64, 63
  %70 = zext nneg i32 %69 to i64
  %71 = shl nuw i64 1, %70
  %72 = and i64 %71, %68
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %88, !prof !609

74:                                               ; preds = %61
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %76 = icmp eq ptr %75, null
  br i1 %76, label %86, label %77, !prof !610

77:                                               ; preds = %74
  %78 = load i32, ptr @dump_flags, align 4, !tbaa !384
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = call i64 @fwrite(ptr nonnull @.str.20, i64 22, i64 1, ptr nonnull %75)
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !379
  call void @print_gimple_stmt(ptr noundef %83, ptr noundef %39, i32 noundef 0, i32 noundef 2) #22
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !379
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !539
  %92 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %37, label %28, !prof !541, !llvm.loop !611

94:                                               ; preds = %28, %19
  %95 = phi i8 [ 0, %19 ], [ %29, %28 ]
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %3) #23
  %96 = load i1, ptr @cfg_altered, align 1
  br i1 %96, label %102, label %97, !prof !507

97:                                               ; preds = %94
  %98 = load ptr, ptr @cfun, align 8, !tbaa !379
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !503
  %101 = load ptr, ptr %100, align 8, !tbaa !528
  br label %207

102:                                              ; preds = %94
  call void @find_unreachable_blocks() #22
  %103 = load ptr, ptr @cfun, align 8, !tbaa !379
  %104 = getelementptr inbounds %struct.function, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !503
  %106 = getelementptr inbounds %struct.control_flow_graph, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !532
  %108 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !612
  %110 = load ptr, ptr %105, align 8, !tbaa !528
  %111 = icmp eq ptr %109, %110
  br i1 %111, label %207, label %112, !prof !613

112:                                              ; preds = %102, %200
  %113 = phi ptr [ %201, %200 ], [ %109, %102 ]
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !612
  %116 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !379
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 9
  %118 = load i32, ptr %117, align 8, !tbaa !550
  %119 = lshr i32 %118, 6
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds %struct.simple_bitmap_def, ptr %116, i64 0, i32 3, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !566
  %123 = and i32 %118, 63
  %124 = zext nneg i32 %123 to i64
  %125 = shl nuw i64 1, %124
  %126 = and i64 %125, %122
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %133, label %128, !prof !614

128:                                              ; preds = %112
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 13
  %130 = load i32, ptr %129, align 8, !tbaa !615
  %131 = and i32 %130, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %200, !prof !616

133:                                              ; preds = %128, %112
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %113) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !539
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  %134 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !387
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %170, !prof !617

136:                                              ; preds = %133, %167
  %137 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23
  %138 = call fastcc ptr @gimple_phi_result(ptr noundef %137) #23
  %139 = call zeroext i8 @is_gimple_reg(ptr noundef %138) #22
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %167, !prof !618

141:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #21
  %142 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23
  %143 = call fastcc ptr @gimple_phi_result(ptr noundef %142) #23
  %144 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %6, ptr noundef %143) #23
  %145 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %6) #23, !range !387
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %166, !prof !619

147:                                              ; preds = %141, %160
  %148 = phi ptr [ %161, %160 ], [ %144, %141 ]
  %149 = call fastcc ptr @gimple_bb(ptr noundef %148) #23
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %149, i64 0, i32 13
  %151 = load i32, ptr %150, align 8, !tbaa !615
  %152 = and i32 %151, 2
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %160, label %154, !prof !620

154:                                              ; preds = %147
  %155 = call fastcc i32 @gimple_code(ptr noundef %148) #23, !range !431
  %156 = icmp eq i32 %155, 16
  br i1 %156, label %164, label %157, !prof !383

157:                                              ; preds = %154
  %158 = call fastcc i32 @gimple_plf(ptr noundef %148) #23
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157, %147
  %161 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %6) #23
  %162 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %6) #23, !range !387
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %147, label %166, !prof !621, !llvm.loop !622

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
  %168 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !387
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %136, label %170, !prof !623, !llvm.loop !624

170:                                              ; preds = %167, %133
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 13
  %172 = load i32, ptr %171, align 8, !tbaa !615
  %173 = and i32 %172, 2
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %200, !prof !625

175:                                              ; preds = %170
  %176 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !384
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178, !prof !626

178:                                              ; preds = %175
  %179 = call ptr @first_dom_son(i32 noundef 1, ptr noundef nonnull %113) #22
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %178, %175
  call void @delete_basic_block(ptr noundef nonnull %113) #22
  br label %200

182:                                              ; preds = %178
  %183 = call ptr @get_all_dominated_blocks(i32 noundef 1, ptr noundef nonnull %113) #22
  store ptr %183, ptr %3, align 8, !tbaa !379
  %184 = call fastcc i32 @VEC_basic_block_base_length(ptr noundef %183) #23
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %198, label %186

186:                                              ; preds = %182, %195
  %187 = call fastcc ptr @VEC_basic_block_base_pop(ptr noundef %183) #23
  %188 = getelementptr inbounds %struct.basic_block_def, ptr %187, i64 0, i32 5
  %189 = load ptr, ptr %188, align 8, !tbaa !612
  %190 = getelementptr inbounds %struct.basic_block_def, ptr %187, i64 0, i32 13
  %191 = load i32, ptr %190, align 8, !tbaa !615
  %192 = and i32 %191, 2
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  call void @delete_basic_block(ptr noundef nonnull %187) #22
  br label %195

195:                                              ; preds = %194, %186
  %196 = call fastcc i32 @VEC_basic_block_base_length(ptr noundef %183) #23
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %186, !llvm.loop !627

198:                                              ; preds = %195, %182
  %199 = phi ptr [ %115, %182 ], [ %189, %195 ]
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %3) #23
  br label %200

200:                                              ; preds = %128, %181, %198, %170
  %201 = phi ptr [ %115, %128 ], [ %115, %170 ], [ %199, %198 ], [ %115, %181 ]
  %202 = load ptr, ptr @cfun, align 8, !tbaa !379
  %203 = getelementptr inbounds %struct.function, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !503
  %205 = load ptr, ptr %204, align 8, !tbaa !528
  %206 = icmp eq ptr %201, %205
  br i1 %206, label %207, label %112, !prof !628, !llvm.loop !629

207:                                              ; preds = %200, %97, %102
  %208 = phi ptr [ %101, %97 ], [ %109, %102 ], [ %201, %200 ]
  %209 = phi ptr [ %100, %97 ], [ %105, %102 ], [ %204, %200 ]
  %210 = getelementptr inbounds %struct.basic_block_def, ptr %208, i64 0, i32 6
  %211 = load ptr, ptr %210, align 8, !tbaa !529
  %212 = getelementptr inbounds %struct.control_flow_graph, ptr %209, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !532
  %214 = icmp eq ptr %211, %213
  br i1 %214, label %228, label %215, !prof !533

215:                                              ; preds = %207, %215
  %216 = phi ptr [ %221, %215 ], [ %211, %207 ]
  %217 = phi i8 [ %219, %215 ], [ %95, %207 ]
  %218 = call fastcc zeroext i8 @remove_dead_phis(ptr noundef %216) #23, !range !387
  %219 = or i8 %218, %217
  %220 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 6
  %221 = load ptr, ptr %220, align 8, !tbaa !529
  %222 = load ptr, ptr @cfun, align 8, !tbaa !379
  %223 = getelementptr inbounds %struct.function, ptr %222, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !503
  %225 = getelementptr inbounds %struct.control_flow_graph, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !532
  %227 = icmp eq ptr %221, %226
  br i1 %227, label %228, label %215, !prof !630, !llvm.loop !631

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
define internal fastcc void @print_stats() unnamed_addr #10 !prof !460 !PGOFuncName !632 {
  %1 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !508
  %2 = sitofp i32 %1 to float
  %3 = load i32, ptr @stats, align 4, !tbaa !603
  %4 = sitofp i32 %3 to float
  %5 = fdiv float %2, %4
  %6 = fmul float %5, 1.000000e+02
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %8 = fptosi float %6 to i32
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.23, i32 noundef %1, i32 noundef %3, i32 noundef %8) #23
  %10 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !633
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !510
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
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.24, i32 noundef %12, i32 noundef %10, i32 noundef %20) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_dce_done(i8 noundef zeroext %0) unnamed_addr #0 !prof !420 !PGOFuncName !634 {
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %34, label %3, !prof !501

3:                                                ; preds = %1
  %4 = load ptr, ptr @cfun, align 8, !tbaa !379
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !503
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !505
  %9 = icmp sgt i32 %8, 0
  %10 = load ptr, ptr @control_dependence_map, align 8, !tbaa !379
  br i1 %9, label %11, label %26, !prof !514

11:                                               ; preds = %3, %11
  %12 = phi ptr [ %16, %11 ], [ %10, %3 ]
  %13 = phi i64 [ %18, %11 ], [ 0, %3 ]
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !379
  tail call void @bitmap_obstack_free(ptr noundef %15) #22
  %16 = load ptr, ptr @control_dependence_map, align 8, !tbaa !379
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  store ptr null, ptr %17, align 8, !tbaa !379
  %18 = add nuw nsw i64 %13, 1
  %19 = load ptr, ptr @cfun, align 8, !tbaa !379
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !503
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !505
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %18, %24
  br i1 %25, label %11, label %26, !prof !515, !llvm.loop !635

26:                                               ; preds = %11, %3
  %27 = phi ptr [ %10, %3 ], [ %16, %11 ]
  tail call void @free(ptr noundef %27) #23
  %28 = load ptr, ptr @visited_control_parents, align 8, !tbaa !379
  %29 = load ptr, ptr %28, align 8, !tbaa !636
  tail call void @free(ptr noundef %29) #23
  tail call void @free(ptr noundef %28) #23
  %30 = load ptr, ptr @last_stmt_necessary, align 8, !tbaa !379
  %31 = load ptr, ptr %30, align 8, !tbaa !636
  tail call void @free(ptr noundef %31) #23
  tail call void @free(ptr noundef %30) #23
  %32 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !379
  %33 = load ptr, ptr %32, align 8, !tbaa !636
  tail call void @free(ptr noundef %33) #23
  tail call void @free(ptr noundef %32) #23
  store ptr null, ptr @bb_contains_live_stmts, align 8, !tbaa !379
  br label %34

34:                                               ; preds = %26, %1
  %35 = load ptr, ptr @processed, align 8, !tbaa !379
  %36 = load ptr, ptr %35, align 8, !tbaa !636
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
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !420 !PGOFuncName !638 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !601

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !639
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc() unnamed_addr #0 !prof !420 !PGOFuncName !641 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 64) #22
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_control_dependence(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !642 !PGOFuncName !643 {
  %3 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !644
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !379
  %8 = load ptr, ptr %7, align 8, !tbaa !549
  %9 = load ptr, ptr @cfun, align 8, !tbaa !379
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !503
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !532
  %14 = icmp eq ptr %8, %13
  br i1 %14, label %15, label %23, !prof !645

15:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 168, ptr noundef nonnull @.str.6) #22
  %16 = load ptr, ptr %3, align 8, !tbaa !644
  %17 = getelementptr inbounds ptr, ptr %16, i64 %5
  %18 = load ptr, ptr %17, align 8, !tbaa !379
  %19 = load ptr, ptr %18, align 8, !tbaa !549
  %20 = load ptr, ptr @cfun, align 8, !tbaa !379
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !503
  br label %23

23:                                               ; preds = %2, %15
  %24 = phi ptr [ %11, %2 ], [ %22, %15 ]
  %25 = phi ptr [ %8, %2 ], [ %19, %15 ]
  %26 = load ptr, ptr %24, align 8, !tbaa !528
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %30, !prof !646

28:                                               ; preds = %23
  %29 = tail call fastcc ptr @single_succ(ptr noundef %25) #23
  br label %32

30:                                               ; preds = %23
  %31 = tail call fastcc ptr @find_pdom(ptr noundef %25) #23
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi ptr [ %29, %28 ], [ %31, %30 ]
  %34 = load ptr, ptr %3, align 8, !tbaa !644
  %35 = getelementptr inbounds ptr, ptr %34, i64 %5
  %36 = load ptr, ptr %35, align 8, !tbaa !379
  %37 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !551
  %39 = icmp eq ptr %38, %33
  br i1 %39, label %60, label %40, !prof !647

40:                                               ; preds = %32, %57
  %41 = phi ptr [ %58, %57 ], [ %38, %32 ]
  %42 = load ptr, ptr @cfun, align 8, !tbaa !379
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !503
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !532
  %47 = icmp eq ptr %41, %46
  br i1 %47, label %60, label %48, !prof !648

48:                                               ; preds = %40
  %49 = load ptr, ptr %3, align 8, !tbaa !644
  %50 = getelementptr inbounds ptr, ptr %49, i64 %5
  %51 = load ptr, ptr %50, align 8, !tbaa !379
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !547
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57, !prof !649

56:                                               ; preds = %48
  tail call fastcc void @set_control_dependence_map_bit(ptr noundef %41, i32 noundef %1) #23
  br label %57

57:                                               ; preds = %48, %56
  %58 = tail call fastcc ptr @find_pdom(ptr noundef %41) #23
  %59 = icmp eq ptr %58, %33
  br i1 %59, label %60, label %40, !prof !650, !llvm.loop !651

60:                                               ; preds = %40, %57, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !652 !PGOFuncName !653 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !551
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_pdom(ptr noundef %0) unnamed_addr #0 !prof !654 !PGOFuncName !655 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !379
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !503
  %5 = load ptr, ptr %4, align 8, !tbaa !528
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %11, !prof !656

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 145, ptr noundef nonnull @.str.6) #22
  %8 = load ptr, ptr @cfun, align 8, !tbaa !379
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !503
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %4, %1 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !532
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %25, label %16, !prof !656

16:                                               ; preds = %11
  %17 = tail call ptr @get_immediate_dominator(i32 noundef 2, ptr noundef %0) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %25, !prof !656

19:                                               ; preds = %16
  %20 = load ptr, ptr @cfun, align 8, !tbaa !379
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !503
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !532
  br label %25

25:                                               ; preds = %19, %16, %11
  %26 = phi ptr [ %0, %11 ], [ %24, %19 ], [ %17, %16 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_control_dependence_map_bit(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !657 !PGOFuncName !658 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !379
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !503
  %6 = load ptr, ptr %5, align 8, !tbaa !528
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %21, label %8, !prof !659

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !532
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %13, !prof !659

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 127, ptr noundef nonnull @.str.6) #22
  br label %13

13:                                               ; preds = %8, %12
  %14 = load ptr, ptr @control_dependence_map, align 8, !tbaa !379
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !550
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %14, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !379
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %19, i32 noundef %1) #22
  br label %21

21:                                               ; preds = %2, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !652 !PGOFuncName !660 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #23, !range !387
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !661

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 645, ptr noundef nonnull @.str.6) #22
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !662
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #23
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !652 !PGOFuncName !663 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !662
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #23
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !664 !PGOFuncName !665 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !379
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !666 !PGOFuncName !667 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !668

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !669
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
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !671 !PGOFuncName !672 {
  %2 = load ptr, ptr %0, align 8, !tbaa !673
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 !prof !675 !PGOFuncName !676 {
  %2 = load ptr, ptr %0, align 8, !tbaa !673
  %3 = load ptr, ptr %2, align 8, !tbaa !677
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_plf(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #13 !prof !679 !PGOFuncName !680 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -2049
  %6 = select i1 %3, i32 0, i32 2048, !prof !681
  %7 = or disjoint i32 %5, %6
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !682 !PGOFuncName !683 {
  %2 = load ptr, ptr %0, align 8, !tbaa !673
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !684
  store ptr %4, ptr %0, align 8, !tbaa !673
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !685 !PGOFuncName !686 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #23
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #23
  store ptr %4, ptr %0, align 8, !tbaa !673
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !687
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !688
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_stmt_if_obviously_necessary(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !689 !PGOFuncName !690 {
  %3 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !384
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !691

5:                                                ; preds = %2
  %6 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %0) #22
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %54

8:                                                ; preds = %5, %2
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !431
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
  ], !prof !692

11:                                               ; preds = %8, %8, %8
  br label %54

12:                                               ; preds = %8
  %13 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %0) #22
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %54, !prof !588

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %56, label %18

18:                                               ; preds = %15
  %19 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %45, !prof !693

21:                                               ; preds = %8, %18
  %22 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #23
  br label %45

23:                                               ; preds = %8
  %24 = tail call fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %0) #23, !range !387
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 338, ptr noundef nonnull @.str.6) #22
  br label %54

35:                                               ; preds = %8
  %36 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #23
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !662
  %39 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %38) #23
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %42, label %41, !prof !694

41:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 343, ptr noundef nonnull @.str.6) #22
  br label %42

42:                                               ; preds = %41, %35, %8
  %43 = icmp eq i8 %1, 0
  br i1 %43, label %44, label %45, !prof !695

44:                                               ; preds = %42
  tail call fastcc void @mark_stmt_necessary(ptr noundef %0, i8 noundef zeroext 1) #23
  br label %45

45:                                               ; preds = %8, %42, %44, %18, %21
  %46 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #23, !range !387
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %54, !prof !696

48:                                               ; preds = %45
  %49 = tail call zeroext i8 @is_ctrl_altering_stmt(ptr noundef %0) #22
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %54, !prof !696

51:                                               ; preds = %48
  %52 = tail call zeroext i8 @is_hidden_global_store(ptr noundef %0) #22
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54, !prof !697

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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #14 !prof !698 !PGOFuncName !699 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !460 !PGOFuncName !700 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #23, !range !387
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #23
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !379
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_control_dependent_edges_necessary(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !701 !PGOFuncName !702 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %5 = load ptr, ptr @cfun, align 8, !tbaa !379
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !503
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !532
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %15, !prof !703

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 383, ptr noundef nonnull @.str.6) #22
  %12 = load ptr, ptr @cfun, align 8, !tbaa !379
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !503
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi ptr [ %7, %2 ], [ %14, %11 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !528
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %61, label %19, !prof !703

19:                                               ; preds = %15
  %20 = load ptr, ptr @control_dependence_map, align 8, !tbaa !379
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !550
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !379
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %25, ptr noundef nonnull %4) #23
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !387
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %61, label %28, !prof !704

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.edge_list, ptr %1, i64 0, i32 2
  br label %30

30:                                               ; preds = %28, %58
  %31 = load ptr, ptr %29, align 8, !tbaa !644
  %32 = load i32, ptr %4, align 4, !tbaa !384
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !379
  %36 = load ptr, ptr %35, align 8, !tbaa !549
  %37 = load ptr, ptr @last_stmt_necessary, align 8, !tbaa !379
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !550
  %40 = lshr i32 %39, 6
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds %struct.simple_bitmap_def, ptr %37, i64 0, i32 3, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !566
  %44 = and i32 %39, 63
  %45 = zext nneg i32 %44 to i64
  %46 = shl nuw i64 1, %45
  %47 = and i64 %46, %43
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %58, !prof !705

49:                                               ; preds = %30
  tail call fastcc void @SET_BIT(ptr noundef nonnull %37, i32 noundef %39) #23
  %50 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !379
  %51 = load i32, ptr %38, align 8, !tbaa !550
  tail call fastcc void @SET_BIT(ptr noundef %50, i32 noundef %51) #23
  %52 = tail call ptr @last_stmt(ptr noundef nonnull %36) #22
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54, !prof !706

54:                                               ; preds = %49
  %55 = tail call zeroext i8 @is_ctrl_stmt(ptr noundef nonnull %52) #22
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57, !prof !706

57:                                               ; preds = %54
  tail call fastcc void @mark_stmt_necessary(ptr noundef nonnull %52, i8 noundef zeroext 1) #23
  br label %58

58:                                               ; preds = %49, %54, %57, %30
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %59 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !387
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %30, !prof !707, !llvm.loop !708

61:                                               ; preds = %58, %19, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !698 !PGOFuncName !709 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !710

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #23
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #23
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !626

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.6) #22
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !711
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !711
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !427 !PGOFuncName !713 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !714
  %4 = load ptr, ptr @cfun, align 8, !tbaa !379
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !716
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !717

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !718
  store ptr null, ptr %1, align 8, !tbaa !379
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #23
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #23
  store ptr %11, ptr %0, align 8, !tbaa !718
  %12 = load ptr, ptr @cfun, align 8, !tbaa !379
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !716
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !719
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !555
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23, !prof !717

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !718
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #23
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !721
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !502

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !722
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27, !prof !723

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #23
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !prof !724, !llvm.loop !725

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #23
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @finite_loop_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !427 !PGOFuncName !726 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !714
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !718
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #23, !range !727
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !502

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !714
  %13 = load i32, ptr %3, align 4, !tbaa !384
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #23
  store ptr %14, ptr %1, align 8, !tbaa !379
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !728

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #23
  store ptr null, ptr %1, align 8, !tbaa !379
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare void @scev_finalize() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !729 !PGOFuncName !730 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !615
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !731

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !386
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !732

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !733
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !735 !PGOFuncName !736 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !737

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !738
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_stmt_necessary(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !740 !PGOFuncName !741 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !742

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 209, ptr noundef nonnull @.str.6) #22
  br label %5

5:                                                ; preds = %2, %4
  %6 = tail call fastcc i32 @gimple_plf(ptr noundef %0) #23
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %33, !prof !743

8:                                                ; preds = %5
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11, !prof !743

11:                                               ; preds = %8
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !384
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr nonnull %9)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !379
  tail call void @print_gimple_stmt(ptr noundef %17, ptr noundef %0, i32 noundef 0, i32 noundef 2) #22
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %19 = tail call i32 @fputc(i32 10, ptr %18)
  br label %20

20:                                               ; preds = %15, %11, %8
  tail call fastcc void @gimple_set_plf(ptr noundef %0, i8 noundef zeroext 1) #23
  %21 = icmp eq i8 %1, 0
  br i1 %21, label %23, label %22, !prof !744

22:                                               ; preds = %20
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef %0) #23
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !379
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26, !prof !745

26:                                               ; preds = %23
  %27 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #23, !range !387
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33, !prof !746

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #23
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !550
  tail call fastcc void @SET_BIT(ptr noundef nonnull %24, i32 noundef %32) #23
  br label %33

33:                                               ; preds = %5, %29, %26, %23
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !747 !PGOFuncName !748 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !749 !PGOFuncName !750 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %0) unnamed_addr #0 !prof !460 !PGOFuncName !751 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #23
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_debug_bind_get_var(ptr noundef %0) unnamed_addr #0 !prof !460 !PGOFuncName !752 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @simple_goto_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !753 !PGOFuncName !754 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !386
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !755 !PGOFuncName !756 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #23, !range !387
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !757

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
define internal fastcc i32 @gimple_plf(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !758 !PGOFuncName !759 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 11
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !760 !PGOFuncName !761 {
  tail call fastcc void @VEC_gimple_heap_reserve() #23
  %2 = load ptr, ptr @worklist, align 8, !tbaa !379
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !762 !PGOFuncName !763 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !431
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 !prof !764 !PGOFuncName !765 {
  %3 = load ptr, ptr %0, align 8, !tbaa !636
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !766

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
  %15 = load i64, ptr %14, align 8, !tbaa !566
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !386
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !386
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !566
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !566
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve() unnamed_addr #0 !prof !760 !PGOFuncName !767 {
  %1 = load ptr, ptr @worklist, align 8, !tbaa !379
  %2 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %1) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !768

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #22
  store ptr %5, ptr @worklist, align 8, !tbaa !379
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !760 !PGOFuncName !769 {
  %3 = load i32, ptr %0, align 8, !tbaa !770
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !770
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !379
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !760 !PGOFuncName !772 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !773

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !774
  %6 = load i32, ptr %0, align 8, !tbaa !770
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
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !775 !PGOFuncName !776 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !387
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !777

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #23
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !379
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !778 !PGOFuncName !779 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #23
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !566
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !780

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #22
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !778 !PGOFuncName !781 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !431
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #23
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #14 !prof !778 !PGOFuncName !782 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !384
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !783 !PGOFuncName !784 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !785

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !786 !PGOFuncName !787 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !788

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #23
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #23
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !789 !PGOFuncName !790 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !791

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 687, ptr noundef nonnull @.str.6) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !379
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !701 !PGOFuncName !792 {
  %4 = load ptr, ptr %1, align 8, !tbaa !793
  store ptr %4, ptr %0, align 8, !tbaa !795
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !797
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !798

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !795
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !799
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !801
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !566
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !802
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !384
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #16 !prof !803 !PGOFuncName !804 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !802
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !805

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !806

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !384
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !807, !llvm.loop !808

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !384
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !384
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !801
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !795
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !801
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !809

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !566
  store i64 %35, ptr %3, align 8, !tbaa !802
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !810

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !384
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !384
  %40 = load i32, ptr %23, align 8, !tbaa !801
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !801
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !811, !llvm.loop !812

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !813
  store ptr %44, ptr %0, align 8, !tbaa !795
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !814

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !799
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !384
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !802
  store i32 %16, ptr %1, align 4, !tbaa !384
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
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 !prof !815 !PGOFuncName !816 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !802
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !802
  %6 = load i32, ptr %1, align 4, !tbaa !384
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !384
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !427 !PGOFuncName !817 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #22
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #8 !prof !427 !PGOFuncName !818 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !379
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !716
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !717

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !819
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #23
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #13 !prof !460 !PGOFuncName !820 {
  %3 = load i32, ptr %0, align 4, !tbaa !821
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !821
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !384
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !427 !PGOFuncName !823 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !824
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !502

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
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !825 !PGOFuncName !826 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !723

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !827
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !460 !PGOFuncName !829 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !379
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !427 !PGOFuncName !830 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !717

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !821
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !717

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !384
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !384
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #8 !prof !460 !PGOFuncName !831 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !379
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !716
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !819
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #23
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #17 !prof !427 !PGOFuncName !832 {
  %2 = load ptr, ptr %0, align 8, !tbaa !379
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !717

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !379
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !833 !PGOFuncName !834 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !835

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !770
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #13 !prof !760 !PGOFuncName !836 {
  %2 = load i32, ptr %0, align 8, !tbaa !770
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !770
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !379
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_operand_necessary(ptr noundef %0) unnamed_addr #0 !prof !837 !PGOFuncName !838 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !839

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 237, ptr noundef nonnull @.str.6) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !386
  %7 = load ptr, ptr @processed, align 8, !tbaa !379
  %8 = lshr i32 %6, 6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !566
  %12 = and i32 %6, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = and i64 %14, %11
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %26, label %17, !prof !840

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !386
  %20 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %19) #23, !range !387
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %58, !prof !841

22:                                               ; preds = %17
  %23 = tail call fastcc i32 @gimple_plf(ptr noundef %19) #23
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %58, !prof !842

25:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 244, ptr noundef nonnull @.str.6) #22
  br label %58

26:                                               ; preds = %4
  tail call fastcc void @SET_BIT(ptr noundef nonnull %7, i32 noundef %6) #23
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !386
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !843

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 250, ptr noundef nonnull @.str.6) #22
  br label %31

31:                                               ; preds = %26, %30
  %32 = tail call fastcc i32 @gimple_plf(ptr noundef %28) #23
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %58, !prof !844

34:                                               ; preds = %31
  %35 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %28) #23, !range !387
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %58, !prof !845

37:                                               ; preds = %34
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40, !prof !846

40:                                               ; preds = %37
  %41 = load i32, ptr @dump_flags, align 4, !tbaa !384
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 26, i64 1, ptr nonnull %38)
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !379
  tail call void @print_generic_expr(ptr noundef %46, ptr noundef nonnull %0, i32 noundef 0) #22
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %48 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 6, i64 1, ptr %47)
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !379
  tail call void @print_gimple_stmt(ptr noundef %49, ptr noundef %28, i32 noundef 0, i32 noundef 0) #22
  br label %50

50:                                               ; preds = %44, %40, %37
  tail call fastcc void @gimple_set_plf(ptr noundef %28, i8 noundef zeroext 1) #23
  %51 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !379
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53, !prof !847

53:                                               ; preds = %50
  %54 = tail call fastcc ptr @gimple_bb(ptr noundef %28) #23
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !550
  tail call fastcc void @SET_BIT(ptr noundef nonnull %51, i32 noundef %56) #23
  br label %57

57:                                               ; preds = %53, %50
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef %28) #23
  br label %58

58:                                               ; preds = %31, %34, %25, %22, %17, %57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @degenerate_phi_p(ptr noundef %0) unnamed_addr #0 !prof !848 !PGOFuncName !849 {
  %2 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef 0) #23
  %3 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #23
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %10, label %14, !prof !850

5:                                                ; preds = %10
  %6 = add nuw nsw i64 %11, 1
  %7 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #23
  %8 = zext i32 %7 to i64
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %14, !prof !851, !llvm.loop !852

10:                                               ; preds = %1, %5
  %11 = phi i64 [ %6, %5 ], [ 1, %1 ]
  %12 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %11) #23
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %5, label %14, !prof !853

14:                                               ; preds = %10, %5, %1
  %15 = phi i8 [ 1, %1 ], [ 1, %5 ], [ 0, %10 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #8 !prof !854 !PGOFuncName !855 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #23
  %4 = load ptr, ptr %3, align 8, !tbaa !856
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #23
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !478 !PGOFuncName !857 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 1) #23
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !448
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #23
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #5 !prof !858 !PGOFuncName !859 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !454
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !860

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #23
  %8 = load ptr, ptr %3, align 8, !tbaa !456
  store ptr %8, ptr %2, align 8, !tbaa !454
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !481
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !480

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !861
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #23
  %17 = load ptr, ptr %11, align 8, !tbaa !483
  store ptr %17, ptr %10, align 8, !tbaa !481
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !443
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_all_reaching_defs_necessary(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !862 !PGOFuncName !863 {
  %2 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #23
  %3 = tail call i32 @walk_aliased_vdefs(ptr noundef null, ptr noundef %2, ptr noundef nonnull @mark_all_reaching_defs_necessary_1, ptr noundef null, ptr noundef nonnull @visited) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !864 !PGOFuncName !865 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !431
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !866 !PGOFuncName !867 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #23
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !868

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !386
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !869 !PGOFuncName !870 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #23
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !871 !PGOFuncName !872 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #23
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ref_may_be_aliased(ptr nocapture noundef readonly %0) unnamed_addr #19 !prof !873 !PGOFuncName !874 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #23, !range !387
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4, !prof !875

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !386
  %8 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %7) #23, !range !387
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %4, !prof !876, !llvm.loop !877

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !384
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %19, !prof !878

17:                                               ; preds = %10
  %18 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef nonnull %11) #23, !range !387
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi i8 [ 1, %10 ], [ %18, %17 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_aliased_reaching_defs_necessary(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !460 !PGOFuncName !879 {
  %3 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #21
  %4 = load i1, ptr @chain_ovfl, align 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 553, ptr noundef nonnull @.str.6) #22
  br label %6

6:                                                ; preds = %2, %5
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef %1) #22
  %7 = call fastcc ptr @gimple_vuse(ptr noundef %0) #23
  %8 = call fastcc ptr @gimple_bb(ptr noundef %0) #23
  %9 = call i32 @walk_aliased_vdefs(ptr noundef nonnull %3, ptr noundef %7, ptr noundef nonnull @mark_aliased_reaching_defs_necessary_1, ptr noundef %8, ptr noundef null) #22
  %10 = load i32, ptr @longest_chain, align 4, !tbaa !384
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store i32 %9, ptr @longest_chain, align 4, !tbaa !384
  br label %13

13:                                               ; preds = %12, %6
  %14 = load i32, ptr @total_chain, align 4, !tbaa !384
  %15 = add i32 %14, %9
  store i32 %15, ptr @total_chain, align 4, !tbaa !384
  %16 = load i32, ptr @nr_walks, align 4, !tbaa !384
  %17 = add i32 %16, 1
  store i32 %17, ptr @nr_walks, align 4, !tbaa !384
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !873 !PGOFuncName !880 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #0 !prof !460 !PGOFuncName !881 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !460 !PGOFuncName !882 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !386
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !460 !PGOFuncName !883 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !386
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2622, ptr noundef nonnull @.str.6) #22
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %1) #23
  ret ptr %9
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !884 !PGOFuncName !885 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !431
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !886 !PGOFuncName !887 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #23
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #23
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !460 !PGOFuncName !888 {
  %2 = load ptr, ptr %0, align 8, !tbaa !379
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @walk_aliased_vdefs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @mark_all_reaching_defs_necessary_1(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 !prof !889 !PGOFuncName !890 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !386
  %6 = load i1, ptr @chain_ovfl, align 1
  br i1 %6, label %7, label %27, !prof !891

7:                                                ; preds = %3
  %8 = load ptr, ptr @processed, align 8, !tbaa !379
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !386
  %11 = lshr i32 %10, 6
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !566
  %15 = and i32 %10, 63
  %16 = zext nneg i32 %15 to i64
  %17 = shl nuw i64 1, %16
  %18 = and i64 %17, %14
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %7
  %21 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %5) #23, !range !387
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @gimple_plf(ptr noundef %5) #23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 582, ptr noundef nonnull @.str.6) #22
  br label %35

27:                                               ; preds = %3
  %28 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %5) #22
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30, !prof !892

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %5) #23
  %32 = tail call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef %31) #23, !range !387
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %7, %30, %27
  tail call fastcc void @mark_operand_necessary(ptr noundef nonnull %1) #23
  br label %35

35:                                               ; preds = %26, %23, %20, %30, %34
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !866 !PGOFuncName !893 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !894 !PGOFuncName !895 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !386
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !896 !PGOFuncName !897 {
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
  ], !prof !898

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @may_be_aliased(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !899 !PGOFuncName !900 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 33
  br i1 %4, label %38, label %5, !prof !901

5:                                                ; preds = %1
  %6 = and i64 %2, 134217728
  %7 = icmp ne i64 %6, 0
  %8 = and i64 %2, 201326592
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15, !prof !902

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33554432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %10, %5
  %16 = and i64 %2, 1048576
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %28, label %18, !prof !903

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !386
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  %25 = or i1 %7, %24
  %26 = xor i1 %24, true
  %27 = zext i1 %26 to i8
  br i1 %25, label %38, label %29, !prof !904

28:                                               ; preds = %15
  br i1 %7, label %38, label %29, !prof !905

29:                                               ; preds = %18, %10, %28
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 33554432
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = lshr i64 %2, 18
  %36 = trunc i64 %35 to i8
  %37 = and i8 %36, 1
  br label %38

38:                                               ; preds = %18, %28, %29, %34, %1
  %39 = phi i8 [ %27, %18 ], [ 0, %1 ], [ 1, %29 ], [ 1, %28 ], [ %37, %34 ]
  ret i8 %39
}

; Function Attrs: optsize
declare void @ao_ref_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @mark_aliased_reaching_defs_necessary_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !prof !460 !PGOFuncName !906 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !386
  tail call fastcc void @mark_operand_necessary(ptr noundef %1) #23
  %9 = tail call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %8) #23, !range !387
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %55, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @gimple_get_lhs(ptr noundef %8) #22
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %55, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @gimple_get_lhs(ptr noundef %8) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %18 = tail call ptr @ao_ref_base(ptr noundef %0) #22
  %19 = call ptr @get_ref_base_and_extent(ptr noundef %17, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #22
  %20 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !907
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %16
  %24 = load i64, ptr %4, align 8, !tbaa !566
  %25 = icmp ne i64 %24, -1
  %26 = load i64, ptr %6, align 8
  %27 = icmp eq i64 %24, %26
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  %31 = load i64, ptr %30, align 8, !tbaa !909
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load i64, ptr %5, align 8, !tbaa !566
  %35 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !910
  %37 = icmp sgt i64 %34, %36
  br i1 %37, label %53, label %38

38:                                               ; preds = %33
  %39 = add nsw i64 %34, %24
  %40 = add nsw i64 %36, %31
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %53, label %54

42:                                               ; preds = %29, %23
  %43 = load ptr, ptr %0, align 8, !tbaa !911
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = call fastcc ptr @gimple_bb(ptr noundef %8) #23
  %47 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %2, ptr noundef %46) #22
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %0, align 8, !tbaa !911
  %51 = call i32 @operand_equal_p(ptr noundef %50, ptr noundef %17, i32 noundef 0) #22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

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
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #0 !prof !460 !PGOFuncName !912 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #23, !range !387
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #23, !range !387
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

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
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !460 !PGOFuncName !913 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !431
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
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !914 !PGOFuncName !915 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !916

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !917
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_basic_block_base_pop(ptr nocapture noundef %0) unnamed_addr #13 !prof !685 !PGOFuncName !919 {
  %2 = load i32, ptr %0, align 8, !tbaa !917
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !917
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !379
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !685 !PGOFuncName !920 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #23
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #23
  store ptr %4, ptr %0, align 8, !tbaa !673
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !687
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !688
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #5 !prof !689 !PGOFuncName !921 {
  %2 = load ptr, ptr %0, align 8, !tbaa !673
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !922
  store ptr %4, ptr %0, align 8, !tbaa !673
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_dead_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !923 !PGOFuncName !924 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #23
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7, !prof !605

7:                                                ; preds = %2
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !384
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 11, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !379
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %4, i32 noundef 0, i32 noundef 2) #22
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %15 = tail call i32 @fputc(i32 10, ptr %14)
  br label %16

16:                                               ; preds = %11, %7, %2
  %17 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !508
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !508
  %19 = tail call zeroext i8 @is_ctrl_stmt(ptr noundef %4) #22
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %77, label %21, !prof !925

21:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %22 = tail call ptr @get_immediate_dominator(i32 noundef 2, ptr noundef %1) #22
  %23 = tail call ptr @find_edge(ptr noundef %1, ptr noundef %22) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %47, !prof !710

25:                                               ; preds = %21
  %26 = icmp eq ptr %22, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr @cfun, align 8, !tbaa !379
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !503
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !532
  %33 = icmp eq ptr %22, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27, %25
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !662
  %37 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %36, i32 noundef 0) #23
  br label %43

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !662
  %41 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %40, i32 noundef 0) #23
  %42 = tail call fastcc ptr @forward_edge_to_pdom(ptr noundef %41, ptr noundef nonnull %22) #23
  br label %43

43:                                               ; preds = %34, %38
  %44 = phi ptr [ %37, %34 ], [ %42, %38 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47, !prof !926

46:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1023, ptr noundef nonnull @.str.6) #22
  br label %47

47:                                               ; preds = %21, %43, %46
  %48 = phi ptr [ %44, %43 ], [ null, %46 ], [ %23, %21 ]
  %49 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 8
  store i32 10000, ptr %49, align 4, !tbaa !927
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 8
  %51 = load i64, ptr %50, align 8, !tbaa !928
  %52 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 9
  store i64 %51, ptr %52, align 8, !tbaa !929
  %53 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 7
  %54 = load i32, ptr %53, align 8, !tbaa !547
  %55 = and i32 %54, -3074
  %56 = or disjoint i32 %55, 1
  store i32 %56, ptr %53, align 8, !tbaa !547
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %58 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %57) #23
  store i32 0, ptr %3, align 8, !tbaa.struct !545
  %59 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %58, ptr %59, align 8, !tbaa.struct !546
  %60 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %58) #23
  %61 = icmp eq ptr %60, null
  br i1 %61, label %76, label %62, !prof !930

62:                                               ; preds = %47, %71
  %63 = phi ptr [ %72, %71 ], [ %58, %47 ]
  %64 = phi i32 [ %73, %71 ], [ 0, %47 ]
  %65 = phi ptr [ %74, %71 ], [ %60, %47 ]
  %66 = icmp eq ptr %48, %65
  br i1 %66, label %68, label %67, !prof !931

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
  br i1 %75, label %76, label %62, !prof !932, !llvm.loop !933

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
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0) unnamed_addr #0 !prof !934 !PGOFuncName !935 {
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
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #17 !prof !420 !PGOFuncName !936 {
  %2 = load ptr, ptr %0, align 8, !tbaa !379
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !601

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !379
  ret void
}

; Function Attrs: optsize
declare void @find_unreachable_blocks() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @end_imm_use_stmt_traverse(ptr nocapture noundef %0) unnamed_addr #6 !prof !378 !PGOFuncName !937 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @remove_dead_phis(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !938 !PGOFuncName !939 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  %4 = tail call fastcc ptr @phi_nodes(ptr noundef %0) #23
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %4) #23
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !387
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %73, !prof !940

7:                                                ; preds = %1, %65
  %8 = phi i8 [ 1, %65 ], [ 0, %1 ]
  br label %9

9:                                                ; preds = %7, %70
  %10 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !633
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !633
  %12 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  %13 = call fastcc ptr @gimple_phi_result(ptr noundef %12) #23
  %14 = call zeroext i8 @is_gimple_reg(ptr noundef %13) #22
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %50, !prof !941

16:                                               ; preds = %9
  %17 = call fastcc zeroext i8 @degenerate_phi_p(ptr noundef %12) #23, !range !387
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %49, label %19, !prof !942

19:                                               ; preds = %16
  %20 = call fastcc ptr @gimple_phi_result(ptr noundef %12) #23
  %21 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %12, i64 noundef 0) #23
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #21
  %22 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %20) #23
  %23 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #23, !range !387
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %38, !prof !850

25:                                               ; preds = %19, %34
  %26 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %3) #23
  %27 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #23, !range !387
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %34, !prof !850

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %31, %29 ], [ %26, %25 ]
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %30, ptr noundef %21) #23
  %31 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %3) #23
  %32 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #23, !range !387
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %29, label %34, !prof !943, !llvm.loop !944

34:                                               ; preds = %29, %25
  %35 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %3) #23
  %36 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #23, !range !387
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %25, label %38, !prof !943, !llvm.loop !945

38:                                               ; preds = %34, %19
  %39 = load i64, ptr %20, align 8
  %40 = and i64 %39, 4194304
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %48, label %42, !prof !946

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
  br i1 %52, label %53, label %70, !prof !947

53:                                               ; preds = %50
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56, !prof !948

56:                                               ; preds = %53
  %57 = load i32, ptr @dump_flags, align 4, !tbaa !384
  %58 = and i32 %57, 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = call i64 @fwrite(ptr nonnull @.str.21, i64 11, i64 1, ptr nonnull %54)
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !379
  call void @print_gimple_stmt(ptr noundef %62, ptr noundef %12, i32 noundef 0, i32 noundef 2) #22
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %64 = call i32 @fputc(i32 10, ptr %63)
  br label %65

65:                                               ; preds = %60, %56, %53
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 1) #22
  %66 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !510
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !510
  %68 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !387
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %7, label %73, !prof !537, !llvm.loop !949

70:                                               ; preds = %50
  call fastcc void @gsi_next(ptr noundef nonnull %2) #23
  %71 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !387
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %9, label %73, !prof !537, !llvm.loop !949

73:                                               ; preds = %65, %70, %1
  %74 = phi i8 [ 0, %1 ], [ %8, %70 ], [ 1, %65 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  ret i8 %74
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #4 !prof !685 !PGOFuncName !950 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !951

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !952
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @forward_edge_to_pdom(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !460 !PGOFuncName !953 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !379
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !384
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !549
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !550
  %16 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !551
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !550
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !550
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.22, i32 noundef %15, i32 noundef %19, i32 noundef %21) #23
  br label %23

23:                                               ; preds = %12, %8, %2
  %24 = tail call ptr @redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) #22
  store ptr %24, ptr %4, align 8, !tbaa !379
  store i1 true, ptr @cfg_altered, align 1
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %76

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @phi_nodes(ptr noundef %1) #23
  %28 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %27) #23, !range !387
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @ei_start_1(ptr noundef %1) #23
  store i32 0, ptr %5, align 8, !tbaa.struct !545
  %32 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %31, ptr %32, align 8, !tbaa.struct !546
  %33 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %31, ptr noundef nonnull %4) #23, !range !387
  %34 = icmp ne i8 %33, 0
  %35 = load ptr, ptr %4, align 8
  %36 = icmp eq ptr %35, %0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %46

38:                                               ; preds = %30, %38
  call fastcc void @ei_next(ptr noundef nonnull %5) #23
  %39 = load i32, ptr %5, align 8
  %40 = load ptr, ptr %32, align 8
  %41 = call fastcc zeroext i8 @ei_cond(i32 %39, ptr %40, ptr noundef nonnull %4) #23, !range !387
  %42 = icmp ne i8 %41, 0
  %43 = load ptr, ptr %4, align 8
  %44 = icmp eq ptr %43, %0
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %38, label %46, !llvm.loop !954

46:                                               ; preds = %38, %30
  %47 = phi ptr [ %35, %30 ], [ %43, %38 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #22
  %48 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #23, !range !387
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 6
  br label %52

52:                                               ; preds = %50, %73
  %53 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #23
  %54 = call fastcc ptr @gimple_phi_result(ptr noundef %53) #23
  %55 = call zeroext i8 @is_gimple_reg(ptr noundef %54) #22
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  call void @mark_virtual_phi_result_for_renaming(ptr noundef %53) #23
  call void @remove_phi_node(ptr noundef nonnull %3, i8 noundef zeroext 1) #22
  br label %73, !llvm.loop !955

58:                                               ; preds = %52
  %59 = call fastcc i32 @gimple_plf(ptr noundef %53) #23
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call fastcc void @gsi_next(ptr noundef nonnull %3) #23
  br label %73, !llvm.loop !955

62:                                               ; preds = %58
  %63 = load i32, ptr %51, align 4, !tbaa !956
  %64 = zext i32 %63 to i64
  %65 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %53, i64 noundef %64) #23
  %66 = load i32, ptr %51, align 4, !tbaa !956
  %67 = zext i32 %66 to i64
  %68 = call fastcc i32 @gimple_phi_arg_location(ptr noundef %53, i64 noundef %67) #23
  call void @add_phi_arg(ptr noundef %53, ptr noundef %65, ptr noundef %0, i32 noundef %68) #22
  %69 = call fastcc zeroext i8 @degenerate_phi_p(ptr noundef %53) #23, !range !387
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 973, ptr noundef nonnull @.str.6) #22
  br label %72

72:                                               ; preds = %62, %71
  call fastcc void @gsi_next(ptr noundef nonnull %3) #23
  br label %73

73:                                               ; preds = %72, %61, %57
  %74 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #23, !range !387
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %52, label %76

76:                                               ; preds = %73, %46, %26, %23
  %77 = phi ptr [ %24, %23 ], [ %0, %26 ], [ %0, %46 ], [ %0, %73 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  ret ptr %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !783 !PGOFuncName !957 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #23, !range !387
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !958

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
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #4 !prof !460 !PGOFuncName !959 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !738
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !938 !PGOFuncName !960 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !615
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !961

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 510, ptr noundef nonnull @.str.6) #22
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !386
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !962

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !963
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !460 !PGOFuncName !964 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #23
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !965
  ret i32 %6
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0) unnamed_addr #0 !prof !934 !PGOFuncName !967 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !387
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !968

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !968

7:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1665, ptr noundef nonnull @.str.6) #22
  br label %8

8:                                                ; preds = %4, %7
  %9 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #23
  store ptr null, ptr %9, align 8, !tbaa !379
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !938 !PGOFuncName !969 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #23
  store ptr %3, ptr %0, align 8, !tbaa !673
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !687
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !970

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !677
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !971

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #23
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !688
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free() unnamed_addr #17 !prof !420 !PGOFuncName !972 {
  %1 = load ptr, ptr @worklist, align 8, !tbaa !379
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !601

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #23
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @worklist, align 8, !tbaa !379
  ret void
}

; Function Attrs: optsize
declare void @free_numbers_of_iterations_estimates() local_unnamed_addr #3

; Function Attrs: optsize
declare void @scev_reset() local_unnamed_addr #3

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
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!377}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376}
!35 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @gimple_phi_result, i64 8927}
!36 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @first_imm_use_stmt, i64 8927}
!37 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @end_imm_use_stmt_p, i64 17854}
!38 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @first_imm_use_on_stmt, i64 8927}
!39 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @end_imm_use_on_stmt_p, i64 17854}
!40 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @set_ssa_use_from_ptr, i64 8927}
!41 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @next_imm_use_on_stmt, i64 8927}
!42 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @update_stmt, i64 8927}
!43 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @next_imm_use_stmt, i64 8927}
!44 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @mark_sym_for_renaming, i64 8926}
!45 = !{ptr @first_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 18164}
!46 = !{ptr @first_imm_use_stmt, ptr @link_use_stmts_after, i64 17864}
!47 = !{ptr @set_ssa_use_from_ptr, ptr @delink_imm_use, i64 8938}
!48 = !{ptr @set_ssa_use_from_ptr, ptr @link_imm_use, i64 8938}
!49 = !{ptr @next_imm_use_on_stmt, ptr @end_imm_use_on_stmt_p, i64 8938}
!50 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 9001}
!51 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 75}
!52 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 75}
!53 = !{ptr @next_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 8938}
!54 = !{ptr @next_imm_use_stmt, ptr @delink_imm_use, i64 8936}
!55 = !{ptr @next_imm_use_stmt, ptr @link_use_stmts_after, i64 1}
!56 = !{ptr @tree_ssa_dce, ptr @perform_tree_ssa_dce, i64 76}
!57 = !{ptr @tree_ssa_dce_loop, ptr @perform_tree_ssa_dce, i64 76}
!58 = !{ptr @tree_ssa_dce_loop, ptr @free_numbers_of_iterations_estimates, i64 6}
!59 = !{ptr @tree_ssa_dce_loop, ptr @scev_reset, i64 6}
!60 = !{ptr @tree_ssa_cd_dce, ptr @perform_tree_ssa_dce, i64 78}
!61 = !{ptr @link_use_stmts_after, ptr @get_use_from_ptr, i64 63747}
!62 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 17865}
!63 = !{ptr @link_use_stmts_after, ptr @gimple_code, i64 17865}
!64 = !{ptr @link_use_stmts_after, ptr @op_iter_init_phiuse, i64 17864}
!65 = !{ptr @link_use_stmts_after, ptr @op_iter_done, i64 63747}
!66 = !{ptr @link_use_stmts_after, ptr @move_use_after_head, i64 17867}
!67 = !{ptr @link_use_stmts_after, ptr @op_iter_next_use, i64 45882}
!68 = !{ptr @link_use_stmts_after, ptr @op_iter_init_use, i64 1}
!69 = !{ptr @link_use_stmts_after, ptr @delink_imm_use, i64 1}
!70 = !{ptr @link_use_stmts_after, ptr @link_imm_use_to_list, i64 17865}
!71 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 17865}
!72 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 17865}
!73 = !{ptr @op_iter_init_phiuse, ptr @fancy_abort, i64 1}
!74 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 17865}
!75 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 17864}
!76 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 17864}
!77 = !{ptr @move_use_after_head, ptr @delink_imm_use, i64 1}
!78 = !{ptr @move_use_after_head, ptr @link_imm_use_to_list, i64 1}
!79 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 45878}
!80 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 449370}
!81 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!82 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 1}
!83 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1}
!84 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 2033159}
!85 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 2033152}
!86 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 2033160}
!87 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 4963080}
!88 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 5078952}
!89 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 6632133}
!90 = !{ptr @link_imm_use, ptr @link_imm_use_to_list, i64 12}
!91 = !{ptr @perform_tree_ssa_dce, ptr @loop_optimizer_init, i64 78}
!92 = !{ptr @perform_tree_ssa_dce, ptr @tree_dce_init, i64 230}
!93 = !{ptr @perform_tree_ssa_dce, ptr @timevar_push_1, i64 1}
!94 = !{ptr @perform_tree_ssa_dce, ptr @calculate_dominance_info, i64 78}
!95 = !{ptr @perform_tree_ssa_dce, ptr @create_edge_list, i64 78}
!96 = !{ptr @perform_tree_ssa_dce, ptr @find_all_control_dependences, i64 78}
!97 = !{ptr @perform_tree_ssa_dce, ptr @timevar_pop_1, i64 1}
!98 = !{ptr @perform_tree_ssa_dce, ptr @find_obviously_necessary_stmts, i64 230}
!99 = !{ptr @perform_tree_ssa_dce, ptr @sbitmap_alloc, i64 78}
!100 = !{ptr @perform_tree_ssa_dce, ptr @sbitmap_zero, i64 78}
!101 = !{ptr @perform_tree_ssa_dce, ptr @mark_dfs_back_edges, i64 78}
!102 = !{ptr @perform_tree_ssa_dce, ptr @loop_optimizer_finalize, i64 78}
!103 = !{ptr @perform_tree_ssa_dce, ptr @bitmap_obstack_alloc_stat, i64 230}
!104 = !{ptr @perform_tree_ssa_dce, ptr @propagate_necessity, i64 230}
!105 = !{ptr @perform_tree_ssa_dce, ptr @bitmap_obstack_free, i64 230}
!106 = !{ptr @perform_tree_ssa_dce, ptr @eliminate_unnecessary_stmts, i64 230}
!107 = !{ptr @perform_tree_ssa_dce, ptr @free_dominance_info, i64 238}
!108 = !{ptr @perform_tree_ssa_dce, ptr @statistics_counter_event, i64 460}
!109 = !{ptr @perform_tree_ssa_dce, ptr @print_stats, i64 1}
!110 = !{ptr @perform_tree_ssa_dce, ptr @tree_dce_done, i64 230}
!111 = !{ptr @perform_tree_ssa_dce, ptr @free_edge_list, i64 230}
!112 = !{ptr @tree_dce_init, ptr @xmalloc, i64 78}
!113 = !{ptr @tree_dce_init, ptr @bitmap_obstack_alloc_stat, i64 304445}
!114 = !{ptr @tree_dce_init, ptr @sbitmap_alloc, i64 386}
!115 = !{ptr @tree_dce_init, ptr @sbitmap_zero, i64 386}
!116 = !{ptr @tree_dce_init, ptr @VEC_tree_base_length, i64 230}
!117 = !{ptr @tree_dce_init, ptr @VEC_gimple_heap_alloc, i64 230}
!118 = !{ptr @find_all_control_dependences, ptr @find_control_dependence, i64 588958}
!119 = !{ptr @find_obviously_necessary_stmts, ptr @gsi_start_phis, i64 931335}
!120 = !{ptr @find_obviously_necessary_stmts, ptr @gsi_end_p, i64 4238487}
!121 = !{ptr @find_obviously_necessary_stmts, ptr @gsi_stmt, i64 2375817}
!122 = !{ptr @find_obviously_necessary_stmts, ptr @gimple_set_plf, i64 2375817}
!123 = !{ptr @find_obviously_necessary_stmts, ptr @gsi_next, i64 2375817}
!124 = !{ptr @find_obviously_necessary_stmts, ptr @gsi_start_bb, i64 931335}
!125 = !{ptr @find_obviously_necessary_stmts, ptr @mark_stmt_if_obviously_necessary, i64 2092441}
!126 = !{ptr @find_obviously_necessary_stmts, ptr @scev_initialize, i64 78}
!127 = !{ptr @find_obviously_necessary_stmts, ptr @mark_irreducible_loops, i64 78}
!128 = !{ptr @find_obviously_necessary_stmts, ptr @ei_start_1, i64 19}
!129 = !{ptr @find_obviously_necessary_stmts, ptr @ei_cond, i64 409}
!130 = !{ptr @find_obviously_necessary_stmts, ptr @fprintf, i64 122}
!131 = !{ptr @find_obviously_necessary_stmts, ptr @mark_control_dependent_edges_necessary, i64 195}
!132 = !{ptr @find_obviously_necessary_stmts, ptr @ei_next, i64 390}
!133 = !{ptr @find_obviously_necessary_stmts, ptr @fel_init, i64 78}
!134 = !{ptr @find_obviously_necessary_stmts, ptr @finite_loop_p, i64 1}
!135 = !{ptr @find_obviously_necessary_stmts, ptr @fel_next, i64 1}
!136 = !{ptr @find_obviously_necessary_stmts, ptr @scev_finalize, i64 78}
!137 = !{ptr @propagate_necessity, ptr @VEC_gimple_base_length, i64 2035714}
!138 = !{ptr @propagate_necessity, ptr @VEC_gimple_base_pop, i64 2035484}
!139 = !{ptr @propagate_necessity, ptr @gimple_bb, i64 686483}
!140 = !{ptr @propagate_necessity, ptr @SET_BIT, i64 291175}
!141 = !{ptr @propagate_necessity, ptr @mark_control_dependent_edges_necessary, i64 291175}
!142 = !{ptr @propagate_necessity, ptr @gimple_code, i64 2035485}
!143 = !{ptr @propagate_necessity, ptr @gimple_phi_result, i64 11129}
!144 = !{ptr @propagate_necessity, ptr @is_gimple_reg, i64 11129}
!145 = !{ptr @propagate_necessity, ptr @gimple_phi_num_args, i64 547444}
!146 = !{ptr @propagate_necessity, ptr @gimple_phi_arg_imm_use_ptr, i64 401709}
!147 = !{ptr @propagate_necessity, ptr @get_use_from_ptr, i64 401709}
!148 = !{ptr @propagate_necessity, ptr @mark_operand_necessary, i64 1633469}
!149 = !{ptr @propagate_necessity, ptr @degenerate_phi_p, i64 2434}
!150 = !{ptr @propagate_necessity, ptr @gimple_phi_arg_edge, i64 132174}
!151 = !{ptr @propagate_necessity, ptr @op_iter_init_tree, i64 2024356}
!152 = !{ptr @propagate_necessity, ptr @op_iter_done, i64 3631314}
!153 = !{ptr @propagate_necessity, ptr @op_iter_next_tree, i64 1606958}
!154 = !{ptr @propagate_necessity, ptr @gimple_vuse, i64 2024356}
!155 = !{ptr @propagate_necessity, ptr @mark_all_reaching_defs_necessary, i64 892879}
!156 = !{ptr @propagate_necessity, ptr @is_gimple_call, i64 893082}
!157 = !{ptr @propagate_necessity, ptr @gimple_call_fndecl, i64 412806}
!158 = !{ptr @propagate_necessity, ptr @gimple_call_num_args, i64 901461}
!159 = !{ptr @propagate_necessity, ptr @gimple_call_arg, i64 488655}
!160 = !{ptr @propagate_necessity, ptr @is_gimple_min_invariant, i64 555865}
!161 = !{ptr @propagate_necessity, ptr @ref_may_be_aliased, i64 480075}
!162 = !{ptr @propagate_necessity, ptr @gimple_assign_single_p, i64 480276}
!163 = !{ptr @propagate_necessity, ptr @gimple_assign_rhs1, i64 480275}
!164 = !{ptr @propagate_necessity, ptr @mark_aliased_reaching_defs_necessary, i64 1}
!165 = !{ptr @propagate_necessity, ptr @gimple_asm_input_op, i64 7}
!166 = !{ptr @propagate_necessity, ptr @gimple_asm_ninputs, i64 7}
!167 = !{ptr @eliminate_unnecessary_stmts, ptr @clear_special_calls, i64 230}
!168 = !{ptr @eliminate_unnecessary_stmts, ptr @dom_info_available_p, i64 230}
!169 = !{ptr @eliminate_unnecessary_stmts, ptr @fancy_abort, i64 1}
!170 = !{ptr @eliminate_unnecessary_stmts, ptr @single_succ, i64 230}
!171 = !{ptr @eliminate_unnecessary_stmts, ptr @get_all_dominated_blocks, i64 231}
!172 = !{ptr @eliminate_unnecessary_stmts, ptr @VEC_basic_block_base_length, i64 931578}
!173 = !{ptr @eliminate_unnecessary_stmts, ptr @VEC_basic_block_base_pop, i64 931347}
!174 = !{ptr @eliminate_unnecessary_stmts, ptr @gsi_last_bb, i64 931335}
!175 = !{ptr @eliminate_unnecessary_stmts, ptr @gsi_end_p, i64 3050169}
!176 = !{ptr @eliminate_unnecessary_stmts, ptr @gsi_stmt, i64 2119866}
!177 = !{ptr @eliminate_unnecessary_stmts, ptr @gsi_prev, i64 2092441}
!178 = !{ptr @eliminate_unnecessary_stmts, ptr @gimple_plf, i64 2092442}
!179 = !{ptr @eliminate_unnecessary_stmts, ptr @is_gimple_debug, i64 50506}
!180 = !{ptr @eliminate_unnecessary_stmts, ptr @remove_dead_stmt, i64 50506}
!181 = !{ptr @eliminate_unnecessary_stmts, ptr @is_gimple_call, i64 2041934}
!182 = !{ptr @eliminate_unnecessary_stmts, ptr @gimple_call_fndecl, i64 412807}
!183 = !{ptr @eliminate_unnecessary_stmts, ptr @gimple_call_lhs, i64 412806}
!184 = !{ptr @eliminate_unnecessary_stmts, ptr @gimple_call_set_lhs, i64 75}
!185 = !{ptr @eliminate_unnecessary_stmts, ptr @maybe_clean_or_replace_eh_stmt, i64 75}
!186 = !{ptr @eliminate_unnecessary_stmts, ptr @update_stmt, i64 75}
!187 = !{ptr @eliminate_unnecessary_stmts, ptr @release_ssa_name, i64 75}
!188 = !{ptr @eliminate_unnecessary_stmts, ptr @notice_special_calls, i64 412806}
!189 = !{ptr @eliminate_unnecessary_stmts, ptr @VEC_basic_block_heap_free, i64 231}
!190 = !{ptr @eliminate_unnecessary_stmts, ptr @find_unreachable_blocks, i64 8}
!191 = !{ptr @eliminate_unnecessary_stmts, ptr @gsi_start_phis, i64 17231}
!192 = !{ptr @eliminate_unnecessary_stmts, ptr @gimple_phi_result, i64 18309}
!193 = !{ptr @eliminate_unnecessary_stmts, ptr @is_gimple_reg, i64 9162}
!194 = !{ptr @eliminate_unnecessary_stmts, ptr @first_imm_use_stmt, i64 9147}
!195 = !{ptr @eliminate_unnecessary_stmts, ptr @end_imm_use_stmt_p, i64 9149}
!196 = !{ptr @eliminate_unnecessary_stmts, ptr @gimple_bb, i64 9118}
!197 = !{ptr @eliminate_unnecessary_stmts, ptr @gimple_code, i64 9117}
!198 = !{ptr @eliminate_unnecessary_stmts, ptr @next_imm_use_stmt, i64 2}
!199 = !{ptr @eliminate_unnecessary_stmts, ptr @end_imm_use_stmt_traverse, i64 9116}
!200 = !{ptr @eliminate_unnecessary_stmts, ptr @mark_virtual_phi_result_for_renaming, i64 9116}
!201 = !{ptr @eliminate_unnecessary_stmts, ptr @gsi_next, i64 9162}
!202 = !{ptr @eliminate_unnecessary_stmts, ptr @first_dom_son, i64 1}
!203 = !{ptr @eliminate_unnecessary_stmts, ptr @delete_basic_block, i64 20}
!204 = !{ptr @eliminate_unnecessary_stmts, ptr @remove_dead_phis, i64 931323}
!205 = !{ptr @tree_dce_done, ptr @bitmap_obstack_free, i64 304445}
!206 = !{ptr @tree_dce_done, ptr @free, i64 1006}
!207 = !{ptr @tree_dce_done, ptr @VEC_gimple_heap_free, i64 230}
!208 = !{ptr @VEC_gimple_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 230}
!209 = !{ptr @find_control_dependence, ptr @fancy_abort, i64 1}
!210 = !{ptr @find_control_dependence, ptr @single_succ, i64 79}
!211 = !{ptr @find_control_dependence, ptr @find_pdom, i64 834664}
!212 = !{ptr @find_control_dependence, ptr @set_control_dependence_map_bit, i64 238235}
!213 = !{ptr @single_succ, ptr @single_succ_edge, i64 308}
!214 = !{ptr @find_pdom, ptr @fancy_abort, i64 1}
!215 = !{ptr @find_pdom, ptr @get_immediate_dominator, i64 1110892}
!216 = !{ptr @set_control_dependence_map_bit, ptr @fancy_abort, i64 1}
!217 = !{ptr @set_control_dependence_map_bit, ptr @bitmap_set_bit, i64 514462}
!218 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 308}
!219 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!220 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 308}
!221 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 308}
!222 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 935384}
!223 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 935384}
!224 = !{ptr @mark_stmt_if_obviously_necessary, ptr @stmt_could_throw_p, i64 1}
!225 = !{ptr @mark_stmt_if_obviously_necessary, ptr @gimple_code, i64 2101538}
!226 = !{ptr @mark_stmt_if_obviously_necessary, ptr @gimple_has_side_effects, i64 414601}
!227 = !{ptr @mark_stmt_if_obviously_necessary, ptr @gimple_call_lhs, i64 2}
!228 = !{ptr @mark_stmt_if_obviously_necessary, ptr @gimple_assign_lhs, i64 819560}
!229 = !{ptr @mark_stmt_if_obviously_necessary, ptr @gimple_debug_bind_has_value_p, i64 1}
!230 = !{ptr @mark_stmt_if_obviously_necessary, ptr @simple_goto_p, i64 1}
!231 = !{ptr @mark_stmt_if_obviously_necessary, ptr @fancy_abort, i64 2}
!232 = !{ptr @mark_stmt_if_obviously_necessary, ptr @gimple_bb, i64 849248}
!233 = !{ptr @mark_stmt_if_obviously_necessary, ptr @VEC_edge_base_length, i64 849248}
!234 = !{ptr @mark_stmt_if_obviously_necessary, ptr @mark_stmt_necessary, i64 998279}
!235 = !{ptr @mark_stmt_if_obviously_necessary, ptr @gimple_has_volatile_ops, i64 1669048}
!236 = !{ptr @mark_stmt_if_obviously_necessary, ptr @is_ctrl_altering_stmt, i64 1669047}
!237 = !{ptr @mark_stmt_if_obviously_necessary, ptr @is_hidden_global_store, i64 1669046}
!238 = !{ptr @mark_control_dependent_edges_necessary, ptr @fancy_abort, i64 1}
!239 = !{ptr @mark_control_dependent_edges_necessary, ptr @bmp_iter_set_init, i64 292518}
!240 = !{ptr @mark_control_dependent_edges_necessary, ptr @bmp_iter_set, i64 753111}
!241 = !{ptr @mark_control_dependent_edges_necessary, ptr @SET_BIT, i64 567776}
!242 = !{ptr @mark_control_dependent_edges_necessary, ptr @last_stmt, i64 283888}
!243 = !{ptr @mark_control_dependent_edges_necessary, ptr @is_ctrl_stmt, i64 283887}
!244 = !{ptr @mark_control_dependent_edges_necessary, ptr @mark_stmt_necessary, i64 283886}
!245 = !{ptr @mark_control_dependent_edges_necessary, ptr @bmp_iter_next, i64 460593}
!246 = !{ptr @ei_next, ptr @ei_container, i64 27}
!247 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 14}
!248 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!249 = !{ptr @fel_init, ptr @number_of_loops, i64 77}
!250 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 77}
!251 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 2}
!252 = !{ptr @fel_init, ptr @loop_outer, i64 77}
!253 = !{ptr @fel_init, ptr @fel_next, i64 77}
!254 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 79}
!255 = !{ptr @fel_next, ptr @get_loop, i64 1}
!256 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 78}
!257 = !{ptr @mark_stmt_necessary, ptr @fancy_abort, i64 1}
!258 = !{ptr @mark_stmt_necessary, ptr @gimple_plf, i64 1282163}
!259 = !{ptr @mark_stmt_necessary, ptr @fwrite, i64 1}
!260 = !{ptr @mark_stmt_necessary, ptr @print_gimple_stmt, i64 1}
!261 = !{ptr @mark_stmt_necessary, ptr @fputc, i64 1}
!262 = !{ptr @mark_stmt_necessary, ptr @gimple_set_plf, i64 1282162}
!263 = !{ptr @mark_stmt_necessary, ptr @VEC_gimple_heap_safe_push, i64 1264507}
!264 = !{ptr @mark_stmt_necessary, ptr @is_gimple_debug, i64 427977}
!265 = !{ptr @mark_stmt_necessary, ptr @gimple_bb, i64 427976}
!266 = !{ptr @mark_stmt_necessary, ptr @SET_BIT, i64 427976}
!267 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 414602}
!268 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 819764}
!269 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 1669053}
!270 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_heap_reserve, i64 2044336}
!271 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_base_quick_push, i64 2044336}
!272 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 478702}
!273 = !{ptr @VEC_gimple_heap_reserve, ptr @VEC_gimple_base_space, i64 2044336}
!274 = !{ptr @VEC_gimple_heap_reserve, ptr @vec_heap_p_reserve, i64 1056}
!275 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 3036717}
!276 = !{ptr @gimple_op, ptr @gimple_ops, i64 3036716}
!277 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 3036791}
!278 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!279 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 3036791}
!280 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 3036791}
!281 = !{ptr @ei_end_p, ptr @ei_container, i64 83}
!282 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 42}
!283 = !{ptr @ei_edge, ptr @ei_container, i64 55}
!284 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 28}
!285 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!286 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 78}
!287 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 77}
!288 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 78}
!289 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 1}
!290 = !{ptr @VEC_int_heap_free, ptr @free, i64 77}
!291 = !{ptr @mark_operand_necessary, ptr @fancy_abort, i64 3}
!292 = !{ptr @mark_operand_necessary, ptr @gimple_nop_p, i64 1239614}
!293 = !{ptr @mark_operand_necessary, ptr @gimple_plf, i64 1713434}
!294 = !{ptr @mark_operand_necessary, ptr @SET_BIT, i64 1852493}
!295 = !{ptr @mark_operand_necessary, ptr @fwrite, i64 2}
!296 = !{ptr @mark_operand_necessary, ptr @print_generic_expr, i64 1}
!297 = !{ptr @mark_operand_necessary, ptr @print_gimple_stmt, i64 1}
!298 = !{ptr @mark_operand_necessary, ptr @gimple_set_plf, i64 779826}
!299 = !{ptr @mark_operand_necessary, ptr @gimple_bb, i64 267373}
!300 = !{ptr @mark_operand_necessary, ptr @VEC_gimple_heap_safe_push, i64 779826}
!301 = !{ptr @degenerate_phi_p, ptr @gimple_phi_arg_def, i64 591563}
!302 = !{ptr @degenerate_phi_p, ptr @gimple_phi_num_args, i64 317363}
!303 = !{ptr @gimple_phi_arg_edge, ptr @gimple_bb, i64 132826}
!304 = !{ptr @gimple_phi_arg_edge, ptr @VEC_edge_base_index, i64 132826}
!305 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 2033160}
!306 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 2033160}
!307 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 1613946}
!308 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 1}
!309 = !{ptr @mark_all_reaching_defs_necessary, ptr @gimple_vuse, i64 896766}
!310 = !{ptr @mark_all_reaching_defs_necessary, ptr @walk_aliased_vdefs, i64 896766}
!311 = !{ptr @is_gimple_call, ptr @gimple_code, i64 2947781}
!312 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 829204}
!313 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 905384}
!314 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 490782}
!315 = !{ptr @ref_may_be_aliased, ptr @handled_component_p, i64 648482}
!316 = !{ptr @ref_may_be_aliased, ptr @may_be_aliased, i64 480783}
!317 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 482365}
!318 = !{ptr @gimple_nop_p, ptr @gimple_code, i64 1239613}
!319 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 593216}
!320 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 593216}
!321 = !{ptr @mark_all_reaching_defs_necessary_1, ptr @gimple_nop_p, i64 1}
!322 = !{ptr @mark_all_reaching_defs_necessary_1, ptr @gimple_assign_single_p, i64 404102}
!323 = !{ptr @mark_all_reaching_defs_necessary_1, ptr @gimple_assign_lhs, i64 202}
!324 = !{ptr @mark_all_reaching_defs_necessary_1, ptr @ref_may_be_aliased, i64 202}
!325 = !{ptr @mark_all_reaching_defs_necessary_1, ptr @mark_operand_necessary, i64 404027}
!326 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 829204}
!327 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 935384}
!328 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 935384}
!329 = !{ptr @remove_dead_stmt, ptr @gsi_stmt, i64 50725}
!330 = !{ptr @remove_dead_stmt, ptr @is_ctrl_stmt, i64 50725}
!331 = !{ptr @remove_dead_stmt, ptr @get_immediate_dominator, i64 15}
!332 = !{ptr @remove_dead_stmt, ptr @find_edge, i64 15}
!333 = !{ptr @remove_dead_stmt, ptr @VEC_edge_base_index, i64 1}
!334 = !{ptr @remove_dead_stmt, ptr @fancy_abort, i64 1}
!335 = !{ptr @remove_dead_stmt, ptr @ei_start_1, i64 15}
!336 = !{ptr @remove_dead_stmt, ptr @ei_safe_edge, i64 44}
!337 = !{ptr @remove_dead_stmt, ptr @remove_edge, i64 14}
!338 = !{ptr @remove_dead_stmt, ptr @ei_next, i64 14}
!339 = !{ptr @remove_dead_stmt, ptr @unlink_stmt_vdef, i64 50725}
!340 = !{ptr @remove_dead_stmt, ptr @gsi_remove, i64 50725}
!341 = !{ptr @remove_dead_stmt, ptr @release_defs, i64 50725}
!342 = !{ptr @gimple_call_set_lhs, ptr @gimple_set_op, i64 74}
!343 = !{ptr @VEC_basic_block_heap_free, ptr @free, i64 229}
!344 = !{ptr @end_imm_use_stmt_traverse, ptr @delink_imm_use, i64 8927}
!345 = !{ptr @remove_dead_phis, ptr @phi_nodes, i64 935370}
!346 = !{ptr @remove_dead_phis, ptr @gsi_start, i64 935370}
!347 = !{ptr @remove_dead_phis, ptr @gsi_end_p, i64 1344449}
!348 = !{ptr @remove_dead_phis, ptr @gsi_stmt, i64 409079}
!349 = !{ptr @remove_dead_phis, ptr @gimple_phi_result, i64 409096}
!350 = !{ptr @remove_dead_phis, ptr @is_gimple_reg, i64 409079}
!351 = !{ptr @remove_dead_phis, ptr @degenerate_phi_p, i64 392672}
!352 = !{ptr @remove_dead_phis, ptr @gimple_phi_arg_def, i64 17}
!353 = !{ptr @remove_dead_phis, ptr @first_imm_use_stmt, i64 17}
!354 = !{ptr @remove_dead_phis, ptr @end_imm_use_stmt_p, i64 34}
!355 = !{ptr @remove_dead_phis, ptr @first_imm_use_on_stmt, i64 17}
!356 = !{ptr @remove_dead_phis, ptr @end_imm_use_on_stmt_p, i64 34}
!357 = !{ptr @remove_dead_phis, ptr @set_ssa_use_from_ptr, i64 17}
!358 = !{ptr @remove_dead_phis, ptr @next_imm_use_on_stmt, i64 17}
!359 = !{ptr @remove_dead_phis, ptr @next_imm_use_stmt, i64 17}
!360 = !{ptr @remove_dead_phis, ptr @gimple_set_plf, i64 392655}
!361 = !{ptr @remove_dead_phis, ptr @gimple_plf, i64 409079}
!362 = !{ptr @remove_dead_phis, ptr @fwrite, i64 1}
!363 = !{ptr @remove_dead_phis, ptr @print_gimple_stmt, i64 1}
!364 = !{ptr @remove_dead_phis, ptr @fputc, i64 1}
!365 = !{ptr @remove_dead_phis, ptr @remove_phi_node, i64 359}
!366 = !{ptr @remove_dead_phis, ptr @gsi_next, i64 408720}
!367 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 42}
!368 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 28}
!369 = !{ptr @phi_nodes, ptr @fancy_abort, i64 1}
!370 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 74}
!371 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 73}
!372 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!373 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 74}
!374 = !{ptr @gsi_start, ptr @gimple_seq_first, i64 935370}
!375 = !{ptr @gsi_start, ptr @gimple_bb, i64 274478}
!376 = !{ptr @VEC_gimple_heap_free, ptr @free, i64 229}
!377 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!378 = !{!"function_entry_count", i64 8927}
!379 = !{!380, !380, i64 0}
!380 = !{!"any pointer", !381, i64 0}
!381 = !{!"omnipotent char", !382, i64 0}
!382 = !{!"Simple C/C++ TBAA"}
!383 = !{!"branch_weights", i32 8928, i32 1}
!384 = !{!385, !385, i64 0}
!385 = !{!"int", !381, i64 0}
!386 = !{!381, !381, i64 0}
!387 = !{i8 0, i8 2}
!388 = !{!"branch_weights", i32 8927, i32 1}
!389 = !{!"branch_weights", i32 1, i32 8927}
!390 = distinct !{!390, !391}
!391 = !{!"llvm.loop.mustprogress"}
!392 = distinct !{!392, !391}
!393 = !{!"function_entry_count", i64 341052}
!394 = !{!"tree-ssa-dce.c:gimple_phi_result"}
!395 = !{!"function_entry_count", i64 18164}
!396 = !{!"tree-ssa-dce.c:first_imm_use_stmt"}
!397 = !{!398, !380, i64 8}
!398 = !{!"immediate_use_iterator_d", !380, i64 0, !380, i64 8, !399, i64 16, !380, i64 48}
!399 = !{!"ssa_use_operand_d", !380, i64 0, !380, i64 8, !381, i64 16, !380, i64 24}
!400 = !{!399, !380, i64 8}
!401 = !{!398, !380, i64 0}
!402 = !{!"branch_weights", i32 17866, i32 300}
!403 = !{!"function_entry_count", i64 54204}
!404 = !{!"tree-ssa-dce.c:end_imm_use_stmt_p"}
!405 = !{!"function_entry_count", i64 8938}
!406 = !{!"tree-ssa-dce.c:first_imm_use_on_stmt"}
!407 = !{!398, !380, i64 48}
!408 = !{!"function_entry_count", i64 26814}
!409 = !{!"tree-ssa-dce.c:end_imm_use_on_stmt_p"}
!410 = !{!"tree-ssa-dce.c:set_ssa_use_from_ptr"}
!411 = !{!399, !380, i64 24}
!412 = !{!"tree-ssa-dce.c:next_imm_use_on_stmt"}
!413 = !{!"branch_weights", i32 1, i32 8939}
!414 = !{!"function_entry_count", i64 9001}
!415 = !{!"tree-ssa-dce.c:update_stmt"}
!416 = !{!"branch_weights", i32 8928, i32 75}
!417 = !{!"tree-ssa-dce.c:next_imm_use_stmt"}
!418 = !{!398, !380, i64 24}
!419 = !{!398, !380, i64 16}
!420 = !{!"function_entry_count", i64 230}
!421 = !{!"tree-ssa-dce.c:gate_dce"}
!422 = !{!"function_entry_count", i64 76}
!423 = !{!"tree-ssa-dce.c:tree_ssa_dce"}
!424 = !{i32 0, i32 34851}
!425 = !{!"tree-ssa-dce.c:tree_ssa_dce_loop"}
!426 = !{!"branch_weights", i32 72, i32 6}
!427 = !{!"function_entry_count", i64 78}
!428 = !{!"tree-ssa-dce.c:tree_ssa_cd_dce"}
!429 = !{!"function_entry_count", i64 17865}
!430 = !{!"tree-ssa-dce.c:link_use_stmts_after"}
!431 = !{i32 0, i32 256}
!432 = !{!"branch_weights", i32 17866, i32 1}
!433 = !{!"branch_weights", i32 17865, i32 1}
!434 = !{!"branch_weights", i32 17866, i32 28015}
!435 = !{!"branch_weights", i32 28015, i32 17865}
!436 = distinct !{!436, !391}
!437 = distinct !{!437, !391}
!438 = !{!"function_entry_count", i64 2674397}
!439 = !{!"tree-ssa-dce.c:get_use_from_ptr"}
!440 = !{!"function_entry_count", i64 32749282}
!441 = !{!"tree-ssa-dce.c:gimple_code"}
!442 = !{!"tree-ssa-dce.c:op_iter_init_phiuse"}
!443 = !{!444, !381, i64 0}
!444 = !{!"ssa_operand_iterator_d", !381, i64 0, !385, i64 4, !380, i64 8, !380, i64 16, !385, i64 24, !385, i64 28, !380, i64 32}
!445 = !{!"branch_weights", i32 1, i32 17866}
!446 = !{!444, !380, i64 32}
!447 = !{!444, !385, i64 28}
!448 = !{!444, !385, i64 4}
!449 = !{!"function_entry_count", i64 3710850}
!450 = !{!"tree-ssa-dce.c:op_iter_done"}
!451 = !{!"tree-ssa-dce.c:move_use_after_head"}
!452 = !{!"function_entry_count", i64 63744}
!453 = !{!"tree-ssa-dce.c:op_iter_next_use"}
!454 = !{!444, !380, i64 16}
!455 = !{!"branch_weights", i32 63745, i32 1}
!456 = !{!457, !380, i64 0}
!457 = !{!"use_optype_d", !380, i64 0, !399, i64 8}
!458 = !{!444, !385, i64 24}
!459 = !{!"branch_weights", i32 45880, i32 17866}
!460 = !{!"function_entry_count", i64 0}
!461 = !{!"tree-ssa-dce.c:op_iter_init_use"}
!462 = !{!"tree-ssa-dce.c:gimple_vuse_op"}
!463 = !{!457, !380, i64 32}
!464 = !{!"function_entry_count", i64 26803}
!465 = !{!"tree-ssa-dce.c:delink_imm_use"}
!466 = !{!399, !380, i64 0}
!467 = !{!"branch_weights", i32 1, i32 26804}
!468 = !{!"function_entry_count", i64 17876}
!469 = !{!"tree-ssa-dce.c:link_imm_use_to_list"}
!470 = !{!"tree-ssa-dce.c:clear_and_done_ssa_iter"}
!471 = !{!"function_entry_count", i64 885381}
!472 = !{!"tree-ssa-dce.c:gimple_phi_num_args"}
!473 = !{!"function_entry_count", i64 449370}
!474 = !{!"tree-ssa-dce.c:gimple_phi_arg_imm_use_ptr"}
!475 = !{!"function_entry_count", i64 1042586}
!476 = !{!"tree-ssa-dce.c:gimple_phi_arg"}
!477 = !{!"branch_weights", i32 1, i32 1042587}
!478 = !{!"function_entry_count", i64 2033160}
!479 = !{!"tree-ssa-dce.c:op_iter_init"}
!480 = !{!"branch_weights", i32 2033161, i32 1}
!481 = !{!444, !380, i64 8}
!482 = !{!"branch_weights", i32 0, i32 -2147483648}
!483 = !{!484, !380, i64 0}
!484 = !{!"def_optype_d", !380, i64 0, !380, i64 8}
!485 = !{!"branch_weights", i32 1, i32 2033161}
!486 = !{!"branch_weights", i32 7394, i32 2147476254}
!487 = !{!"branch_weights", i32 1136188, i32 896968}
!488 = !{!"tree-ssa-dce.c:gimple_def_ops"}
!489 = !{!"tree-ssa-dce.c:gimple_vdef"}
!490 = !{!"tree-ssa-dce.c:gimple_use_ops"}
!491 = !{!"function_entry_count", i64 4963080}
!492 = !{!"tree-ssa-dce.c:gimple_vuse"}
!493 = !{!"branch_weights", i32 1698953, i32 3264129}
!494 = !{!"function_entry_count", i64 5078952}
!495 = !{!"tree-ssa-dce.c:gimple_has_ops"}
!496 = !{!"function_entry_count", i64 6632133}
!497 = !{!"tree-ssa-dce.c:gimple_has_mem_ops"}
!498 = !{!"tree-ssa-dce.c:link_imm_use"}
!499 = !{!"branch_weights", i32 12, i32 8928}
!500 = !{!"tree-ssa-dce.c:perform_tree_ssa_dce"}
!501 = !{!"branch_weights", i32 153, i32 79}
!502 = !{!"branch_weights", i32 79, i32 1}
!503 = !{!504, !380, i64 8}
!504 = !{!"function", !380, i64 0, !380, i64 8, !380, i64 16, !380, i64 24, !380, i64 32, !380, i64 40, !380, i64 48, !380, i64 56, !380, i64 64, !380, i64 72, !380, i64 80, !380, i64 88, !380, i64 96, !385, i64 104, !385, i64 108, !385, i64 112, !385, i64 116, !385, i64 120, !385, i64 124, !380, i64 128, !385, i64 136, !385, i64 137, !385, i64 138, !385, i64 138, !385, i64 138, !385, i64 138, !385, i64 138, !385, i64 138, !385, i64 138, !385, i64 139, !385, i64 139, !385, i64 139, !385, i64 139, !385, i64 139, !385, i64 139, !385, i64 139}
!505 = !{!506, !385, i64 32}
!506 = !{!"control_flow_graph", !380, i64 0, !380, i64 8, !380, i64 16, !385, i64 24, !385, i64 28, !385, i64 32, !380, i64 40, !385, i64 48, !381, i64 52, !381, i64 60, !385, i64 68, !385, i64 72}
!507 = !{!"branch_weights", i32 8, i32 224}
!508 = !{!509, !385, i64 8}
!509 = !{!"stmt_stats", !385, i64 0, !385, i64 4, !385, i64 8, !385, i64 12}
!510 = !{!509, !385, i64 12}
!511 = !{!"branch_weights", i32 231, i32 1}
!512 = !{!"branch_weights", i32 170, i32 62}
!513 = !{!"tree-ssa-dce.c:tree_dce_init"}
!514 = !{!"branch_weights", i32 157, i32 1}
!515 = !{!"branch_weights", i32 614027, i32 157}
!516 = distinct !{!516, !391}
!517 = !{!504, !380, i64 24}
!518 = !{!519, !380, i64 16}
!519 = !{!"gimple_df", !380, i64 0, !380, i64 8, !380, i64 16, !380, i64 24, !520, i64 32, !520, i64 48, !380, i64 64, !380, i64 72, !380, i64 80, !380, i64 88, !385, i64 96, !521, i64 104}
!520 = !{!"pt_solution", !385, i64 0, !385, i64 0, !385, i64 0, !385, i64 0, !385, i64 0, !385, i64 0, !380, i64 8}
!521 = !{!"ssa_operands", !380, i64 0, !385, i64 8, !385, i64 12, !381, i64 16, !380, i64 24, !380, i64 32}
!522 = !{!"tree-ssa-dce.c:find_all_control_dependences"}
!523 = !{!524, !385, i64 4}
!524 = !{!"edge_list", !385, i64 0, !385, i64 4, !380, i64 8}
!525 = !{!"branch_weights", i32 1192861, i32 157}
!526 = distinct !{!526, !391}
!527 = !{!"tree-ssa-dce.c:find_obviously_necessary_stmts"}
!528 = !{!506, !380, i64 0}
!529 = !{!530, !380, i64 56}
!530 = !{!"basic_block_def", !380, i64 0, !380, i64 8, !380, i64 16, !380, i64 24, !381, i64 32, !380, i64 48, !380, i64 56, !381, i64 64, !531, i64 72, !385, i64 80, !385, i64 84, !385, i64 88, !385, i64 92, !385, i64 96}
!531 = !{!"long", !381, i64 0}
!532 = !{!506, !380, i64 8}
!533 = !{!"branch_weights", i32 1, i32 230}
!534 = !{!"branch_weights", i32 230, i32 935155}
!535 = distinct !{!535, !391}
!536 = !{!"branch_weights", i32 284608, i32 650777}
!537 = !{!"branch_weights", i32 0, i32 284608}
!538 = distinct !{!538, !391}
!539 = !{i64 0, i64 8, !379, i64 8, i64 8, !379, i64 16, i64 8, !379}
!540 = !{!"branch_weights", i32 935384, i32 1}
!541 = !{!"branch_weights", i32 1166156, i32 935384}
!542 = distinct !{!542, !391}
!543 = !{!"branch_weights", i32 53361, i32 463}
!544 = !{!"branch_weights", i32 385, i32 79}
!545 = !{i64 0, i64 4, !384, i64 8, i64 8, !379}
!546 = !{i64 0, i64 8, !379}
!547 = !{!548, !385, i64 48}
!548 = !{!"edge_def", !380, i64 0, !380, i64 8, !381, i64 16, !380, i64 24, !380, i64 32, !385, i64 40, !385, i64 44, !385, i64 48, !385, i64 52, !531, i64 56}
!549 = !{!548, !380, i64 0}
!550 = !{!530, !385, i64 80}
!551 = !{!548, !380, i64 8}
!552 = distinct !{!552, !391}
!553 = distinct !{!553, !391}
!554 = !{!"branch_weights", i32 78, i32 1}
!555 = !{!556, !385, i64 0}
!556 = !{!"loop", !385, i64 0, !385, i64 4, !380, i64 8, !380, i64 16, !557, i64 24, !385, i64 32, !385, i64 36, !380, i64 40, !380, i64 48, !380, i64 56, !380, i64 64, !380, i64 72, !558, i64 80, !558, i64 96, !381, i64 112, !381, i64 113, !385, i64 116, !380, i64 120, !380, i64 128, !381, i64 136, !380, i64 144}
!557 = !{!"lpt_decision", !385, i64 0, !385, i64 4}
!558 = !{!"", !531, i64 0, !531, i64 8}
!559 = !{!556, !380, i64 16}
!560 = !{!"branch_weights", i32 1, i32 0}
!561 = distinct !{!561, !391}
!562 = !{!"tree-ssa-dce.c:propagate_necessity"}
!563 = !{!"branch_weights", i32 2044337, i32 1}
!564 = !{!"branch_weights", i32 1354869, i32 689469}
!565 = !{!"branch_weights", i32 1, i32 689469}
!566 = !{!531, !531, i64 0}
!567 = !{!"branch_weights", i32 161446, i32 528024}
!568 = !{!"branch_weights", i32 11177, i32 2033161}
!569 = !{!"branch_weights", i32 1, i32 11177}
!570 = !{!"branch_weights", i32 1, i32 11176}
!571 = !{!"branch_weights", i32 26629, i32 376864}
!572 = !{!"branch_weights", i32 392316, i32 11176}
!573 = distinct !{!573, !391}
!574 = !{!"branch_weights", i32 8733, i32 2445}
!575 = !{!"branch_weights", i32 2445, i32 1}
!576 = !{!"branch_weights", i32 1, i32 2444}
!577 = !{!"branch_weights", i32 1, i32 132827}
!578 = !{!"branch_weights", i32 131075, i32 1753}
!579 = !{!"branch_weights", i32 130383, i32 2444}
!580 = distinct !{!580, !391}
!581 = !{!"branch_weights", i32 1613947, i32 419214}
!582 = !{!"branch_weights", i32 0, i32 1613947}
!583 = distinct !{!583, !391}
!584 = !{!"branch_weights", i32 1136194, i32 896968}
!585 = distinct !{!585, !391}
!586 = !{!"branch_weights", i32 1, i32 896968}
!587 = !{!"branch_weights", i32 482366, i32 414603}
!588 = !{!"branch_weights", i32 1, i32 414603}
!589 = !{!"branch_weights", i32 1, i32 414602}
!590 = !{!"branch_weights", i32 414666, i32 76118}
!591 = !{!"branch_weights", i32 1, i32 76118}
!592 = !{!"branch_weights", i32 76181, i32 414602}
!593 = distinct !{!593, !391}
!594 = !{!"branch_weights", i32 1, i32 482366}
!595 = !{!"branch_weights", i32 202, i32 482165}
!596 = !{!"branch_weights", i32 482165, i32 1}
!597 = !{!"branch_weights", i32 1, i32 482165}
!598 = distinct !{!598, !391}
!599 = !{!"branch_weights", i32 230, i32 2044107}
!600 = !{!"tree-ssa-dce.c:eliminate_unnecessary_stmts"}
!601 = !{!"branch_weights", i32 1, i32 231}
!602 = distinct !{!602, !391}
!603 = !{!509, !385, i64 0}
!604 = !{!"branch_weights", i32 50726, i32 2050815}
!605 = !{!"branch_weights", i32 50726, i32 1}
!606 = !{!"branch_weights", i32 1636213, i32 414603}
!607 = !{!"branch_weights", i32 13568, i32 401036}
!608 = !{!"branch_weights", i32 401036, i32 1}
!609 = !{!"branch_weights", i32 75, i32 400962}
!610 = !{!"branch_weights", i32 75, i32 1}
!611 = distinct !{!611, !391}
!612 = !{!530, !380, i64 48}
!613 = !{!"branch_weights", i32 1, i32 127}
!614 = !{!"branch_weights", i32 17380, i32 139157}
!615 = !{!530, !385, i64 96}
!616 = !{!"branch_weights", i32 1, i32 139157}
!617 = !{!"branch_weights", i32 9241, i32 8139}
!618 = !{!"branch_weights", i32 9227, i32 15}
!619 = !{!"branch_weights", i32 299, i32 1}
!620 = !{!"branch_weights", i32 1, i32 8928}
!621 = !{!"branch_weights", i32 8629, i32 299}
!622 = distinct !{!622, !391}
!623 = !{!"branch_weights", i32 0, i32 9241}
!624 = distinct !{!624, !391}
!625 = !{!"branch_weights", i32 15, i32 17366}
!626 = !{!"branch_weights", i32 15, i32 1}
!627 = distinct !{!627, !391}
!628 = !{!"branch_weights", i32 127, i32 2504449}
!629 = distinct !{!629, !391}
!630 = !{!"branch_weights", i32 230, i32 935141}
!631 = distinct !{!631, !391}
!632 = !{!"tree-ssa-dce.c:print_stats"}
!633 = !{!509, !385, i64 4}
!634 = !{!"tree-ssa-dce.c:tree_dce_done"}
!635 = distinct !{!635, !391}
!636 = !{!637, !380, i64 0}
!637 = !{!"simple_bitmap_def", !380, i64 0, !385, i64 8, !385, i64 12, !381, i64 16}
!638 = !{!"tree-ssa-dce.c:VEC_tree_base_length"}
!639 = !{!640, !385, i64 0}
!640 = !{!"VEC_tree_base", !385, i64 0, !385, i64 4, !381, i64 8}
!641 = !{!"tree-ssa-dce.c:VEC_gimple_heap_alloc"}
!642 = !{!"function_entry_count", i64 596508}
!643 = !{!"tree-ssa-dce.c:find_control_dependence"}
!644 = !{!524, !380, i64 8}
!645 = !{!"branch_weights", i32 1, i32 596509}
!646 = !{!"branch_weights", i32 79, i32 596431}
!647 = !{!"branch_weights", i32 82045, i32 514464}
!648 = !{!"branch_weights", i32 596509, i32 514464}
!649 = !{!"branch_weights", i32 514464, i32 1}
!650 = !{!"branch_weights", i32 514464, i32 0}
!651 = distinct !{!651, !391}
!652 = !{!"function_entry_count", i64 308}
!653 = !{!"tree-ssa-dce.c:single_succ"}
!654 = !{!"function_entry_count", i64 1110893}
!655 = !{!"tree-ssa-dce.c:find_pdom"}
!656 = !{!"branch_weights", i32 1, i32 1110894}
!657 = !{!"function_entry_count", i64 514463}
!658 = !{!"tree-ssa-dce.c:set_control_dependence_map_bit"}
!659 = !{!"branch_weights", i32 1, i32 514464}
!660 = !{!"tree-ssa-dce.c:single_succ_edge"}
!661 = !{!"branch_weights", i32 1, i32 309}
!662 = !{!530, !380, i64 8}
!663 = !{!"tree-ssa-dce.c:single_succ_p"}
!664 = !{!"function_entry_count", i64 133162}
!665 = !{!"tree-ssa-dce.c:VEC_edge_base_index"}
!666 = !{!"function_entry_count", i64 849616}
!667 = !{!"tree-ssa-dce.c:VEC_edge_base_length"}
!668 = !{!"branch_weights", i32 1, i32 849617}
!669 = !{!670, !385, i64 0}
!670 = !{!"VEC_edge_base", !385, i64 0, !385, i64 4, !381, i64 8}
!671 = !{!"function_entry_count", i64 8540433}
!672 = !{!"tree-ssa-dce.c:gsi_end_p"}
!673 = !{!674, !380, i64 0}
!674 = !{!"", !380, i64 0, !380, i64 8, !380, i64 16}
!675 = !{!"function_entry_count", i64 4850410}
!676 = !{!"tree-ssa-dce.c:gsi_stmt"}
!677 = !{!678, !380, i64 0}
!678 = !{!"gimple_seq_node_d", !380, i64 0, !380, i64 8, !380, i64 16}
!679 = !{!"function_entry_count", i64 4721318}
!680 = !{!"tree-ssa-dce.c:gimple_set_plf"}
!681 = !{!"branch_weights", i32 2386147, i32 2335173}
!682 = !{!"function_entry_count", i64 2679744}
!683 = !{!"tree-ssa-dce.c:gsi_next"}
!684 = !{!678, !380, i64 16}
!685 = !{!"function_entry_count", i64 935384}
!686 = !{!"tree-ssa-dce.c:gsi_start_bb"}
!687 = !{!674, !380, i64 8}
!688 = !{!674, !380, i64 16}
!689 = !{!"function_entry_count", i64 2101539}
!690 = !{!"tree-ssa-dce.c:mark_stmt_if_obviously_necessary"}
!691 = !{!"branch_weights", i32 2101540, i32 1}
!692 = !{!"branch_weights", i32 1, i32 1, i32 17655, i32 1, i32 1, i32 231, i32 414603, i32 819564, i32 1, i32 1, i32 849253, i32 239}
!693 = !{!"branch_weights", i32 819564, i32 1}
!694 = !{!"branch_weights", i32 849253, i32 1}
!695 = !{!"branch_weights", i32 565587, i32 283905}
!696 = !{!"branch_weights", i32 1669054, i32 1}
!697 = !{!"branch_weights", i32 1668853, i32 202}
!698 = !{!"function_entry_count", i64 14}
!699 = !{!"tree-ssa-dce.c:ei_start_1"}
!700 = !{!"tree-ssa-dce.c:ei_cond"}
!701 = !{!"function_entry_count", i64 292519}
!702 = !{!"tree-ssa-dce.c:mark_control_dependent_edges_necessary"}
!703 = !{!"branch_weights", i32 1, i32 292520}
!704 = !{!"branch_weights", i32 1, i32 292519}
!705 = !{!"branch_weights", i32 283891, i32 176706}
!706 = !{!"branch_weights", i32 1, i32 283891}
!707 = !{!"branch_weights", i32 292519, i32 168077}
!708 = distinct !{!708, !391}
!709 = !{!"tree-ssa-dce.c:ei_next"}
!710 = !{!"branch_weights", i32 1, i32 15}
!711 = !{!712, !385, i64 0}
!712 = !{!"", !385, i64 0, !380, i64 8}
!713 = !{!"tree-ssa-dce.c:fel_init"}
!714 = !{!715, !385, i64 8}
!715 = !{!"", !380, i64 0, !385, i64 8}
!716 = !{!504, !380, i64 32}
!717 = !{!"branch_weights", i32 1, i32 79}
!718 = !{!715, !380, i64 0}
!719 = !{!720, !380, i64 24}
!720 = !{!"loops", !385, i64 0, !380, i64 8, !380, i64 16, !380, i64 24}
!721 = !{!556, !380, i64 48}
!722 = !{!556, !380, i64 56}
!723 = !{!"branch_weights", i32 79, i32 79}
!724 = !{!"branch_weights", i32 79, i32 0}
!725 = distinct !{!725, !391}
!726 = !{!"tree-ssa-dce.c:fel_next"}
!727 = !{i32 0, i32 2}
!728 = distinct !{!728, !391}
!729 = !{!"function_entry_count", i64 1870768}
!730 = !{!"tree-ssa-dce.c:bb_seq"}
!731 = !{!"branch_weights", i32 1870769, i32 1}
!732 = !{!"branch_weights", i32 1, i32 1870769}
!733 = !{!734, !380, i64 0}
!734 = !{!"gimple_bb_info", !380, i64 0, !380, i64 8}
!735 = !{!"function_entry_count", i64 1870754}
!736 = !{!"tree-ssa-dce.c:gimple_seq_first"}
!737 = !{!"branch_weights", i32 589450, i32 1281306}
!738 = !{!739, !380, i64 0}
!739 = !{!"gimple_seq_d", !380, i64 0, !380, i64 8, !380, i64 16}
!740 = !{!"function_entry_count", i64 1282163}
!741 = !{!"tree-ssa-dce.c:mark_stmt_necessary"}
!742 = !{!"branch_weights", i32 1, i32 1282164}
!743 = !{!"branch_weights", i32 1282164, i32 1}
!744 = !{!"branch_weights", i32 17655, i32 1264510}
!745 = !{!"branch_weights", i32 854187, i32 427978}
!746 = !{!"branch_weights", i32 427978, i32 1}
!747 = !{!"function_entry_count", i64 414602}
!748 = !{!"tree-ssa-dce.c:gimple_call_lhs"}
!749 = !{!"function_entry_count", i64 819764}
!750 = !{!"tree-ssa-dce.c:gimple_assign_lhs"}
!751 = !{!"tree-ssa-dce.c:gimple_debug_bind_has_value_p"}
!752 = !{!"tree-ssa-dce.c:gimple_debug_bind_get_var"}
!753 = !{!"function_entry_count", i64 3632380}
!754 = !{!"tree-ssa-dce.c:gimple_bb"}
!755 = !{!"function_entry_count", i64 1669053}
!756 = !{!"tree-ssa-dce.c:gimple_has_volatile_ops"}
!757 = !{!"branch_weights", i32 849491, i32 819564}
!758 = !{!"function_entry_count", i64 5381743}
!759 = !{!"tree-ssa-dce.c:gimple_plf"}
!760 = !{!"function_entry_count", i64 2044336}
!761 = !{!"tree-ssa-dce.c:VEC_gimple_heap_safe_push"}
!762 = !{!"function_entry_count", i64 478702}
!763 = !{!"tree-ssa-dce.c:is_gimple_debug"}
!764 = !{!"function_entry_count", i64 3140770}
!765 = !{!"tree-ssa-dce.c:SET_BIT"}
!766 = !{!"branch_weights", i32 3140771, i32 1}
!767 = !{!"tree-ssa-dce.c:VEC_gimple_heap_reserve"}
!768 = !{!"branch_weights", i32 1056, i32 2043282}
!769 = !{!"tree-ssa-dce.c:VEC_gimple_base_quick_push"}
!770 = !{!771, !385, i64 0}
!771 = !{!"VEC_gimple_base", !385, i64 0, !385, i64 4, !381, i64 8}
!772 = !{!"tree-ssa-dce.c:VEC_gimple_base_space"}
!773 = !{!"branch_weights", i32 1, i32 2044337}
!774 = !{!771, !385, i64 4}
!775 = !{!"function_entry_count", i64 3036717}
!776 = !{!"tree-ssa-dce.c:gimple_op"}
!777 = !{!"branch_weights", i32 1, i32 3036718}
!778 = !{!"function_entry_count", i64 3036791}
!779 = !{!"tree-ssa-dce.c:gimple_ops"}
!780 = !{!"branch_weights", i32 1, i32 3036792}
!781 = !{!"tree-ssa-dce.c:gimple_statement_structure"}
!782 = !{!"tree-ssa-dce.c:gss_for_code"}
!783 = !{!"function_entry_count", i64 42}
!784 = !{!"tree-ssa-dce.c:ei_end_p"}
!785 = !{!"branch_weights", i32 1, i32 43}
!786 = !{!"function_entry_count", i64 28}
!787 = !{!"tree-ssa-dce.c:ei_edge"}
!788 = !{!"branch_weights", i32 1, i32 29}
!789 = !{!"function_entry_count", i64 168}
!790 = !{!"tree-ssa-dce.c:ei_container"}
!791 = !{!"branch_weights", i32 1, i32 169}
!792 = !{!"tree-ssa-dce.c:bmp_iter_set_init"}
!793 = !{!794, !380, i64 0}
!794 = !{!"bitmap_head_def", !380, i64 0, !380, i64 8, !385, i64 16, !380, i64 24}
!795 = !{!796, !380, i64 0}
!796 = !{!"", !380, i64 0, !380, i64 8, !385, i64 16, !531, i64 24}
!797 = !{!796, !380, i64 8}
!798 = !{!"branch_weights", i32 119, i32 292402}
!799 = !{!800, !385, i64 16}
!800 = !{!"bitmap_element_def", !380, i64 0, !380, i64 8, !385, i64 16, !381, i64 24}
!801 = !{!796, !385, i64 16}
!802 = !{!796, !531, i64 24}
!803 = !{!"function_entry_count", i64 753114}
!804 = !{!"tree-ssa-dce.c:bmp_iter_set"}
!805 = !{!"branch_weights", i32 446528, i32 306588}
!806 = !{!"branch_weights", i32 460595, i32 1}
!807 = !{!"branch_weights", i32 9095924, i32 460595}
!808 = distinct !{!808, !391}
!809 = !{!"branch_weights", i32 1, i32 296857}
!810 = !{!"branch_weights", i32 147188, i32 154009}
!811 = !{!"branch_weights", i32 296857, i32 4339}
!812 = distinct !{!812, !391}
!813 = !{!800, !380, i64 0}
!814 = !{!"branch_weights", i32 292520, i32 4339}
!815 = !{!"function_entry_count", i64 460595}
!816 = !{!"tree-ssa-dce.c:bmp_iter_next"}
!817 = !{!"tree-ssa-dce.c:VEC_int_heap_alloc"}
!818 = !{!"tree-ssa-dce.c:number_of_loops"}
!819 = !{!720, !380, i64 8}
!820 = !{!"tree-ssa-dce.c:VEC_int_base_quick_push"}
!821 = !{!822, !385, i64 0}
!822 = !{!"VEC_int_base", !385, i64 0, !385, i64 4, !381, i64 8}
!823 = !{!"tree-ssa-dce.c:loop_outer"}
!824 = !{!556, !380, i64 40}
!825 = !{!"function_entry_count", i64 156}
!826 = !{!"tree-ssa-dce.c:VEC_loop_p_base_length"}
!827 = !{!828, !385, i64 0}
!828 = !{!"VEC_loop_p_base", !385, i64 0, !385, i64 4, !381, i64 8}
!829 = !{!"tree-ssa-dce.c:VEC_loop_p_base_index"}
!830 = !{!"tree-ssa-dce.c:VEC_int_base_iterate"}
!831 = !{!"tree-ssa-dce.c:get_loop"}
!832 = !{!"tree-ssa-dce.c:VEC_int_heap_free"}
!833 = !{!"function_entry_count", i64 2044566}
!834 = !{!"tree-ssa-dce.c:VEC_gimple_base_length"}
!835 = !{!"branch_weights", i32 1, i32 2044567}
!836 = !{!"tree-ssa-dce.c:VEC_gimple_base_pop"}
!837 = !{!"function_entry_count", i64 2044677}
!838 = !{!"tree-ssa-dce.c:mark_operand_necessary"}
!839 = !{!"branch_weights", i32 1, i32 2044678}
!840 = !{!"branch_weights", i32 1585122, i32 459557}
!841 = !{!"branch_weights", i32 128314, i32 331244}
!842 = !{!"branch_weights", i32 1, i32 128314}
!843 = !{!"branch_weights", i32 1, i32 1585122}
!844 = !{!"branch_weights", i32 780058, i32 805065}
!845 = !{!"branch_weights", i32 779828, i32 231}
!846 = !{!"branch_weights", i32 779828, i32 1}
!847 = !{!"branch_weights", i32 512455, i32 267374}
!848 = !{!"function_entry_count", i64 275637}
!849 = !{!"tree-ssa-dce.c:degenerate_phi_p"}
!850 = !{!"branch_weights", i32 191, i32 1}
!851 = !{!"branch_weights", i32 5080913, i32 191}
!852 = distinct !{!852, !391}
!853 = !{!"branch_weights", i32 41943, i32 275627}
!854 = !{!"function_entry_count", i64 132826}
!855 = !{!"tree-ssa-dce.c:gimple_phi_arg_edge"}
!856 = !{!530, !380, i64 0}
!857 = !{!"tree-ssa-dce.c:op_iter_init_tree"}
!858 = !{!"function_entry_count", i64 3647106}
!859 = !{!"tree-ssa-dce.c:op_iter_next_tree"}
!860 = !{!"branch_weights", i32 2033161, i32 1613947}
!861 = !{!484, !380, i64 8}
!862 = !{!"function_entry_count", i64 896766}
!863 = !{!"tree-ssa-dce.c:mark_all_reaching_defs_necessary"}
!864 = !{!"function_entry_count", i64 2947781}
!865 = !{!"tree-ssa-dce.c:is_gimple_call"}
!866 = !{!"function_entry_count", i64 829204}
!867 = !{!"tree-ssa-dce.c:gimple_call_fndecl"}
!868 = !{!"branch_weights", i32 829205, i32 1}
!869 = !{!"function_entry_count", i64 905384}
!870 = !{!"tree-ssa-dce.c:gimple_call_num_args"}
!871 = !{!"function_entry_count", i64 490782}
!872 = !{!"tree-ssa-dce.c:gimple_call_arg"}
!873 = !{!"function_entry_count", i64 482365}
!874 = !{!"tree-ssa-dce.c:ref_may_be_aliased"}
!875 = !{!"branch_weights", i32 316249, i32 166117}
!876 = !{!"branch_weights", i32 166117, i32 0}
!877 = distinct !{!877, !391}
!878 = !{!"branch_weights", i32 480785, i32 1582}
!879 = !{!"tree-ssa-dce.c:mark_aliased_reaching_defs_necessary"}
!880 = !{!"tree-ssa-dce.c:gimple_assign_rhs1"}
!881 = !{!"tree-ssa-dce.c:gimple_return_retval"}
!882 = !{!"tree-ssa-dce.c:gimple_asm_ninputs"}
!883 = !{!"tree-ssa-dce.c:gimple_asm_input_op"}
!884 = !{!"function_entry_count", i64 1239613}
!885 = !{!"tree-ssa-dce.c:gimple_nop_p"}
!886 = !{!"function_entry_count", i64 593216}
!887 = !{!"tree-ssa-dce.c:gimple_phi_arg_def"}
!888 = !{!"tree-ssa-dce.c:get_def_from_ptr"}
!889 = !{!"function_entry_count", i64 404103}
!890 = !{!"tree-ssa-dce.c:mark_all_reaching_defs_necessary_1"}
!891 = !{!"branch_weights", i32 1, i32 404104}
!892 = !{!"branch_weights", i32 403903, i32 202}
!893 = !{!"tree-ssa-dce.c:gimple_call_fn"}
!894 = !{!"function_entry_count", i64 905458}
!895 = !{!"tree-ssa-dce.c:gimple_num_ops"}
!896 = !{!"function_entry_count", i64 648481}
!897 = !{!"tree-ssa-dce.c:handled_component_p"}
!898 = !{!"branch_weights", i32 482366, i32 1, i32 77760, i32 88358, i32 1, i32 1, i32 1, i32 1}
!899 = !{!"function_entry_count", i64 480784}
!900 = !{!"tree-ssa-dce.c:may_be_aliased"}
!901 = !{!"branch_weights", i32 1, i32 480785}
!902 = !{!"branch_weights", i32 7512, i32 -683175156}
!903 = !{!"branch_weights", i32 480785, i32 1}
!904 = !{!"branch_weights", i32 -2234, i32 2234}
!905 = !{!"branch_weights", i32 2147481414, i32 2234}
!906 = !{!"tree-ssa-dce.c:mark_aliased_reaching_defs_necessary_1"}
!907 = !{!908, !380, i64 8}
!908 = !{!"ao_ref_s", !380, i64 0, !380, i64 8, !531, i64 16, !531, i64 24, !531, i64 32, !385, i64 40, !385, i64 44}
!909 = !{!908, !531, i64 32}
!910 = !{!908, !531, i64 16}
!911 = !{!908, !380, i64 0}
!912 = !{!"tree-ssa-dce.c:gimple_has_lhs"}
!913 = !{!"tree-ssa-dce.c:is_gimple_assign"}
!914 = !{!"function_entry_count", i64 935614}
!915 = !{!"tree-ssa-dce.c:VEC_basic_block_base_length"}
!916 = !{!"branch_weights", i32 1, i32 935615}
!917 = !{!918, !385, i64 0}
!918 = !{!"VEC_basic_block_base", !385, i64 0, !385, i64 4, !381, i64 8}
!919 = !{!"tree-ssa-dce.c:VEC_basic_block_base_pop"}
!920 = !{!"tree-ssa-dce.c:gsi_last_bb"}
!921 = !{!"tree-ssa-dce.c:gsi_prev"}
!922 = !{!678, !380, i64 8}
!923 = !{!"function_entry_count", i64 50725}
!924 = !{!"tree-ssa-dce.c:remove_dead_stmt"}
!925 = !{!"branch_weights", i32 50712, i32 15}
!926 = !{!"branch_weights", i32 -2147483648, i32 0}
!927 = !{!548, !385, i64 52}
!928 = !{!530, !531, i64 72}
!929 = !{!548, !531, i64 56}
!930 = !{!"branch_weights", i32 1, i32 239}
!931 = !{!"branch_weights", i32 15, i32 15}
!932 = !{!"branch_weights", i32 239, i32 225}
!933 = distinct !{!933, !391}
!934 = !{!"function_entry_count", i64 74}
!935 = !{!"tree-ssa-dce.c:gimple_call_set_lhs"}
!936 = !{!"tree-ssa-dce.c:VEC_basic_block_heap_free"}
!937 = !{!"tree-ssa-dce.c:end_imm_use_stmt_traverse"}
!938 = !{!"function_entry_count", i64 935370}
!939 = !{!"tree-ssa-dce.c:remove_dead_phis"}
!940 = !{!"branch_weights", i32 284608, i32 366155}
!941 = !{!"branch_weights", i32 273194, i32 11415}
!942 = !{!"branch_weights", i32 273183, i32 12}
!943 = !{!"branch_weights", i32 1, i32 191}
!944 = distinct !{!944, !391}
!945 = distinct !{!945, !391}
!946 = !{!"branch_weights", i32 12, i32 1}
!947 = !{!"branch_weights", i32 250, i32 284359}
!948 = !{!"branch_weights", i32 250, i32 1}
!949 = distinct !{!949, !391}
!950 = !{!"tree-ssa-dce.c:gimple_seq_last"}
!951 = !{!"branch_weights", i32 1, i32 935385}
!952 = !{!739, !380, i64 8}
!953 = !{!"tree-ssa-dce.c:forward_edge_to_pdom"}
!954 = distinct !{!954, !391}
!955 = distinct !{!955, !391}
!956 = !{!548, !385, i64 44}
!957 = !{!"tree-ssa-dce.c:ei_safe_edge"}
!958 = !{!"branch_weights", i32 29, i32 15}
!959 = !{!"tree-ssa-dce.c:gimple_seq_empty_p"}
!960 = !{!"tree-ssa-dce.c:phi_nodes"}
!961 = !{!"branch_weights", i32 935371, i32 1}
!962 = !{!"branch_weights", i32 1, i32 935371}
!963 = !{!734, !380, i64 8}
!964 = !{!"tree-ssa-dce.c:gimple_phi_arg_location"}
!965 = !{!966, !385, i64 40}
!966 = !{!"phi_arg_d", !399, i64 0, !380, i64 32, !385, i64 40}
!967 = !{!"tree-ssa-dce.c:gimple_set_op"}
!968 = !{!"branch_weights", i32 1, i32 75}
!969 = !{!"tree-ssa-dce.c:gsi_start"}
!970 = !{!"branch_weights", i32 660892, i32 274480}
!971 = !{!"branch_weights", i32 1, i32 274480}
!972 = !{!"tree-ssa-dce.c:VEC_gimple_heap_free"}
