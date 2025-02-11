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
define dso_local void @mark_virtual_phi_result_for_renaming(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #21
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str, i64 30, i64 1, ptr nonnull %3)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_gimple_stmt(ptr noundef %11, ptr noundef %0, i32 noundef 0, i32 noundef 2) #22
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %13 = tail call i32 @fputc(i32 10, ptr %12)
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #23
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  %18 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %2, ptr noundef %15) #23
  %19 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #23, !range !13
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %14, %31
  %22 = phi ptr [ %32, %31 ], [ %18, %14 ]
  %23 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %2) #23
  %24 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %2) #23, !range !13
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21, %26
  %27 = phi ptr [ %28, %26 ], [ %23, %21 ]
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %27, ptr noundef %17) #23
  %28 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %2) #23
  %29 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %2) #23, !range !13
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %26, label %31, !llvm.loop !14

31:                                               ; preds = %26, %21
  call fastcc void @update_stmt(ptr noundef %22) #23
  %32 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %2) #23
  %33 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %2) #23, !range !13
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %21, label %35, !llvm.loop !16

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
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  store ptr %6, ptr %0, align 8, !tbaa !21
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #23, !range !13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #23
  %11 = load ptr, ptr %0, align 8, !tbaa !21
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !22
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  store ptr %1, ptr %4, align 8, !tbaa !6
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  store ptr %3, ptr %0, align 8, !tbaa !21
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #23, !range !13
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  store ptr %8, ptr %2, align 8, !tbaa !22
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !13
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #22
  tail call void @update_stmt_operands(ptr noundef %0) #22
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  store ptr %4, ptr %0, align 8, !tbaa !21
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #23, !range !13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #23
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #23
  %12 = load ptr, ptr %0, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !12
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
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #23
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #22
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #23, !range !26
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #23
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #23
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #23
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #23
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #23
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !llvm.loop !27

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
  br i1 %44, label %33, label %53, !llvm.loop !28

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
  %56 = load ptr, ptr %55, align 8, !tbaa !25
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #23
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #23
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #23
  store i8 0, ptr %0, align 8, !tbaa !29
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 918, ptr noundef nonnull @.str.3) #22
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #22
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !29
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !31
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #23
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !32
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !33
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #23
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i8, ptr %0, align 8, !tbaa !29
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #6 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !20
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
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !35
  store ptr %7, ptr %2, align 8, !tbaa !34
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !37
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !32
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !31
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !37
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #23
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !29
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 771, ptr noundef nonnull @.str.3) #22
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #23
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !33
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #23
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #23, !range !13
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !38
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
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !20
  store ptr %2, ptr %6, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  store ptr %1, ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !20
  store ptr %0, ptr %4, align 8, !tbaa !39
  store ptr %0, ptr %3, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !12
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #23
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !12
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.3) #22
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 747, ptr noundef nonnull @.str.3) #22
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !40
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #23
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !40
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !41
  store ptr %22, ptr %16, align 8, !tbaa !40
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !34
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #23
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !34
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #23
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !35
  store ptr %36, ptr %29, align 8, !tbaa !34
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !29
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !13
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #23, !range !13
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !13
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #23, !range !13
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !26
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !26
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !39
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
define internal zeroext i8 @gate_dce() #9 {
  %1 = load i32, ptr @flag_tree_dce, align 4, !tbaa !10
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_dce() #0 {
  %1 = tail call fastcc i32 @perform_tree_ssa_dce(i8 noundef zeroext 0) #23, !range !43
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @perform_tree_ssa_dce(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  tail call void @loop_optimizer_init(i32 noundef 15) #22
  tail call fastcc void @tree_dce_init(i8 noundef zeroext %0) #23
  %4 = load i8, ptr @timevar_enable, align 1, !tbaa !12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @timevar_push_1(i32 noundef 113) #22
  br label %7

7:                                                ; preds = %6, %3
  tail call void @calculate_dominance_info(i32 noundef 2) #22
  %8 = tail call ptr @create_edge_list() #22
  tail call fastcc void @find_all_control_dependences(ptr noundef %8) #23
  %9 = load i8, ptr @timevar_enable, align 1, !tbaa !12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  tail call void @timevar_pop_1(i32 noundef 113) #22
  br label %13

12:                                               ; preds = %1
  tail call fastcc void @tree_dce_init(i8 noundef zeroext 0) #23
  tail call fastcc void @find_obviously_necessary_stmts(ptr noundef null) #23
  br label %21

13:                                               ; preds = %11, %7
  %14 = load ptr, ptr @cfun, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !46
  %19 = tail call ptr @sbitmap_alloc(i32 noundef %18) #22
  store ptr %19, ptr @visited_control_parents, align 8, !tbaa !6
  tail call void @sbitmap_zero(ptr noundef %19) #22
  %20 = tail call zeroext i8 @mark_dfs_back_edges() #22
  tail call fastcc void @find_obviously_necessary_stmts(ptr noundef %8) #23
  tail call void @loop_optimizer_finalize() #22
  br label %21

21:                                               ; preds = %12, %13
  %22 = phi ptr [ null, %12 ], [ %8, %13 ]
  store i32 0, ptr @longest_chain, align 4, !tbaa !10
  store i32 0, ptr @total_chain, align 4, !tbaa !10
  store i32 0, ptr @nr_walks, align 4, !tbaa !10
  store i1 false, ptr @chain_ovfl, align 1
  %23 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %23, ptr @visited, align 8, !tbaa !6
  tail call fastcc void @propagate_necessity(ptr noundef %22) #23
  %24 = load ptr, ptr @visited, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %24) #22
  store ptr null, ptr @visited, align 8, !tbaa !6
  %25 = tail call fastcc zeroext i8 @eliminate_unnecessary_stmts() #23, !range !13
  %26 = load i1, ptr @cfg_altered, align 1
  tail call void @free_dominance_info(i32 noundef 2) #22
  %27 = load i1, ptr @cfg_altered, align 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  tail call void @free_dominance_info(i32 noundef 1) #22
  br label %29

29:                                               ; preds = %28, %21
  %30 = load ptr, ptr @cfun, align 8, !tbaa !6
  %31 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !48
  tail call void @statistics_counter_event(ptr noundef %30, ptr noundef nonnull @.str.6, i32 noundef %31) #22
  %32 = load ptr, ptr @cfun, align 8, !tbaa !6
  %33 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !50
  tail call void @statistics_counter_event(ptr noundef %32, ptr noundef nonnull @.str.7, i32 noundef %33) #22
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load i32, ptr @dump_flags, align 4, !tbaa !10
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
  %45 = select i1 %44, i32 0, i32 34850
  ret i32 %45
}

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_dce_init(i8 noundef zeroext %0) unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @stats, i8 0, i64 16, i1 false)
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %40, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !46
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @xmalloc(i64 noundef %10) #22
  store ptr %11, ptr @control_dependence_map, align 8, !tbaa !6
  %12 = load ptr, ptr @cfun, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !46
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %3, %18
  %19 = phi i64 [ %23, %18 ], [ 0, %3 ]
  %20 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %21 = load ptr, ptr @control_dependence_map, align 8, !tbaa !6
  %22 = getelementptr inbounds ptr, ptr %21, i64 %19
  store ptr %20, ptr %22, align 8, !tbaa !6
  %23 = add nuw nsw i64 %19, 1
  %24 = load ptr, ptr @cfun, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !46
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %23, %29
  br i1 %30, label %18, label %31, !llvm.loop !51

31:                                               ; preds = %18, %3
  %32 = phi i32 [ %16, %3 ], [ %28, %18 ]
  %33 = tail call ptr @sbitmap_alloc(i32 noundef %32) #22
  store ptr %33, ptr @last_stmt_necessary, align 8, !tbaa !6
  tail call void @sbitmap_zero(ptr noundef %33) #22
  %34 = load ptr, ptr @cfun, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !46
  %39 = tail call ptr @sbitmap_alloc(i32 noundef %38) #22
  store ptr %39, ptr @bb_contains_live_stmts, align 8, !tbaa !6
  tail call void @sbitmap_zero(ptr noundef %39) #22
  br label %40

40:                                               ; preds = %31, %1
  %41 = load ptr, ptr @cfun, align 8, !tbaa !6
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  %44 = getelementptr inbounds %struct.gimple_df, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !53
  %46 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %45) #23
  %47 = add i32 %46, 1
  %48 = tail call ptr @sbitmap_alloc(i32 noundef %47) #22
  store ptr %48, ptr @processed, align 8, !tbaa !6
  tail call void @sbitmap_zero(ptr noundef %48) #22
  %49 = tail call fastcc ptr @VEC_gimple_heap_alloc() #23
  store ptr %49, ptr @worklist, align 8, !tbaa !6
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
define internal fastcc void @find_all_control_dependences(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !57
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %7, %5 ], [ 0, %1 ]
  tail call fastcc void @find_control_dependence(ptr noundef nonnull %0, i32 noundef %6) #23
  %7 = add nuw nsw i32 %6, 1
  %8 = load i32, ptr %2, align 4, !tbaa !57
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %5, label %10, !llvm.loop !59

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
define internal fastcc void @find_obviously_necessary_stmts(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.loop_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %8 = load ptr, ptr @cfun, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %44, label %17

17:                                               ; preds = %1
  %18 = icmp ne ptr %0, null
  %19 = zext i1 %18 to i8
  br label %29

20:                                               ; preds = %40, %37
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  %23 = load ptr, ptr @cfun, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = icmp eq ptr %22, %27
  br i1 %28, label %44, label %29, !llvm.loop !65

29:                                               ; preds = %17, %20
  %30 = phi ptr [ %13, %17 ], [ %22, %20 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %30) #22
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !13
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29, %33
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  call fastcc void @gimple_set_plf(ptr noundef %34, i8 noundef zeroext 0) #23
  call fastcc void @gsi_next(ptr noundef nonnull %2) #23
  %35 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !13
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %33, label %37, !llvm.loop !66

37:                                               ; preds = %33, %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %30) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !13
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %20

40:                                               ; preds = %37, %40
  %41 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  call fastcc void @gimple_set_plf(ptr noundef %41, i8 noundef zeroext 0) #23
  call fastcc void @mark_stmt_if_obviously_necessary(ptr noundef %41, i8 noundef zeroext %19) #23
  call fastcc void @gsi_next(ptr noundef nonnull %2) #23
  %42 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !13
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %40, label %20, !llvm.loop !68

44:                                               ; preds = %20, %1
  %45 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 1048576
  %48 = icmp eq i64 %47, 0
  %49 = getelementptr inbounds %struct.tree_function_decl, ptr %45, i64 0, i32 5
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 134217728
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %48, i1 %52, i1 false
  br i1 %53, label %59, label %54

54:                                               ; preds = %44
  %55 = and i32 %50, 268435456
  %56 = icmp eq i32 %55, 0
  %57 = icmp eq ptr %0, null
  %58 = or i1 %57, %56
  br i1 %58, label %137, label %61

59:                                               ; preds = %44
  %60 = icmp eq ptr %0, null
  br i1 %60, label %137, label %61

61:                                               ; preds = %54, %59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @scev_initialize() #22
  %62 = call zeroext i8 @mark_irreducible_loops() #22
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %117, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr @cfun, align 8, !tbaa !6
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !44
  %68 = load ptr, ptr %67, align 8, !tbaa !60
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !61
  %71 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !64
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
  store i32 0, ptr %7, align 8, !tbaa.struct !69
  store ptr %79, ptr %75, align 8, !tbaa.struct !70
  %80 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %79, ptr noundef nonnull %3) #23, !range !13
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %108, label %82

82:                                               ; preds = %76, %103
  %83 = load ptr, ptr %3, align 8, !tbaa !6
  %84 = getelementptr inbounds %struct.edge_def, ptr %83, i64 0, i32 7
  %85 = load i32, ptr %84, align 8, !tbaa !71
  %86 = and i32 %85, 160
  %87 = icmp eq i32 %86, 160
  br i1 %87, label %88, label %103

88:                                               ; preds = %82
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %90 = icmp eq ptr %89, null
  br i1 %90, label %100, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %83, align 8, !tbaa !73
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 9
  %94 = load i32, ptr %93, align 8, !tbaa !74
  %95 = getelementptr inbounds %struct.edge_def, ptr %83, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !75
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 9
  %98 = load i32, ptr %97, align 8, !tbaa !74
  %99 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %89, ptr noundef nonnull @.str.10, i32 noundef %94, i32 noundef %98) #23
  br label %100

100:                                              ; preds = %91, %88
  %101 = getelementptr inbounds %struct.edge_def, ptr %83, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !75
  call fastcc void @mark_control_dependent_edges_necessary(ptr noundef %102, ptr noundef nonnull %0) #23
  br label %103

103:                                              ; preds = %82, %100
  call fastcc void @ei_next(ptr noundef nonnull %7) #23
  %104 = load i32, ptr %7, align 8
  %105 = load ptr, ptr %75, align 8
  %106 = call fastcc zeroext i8 @ei_cond(i32 %104, ptr %105, ptr noundef nonnull %3) #23, !range !13
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %82, !llvm.loop !76

108:                                              ; preds = %103, %76
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #21
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !61
  %111 = load ptr, ptr @cfun, align 8, !tbaa !6
  %112 = getelementptr inbounds %struct.function, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !44
  %114 = getelementptr inbounds %struct.control_flow_graph, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !64
  %116 = icmp eq ptr %110, %115
  br i1 %116, label %117, label %76, !llvm.loop !77

117:                                              ; preds = %108, %64, %61
  call fastcc void @fel_init(ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  %118 = load ptr, ptr %6, align 8, !tbaa !6
  %119 = icmp eq ptr %118, null
  br i1 %119, label %136, label %120

120:                                              ; preds = %117, %133
  %121 = phi ptr [ %134, %133 ], [ %118, %117 ]
  %122 = call zeroext i8 @finite_loop_p(ptr noundef nonnull %121) #22
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i32, ptr %121, align 8, !tbaa !78
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %125, ptr noundef nonnull @.str.11, i32 noundef %128) #23
  br label %130

130:                                              ; preds = %127, %124
  %131 = getelementptr inbounds %struct.loop, ptr %121, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !82
  call fastcc void @mark_control_dependent_edges_necessary(ptr noundef %132, ptr noundef nonnull %0) #23
  br label %133

133:                                              ; preds = %120, %130
  call fastcc void @fel_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  %134 = load ptr, ptr %6, align 8, !tbaa !6
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %120, !llvm.loop !83

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
define internal fastcc void @propagate_necessity(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  %3 = icmp eq ptr %0, null
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !10
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
  br i1 %15, label %239, label %16

16:                                               ; preds = %12, %235
  %17 = phi ptr [ %236, %235 ], [ %13, %12 ]
  %18 = tail call fastcc ptr @VEC_gimple_base_pop(ptr noundef %17) #23
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 12, i64 1, ptr nonnull %19)
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_gimple_stmt(ptr noundef %27, ptr noundef %18, i32 noundef 0, i32 noundef 2) #22
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %29 = tail call i32 @fputc(i32 10, ptr %28)
  br label %30

30:                                               ; preds = %25, %21, %16
  br i1 %3, label %52, label %31

31:                                               ; preds = %30
  %32 = tail call fastcc ptr @gimple_bb(ptr noundef %18) #23
  %33 = load ptr, ptr @cfun, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  %36 = load ptr, ptr %35, align 8, !tbaa !60
  %37 = icmp eq ptr %32, %36
  br i1 %37, label %52, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr @visited_control_parents, align 8, !tbaa !6
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !74
  %42 = lshr i32 %41, 6
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds %struct.simple_bitmap_def, ptr %39, i64 0, i32 3, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !84
  %46 = and i32 %41, 63
  %47 = zext nneg i32 %46 to i64
  %48 = shl nuw i64 1, %47
  %49 = and i64 %48, %45
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  tail call fastcc void @SET_BIT(ptr noundef nonnull %39, i32 noundef %41) #23
  tail call fastcc void @mark_control_dependent_edges_necessary(ptr noundef nonnull %32, ptr noundef nonnull %0) #23
  br label %52

52:                                               ; preds = %31, %38, %51, %30
  %53 = tail call fastcc i32 @gimple_code(ptr noundef %18) #23, !range !26
  %54 = icmp eq i32 %53, 16
  br i1 %54, label %55, label %115

55:                                               ; preds = %52
  %56 = tail call fastcc ptr @gimple_phi_result(ptr noundef %18) #23
  %57 = tail call zeroext i8 @is_gimple_reg(ptr noundef %56) #22
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %115, label %59

59:                                               ; preds = %55
  %60 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %18) #23
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %59, %71
  %63 = phi i64 [ %72, %71 ], [ 0, %59 ]
  %64 = trunc i64 %63 to i32
  %65 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %18, i32 noundef %64) #23
  %66 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %65) #23
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 141
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  tail call fastcc void @mark_operand_necessary(ptr noundef nonnull %66) #23
  br label %71

71:                                               ; preds = %70, %62
  %72 = add nuw nsw i64 %63, 1
  %73 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %18) #23
  %74 = zext i32 %73 to i64
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %62, label %76, !llvm.loop !85

76:                                               ; preds = %71, %59
  br i1 %3, label %235, label %77

77:                                               ; preds = %76
  %78 = tail call fastcc zeroext i8 @degenerate_phi_p(ptr noundef %18) #23, !range !13
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %235

80:                                               ; preds = %77
  %81 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %18) #23
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %235, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %85

85:                                               ; preds = %83, %109
  %86 = phi ptr [ %110, %109 ], [ %84, %83 ]
  %87 = phi i64 [ %111, %109 ], [ 0, %83 ]
  %88 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %18, i64 noundef %87) #23
  %89 = load ptr, ptr %88, align 8, !tbaa !73
  %90 = getelementptr inbounds %struct.function, ptr %86, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !44
  %92 = load ptr, ptr %91, align 8, !tbaa !60
  %93 = icmp eq ptr %89, %92
  br i1 %93, label %109, label %94

94:                                               ; preds = %85
  %95 = load ptr, ptr @visited_control_parents, align 8, !tbaa !6
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 9
  %97 = load i32, ptr %96, align 8, !tbaa !74
  %98 = lshr i32 %97, 6
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds %struct.simple_bitmap_def, ptr %95, i64 0, i32 3, i64 %99
  %101 = load i64, ptr %100, align 8, !tbaa !84
  %102 = and i32 %97, 63
  %103 = zext nneg i32 %102 to i64
  %104 = shl nuw i64 1, %103
  %105 = and i64 %104, %101
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %94
  tail call fastcc void @SET_BIT(ptr noundef nonnull %95, i32 noundef %97) #23
  tail call fastcc void @mark_control_dependent_edges_necessary(ptr noundef nonnull %89, ptr noundef nonnull %0) #23
  %108 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %109

109:                                              ; preds = %107, %94, %85
  %110 = phi ptr [ %108, %107 ], [ %86, %94 ], [ %86, %85 ]
  %111 = add nuw nsw i64 %87, 1
  %112 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %18) #23
  %113 = zext i32 %112 to i64
  %114 = icmp ult i64 %111, %113
  br i1 %114, label %85, label %235, !llvm.loop !86

115:                                              ; preds = %55, %52
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #21
  %116 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %18) #23
  %117 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #23
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115, %119
  %120 = phi ptr [ %121, %119 ], [ %116, %115 ]
  tail call fastcc void @mark_operand_necessary(ptr noundef %120) #23
  %121 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #23
  %122 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #23
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %119, label %124, !llvm.loop !87

124:                                              ; preds = %119, %115
  %125 = tail call fastcc ptr @gimple_vuse(ptr noundef %18) #23
  %126 = icmp eq ptr %125, null
  br i1 %126, label %234, label %127, !llvm.loop !88

127:                                              ; preds = %124
  %128 = load i1, ptr @chain_ovfl, align 1
  br i1 %128, label %129, label %130

129:                                              ; preds = %127
  tail call fastcc void @mark_all_reaching_defs_necessary(ptr noundef %18) #23
  br label %234, !llvm.loop !88

130:                                              ; preds = %127
  %131 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %18) #23, !range !13
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %163, label %133

133:                                              ; preds = %130
  %134 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %18) #23
  %135 = icmp eq ptr %134, null
  br i1 %135, label %143, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.tree_function_decl, ptr %134, i64 0, i32 5
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 6144
  %140 = icmp eq i32 %139, 6144
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = and i32 %138, 2047
  switch i32 %142, label %143 [
    i32 333, label %234
    i32 491, label %234
    i32 455, label %234
  ], !llvm.loop !88

143:                                              ; preds = %141, %136, %133
  tail call fastcc void @mark_all_reaching_defs_necessary(ptr noundef %18) #23
  %144 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %18) #23
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %218, label %146

146:                                              ; preds = %143, %159
  %147 = phi i32 [ %160, %159 ], [ 0, %143 ]
  %148 = tail call fastcc ptr @gimple_call_arg(ptr noundef %18, i32 noundef %147) #23
  %149 = load i64, ptr %148, align 8
  %150 = and i64 %149, 65535
  %151 = icmp eq i64 %150, 141
  br i1 %151, label %159, label %152

152:                                              ; preds = %146
  %153 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %148) #22
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = tail call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef nonnull %148) #23, !range !13
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  tail call fastcc void @mark_aliased_reaching_defs_necessary(ptr noundef %18, ptr noundef nonnull %148) #23
  br label %159

159:                                              ; preds = %155, %158, %146, %152
  %160 = add nuw i32 %147, 1
  %161 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %18) #23
  %162 = icmp ult i32 %160, %161
  br i1 %162, label %146, label %218, !llvm.loop !89

163:                                              ; preds = %130
  %164 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %18) #22
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %179, label %166

166:                                              ; preds = %163
  %167 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #23
  %168 = load i64, ptr %167, align 8
  %169 = and i64 %168, 65535
  %170 = icmp eq i64 %169, 141
  br i1 %170, label %218, label %171

171:                                              ; preds = %166
  %172 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %167) #22
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %218

174:                                              ; preds = %171
  %175 = tail call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef nonnull %167) #23, !range !13
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  tail call fastcc void @mark_aliased_reaching_defs_necessary(ptr noundef %18, ptr noundef nonnull %167) #23
  br label %218

178:                                              ; preds = %174
  tail call fastcc void @mark_all_reaching_defs_necessary(ptr noundef %18) #23
  br label %218

179:                                              ; preds = %163
  %180 = tail call fastcc i32 @gimple_code(ptr noundef %18) #23, !range !26
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
  %191 = tail call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef nonnull %183) #23, !range !13
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
  %196 = tail call fastcc i32 @gimple_asm_ninputs(ptr noundef %18) #23, !range !26
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %218, label %198

198:                                              ; preds = %195, %213
  %199 = phi i32 [ %214, %213 ], [ 0, %195 ]
  %200 = tail call fastcc ptr @gimple_asm_input_op(ptr noundef %18, i32 noundef %199) #23
  %201 = getelementptr inbounds %struct.tree_list, ptr %200, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !12
  %203 = load i64, ptr %202, align 8
  %204 = and i64 %203, 65535
  %205 = icmp eq i64 %204, 141
  br i1 %205, label %213, label %206

206:                                              ; preds = %198
  %207 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %202) #22
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = tail call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef nonnull %202) #23, !range !13
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  tail call fastcc void @mark_aliased_reaching_defs_necessary(ptr noundef %18, ptr noundef nonnull %202) #23
  br label %213

213:                                              ; preds = %212, %209, %206, %198
  %214 = add nuw nsw i32 %199, 1
  %215 = tail call fastcc i32 @gimple_asm_ninputs(ptr noundef %18) #23, !range !26
  %216 = icmp ult i32 %214, %215
  br i1 %216, label %198, label %218, !llvm.loop !90

217:                                              ; preds = %179
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 805, ptr noundef nonnull @.str.3) #22
  br label %218

218:                                              ; preds = %159, %213, %143, %195, %182, %187, %194, %193, %178, %166, %177, %171, %217
  %219 = load i32, ptr @total_chain, align 4, !tbaa !10
  %220 = icmp ugt i32 %219, 16384
  br i1 %220, label %221, label %233

221:                                              ; preds = %218
  %222 = load i32, ptr @longest_chain, align 4, !tbaa !10
  %223 = shl i32 %222, 5
  %224 = icmp ugt i32 %219, %223
  br i1 %224, label %225, label %233

225:                                              ; preds = %221
  %226 = load i32, ptr @nr_walks, align 4, !tbaa !10
  %227 = shl i32 %226, 5
  %228 = icmp ugt i32 %219, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %225
  store i1 true, ptr @chain_ovfl, align 1
  %230 = load ptr, ptr @visited, align 8, !tbaa !6
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
  br i1 %238, label %239, label %16, !llvm.loop !88

239:                                              ; preds = %235, %12
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @eliminate_unnecessary_stmts() unnamed_addr #0 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %0
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !10
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
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1090, ptr noundef nonnull @.str.3) #22
  br label %19

19:                                               ; preds = %15, %18
  %20 = load ptr, ptr @cfun, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  %24 = tail call fastcc ptr @single_succ(ptr noundef %23) #23
  %25 = tail call ptr @get_all_dominated_blocks(i32 noundef 1, ptr noundef %24) #22
  store ptr %25, ptr %3, align 8, !tbaa !6
  %26 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %25) #23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %94, label %32

28:                                               ; preds = %90, %32
  %29 = phi i8 [ %33, %32 ], [ %91, %90 ]
  %30 = call fastcc i32 @VEC_basic_block_base_length(ptr noundef %25) #23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %94, label %32, !llvm.loop !91

32:                                               ; preds = %19, %28
  %33 = phi i8 [ %29, %28 ], [ 0, %19 ]
  %34 = call fastcc ptr @VEC_basic_block_base_pop(ptr noundef %25) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %34) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %35 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !13
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %28

37:                                               ; preds = %32, %90
  %38 = phi i8 [ %91, %90 ], [ %33, %32 ]
  %39 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !67
  call fastcc void @gsi_prev(ptr noundef nonnull %2) #23
  %40 = load i32, ptr @stats, align 4, !tbaa !92
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr @stats, align 4, !tbaa !92
  %42 = call fastcc i32 @gimple_plf(ptr noundef %39) #23
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %39) #23, !range !13
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, i8 1, i8 %38
  call fastcc void @remove_dead_stmt(ptr noundef nonnull %1, ptr noundef %34) #23
  br label %90

48:                                               ; preds = %37
  %49 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %39) #23, !range !13
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %90, label %51

51:                                               ; preds = %48
  %52 = call fastcc ptr @gimple_call_fndecl(ptr noundef %39) #23
  %53 = icmp eq ptr %52, null
  br i1 %53, label %90, label %54

54:                                               ; preds = %51
  %55 = call fastcc ptr @gimple_call_lhs(ptr noundef %39) #23
  %56 = icmp eq ptr %55, null
  br i1 %56, label %88, label %57

57:                                               ; preds = %54
  %58 = load i64, ptr %55, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 141
  br i1 %60, label %61, label %88

61:                                               ; preds = %57
  %62 = load ptr, ptr @processed, align 8, !tbaa !6
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %55, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !12
  %65 = lshr i32 %64, 6
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds %struct.simple_bitmap_def, ptr %62, i64 0, i32 3, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !84
  %69 = and i32 %64, 63
  %70 = zext nneg i32 %69 to i64
  %71 = shl nuw i64 1, %70
  %72 = and i64 %71, %68
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %61
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %76 = icmp eq ptr %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = call i64 @fwrite(ptr nonnull @.str.18, i64 22, i64 1, ptr nonnull %75)
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !6
  call void @print_gimple_stmt(ptr noundef %83, ptr noundef %39, i32 noundef 0, i32 noundef 2) #22
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !6
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !67
  %92 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %37, label %28, !llvm.loop !93

94:                                               ; preds = %28, %19
  %95 = phi i8 [ 0, %19 ], [ %29, %28 ]
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %3) #23
  %96 = load i1, ptr @cfg_altered, align 1
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr @cfun, align 8, !tbaa !6
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !44
  %101 = load ptr, ptr %100, align 8, !tbaa !60
  br label %207

102:                                              ; preds = %94
  call void @find_unreachable_blocks() #22
  %103 = load ptr, ptr @cfun, align 8, !tbaa !6
  %104 = getelementptr inbounds %struct.function, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !44
  %106 = getelementptr inbounds %struct.control_flow_graph, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !64
  %108 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !94
  %110 = load ptr, ptr %105, align 8, !tbaa !60
  %111 = icmp eq ptr %109, %110
  br i1 %111, label %207, label %112

112:                                              ; preds = %102, %200
  %113 = phi ptr [ %201, %200 ], [ %109, %102 ]
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !94
  %116 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !6
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 9
  %118 = load i32, ptr %117, align 8, !tbaa !74
  %119 = lshr i32 %118, 6
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds %struct.simple_bitmap_def, ptr %116, i64 0, i32 3, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !84
  %123 = and i32 %118, 63
  %124 = zext nneg i32 %123 to i64
  %125 = shl nuw i64 1, %124
  %126 = and i64 %125, %122
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %112
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 13
  %130 = load i32, ptr %129, align 8, !tbaa !95
  %131 = and i32 %130, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %200

133:                                              ; preds = %128, %112
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %113) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  %134 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !13
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %170

136:                                              ; preds = %133, %167
  %137 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23
  %138 = call fastcc ptr @gimple_phi_result(ptr noundef %137) #23
  %139 = call zeroext i8 @is_gimple_reg(ptr noundef %138) #22
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %167

141:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #21
  %142 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23
  %143 = call fastcc ptr @gimple_phi_result(ptr noundef %142) #23
  %144 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %6, ptr noundef %143) #23
  %145 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %6) #23, !range !13
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %141, %160
  %148 = phi ptr [ %161, %160 ], [ %144, %141 ]
  %149 = call fastcc ptr @gimple_bb(ptr noundef %148) #23
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %149, i64 0, i32 13
  %151 = load i32, ptr %150, align 8, !tbaa !95
  %152 = and i32 %151, 2
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %147
  %155 = call fastcc i32 @gimple_code(ptr noundef %148) #23, !range !26
  %156 = icmp eq i32 %155, 16
  br i1 %156, label %164, label %157

157:                                              ; preds = %154
  %158 = call fastcc i32 @gimple_plf(ptr noundef %148) #23
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157, %147
  %161 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %6) #23
  %162 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %6) #23, !range !13
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %147, label %166, !llvm.loop !96

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
  %168 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !13
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %136, label %170, !llvm.loop !97

170:                                              ; preds = %167, %133
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 13
  %172 = load i32, ptr %171, align 8, !tbaa !95
  %173 = and i32 %172, 2
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %200

175:                                              ; preds = %170
  %176 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !10
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = call ptr @first_dom_son(i32 noundef 1, ptr noundef nonnull %113) #22
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %178, %175
  call void @delete_basic_block(ptr noundef nonnull %113) #22
  br label %200

182:                                              ; preds = %178
  %183 = call ptr @get_all_dominated_blocks(i32 noundef 1, ptr noundef nonnull %113) #22
  store ptr %183, ptr %3, align 8, !tbaa !6
  %184 = call fastcc i32 @VEC_basic_block_base_length(ptr noundef %183) #23
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %198, label %186

186:                                              ; preds = %182, %195
  %187 = call fastcc ptr @VEC_basic_block_base_pop(ptr noundef %183) #23
  %188 = getelementptr inbounds %struct.basic_block_def, ptr %187, i64 0, i32 5
  %189 = load ptr, ptr %188, align 8, !tbaa !94
  %190 = getelementptr inbounds %struct.basic_block_def, ptr %187, i64 0, i32 13
  %191 = load i32, ptr %190, align 8, !tbaa !95
  %192 = and i32 %191, 2
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  call void @delete_basic_block(ptr noundef nonnull %187) #22
  br label %195

195:                                              ; preds = %194, %186
  %196 = call fastcc i32 @VEC_basic_block_base_length(ptr noundef %183) #23
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %186, !llvm.loop !98

198:                                              ; preds = %195, %182
  %199 = phi ptr [ %115, %182 ], [ %189, %195 ]
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %3) #23
  br label %200

200:                                              ; preds = %128, %181, %198, %170
  %201 = phi ptr [ %115, %128 ], [ %115, %170 ], [ %199, %198 ], [ %115, %181 ]
  %202 = load ptr, ptr @cfun, align 8, !tbaa !6
  %203 = getelementptr inbounds %struct.function, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !44
  %205 = load ptr, ptr %204, align 8, !tbaa !60
  %206 = icmp eq ptr %201, %205
  br i1 %206, label %207, label %112, !llvm.loop !99

207:                                              ; preds = %200, %97, %102
  %208 = phi ptr [ %101, %97 ], [ %109, %102 ], [ %201, %200 ]
  %209 = phi ptr [ %100, %97 ], [ %105, %102 ], [ %204, %200 ]
  %210 = getelementptr inbounds %struct.basic_block_def, ptr %208, i64 0, i32 6
  %211 = load ptr, ptr %210, align 8, !tbaa !61
  %212 = getelementptr inbounds %struct.control_flow_graph, ptr %209, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !64
  %214 = icmp eq ptr %211, %213
  br i1 %214, label %228, label %215

215:                                              ; preds = %207, %215
  %216 = phi ptr [ %221, %215 ], [ %211, %207 ]
  %217 = phi i8 [ %219, %215 ], [ %95, %207 ]
  %218 = call fastcc zeroext i8 @remove_dead_phis(ptr noundef %216) #23, !range !13
  %219 = or i8 %218, %217
  %220 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 6
  %221 = load ptr, ptr %220, align 8, !tbaa !61
  %222 = load ptr, ptr @cfun, align 8, !tbaa !6
  %223 = getelementptr inbounds %struct.function, ptr %222, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !44
  %225 = getelementptr inbounds %struct.control_flow_graph, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !64
  %227 = icmp eq ptr %221, %226
  br i1 %227, label %228, label %215, !llvm.loop !100

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
define internal fastcc void @print_stats() unnamed_addr #10 {
  %1 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !48
  %2 = sitofp i32 %1 to float
  %3 = load i32, ptr @stats, align 4, !tbaa !92
  %4 = sitofp i32 %3 to float
  %5 = fdiv float %2, %4
  %6 = fmul float %5, 1.000000e+02
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %8 = fptosi float %6 to i32
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.21, i32 noundef %1, i32 noundef %3, i32 noundef %8) #23
  %10 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !101
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !50
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
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.22, i32 noundef %12, i32 noundef %10, i32 noundef %20) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_dce_done(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !46
  %9 = icmp sgt i32 %8, 0
  %10 = load ptr, ptr @control_dependence_map, align 8, !tbaa !6
  br i1 %9, label %11, label %26

11:                                               ; preds = %3, %11
  %12 = phi ptr [ %16, %11 ], [ %10, %3 ]
  %13 = phi i64 [ %18, %11 ], [ 0, %3 ]
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %15) #22
  %16 = load ptr, ptr @control_dependence_map, align 8, !tbaa !6
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  store ptr null, ptr %17, align 8, !tbaa !6
  %18 = add nuw nsw i64 %13, 1
  %19 = load ptr, ptr @cfun, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %18, %24
  br i1 %25, label %11, label %26, !llvm.loop !102

26:                                               ; preds = %11, %3
  %27 = phi ptr [ %10, %3 ], [ %16, %11 ]
  tail call void @free(ptr noundef %27) #23
  %28 = load ptr, ptr @visited_control_parents, align 8, !tbaa !6
  %29 = load ptr, ptr %28, align 8, !tbaa !103
  tail call void @free(ptr noundef %29) #23
  tail call void @free(ptr noundef %28) #23
  %30 = load ptr, ptr @last_stmt_necessary, align 8, !tbaa !6
  %31 = load ptr, ptr %30, align 8, !tbaa !103
  tail call void @free(ptr noundef %31) #23
  tail call void @free(ptr noundef %30) #23
  %32 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !6
  %33 = load ptr, ptr %32, align 8, !tbaa !103
  tail call void @free(ptr noundef %33) #23
  tail call void @free(ptr noundef %32) #23
  store ptr null, ptr @bb_contains_live_stmts, align 8, !tbaa !6
  br label %34

34:                                               ; preds = %26, %1
  %35 = load ptr, ptr @processed, align 8, !tbaa !6
  %36 = load ptr, ptr %35, align 8, !tbaa !103
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
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !105
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 64) #22
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_control_dependence(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = load ptr, ptr @cfun, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = icmp eq ptr %8, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 168, ptr noundef nonnull @.str.3) #22
  %16 = load ptr, ptr %3, align 8, !tbaa !107
  %17 = getelementptr inbounds ptr, ptr %16, i64 %5
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = load ptr, ptr @cfun, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  br label %23

23:                                               ; preds = %2, %15
  %24 = phi ptr [ %11, %2 ], [ %22, %15 ]
  %25 = phi ptr [ %8, %2 ], [ %19, %15 ]
  %26 = load ptr, ptr %24, align 8, !tbaa !60
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = tail call fastcc ptr @single_succ(ptr noundef %25) #23
  br label %32

30:                                               ; preds = %23
  %31 = tail call fastcc ptr @find_pdom(ptr noundef %25) #23
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi ptr [ %29, %28 ], [ %31, %30 ]
  %34 = load ptr, ptr %3, align 8, !tbaa !107
  %35 = getelementptr inbounds ptr, ptr %34, i64 %5
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  %37 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !75
  %39 = icmp eq ptr %38, %33
  br i1 %39, label %60, label %40

40:                                               ; preds = %32, %57
  %41 = phi ptr [ %58, %57 ], [ %38, %32 ]
  %42 = load ptr, ptr @cfun, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !64
  %47 = icmp eq ptr %41, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %40
  %49 = load ptr, ptr %3, align 8, !tbaa !107
  %50 = getelementptr inbounds ptr, ptr %49, i64 %5
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !71
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  tail call fastcc void @set_control_dependence_map_bit(ptr noundef %41, i32 noundef %1) #23
  br label %57

57:                                               ; preds = %48, %56
  %58 = tail call fastcc ptr @find_pdom(ptr noundef %41) #23
  %59 = icmp eq ptr %58, %33
  br i1 %59, label %60, label %40, !llvm.loop !108

60:                                               ; preds = %40, %57, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_pdom(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 145, ptr noundef nonnull @.str.3) #22
  %8 = load ptr, ptr @cfun, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %4, %1 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @get_immediate_dominator(i32 noundef 2, ptr noundef %0) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load ptr, ptr @cfun, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  br label %25

25:                                               ; preds = %19, %16, %11
  %26 = phi ptr [ %0, %11 ], [ %24, %19 ], [ %17, %16 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_control_dependence_map_bit(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 127, ptr noundef nonnull @.str.3) #22
  br label %13

13:                                               ; preds = %8, %12
  %14 = load ptr, ptr @control_dependence_map, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !74
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %14, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %19, i32 noundef %1) #22
  br label %21

21:                                               ; preds = %2, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #23, !range !13
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.3) #22
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !109
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #23
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #23
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !110
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
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !112
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !112
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_plf(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #13 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -2049
  %6 = select i1 %3, i32 0, i32 2048
  %7 = or disjoint i32 %5, %6
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !112
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  store ptr %4, ptr %0, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #23
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #23
  store ptr %4, ptr %0, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !117
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !118
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_stmt_if_obviously_necessary(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %0) #22
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %54

8:                                                ; preds = %5, %2
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !26
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
  ]

11:                                               ; preds = %8, %8, %8
  br label %54

12:                                               ; preds = %8
  %13 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %0) #22
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %56, label %18

18:                                               ; preds = %15
  %19 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %45

21:                                               ; preds = %8, %18
  %22 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #23
  br label %45

23:                                               ; preds = %8
  %24 = tail call fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %0) #23, !range !13
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
  %38 = load ptr, ptr %37, align 8, !tbaa !109
  %39 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %38) #23
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 343, ptr noundef nonnull @.str.3) #22
  br label %42

42:                                               ; preds = %41, %35, %8
  %43 = icmp eq i8 %1, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  tail call fastcc void @mark_stmt_necessary(ptr noundef %0, i8 noundef zeroext 1) #23
  br label %45

45:                                               ; preds = %8, %42, %44, %18, %21
  %46 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #23, !range !13
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = tail call zeroext i8 @is_ctrl_altering_stmt(ptr noundef %0) #22
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = tail call zeroext i8 @is_hidden_global_store(ptr noundef %0) #22
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #14 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #23, !range !13
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #23
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !6
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_control_dependent_edges_necessary(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %5 = load ptr, ptr @cfun, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 383, ptr noundef nonnull @.str.3) #22
  %12 = load ptr, ptr @cfun, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi ptr [ %7, %2 ], [ %14, %11 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %61, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @control_dependence_map, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !74
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %25, ptr noundef nonnull %4) #23
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !13
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %61, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.edge_list, ptr %1, i64 0, i32 2
  br label %30

30:                                               ; preds = %28, %58
  %31 = load ptr, ptr %29, align 8, !tbaa !107
  %32 = load i32, ptr %4, align 4, !tbaa !10
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  %37 = load ptr, ptr @last_stmt_necessary, align 8, !tbaa !6
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !74
  %40 = lshr i32 %39, 6
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds %struct.simple_bitmap_def, ptr %37, i64 0, i32 3, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !84
  %44 = and i32 %39, 63
  %45 = zext nneg i32 %44 to i64
  %46 = shl nuw i64 1, %45
  %47 = and i64 %46, %43
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %30
  tail call fastcc void @SET_BIT(ptr noundef nonnull %37, i32 noundef %39) #23
  %50 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !6
  %51 = load i32, ptr %38, align 8, !tbaa !74
  tail call fastcc void @SET_BIT(ptr noundef %50, i32 noundef %51) #23
  %52 = tail call ptr @last_stmt(ptr noundef nonnull %36) #22
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = tail call zeroext i8 @is_ctrl_stmt(ptr noundef nonnull %52) #22
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call fastcc void @mark_stmt_necessary(ptr noundef nonnull %52, i8 noundef zeroext 1) #23
  br label %58

58:                                               ; preds = %49, %54, %57, %30
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %59 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !13
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %30, !llvm.loop !119

61:                                               ; preds = %58, %19, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #23
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #23
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.3) #22
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !120
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !120
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !122
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !125
  store ptr null, ptr %1, align 8, !tbaa !6
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #23
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #23
  store ptr %11, ptr %0, align 8, !tbaa !125
  %12 = load ptr, ptr @cfun, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !124
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !126
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !78
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !125
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #23
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !128
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !129
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #23
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !130

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #23
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @finite_loop_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !122
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !125
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #23, !range !131
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !122
  %13 = load i32, ptr %3, align 4, !tbaa !10
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #23
  store ptr %14, ptr %1, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !132

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #23
  store ptr null, ptr %1, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare void @scev_finalize() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !95
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !133
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
  %4 = load ptr, ptr %0, align 8, !tbaa !135
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_stmt_necessary(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 209, ptr noundef nonnull @.str.3) #22
  br label %5

5:                                                ; preds = %2, %4
  %6 = tail call fastcc i32 @gimple_plf(ptr noundef %0) #23
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %5
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 21, i64 1, ptr nonnull %9)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_gimple_stmt(ptr noundef %17, ptr noundef %0, i32 noundef 0, i32 noundef 2) #22
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %19 = tail call i32 @fputc(i32 10, ptr %18)
  br label %20

20:                                               ; preds = %15, %11, %8
  tail call fastcc void @gimple_set_plf(ptr noundef %0, i8 noundef zeroext 1) #23
  %21 = icmp eq i8 %1, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef %0) #23
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #23, !range !13
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #23
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !74
  tail call fastcc void @SET_BIT(ptr noundef nonnull %24, i32 noundef %32) #23
  br label %33

33:                                               ; preds = %5, %29, %26, %23
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #23
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_debug_bind_get_var(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @simple_goto_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #23, !range !13
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4

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
define internal fastcc i32 @gimple_plf(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 11
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_gimple_heap_reserve() #23
  %2 = load ptr, ptr @worklist, align 8, !tbaa !6
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !26
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 {
  %3 = load ptr, ptr %0, align 8, !tbaa !103
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
  %15 = load i64, ptr %14, align 8, !tbaa !84
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !12
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !12
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !84
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @worklist, align 8, !tbaa !6
  %2 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %1) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #22
  store ptr %5, ptr @worklist, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 {
  %3 = load i32, ptr %0, align 8, !tbaa !137
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !137
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !139
  %6 = load i32, ptr %0, align 8, !tbaa !137
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
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !13
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #23
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !84
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #22
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !26
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #23
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #14 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !10
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #23
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #23
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 687, ptr noundef nonnull @.str.3) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = load ptr, ptr %1, align 8, !tbaa !140
  store ptr %4, ptr %0, align 8, !tbaa !142
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !144
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !142
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !145
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !147
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !84
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !148
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !148
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !10
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !149

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !10
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !10
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !147
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !142
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !147
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !84
  store i64 %35, ptr %3, align 8, !tbaa !148
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !10
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !10
  %40 = load i32, ptr %23, align 8, !tbaa !147
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !147
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !150

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !151
  store ptr %44, ptr %0, align 8, !tbaa !142
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !145
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !10
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !148
  store i32 %16, ptr %1, align 4, !tbaa !10
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
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !148
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !148
  %6 = load i32, ptr %1, align 4, !tbaa !10
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #22
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #7 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !152
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #23
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #13 {
  %3 = load i32, ptr %0, align 4, !tbaa !153
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !153
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

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
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !156
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !153
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !10
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !10
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !152
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #23
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #17 {
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

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !137
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = load i32, ptr %0, align 8, !tbaa !137
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !137
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_operand_necessary(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 237, ptr noundef nonnull @.str.3) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !12
  %7 = load ptr, ptr @processed, align 8, !tbaa !6
  %8 = lshr i32 %6, 6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !84
  %12 = and i32 %6, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = and i64 %14, %11
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  %20 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %19) #23, !range !13
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %17
  %23 = tail call fastcc i32 @gimple_plf(ptr noundef %19) #23
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 244, ptr noundef nonnull @.str.3) #22
  br label %58

26:                                               ; preds = %4
  tail call fastcc void @SET_BIT(ptr noundef nonnull %7, i32 noundef %6) #23
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 250, ptr noundef nonnull @.str.3) #22
  br label %31

31:                                               ; preds = %26, %30
  %32 = tail call fastcc i32 @gimple_plf(ptr noundef %28) #23
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  %35 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %28) #23, !range !13
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %37
  %41 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 26, i64 1, ptr nonnull %38)
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %46, ptr noundef nonnull %0, i32 noundef 0) #22
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %48 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 6, i64 1, ptr %47)
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_gimple_stmt(ptr noundef %49, ptr noundef %28, i32 noundef 0, i32 noundef 0) #22
  br label %50

50:                                               ; preds = %44, %40, %37
  tail call fastcc void @gimple_set_plf(ptr noundef %28, i8 noundef zeroext 1) #23
  %51 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = tail call fastcc ptr @gimple_bb(ptr noundef %28) #23
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !74
  tail call fastcc void @SET_BIT(ptr noundef nonnull %51, i32 noundef %56) #23
  br label %57

57:                                               ; preds = %53, %50
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef %28) #23
  br label %58

58:                                               ; preds = %31, %34, %25, %22, %17, %57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @degenerate_phi_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef 0) #23
  %3 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #23
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %10, label %14

5:                                                ; preds = %10
  %6 = add nuw nsw i64 %11, 1
  %7 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #23
  %8 = zext i32 %7 to i64
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %14, !llvm.loop !158

10:                                               ; preds = %1, %5
  %11 = phi i64 [ %6, %5 ], [ 1, %1 ]
  %12 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %11) #23
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %5, label %14

14:                                               ; preds = %10, %5, %1
  %15 = phi i8 [ 1, %1 ], [ 1, %5 ], [ 0, %10 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #7 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #23
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #23
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 1) #23
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !33
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #23
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #23
  %8 = load ptr, ptr %3, align 8, !tbaa !35
  store ptr %8, ptr %2, align 8, !tbaa !34
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !160
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #23
  %17 = load ptr, ptr %11, align 8, !tbaa !41
  store ptr %17, ptr %10, align 8, !tbaa !40
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !29
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_all_reaching_defs_necessary(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #23
  %3 = tail call i32 @walk_aliased_vdefs(ptr noundef null, ptr noundef %2, ptr noundef nonnull @mark_all_reaching_defs_necessary_1, ptr noundef null, ptr noundef nonnull @visited) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !26
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #23
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #23
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #23
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ref_may_be_aliased(ptr nocapture noundef readonly %0) unnamed_addr #19 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #23, !range !13
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  %8 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %7) #23, !range !13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %4, !llvm.loop !161

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !10
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef nonnull %11) #23, !range !13
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi i8 [ 1, %10 ], [ %18, %17 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_aliased_reaching_defs_necessary(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #21
  %4 = load i1, ptr @chain_ovfl, align 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 553, ptr noundef nonnull @.str.3) #22
  br label %6

6:                                                ; preds = %2, %5
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef %1) #22
  %7 = call fastcc ptr @gimple_vuse(ptr noundef %0) #23
  %8 = call fastcc ptr @gimple_bb(ptr noundef %0) #23
  %9 = call i32 @walk_aliased_vdefs(ptr noundef nonnull %3, ptr noundef %7, ptr noundef nonnull @mark_aliased_reaching_defs_necessary_1, ptr noundef %8, ptr noundef null) #22
  %10 = load i32, ptr @longest_chain, align 4, !tbaa !10
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store i32 %9, ptr @longest_chain, align 4, !tbaa !10
  br label %13

13:                                               ; preds = %12, %6
  %14 = load i32, ptr @total_chain, align 4, !tbaa !10
  %15 = add i32 %14, %9
  store i32 %15, ptr @total_chain, align 4, !tbaa !10
  %16 = load i32, ptr @nr_walks, align 4, !tbaa !10
  %17 = add i32 %16, 1
  store i32 %17, ptr @nr_walks, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !12
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !12
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
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !26
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #23
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #23
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @walk_aliased_vdefs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @mark_all_reaching_defs_necessary_1(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = load i1, ptr @chain_ovfl, align 1
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = load ptr, ptr @processed, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !12
  %11 = lshr i32 %10, 6
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !84
  %15 = and i32 %10, 63
  %16 = zext nneg i32 %15 to i64
  %17 = shl nuw i64 1, %16
  %18 = and i64 %17, %14
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %7
  %21 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %5) #23, !range !13
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @gimple_plf(ptr noundef %5) #23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 582, ptr noundef nonnull @.str.3) #22
  br label %35

27:                                               ; preds = %3
  %28 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %5) #22
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %5) #23
  %32 = tail call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef %31) #23, !range !13
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %7, %30, %27
  tail call fastcc void @mark_operand_necessary(ptr noundef nonnull %1) #23
  br label %35

35:                                               ; preds = %26, %23, %20, %30, %34
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !12
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @may_be_aliased(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 33
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = and i64 %2, 134217728
  %7 = icmp ne i64 %6, 0
  %8 = and i64 %2, 201326592
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33554432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %10, %5
  %16 = and i64 %2, 1048576
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !12
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  %25 = or i1 %7, %24
  %26 = xor i1 %24, true
  %27 = zext i1 %26 to i8
  br i1 %25, label %38, label %29

28:                                               ; preds = %15
  br i1 %7, label %38, label %29

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
define internal noundef zeroext i8 @mark_aliased_reaching_defs_necessary_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  tail call fastcc void @mark_operand_necessary(ptr noundef %1) #23
  %9 = tail call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %8) #23, !range !13
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
  %21 = load ptr, ptr %20, align 8, !tbaa !162
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %16
  %24 = load i64, ptr %4, align 8, !tbaa !84
  %25 = icmp ne i64 %24, -1
  %26 = load i64, ptr %6, align 8
  %27 = icmp eq i64 %24, %26
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  %31 = load i64, ptr %30, align 8, !tbaa !164
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load i64, ptr %5, align 8, !tbaa !84
  %35 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !165
  %37 = icmp sgt i64 %34, %36
  br i1 %37, label %53, label %38

38:                                               ; preds = %33
  %39 = add nsw i64 %34, %24
  %40 = add nsw i64 %36, %31
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %53, label %54

42:                                               ; preds = %29, %23
  %43 = load ptr, ptr %0, align 8, !tbaa !166
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = call fastcc ptr @gimple_bb(ptr noundef %8) #23
  %47 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %2, ptr noundef %46) #22
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %0, align 8, !tbaa !166
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
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #23, !range !13
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #23, !range !13
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
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !26
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
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !167
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_basic_block_base_pop(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = load i32, ptr %0, align 8, !tbaa !167
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !167
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #23
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #23
  store ptr %4, ptr %0, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !117
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !118
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !112
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  store ptr %4, ptr %0, align 8, !tbaa !112
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_dead_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #23
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 11, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %4, i32 noundef 0, i32 noundef 2) #22
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %15 = tail call i32 @fputc(i32 10, ptr %14)
  br label %16

16:                                               ; preds = %11, %7, %2
  %17 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !48
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !48
  %19 = tail call zeroext i8 @is_ctrl_stmt(ptr noundef %4) #22
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %77, label %21

21:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %22 = tail call ptr @get_immediate_dominator(i32 noundef 2, ptr noundef %1) #22
  %23 = tail call ptr @find_edge(ptr noundef %1, ptr noundef %22) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = icmp eq ptr %22, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr @cfun, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !64
  %33 = icmp eq ptr %22, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27, %25
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !109
  %37 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %36, i32 noundef 0) #23
  br label %43

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !109
  %41 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %40, i32 noundef 0) #23
  %42 = tail call fastcc ptr @forward_edge_to_pdom(ptr noundef %41, ptr noundef nonnull %22) #23
  br label %43

43:                                               ; preds = %34, %38
  %44 = phi ptr [ %37, %34 ], [ %42, %38 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1023, ptr noundef nonnull @.str.3) #22
  br label %47

47:                                               ; preds = %21, %43, %46
  %48 = phi ptr [ %44, %43 ], [ null, %46 ], [ %23, %21 ]
  %49 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 8
  store i32 10000, ptr %49, align 4, !tbaa !170
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 8
  %51 = load i64, ptr %50, align 8, !tbaa !171
  %52 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 9
  store i64 %51, ptr %52, align 8, !tbaa !172
  %53 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 7
  %54 = load i32, ptr %53, align 8, !tbaa !71
  %55 = and i32 %54, -3074
  %56 = or disjoint i32 %55, 1
  store i32 %56, ptr %53, align 8, !tbaa !71
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %58 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %57) #23
  store i32 0, ptr %3, align 8, !tbaa.struct !69
  %59 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %58, ptr %59, align 8, !tbaa.struct !70
  %60 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %58) #23
  %61 = icmp eq ptr %60, null
  br i1 %61, label %76, label %62

62:                                               ; preds = %47, %71
  %63 = phi ptr [ %72, %71 ], [ %58, %47 ]
  %64 = phi i32 [ %73, %71 ], [ 0, %47 ]
  %65 = phi ptr [ %74, %71 ], [ %60, %47 ]
  %66 = icmp eq ptr %48, %65
  br i1 %66, label %68, label %67

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
  br i1 %75, label %76, label %62, !llvm.loop !173

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
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0) unnamed_addr #0 {
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
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #17 {
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
declare void @find_unreachable_blocks() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @end_imm_use_stmt_traverse(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @remove_dead_phis(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  %4 = tail call fastcc ptr @phi_nodes(ptr noundef %0) #23
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %4) #23
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %73

7:                                                ; preds = %1, %65
  %8 = phi i8 [ 1, %65 ], [ 0, %1 ]
  br label %9

9:                                                ; preds = %7, %70
  %10 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !101
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !101
  %12 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  %13 = call fastcc ptr @gimple_phi_result(ptr noundef %12) #23
  %14 = call zeroext i8 @is_gimple_reg(ptr noundef %13) #22
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %9
  %17 = call fastcc zeroext i8 @degenerate_phi_p(ptr noundef %12) #23, !range !13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %49, label %19

19:                                               ; preds = %16
  %20 = call fastcc ptr @gimple_phi_result(ptr noundef %12) #23
  %21 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %12, i64 noundef 0) #23
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #21
  %22 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %20) #23
  %23 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #23, !range !13
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %19, %34
  %26 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %3) #23
  %27 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #23, !range !13
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %31, %29 ], [ %26, %25 ]
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %30, ptr noundef %21) #23
  %31 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %3) #23
  %32 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #23, !range !13
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %29, label %34, !llvm.loop !174

34:                                               ; preds = %29, %25
  %35 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %3) #23
  %36 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #23, !range !13
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %25, label %38, !llvm.loop !175

38:                                               ; preds = %34, %19
  %39 = load i64, ptr %20, align 8
  %40 = and i64 %39, 4194304
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %48, label %42

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
  br i1 %52, label %53, label %70

53:                                               ; preds = %50
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %58 = and i32 %57, 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = call i64 @fwrite(ptr nonnull @.str.19, i64 11, i64 1, ptr nonnull %54)
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !6
  call void @print_gimple_stmt(ptr noundef %62, ptr noundef %12, i32 noundef 0, i32 noundef 2) #22
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %64 = call i32 @fputc(i32 10, ptr %63)
  br label %65

65:                                               ; preds = %60, %56, %53
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 1) #22
  %66 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !50
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !50
  %68 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !13
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %7, label %73, !llvm.loop !176

70:                                               ; preds = %50
  call fastcc void @gsi_next(ptr noundef nonnull %2) #23
  %71 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !13
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %9, label %73, !llvm.loop !176

73:                                               ; preds = %65, %70, %1
  %74 = phi i8 [ 0, %1 ], [ %8, %70 ], [ 1, %65 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  ret i8 %74
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !177
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @forward_edge_to_pdom(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !73
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !74
  %16 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !74
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !74
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, i32 noundef %15, i32 noundef %19, i32 noundef %21) #23
  br label %23

23:                                               ; preds = %12, %8, %2
  %24 = tail call ptr @redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) #22
  store ptr %24, ptr %4, align 8, !tbaa !6
  store i1 true, ptr @cfg_altered, align 1
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %76

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @phi_nodes(ptr noundef %1) #23
  %28 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %27) #23, !range !13
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @ei_start_1(ptr noundef %1) #23
  store i32 0, ptr %5, align 8, !tbaa.struct !69
  %32 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %31, ptr %32, align 8, !tbaa.struct !70
  %33 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %31, ptr noundef nonnull %4) #23, !range !13
  %34 = icmp ne i8 %33, 0
  %35 = load ptr, ptr %4, align 8
  %36 = icmp eq ptr %35, %0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %46

38:                                               ; preds = %30, %38
  call fastcc void @ei_next(ptr noundef nonnull %5) #23
  %39 = load i32, ptr %5, align 8
  %40 = load ptr, ptr %32, align 8
  %41 = call fastcc zeroext i8 @ei_cond(i32 %39, ptr %40, ptr noundef nonnull %4) #23, !range !13
  %42 = icmp ne i8 %41, 0
  %43 = load ptr, ptr %4, align 8
  %44 = icmp eq ptr %43, %0
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %38, label %46, !llvm.loop !178

46:                                               ; preds = %38, %30
  %47 = phi ptr [ %35, %30 ], [ %43, %38 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #22
  %48 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #23, !range !13
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
  br label %73, !llvm.loop !179

58:                                               ; preds = %52
  %59 = call fastcc i32 @gimple_plf(ptr noundef %53) #23
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call fastcc void @gsi_next(ptr noundef nonnull %3) #23
  br label %73, !llvm.loop !179

62:                                               ; preds = %58
  %63 = load i32, ptr %51, align 4, !tbaa !180
  %64 = zext i32 %63 to i64
  %65 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %53, i64 noundef %64) #23
  %66 = load i32, ptr %51, align 4, !tbaa !180
  %67 = zext i32 %66 to i64
  %68 = call fastcc i32 @gimple_phi_arg_location(ptr noundef %53, i64 noundef %67) #23
  call void @add_phi_arg(ptr noundef %53, ptr noundef %65, ptr noundef %0, i32 noundef %68) #22
  %69 = call fastcc zeroext i8 @degenerate_phi_p(ptr noundef %53) #23, !range !13
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 973, ptr noundef nonnull @.str.3) #22
  br label %72

72:                                               ; preds = %62, %71
  call fastcc void @gsi_next(ptr noundef nonnull %3) #23
  br label %73

73:                                               ; preds = %72, %61, %57
  %74 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #23, !range !13
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
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #23, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

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
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !135
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
  %3 = load i32, ptr %2, align 8, !tbaa !95
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 510, ptr noundef nonnull @.str.3) #22
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !181
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #23
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !182
  ret i32 %6
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !13
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1665, ptr noundef nonnull @.str.3) #22
  br label %8

8:                                                ; preds = %4, %7
  %9 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #23
  store ptr null, ptr %9, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #23
  store ptr %3, ptr %0, align 8, !tbaa !112
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !117
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !114
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #23
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !118
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free() unnamed_addr #17 {
  %1 = load ptr, ptr @worklist, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #23
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @worklist, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_dce_loop() #0 {
  %1 = tail call fastcc i32 @perform_tree_ssa_dce(i8 noundef zeroext 0) #23, !range !43
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

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
define internal i32 @tree_ssa_cd_dce() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !10
  %2 = icmp sgt i32 %1, 1
  %3 = zext i1 %2 to i8
  %4 = tail call fastcc i32 @perform_tree_ssa_dce(i8 noundef zeroext %3) #23, !range !43
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
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{i8 0, i8 2}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = !{!18, !7, i64 8}
!18 = !{!"immediate_use_iterator_d", !7, i64 0, !7, i64 8, !19, i64 16, !7, i64 48}
!19 = !{!"ssa_use_operand_d", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24}
!20 = !{!19, !7, i64 8}
!21 = !{!18, !7, i64 0}
!22 = !{!18, !7, i64 48}
!23 = !{!19, !7, i64 24}
!24 = !{!18, !7, i64 24}
!25 = !{!18, !7, i64 16}
!26 = !{i32 0, i32 256}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = !{!30, !8, i64 0}
!30 = !{!"ssa_operand_iterator_d", !8, i64 0, !11, i64 4, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !7, i64 32}
!31 = !{!30, !7, i64 32}
!32 = !{!30, !11, i64 28}
!33 = !{!30, !11, i64 4}
!34 = !{!30, !7, i64 16}
!35 = !{!36, !7, i64 0}
!36 = !{!"use_optype_d", !7, i64 0, !19, i64 8}
!37 = !{!30, !11, i64 24}
!38 = !{!36, !7, i64 32}
!39 = !{!19, !7, i64 0}
!40 = !{!30, !7, i64 8}
!41 = !{!42, !7, i64 0}
!42 = !{!"def_optype_d", !7, i64 0, !7, i64 8}
!43 = !{i32 0, i32 34851}
!44 = !{!45, !7, i64 8}
!45 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !7, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!46 = !{!47, !11, i64 32}
!47 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !7, i64 40, !11, i64 48, !8, i64 52, !8, i64 60, !11, i64 68, !11, i64 72}
!48 = !{!49, !11, i64 8}
!49 = !{!"stmt_stats", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!50 = !{!49, !11, i64 12}
!51 = distinct !{!51, !15}
!52 = !{!45, !7, i64 24}
!53 = !{!54, !7, i64 16}
!54 = !{!"gimple_df", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !55, i64 32, !55, i64 48, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !11, i64 96, !56, i64 104}
!55 = !{!"pt_solution", !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !7, i64 8}
!56 = !{!"ssa_operands", !7, i64 0, !11, i64 8, !11, i64 12, !8, i64 16, !7, i64 24, !7, i64 32}
!57 = !{!58, !11, i64 4}
!58 = !{!"edge_list", !11, i64 0, !11, i64 4, !7, i64 8}
!59 = distinct !{!59, !15}
!60 = !{!47, !7, i64 0}
!61 = !{!62, !7, i64 56}
!62 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !63, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!63 = !{!"long", !8, i64 0}
!64 = !{!47, !7, i64 8}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15}
!67 = !{i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !6}
!68 = distinct !{!68, !15}
!69 = !{i64 0, i64 4, !10, i64 8, i64 8, !6}
!70 = !{i64 0, i64 8, !6}
!71 = !{!72, !11, i64 48}
!72 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !63, i64 56}
!73 = !{!72, !7, i64 0}
!74 = !{!62, !11, i64 80}
!75 = !{!72, !7, i64 8}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !15}
!78 = !{!79, !11, i64 0}
!79 = !{!"loop", !11, i64 0, !11, i64 4, !7, i64 8, !7, i64 16, !80, i64 24, !11, i64 32, !11, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !81, i64 80, !81, i64 96, !8, i64 112, !8, i64 113, !11, i64 116, !7, i64 120, !7, i64 128, !8, i64 136, !7, i64 144}
!80 = !{!"lpt_decision", !11, i64 0, !11, i64 4}
!81 = !{!"", !63, i64 0, !63, i64 8}
!82 = !{!79, !7, i64 16}
!83 = distinct !{!83, !15}
!84 = !{!63, !63, i64 0}
!85 = distinct !{!85, !15}
!86 = distinct !{!86, !15}
!87 = distinct !{!87, !15}
!88 = distinct !{!88, !15}
!89 = distinct !{!89, !15}
!90 = distinct !{!90, !15}
!91 = distinct !{!91, !15}
!92 = !{!49, !11, i64 0}
!93 = distinct !{!93, !15}
!94 = !{!62, !7, i64 48}
!95 = !{!62, !11, i64 96}
!96 = distinct !{!96, !15}
!97 = distinct !{!97, !15}
!98 = distinct !{!98, !15}
!99 = distinct !{!99, !15}
!100 = distinct !{!100, !15}
!101 = !{!49, !11, i64 4}
!102 = distinct !{!102, !15}
!103 = !{!104, !7, i64 0}
!104 = !{!"simple_bitmap_def", !7, i64 0, !11, i64 8, !11, i64 12, !8, i64 16}
!105 = !{!106, !11, i64 0}
!106 = !{!"VEC_tree_base", !11, i64 0, !11, i64 4, !8, i64 8}
!107 = !{!58, !7, i64 8}
!108 = distinct !{!108, !15}
!109 = !{!62, !7, i64 8}
!110 = !{!111, !11, i64 0}
!111 = !{!"VEC_edge_base", !11, i64 0, !11, i64 4, !8, i64 8}
!112 = !{!113, !7, i64 0}
!113 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!114 = !{!115, !7, i64 0}
!115 = !{!"gimple_seq_node_d", !7, i64 0, !7, i64 8, !7, i64 16}
!116 = !{!115, !7, i64 16}
!117 = !{!113, !7, i64 8}
!118 = !{!113, !7, i64 16}
!119 = distinct !{!119, !15}
!120 = !{!121, !11, i64 0}
!121 = !{!"", !11, i64 0, !7, i64 8}
!122 = !{!123, !11, i64 8}
!123 = !{!"", !7, i64 0, !11, i64 8}
!124 = !{!45, !7, i64 32}
!125 = !{!123, !7, i64 0}
!126 = !{!127, !7, i64 24}
!127 = !{!"loops", !11, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!128 = !{!79, !7, i64 48}
!129 = !{!79, !7, i64 56}
!130 = distinct !{!130, !15}
!131 = !{i32 0, i32 2}
!132 = distinct !{!132, !15}
!133 = !{!134, !7, i64 0}
!134 = !{!"gimple_bb_info", !7, i64 0, !7, i64 8}
!135 = !{!136, !7, i64 0}
!136 = !{!"gimple_seq_d", !7, i64 0, !7, i64 8, !7, i64 16}
!137 = !{!138, !11, i64 0}
!138 = !{!"VEC_gimple_base", !11, i64 0, !11, i64 4, !8, i64 8}
!139 = !{!138, !11, i64 4}
!140 = !{!141, !7, i64 0}
!141 = !{!"bitmap_head_def", !7, i64 0, !7, i64 8, !11, i64 16, !7, i64 24}
!142 = !{!143, !7, i64 0}
!143 = !{!"", !7, i64 0, !7, i64 8, !11, i64 16, !63, i64 24}
!144 = !{!143, !7, i64 8}
!145 = !{!146, !11, i64 16}
!146 = !{!"bitmap_element_def", !7, i64 0, !7, i64 8, !11, i64 16, !8, i64 24}
!147 = !{!143, !11, i64 16}
!148 = !{!143, !63, i64 24}
!149 = distinct !{!149, !15}
!150 = distinct !{!150, !15}
!151 = !{!146, !7, i64 0}
!152 = !{!127, !7, i64 8}
!153 = !{!154, !11, i64 0}
!154 = !{!"VEC_int_base", !11, i64 0, !11, i64 4, !8, i64 8}
!155 = !{!79, !7, i64 40}
!156 = !{!157, !11, i64 0}
!157 = !{!"VEC_loop_p_base", !11, i64 0, !11, i64 4, !8, i64 8}
!158 = distinct !{!158, !15}
!159 = !{!62, !7, i64 0}
!160 = !{!42, !7, i64 8}
!161 = distinct !{!161, !15}
!162 = !{!163, !7, i64 8}
!163 = !{!"ao_ref_s", !7, i64 0, !7, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !11, i64 40, !11, i64 44}
!164 = !{!163, !63, i64 32}
!165 = !{!163, !63, i64 16}
!166 = !{!163, !7, i64 0}
!167 = !{!168, !11, i64 0}
!168 = !{!"VEC_basic_block_base", !11, i64 0, !11, i64 4, !8, i64 8}
!169 = !{!115, !7, i64 8}
!170 = !{!72, !11, i64 52}
!171 = !{!62, !63, i64 72}
!172 = !{!72, !63, i64 56}
!173 = distinct !{!173, !15}
!174 = distinct !{!174, !15}
!175 = distinct !{!175, !15}
!176 = distinct !{!176, !15}
!177 = !{!136, !7, i64 8}
!178 = distinct !{!178, !15}
!179 = distinct !{!179, !15}
!180 = !{!72, !11, i64 44}
!181 = !{!134, !7, i64 8}
!182 = !{!183, !11, i64 40}
!183 = !{!"phi_arg_d", !19, i64 0, !7, i64 32, !11, i64 40}
