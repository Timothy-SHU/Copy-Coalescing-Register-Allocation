; ModuleID = 'tree-eh.c'
source_filename = "tree-eh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.throw_stmt_node = type { ptr, i32 }
%struct.eh_status = type { ptr, ptr, ptr, ptr, ptr, %union.eh_status_u }
%union.eh_status_u = type { ptr }
%struct.leh_state = type { ptr, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_statement_eh_ctrl = type { %struct.gimple_statement_base, i32 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.eh_region_d = type { ptr, ptr, ptr, i32, i32, %union.eh_region_u, ptr, ptr, ptr, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { ptr, ptr, i32 }
%struct.eh_catch_d = type { ptr, ptr, ptr, ptr, ptr }
%struct.eh_landing_pad_d = type { ptr, ptr, ptr, ptr, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.VEC_eh_landing_pad_base = type { i32, i32, [1 x ptr] }
%struct.VEC_eh_region_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.finally_tree_node = type { %union.treemple, ptr }
%union.treemple = type { ptr }
%struct.gimple_statement_try = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_catch = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_eh_filter = type { %struct.gimple_statement_base, ptr, ptr }
%struct.leh_tf_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, i8, i8, i8 }
%struct.goto_queue_node = type { %union.treemple, ptr, ptr, i32, i32 }
%struct.labels_s = type { ptr, ptr }
%struct.gimple_statement_eh_mnt = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@using_eh_for_cleanups_p = internal unnamed_addr global i1 false, align 4
@.str = private unnamed_addr constant [10 x i8] c"tree-eh.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"eh\00", align 1
@pass_lower_eh = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr null, ptr @lower_eh_constructs, ptr null, ptr null, i32 0, i32 49, i32 2, i32 4, i32 0, i32 0, i32 1 } }, align 8
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@flag_signaling_nans = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@flag_exceptions = external local_unnamed_addr global i32, align 4
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"ehopt\00", align 1
@pass_refactor_eh = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.3, ptr @gate_refactor_eh, ptr @refactor_eh, ptr null, ptr null, i32 0, i32 49, i32 2, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"resx\00", align 1
@pass_lower_resx = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.4, ptr @gate_lower_resx, ptr @execute_lower_resx, ptr null, ptr null, i32 0, i32 49, i32 2, i32 0, i32 0, i32 0, i32 9 } }, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"ehdisp\00", align 1
@pass_lower_eh_dispatch = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.5, ptr @gate_lower_eh_dispatch, ptr @execute_lower_eh_dispatch, ptr null, ptr null, i32 0, i32 49, i32 2, i32 0, i32 0, i32 0, i32 9 } }, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"ehcleanup\00", align 1
@pass_cleanup_eh = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.6, ptr @gate_cleanup_eh, ptr @execute_cleanup_eh, ptr null, ptr null, i32 0, i32 49, i32 2, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"BB %i has multiple EH edges\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"BB %i can not throw but has an EH edge\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"BB %i last statement has incorrectly set lp\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"BB %i is missing an EH edge\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Incorrect EH edge %i->%i\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"BB %i is missing an edge\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"BB %i too many fallthru edges\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"BB %i has incorrect edge\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"BB %i has incorrect fallthru edge\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@finally_tree = internal unnamed_addr global ptr null, align 8
@eh_region_may_contain_throw_map = internal unnamed_addr global ptr null, align 8
@eh_seq = internal global ptr null, align 8
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@lang_protect_cleanup_actions = external local_unnamed_addr global ptr, align 8
@optimize = external local_unnamed_addr global i32, align 4
@eni_size_weights = external global %struct.eni_weights_d, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.17 = private unnamed_addr constant [12 x i8] c"finally_tmp\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@implicit_built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@.str.18 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [40 x i8] c"Before removal of unreachable regions:\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Reachable regions: \00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Reachable landing pads: \00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"Removing unreachable region %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"Removing unreachable landing pad %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"\0A\0AAfter removal of unreachable regions:\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [40 x i8] c"Unsplit EH landing pad %d to block %i.\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"Empty EH handler %i moved to EH region %i.\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"Empty EH handler %i removed.\0A\00", align 1
@.str.30 = private unnamed_addr constant [63 x i8] c"Unsplit EH landing pad %d to block %i (via cleanup_empty_eh).\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !51 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !52
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !51 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !52
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !51 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !62

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !56
  %11 = load i8, ptr %3, align 1, !tbaa !63
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !51 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !62

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !56
  %11 = load i8, ptr %3, align 1, !tbaa !63
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !51 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !52
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !62

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #22
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !56
  %11 = load i8, ptr %3, align 1, !tbaa !63
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !51 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !52
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !51 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !62

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !64
  store i8 %12, ptr %4, align 1, !tbaa !63
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !51 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !62

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !64
  store i8 %12, ptr %4, align 1, !tbaa !63
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !51 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !62

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !64
  store i8 %12, ptr %4, align 1, !tbaa !63
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !51 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #22
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !51 {
  %2 = load i32, ptr %0, align 8, !tbaa !66
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !51 {
  %2 = load i32, ptr %0, align 8, !tbaa !66
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !51 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !67
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !51 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !67
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !51 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !51 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !51 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !51 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #22
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !68

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !51 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @using_eh_for_cleanups() local_unnamed_addr #9 !prof !51 {
  store i1 true, ptr @using_eh_for_cleanups_p, align 4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @add_stmt_to_eh_lp_fn(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !51 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 99, ptr noundef nonnull @.str.1) #22
  br label %6

6:                                                ; preds = %3, %5
  %7 = tail call ptr @ggc_alloc_stat(i64 noundef 16) #22
  store ptr %1, ptr %7, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.throw_stmt_node, ptr %7, i64 0, i32 1
  store i32 %2, ptr %8, align 8, !tbaa !73
  %9 = tail call ptr @get_eh_throw_stmt_table(ptr noundef %0) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call ptr @htab_create_alloc(i64 noundef 31, ptr noundef nonnull @struct_ptr_hash, ptr noundef nonnull @struct_ptr_eq, ptr noundef nonnull @ggc_free, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #22
  tail call void @set_eh_throw_stmt_table(ptr noundef %0, ptr noundef %12) #22
  br label %13

13:                                               ; preds = %11, %6
  %14 = tail call ptr @get_eh_throw_stmt_table(ptr noundef %0) #22
  %15 = tail call ptr @htab_find_slot(ptr noundef %14, ptr noundef nonnull %7, i32 noundef 1) #22
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 111, ptr noundef nonnull @.str.1) #22
  br label %19

19:                                               ; preds = %13, %18
  store ptr %7, ptr %15, align 8, !tbaa !52
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare ptr @get_eh_throw_stmt_table(ptr noundef) local_unnamed_addr #3

declare void @set_eh_throw_stmt_table(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @struct_ptr_hash(ptr nocapture noundef readonly %0) #11 !prof !74 !PGOFuncName !75 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = ptrtoint ptr %2 to i64
  %4 = lshr i64 %3, 4
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @struct_ptr_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !76 !PGOFuncName !77 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = load ptr, ptr %1, align 8, !tbaa !52
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare void @ggc_free(ptr noundef) #3

declare ptr @ggc_calloc(i64 noundef, i64 noundef) #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @add_stmt_to_eh_lp(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !51 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !52
  tail call void @add_stmt_to_eh_lp_fn(ptr noundef %3, ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @remove_stmt_from_eh_lp_fn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !51 {
  %3 = alloca %struct.throw_stmt_node, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = tail call ptr @get_eh_throw_stmt_table(ptr noundef %0) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !78

6:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !71
  %7 = tail call ptr @get_eh_throw_stmt_table(ptr noundef %0) #22
  %8 = call ptr @htab_find_slot(ptr noundef %7, ptr noundef nonnull %3, i32 noundef 0) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = call ptr @get_eh_throw_stmt_table(ptr noundef %0) #22
  call void @htab_clear_slot(ptr noundef %11, ptr noundef nonnull %8) #22
  br label %12

12:                                               ; preds = %6, %2, %10
  %13 = phi i8 [ 1, %10 ], [ 0, %2 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret i8 %13
}

declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @remove_stmt_from_eh_lp(ptr noundef %0) local_unnamed_addr #12 !prof !79 {
  %2 = alloca %struct.throw_stmt_node, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %4 = tail call ptr @get_eh_throw_stmt_table(ptr noundef %3) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !78

6:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !71
  %7 = tail call ptr @get_eh_throw_stmt_table(ptr noundef %3) #22
  %8 = call ptr @htab_find_slot(ptr noundef %7, ptr noundef nonnull %2, i32 noundef 0) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = call ptr @get_eh_throw_stmt_table(ptr noundef %3) #22
  call void @htab_clear_slot(ptr noundef %11, ptr noundef nonnull %8) #22
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi i8 [ 1, %10 ], [ 0, %1 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  ret i8 %13
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lookup_stmt_eh_lp_fn(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !51 {
  %3 = alloca %struct.throw_stmt_node, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = load ptr, ptr %0, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.eh_status, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !71
  %9 = call ptr @htab_find(ptr noundef nonnull %6, ptr noundef nonnull %3) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.throw_stmt_node, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !73
  br label %14

14:                                               ; preds = %11, %8, %2
  %15 = phi i32 [ 0, %2 ], [ %13, %11 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret i32 %15
}

declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lookup_stmt_eh_lp(ptr noundef %0) local_unnamed_addr #12 !prof !84 {
  %2 = alloca %struct.throw_stmt_node, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5, !prof !85

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %6 = load ptr, ptr %3, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.eh_status, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !86

10:                                               ; preds = %5
  store ptr %0, ptr %2, align 8, !tbaa !71
  %11 = call ptr @htab_find(ptr noundef nonnull %8, ptr noundef nonnull %2) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.throw_stmt_node, ptr %11, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !73
  br label %16

16:                                               ; preds = %5, %10, %13
  %17 = phi i32 [ 0, %5 ], [ %15, %13 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  br label %18

18:                                               ; preds = %1, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lower_eh_constructs() #13 !prof !87 !PGOFuncName !88 {
  %1 = alloca %struct.leh_state, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !52
  %4 = tail call ptr @gimple_body(ptr noundef %3) #22
  store ptr %4, ptr %2, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6, !prof !89

6:                                                ; preds = %0
  %7 = tail call ptr @htab_create(i64 noundef 31, ptr noundef nonnull @struct_ptr_hash, ptr noundef nonnull @struct_ptr_eq, ptr noundef nonnull @free) #22
  store ptr %7, ptr @finally_tree, align 8, !tbaa !52
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %8, ptr @eh_region_may_contain_throw_map, align 8, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %9 = load ptr, ptr %2, align 8, !tbaa !52
  tail call fastcc void @collect_finally_tree_1(ptr noundef %9, ptr noundef null)
  %10 = load ptr, ptr %2, align 8, !tbaa !52
  call fastcc void @lower_eh_constructs_1(ptr noundef nonnull %1, ptr noundef %10)
  %11 = load ptr, ptr %2, align 8, !tbaa !52
  %12 = call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %11) #22
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14, !prof !90

14:                                               ; preds = %6
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2006, ptr noundef nonnull @.str.1) #22
  br label %15

15:                                               ; preds = %6, %14
  %16 = load ptr, ptr @eh_seq, align 8, !tbaa !52
  call void @gimple_seq_add_seq(ptr noundef nonnull %2, ptr noundef %16) #22
  %17 = load ptr, ptr %2, align 8, !tbaa !52
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !52
  %19 = call ptr @gimple_body(ptr noundef %18) #22
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %22, label %21, !prof !90

21:                                               ; preds = %15
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2011, ptr noundef nonnull @.str.1) #22
  br label %22

22:                                               ; preds = %15, %21
  %23 = load ptr, ptr @finally_tree, align 8, !tbaa !52
  call void @htab_delete(ptr noundef %23) #22
  %24 = load ptr, ptr @eh_region_may_contain_throw_map, align 8, !tbaa !52
  call void @bitmap_obstack_free(ptr noundef %24) #22
  store ptr null, ptr @eh_region_may_contain_throw_map, align 8, !tbaa !52
  store ptr null, ptr @eh_seq, align 8, !tbaa !52
  %25 = load ptr, ptr @cfun, align 8, !tbaa !52
  %26 = call i32 @function_needs_eh_personality(ptr noundef %25) #22
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %38, !prof !89

28:                                               ; preds = %22
  %29 = load ptr, ptr @current_function_decl, align 8, !tbaa !52
  %30 = getelementptr inbounds %struct.tree_function_decl, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !63
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 45), align 8, !tbaa !91
  %35 = call ptr %34() #22
  %36 = load ptr, ptr @current_function_decl, align 8, !tbaa !52
  %37 = getelementptr inbounds %struct.tree_function_decl, ptr %36, i64 0, i32 2
  store ptr %35, ptr %37, align 8, !tbaa !63
  br label %38

38:                                               ; preds = %22, %28, %33, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @make_eh_dispatch_edges(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !51 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !63
  %4 = tail call ptr @get_eh_region_from_number(i32 noundef %3) #22
  %5 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.eh_region_d, ptr %4, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !99
  switch i32 %8, label %30 [
    i32 1, label %9
    i32 2, label %24
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.eh_region_d, ptr %4, i64 0, i32 5
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %10, %9 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @cfun, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.eh_catch_d, ptr %13, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !101
  %19 = tail call ptr @label_to_block_fn(ptr noundef %16, ptr noundef %18) #22
  %20 = tail call ptr @make_edge(ptr noundef %6, ptr noundef %19, i32 noundef 0) #22
  %21 = getelementptr inbounds %struct.eh_catch_d, ptr %13, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !103
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %11, !llvm.loop !104

24:                                               ; preds = %1
  %25 = load ptr, ptr @cfun, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.eh_region_d, ptr %4, i64 0, i32 5, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  %28 = tail call ptr @label_to_block_fn(ptr noundef %25, ptr noundef %27) #22
  %29 = tail call ptr @make_edge(ptr noundef %6, ptr noundef %28, i32 noundef 0) #22
  br label %31

30:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2080, ptr noundef nonnull @.str.1) #22
  br label %31

31:                                               ; preds = %15, %11, %24, %30
  %32 = phi i8 [ 1, %30 ], [ 1, %24 ], [ 1, %11 ], [ 0, %15 ]
  ret i8 %32
}

declare ptr @get_eh_region_from_number(i32 noundef) local_unnamed_addr #3

declare ptr @label_to_block_fn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @make_eh_edges(ptr noundef %0) local_unnamed_addr #13 !prof !105 {
  %2 = alloca %struct.throw_stmt_node, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5, !prof !85

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %6 = load ptr, ptr %3, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.eh_status, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !86

10:                                               ; preds = %5
  store ptr %0, ptr %2, align 8, !tbaa !71
  %11 = call ptr @htab_find(ptr noundef nonnull %8, ptr noundef nonnull %2) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.throw_stmt_node, ptr %11, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !73
  br label %16

16:                                               ; preds = %13, %10, %5
  %17 = phi i32 [ 0, %5 ], [ %15, %13 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  br label %18

18:                                               ; preds = %1, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %1 ]
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %33, label %21, !prof !106

21:                                               ; preds = %18
  %22 = call ptr @get_eh_landing_pad_from_number(i32 noundef %19) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2101, ptr noundef nonnull @.str.1) #22
  br label %25

25:                                               ; preds = %21, %24
  %26 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  %28 = load ptr, ptr @cfun, align 8, !tbaa !52
  %29 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %22, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !107
  %31 = call ptr @label_to_block_fn(ptr noundef %28, ptr noundef %30) #22
  %32 = call ptr @make_edge(ptr noundef %27, ptr noundef %31, i32 noundef 8) #22
  br label %33

33:                                               ; preds = %18, %25
  ret void
}

declare ptr @get_eh_landing_pad_from_number(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @redirect_eh_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !51 {
  tail call fastcc void @redirect_eh_edge_1(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0)
  %3 = tail call ptr @ssa_redirect_edge(ptr noundef %0, ptr noundef %1) #22
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @redirect_eh_edge_1(ptr noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #10 !prof !51 {
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = tail call ptr @gimple_block_label(ptr noundef %5) #22
  %7 = getelementptr inbounds %struct.tree_label_decl, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !63
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2131, ptr noundef nonnull @.str.1) #22
  br label %11

11:                                               ; preds = %3, %10
  %12 = tail call ptr @get_eh_landing_pad_from_number(i32 noundef %8) #22
  %13 = load ptr, ptr %0, align 8, !tbaa !111
  %14 = tail call ptr @last_stmt(ptr noundef %13) #22
  %15 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %14)
  %16 = icmp eq i32 %15, %8
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2135, ptr noundef nonnull @.str.1) #22
  br label %18

18:                                               ; preds = %11, %17
  %19 = tail call ptr @gimple_block_label(ptr noundef %1) #22
  %20 = getelementptr inbounds %struct.tree_label_decl, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !63
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = tail call ptr @get_eh_landing_pad_from_number(i32 noundef %21) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2144, ptr noundef nonnull @.str.1) #22
  br label %27

27:                                               ; preds = %23, %26
  %28 = icmp eq i8 %2, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %24, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !112
  %32 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %12, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !112
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %40, label %37

35:                                               ; preds = %18
  %36 = icmp eq i8 %2, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %35, %29
  %38 = phi i32 [ 2148, %29 ], [ 2153, %35 ]
  %39 = phi ptr [ %24, %29 ], [ null, %35 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %38, ptr noundef nonnull @.str.1) #22
  br label %40

40:                                               ; preds = %37, %35, %29, %27
  %41 = phi ptr [ %24, %27 ], [ %24, %29 ], [ null, %35 ], [ %39, %37 ]
  %42 = icmp eq ptr %5, null
  br label %43

43:                                               ; preds = %75, %40
  %44 = phi i32 [ 0, %40 ], [ %76, %75 ]
  br i1 %42, label %45, label %46

45:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 687, ptr noundef nonnull @.str.1) #22
  br label %46

46:                                               ; preds = %45, %43
  %47 = load ptr, ptr %5, align 8, !tbaa !52
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %47, align 8, !tbaa !113
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i32 [ %50, %49 ], [ 0, %46 ]
  %53 = icmp eq i32 %52, %44
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = zext i32 %44 to i64
  %56 = getelementptr inbounds %struct.VEC_edge_base, ptr %47, i64 0, i32 2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !52
  br label %58

58:                                               ; preds = %51, %54
  %59 = phi ptr [ %57, %54 ], [ null, %51 ]
  br i1 %53, label %77, label %60

60:                                               ; preds = %58
  %61 = icmp eq ptr %59, %0
  br i1 %61, label %67, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 7
  %64 = load i32, ptr %63, align 8, !tbaa !115
  %65 = and i32 %64, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62, %60
  %68 = icmp eq ptr %47, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %67
  %70 = load i32, ptr %47, align 8, !tbaa !113
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %70, %69 ], [ 0, %67 ]
  %73 = icmp ult i32 %44, %72
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %75

75:                                               ; preds = %71, %74
  %76 = add i32 %44, 1
  br label %43, !llvm.loop !116

77:                                               ; preds = %62, %58
  %78 = icmp eq ptr %41, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %77
  %80 = icmp ne ptr %59, null
  %81 = icmp ne i8 %2, 0
  %82 = or i1 %81, %80
  br i1 %82, label %99, label %83

83:                                               ; preds = %79
  tail call void @remove_eh_landing_pad(ptr noundef %12) #22
  br label %99

84:                                               ; preds = %77
  %85 = icmp eq ptr %59, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %12, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !107
  %89 = getelementptr inbounds %struct.tree_label_decl, ptr %88, i64 0, i32 2
  store i32 0, ptr %89, align 4, !tbaa !63
  br label %94

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %12, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !112
  %93 = tail call ptr @gen_eh_landing_pad(ptr noundef %92) #22
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi ptr [ %12, %86 ], [ %93, %90 ]
  %96 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %95, i64 0, i32 2
  store ptr %19, ptr %96, align 8, !tbaa !107
  %97 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %95, i64 0, i32 4
  %98 = load i32, ptr %97, align 8, !tbaa !117
  store i32 %98, ptr %20, align 4, !tbaa !63
  br label %99

99:                                               ; preds = %79, %83, %94
  %100 = phi ptr [ %41, %79 ], [ %41, %83 ], [ %95, %94 ]
  %101 = icmp eq ptr %12, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr @cfun, align 8, !tbaa !52
  %104 = tail call zeroext i8 @remove_stmt_from_eh_lp_fn(ptr noundef %103, ptr noundef %14), !range !118
  %105 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %100, i64 0, i32 4
  %106 = load i32, ptr %105, align 8, !tbaa !117
  %107 = load ptr, ptr @cfun, align 8, !tbaa !52
  tail call void @add_stmt_to_eh_lp_fn(ptr noundef %107, ptr noundef %14, i32 noundef %106)
  br label %108

108:                                              ; preds = %102, %99
  ret void
}

declare ptr @ssa_redirect_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @redirect_eh_dispatch_edge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #10 !prof !51 {
  %4 = tail call ptr @gimple_block_label(ptr noundef %2) #22
  %5 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !63
  %7 = tail call ptr @get_eh_region_from_number(i32 noundef %6) #22
  %8 = getelementptr inbounds %struct.eh_region_d, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !99
  switch i32 %9, label %40 [
    i32 1, label %10
    i32 2, label %30
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.eh_region_d, ptr %7, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  br label %16

16:                                               ; preds = %14, %26
  %17 = phi ptr [ %12, %14 ], [ %28, %26 ]
  %18 = phi i8 [ 0, %14 ], [ %27, %26 ]
  %19 = load ptr, ptr @cfun, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.eh_catch_d, ptr %17, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = tail call ptr @label_to_block_fn(ptr noundef %19, ptr noundef %21) #22
  %23 = load ptr, ptr %15, align 8, !tbaa !109
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store ptr %4, ptr %20, align 8, !tbaa !101
  br label %26

26:                                               ; preds = %16, %25
  %27 = phi i8 [ 1, %25 ], [ %18, %16 ]
  %28 = load ptr, ptr %17, align 8, !tbaa !63
  %29 = icmp eq ptr %28, null
  br i1 %29, label %41, label %16, !llvm.loop !119

30:                                               ; preds = %3
  %31 = load ptr, ptr @cfun, align 8, !tbaa !52
  %32 = getelementptr inbounds %struct.eh_region_d, ptr %7, i64 0, i32 5, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !63
  %34 = tail call ptr @label_to_block_fn(ptr noundef %31, ptr noundef %33) #22
  %35 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !109
  %37 = icmp eq ptr %34, %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2234, ptr noundef nonnull @.str.1) #22
  br label %39

39:                                               ; preds = %30, %38
  store ptr %4, ptr %32, align 8, !tbaa !63
  br label %44

40:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2240, ptr noundef nonnull @.str.1) #22
  br label %43

41:                                               ; preds = %26
  %42 = icmp eq i8 %27, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %10, %41
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2243, ptr noundef nonnull @.str.1) #22
  br label %44

44:                                               ; preds = %39, %41, %43
  ret void
}

declare ptr @gimple_block_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @operation_could_trap_helper_p(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #12 !prof !120 {
  store i8 1, ptr %6, align 1, !tbaa !63
  switch i32 %0, label %36 [
    i32 67, label %8
    i32 68, label %8
    i32 69, label %8
    i32 70, label %8
    i32 76, label %8
    i32 72, label %8
    i32 73, label %8
    i32 74, label %8
    i32 71, label %8
    i32 75, label %8
    i32 97, label %42
    i32 98, label %42
    i32 99, label %42
    i32 100, label %42
    i32 110, label %42
    i32 101, label %24
    i32 102, label %24
    i32 103, label %24
    i32 104, label %24
    i32 105, label %24
    i32 106, label %24
    i32 107, label %24
    i32 108, label %24
    i32 109, label %24
    i32 113, label %42
    i32 77, label %42
    i32 79, label %25
    i32 82, label %25
    i32 124, label %25
    i32 63, label %28
    i32 64, label %28
    i32 65, label %28
  ], !prof !121

8:                                                ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  %9 = or i8 %4, %2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %8
  %12 = icmp eq i8 %1, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr @flag_trapping_math, align 4, !tbaa !67
  %15 = trunc i32 %14 to i8
  br label %42

16:                                               ; preds = %11
  %17 = load i64, ptr %5, align 8
  %18 = and i64 %17, 131072
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @integer_zerop(ptr noundef nonnull %5) #22
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i8
  br label %42

24:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7
  br label %42

25:                                               ; preds = %7, %7, %7
  %26 = icmp ne i8 %2, 0
  %27 = zext i1 %26 to i8
  br label %42

28:                                               ; preds = %7, %7, %7
  %29 = icmp ne i8 %1, 0
  %30 = load i32, ptr @flag_trapping_math, align 4
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = icmp ne i8 %2, 0
  %35 = zext i1 %34 to i8
  br label %42

36:                                               ; preds = %7
  %37 = icmp ne i8 %1, 0
  %38 = load i32, ptr @flag_trapping_math, align 4
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false, !prof !122
  br i1 %40, label %42, label %41, !prof !122

41:                                               ; preds = %36
  store i8 0, ptr %6, align 1, !tbaa !63
  br label %42

42:                                               ; preds = %28, %8, %7, %7, %7, %7, %7, %7, %20, %36, %33, %25, %7, %16, %41, %24, %13
  %43 = phi i8 [ 0, %41 ], [ %4, %24 ], [ %15, %13 ], [ 1, %16 ], [ %3, %7 ], [ %27, %25 ], [ %35, %33 ], [ 1, %36 ], [ %23, %20 ], [ %3, %7 ], [ %3, %7 ], [ %3, %7 ], [ %3, %7 ], [ %3, %7 ], [ %3, %7 ], [ 1, %8 ], [ 1, %28 ]
  ret i8 %43
}

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @operation_could_trap_p(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #12 !prof !51 {
  %5 = load i32, ptr @flag_trapping_math, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !67
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %11, label %48, !prof !123

11:                                               ; preds = %4
  %12 = load i32, ptr @flag_signaling_nans, align 4
  %13 = load i32, ptr @flag_finite_math_only, align 4
  %14 = icmp ne i8 %1, 0
  %15 = icmp ne i32 %12, 0
  %16 = select i1 %14, i1 %15, i1 false, !prof !124
  %17 = zext i1 %16 to i8
  %18 = icmp ne i32 %5, 0
  %19 = select i1 %14, i1 %18, i1 false, !prof !124
  %20 = icmp eq i32 %13, 0
  %21 = select i1 %19, i1 %20, i1 false, !prof !124
  %22 = zext i1 %21 to i8
  switch i32 %0, label %46 [
    i32 67, label %23
    i32 68, label %23
    i32 69, label %23
    i32 70, label %23
    i32 76, label %23
    i32 72, label %23
    i32 73, label %23
    i32 74, label %23
    i32 71, label %23
    i32 75, label %23
    i32 97, label %48
    i32 98, label %48
    i32 99, label %48
    i32 100, label %48
    i32 110, label %48
    i32 101, label %38
    i32 102, label %38
    i32 103, label %38
    i32 104, label %38
    i32 105, label %38
    i32 106, label %38
    i32 107, label %38
    i32 108, label %38
    i32 109, label %38
    i32 113, label %48
    i32 77, label %48
    i32 79, label %39
    i32 82, label %39
    i32 124, label %39
    i32 63, label %42
    i32 64, label %42
    i32 65, label %42
  ], !prof !121

23:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  %24 = or i8 %17, %2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = icmp eq i8 %1, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = trunc i32 %5 to i8
  br label %48

30:                                               ; preds = %26
  %31 = load i64, ptr %3, align 8
  %32 = and i64 %31, 131072
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @integer_zerop(ptr noundef nonnull %3) #22
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i8
  br label %48

38:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11
  br label %48

39:                                               ; preds = %11, %11, %11
  %40 = icmp ne i8 %2, 0
  %41 = zext i1 %40 to i8
  br label %48

42:                                               ; preds = %11, %11, %11
  br i1 %19, label %48, label %43

43:                                               ; preds = %42
  %44 = icmp ne i8 %2, 0
  %45 = zext i1 %44 to i8
  br label %48

46:                                               ; preds = %11
  %47 = zext i1 %19 to i8
  br label %48

48:                                               ; preds = %46, %43, %42, %39, %38, %34, %30, %28, %23, %11, %11, %11, %11, %11, %11, %11, %4
  %49 = phi i8 [ 0, %4 ], [ %17, %38 ], [ %29, %28 ], [ 1, %30 ], [ %22, %11 ], [ %41, %39 ], [ %45, %43 ], [ %37, %34 ], [ %22, %11 ], [ %22, %11 ], [ %22, %11 ], [ %22, %11 ], [ %22, %11 ], [ %22, %11 ], [ 1, %23 ], [ 1, %42 ], [ %47, %46 ]
  ret i8 %49
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @tree_could_trap_p(ptr noundef %0) local_unnamed_addr #12 !prof !125 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %167, label %3, !prof !126

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8, !prof !126

8:                                                ; preds = %3
  %9 = and i64 %4, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !67
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %13, label %27, !prof !123

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %26 [
    i16 9, label %37
    i16 13, label %20
    i16 14, label %20
  ], !prof !127

20:                                               ; preds = %13, %13
  %21 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 9
  br label %37

26:                                               ; preds = %13
  br label %37

27:                                               ; preds = %8
  %28 = load i64, ptr %6, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %36 [
    i16 9, label %37
    i16 13, label %30
    i16 14, label %30
  ], !prof !128

30:                                               ; preds = %27, %27
  %31 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !63
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 9
  br label %37

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %30, %36, %27, %20, %26, %13
  %38 = phi i1 [ true, %13 ], [ %25, %20 ], [ false, %26 ], [ true, %27 ], [ %35, %30 ], [ false, %36 ]
  %39 = load i64, ptr %6, align 8
  %40 = trunc i64 %39 to i32
  %41 = and i32 %40, 65535
  %42 = add nsw i32 %41, -6
  %43 = icmp ult i32 %42, 3
  br i1 %43, label %44, label %51, !prof !129

44:                                               ; preds = %37
  %45 = and i64 %39, 2097152
  %46 = icmp eq i64 %45, 0
  %47 = load i32, ptr @flag_trapv, align 4
  %48 = icmp ne i32 %47, 0
  %49 = select i1 %46, i1 %48, i1 false, !prof !130
  %50 = zext i1 %49 to i8
  br label %51

51:                                               ; preds = %37, %44, %3
  %52 = phi i1 [ false, %3 ], [ %38, %37 ], [ %38, %44 ]
  %53 = phi i8 [ 0, %3 ], [ 0, %37 ], [ %50, %44 ]
  %54 = and i64 %4, 65535
  %55 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !67
  %57 = icmp eq i32 %56, 7
  br i1 %57, label %58, label %61, !prof !126

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !63
  br label %61

61:                                               ; preds = %58, %51
  %62 = phi ptr [ %60, %58 ], [ null, %51 ]
  %63 = load i32, ptr @flag_trapping_math, align 4
  %64 = and i64 %4, 65535
  %65 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !67
  %67 = add i32 %66, -5
  %68 = icmp ult i32 %67, 3
  br i1 %68, label %69, label %101, !prof !123

69:                                               ; preds = %61
  %70 = load i32, ptr @flag_signaling_nans, align 4
  %71 = load i32, ptr @flag_finite_math_only, align 4
  %72 = icmp ne i32 %70, 0
  %73 = select i1 %52, i1 %72, i1 false, !prof !124
  %74 = zext i1 %73 to i8
  %75 = icmp ne i32 %63, 0
  %76 = select i1 %52, i1 %75, i1 false, !prof !124
  %77 = icmp eq i32 %71, 0
  %78 = select i1 %76, i1 %77, i1 false, !prof !124
  %79 = zext i1 %78 to i8
  %80 = trunc i64 %4 to i16
  switch i16 %80, label %99 [
    i16 67, label %81
    i16 68, label %81
    i16 69, label %81
    i16 70, label %81
    i16 76, label %81
    i16 72, label %81
    i16 73, label %81
    i16 74, label %81
    i16 71, label %81
    i16 75, label %81
    i16 97, label %101
    i16 98, label %101
    i16 99, label %101
    i16 100, label %101
    i16 110, label %101
    i16 101, label %95
    i16 102, label %95
    i16 103, label %95
    i16 104, label %95
    i16 105, label %95
    i16 106, label %95
    i16 107, label %95
    i16 108, label %95
    i16 109, label %95
    i16 113, label %101
    i16 77, label %101
    i16 79, label %96
    i16 82, label %96
    i16 124, label %96
    i16 63, label %97
    i16 64, label %97
    i16 65, label %97
  ], !prof !121

81:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69, %69, %69
  %82 = or i8 %53, %74
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %81
  br i1 %52, label %85, label %87

85:                                               ; preds = %84
  %86 = trunc i32 %63 to i8
  br label %101

87:                                               ; preds = %84
  %88 = load i64, ptr %62, align 8
  %89 = and i64 %88, 131072
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %87
  %92 = tail call i32 @integer_zerop(ptr noundef nonnull %62) #22
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i8
  br label %101

95:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69, %69
  br label %101

96:                                               ; preds = %69, %69, %69
  br label %101

97:                                               ; preds = %69, %69, %69
  %98 = select i1 %76, i8 1, i8 %53
  br label %101

99:                                               ; preds = %69
  %100 = zext i1 %76 to i8
  br label %101

101:                                              ; preds = %97, %61, %69, %69, %69, %69, %69, %69, %69, %81, %85, %87, %91, %95, %96, %99
  %102 = phi i8 [ 0, %61 ], [ %74, %95 ], [ %86, %85 ], [ 1, %87 ], [ %79, %69 ], [ %53, %96 ], [ %94, %91 ], [ %79, %69 ], [ %79, %69 ], [ %79, %69 ], [ %79, %69 ], [ %79, %69 ], [ %79, %69 ], [ 1, %81 ], [ %100, %99 ], [ %98, %97 ]
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %167, !prof !129

104:                                              ; preds = %101, %110
  %105 = phi ptr [ %112, %110 ], [ %0, %101 ]
  %106 = phi i64 [ %113, %110 ], [ %4, %101 ]
  %107 = trunc i64 %106 to i16
  switch i16 %107, label %167 [
    i16 152, label %108
    i16 41, label %114
    i16 43, label %114
    i16 44, label %114
    i16 42, label %114
    i16 118, label %114
    i16 150, label %114
    i16 46, label %116
    i16 45, label %129
    i16 47, label %142
    i16 48, label %142
    i16 49, label %142
    i16 140, label %147
    i16 59, label %152
  ], !prof !131

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.tree_exp, ptr %105, i64 1, i32 2
  br label %110

110:                                              ; preds = %108, %114
  %111 = phi ptr [ %115, %114 ], [ %109, %108 ]
  %112 = load ptr, ptr %111, align 8, !tbaa !63
  %113 = load i64, ptr %112, align 8
  br label %104

114:                                              ; preds = %104, %104, %104, %104, %104, %104
  %115 = getelementptr inbounds %struct.tree_exp, ptr %105, i64 0, i32 3
  br label %110

116:                                              ; preds = %104
  %117 = getelementptr inbounds %struct.tree_exp, ptr %105, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !63
  %119 = tail call zeroext i8 @tree_could_trap_p(ptr noundef %118), !range !118
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %167

121:                                              ; preds = %116
  %122 = load i64, ptr %105, align 8
  %123 = and i64 %122, 33554432
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %167

125:                                              ; preds = %121
  %126 = tail call zeroext i8 @range_in_array_bounds_p(ptr noundef nonnull %105) #22
  %127 = icmp eq i8 %126, 0
  %128 = zext i1 %127 to i8
  br label %167

129:                                              ; preds = %104
  %130 = getelementptr inbounds %struct.tree_exp, ptr %105, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !63
  %132 = tail call zeroext i8 @tree_could_trap_p(ptr noundef %131), !range !118
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %167

134:                                              ; preds = %129
  %135 = load i64, ptr %105, align 8
  %136 = and i64 %135, 33554432
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %167

138:                                              ; preds = %134
  %139 = tail call zeroext i8 @in_array_bounds_p(ptr noundef nonnull %105) #22
  %140 = icmp eq i8 %139, 0
  %141 = zext i1 %140 to i8
  br label %167

142:                                              ; preds = %104, %104, %104
  %143 = load i64, ptr %105, align 8
  %144 = and i64 %143, 33554432
  %145 = icmp eq i64 %144, 0
  %146 = zext i1 %145 to i8
  br label %167

147:                                              ; preds = %104
  %148 = load i64, ptr %105, align 8
  %149 = lshr i64 %148, 19
  %150 = trunc i64 %149 to i8
  %151 = and i8 %150, 1
  br label %167

152:                                              ; preds = %104
  %153 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %105) #22
  %154 = icmp eq ptr %153, null
  br i1 %154, label %167, label %155

155:                                              ; preds = %152
  %156 = load i64, ptr %153, align 8
  %157 = and i64 %156, 65535
  %158 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !67
  %160 = icmp eq i32 %159, 3
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %153, i64 0, i32 4
  %163 = load i32, ptr %162, align 8
  %164 = and i32 %163, 128
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i8
  br label %167

167:                                              ; preds = %104, %161, %152, %155, %134, %129, %121, %116, %101, %1, %147, %142, %138, %125
  %168 = phi i8 [ %151, %147 ], [ %146, %142 ], [ %141, %138 ], [ %128, %125 ], [ 0, %1 ], [ 1, %101 ], [ 1, %116 ], [ 0, %121 ], [ 1, %129 ], [ 0, %134 ], [ 1, %155 ], [ 1, %152 ], [ %166, %161 ], [ 0, %104 ]
  ret i8 %168
}

declare zeroext i8 @range_in_array_bounds_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @in_array_bounds_p(ptr noundef) local_unnamed_addr #3

declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @stmt_could_throw_p(ptr noundef %0) local_unnamed_addr #12 !prof !132 {
  %2 = alloca i8, align 1
  %3 = load i32, ptr @flag_exceptions, align 4, !tbaa !67
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %207, label %5, !prof !133

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i8
  switch i8 %7, label %206 [
    i8 14, label %207
    i8 8, label %8
    i8 6, label %14
    i8 1, label %14
    i8 7, label %199
  ]

8:                                                ; preds = %5
  %9 = tail call i32 @gimple_call_flags(ptr noundef nonnull %0) #22
  %10 = trunc i32 %9 to i8
  %11 = lshr i8 %10, 6
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  br label %207

14:                                               ; preds = %5, %5
  %15 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !67
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %207, label %17

17:                                               ; preds = %14
  switch i8 %7, label %20 [
    i8 6, label %18
    i8 1, label %18
    i8 8, label %21
  ]

18:                                               ; preds = %17, %17
  %19 = lshr i32 %6, 16
  br label %21

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %21

21:                                               ; preds = %20, %18, %17
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ], [ 59, %17 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #22
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !67
  %26 = add i32 %25, -5
  %27 = icmp ult i32 %26, 3
  br i1 %27, label %28, label %135

28:                                               ; preds = %21
  %29 = load i32, ptr %0, align 8
  %30 = trunc i32 %29 to i8
  switch i8 %30, label %101 [
    i8 8, label %31
    i8 6, label %52
    i8 1, label %102
  ]

31:                                               ; preds = %28
  %32 = and i32 %29, 255
  %33 = add nsw i32 %32, -1
  %34 = icmp ult i32 %33, 9
  tail call void @llvm.assume(i1 %34)
  %35 = zext nneg i32 %32 to i64
  %36 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !67
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !134
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %43

43:                                               ; preds = %42, %31
  %44 = getelementptr inbounds i8, ptr %0, i64 %40
  %45 = getelementptr inbounds ptr, ptr %44, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !63
  %49 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  br label %102

52:                                               ; preds = %28
  %53 = lshr i32 %29, 16
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !63
  %57 = icmp eq i8 %56, 3
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = and i32 %29, 255
  %60 = add nsw i32 %59, -1
  %61 = icmp ult i32 %60, 9
  tail call void @llvm.assume(i1 %61)
  %62 = zext nneg i32 %59 to i64
  %63 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !67
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !134
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %70

70:                                               ; preds = %69, %58
  %71 = getelementptr inbounds i8, ptr %0, i64 %67
  %72 = getelementptr inbounds ptr, ptr %71, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !52
  %74 = load i64, ptr %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = and i32 %75, 65535
  br label %77

77:                                               ; preds = %70, %52
  %78 = phi i32 [ %76, %70 ], [ %53, %52 ]
  %79 = icmp eq i32 %78, 66
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = load i32, ptr %0, align 8
  %82 = and i32 %81, 255
  %83 = add nsw i32 %82, -1
  %84 = icmp ult i32 %83, 9
  tail call void @llvm.assume(i1 %84)
  %85 = zext nneg i32 %82 to i64
  %86 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !67
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %88
  %90 = load i64, ptr %89, align 8, !tbaa !134
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %93

93:                                               ; preds = %92, %80
  %94 = getelementptr inbounds i8, ptr %0, i64 %90
  %95 = getelementptr inbounds ptr, ptr %94, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !52
  %97 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  br label %102

98:                                               ; preds = %77
  %99 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #22
  %100 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 2
  br label %102

101:                                              ; preds = %28
  br label %102

102:                                              ; preds = %101, %98, %93, %43, %28
  %103 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %101 ], [ %51, %43 ], [ %97, %93 ], [ %100, %98 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %28 ]
  %104 = load ptr, ptr %103, align 8, !tbaa !63
  %105 = load i64, ptr %104, align 8
  %106 = trunc i64 %105 to i16
  switch i16 %106, label %123 [
    i16 9, label %113
    i16 13, label %107
    i16 14, label %107
  ]

107:                                              ; preds = %102, %102
  %108 = getelementptr inbounds %struct.tree_common, ptr %104, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !63
  %110 = load i64, ptr %109, align 8
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 9
  br i1 %112, label %113, label %123

113:                                              ; preds = %107, %102
  %114 = load i32, ptr @flag_trapping_math, align 4, !tbaa !67
  %115 = icmp ne i32 %114, 0
  %116 = load i32, ptr @flag_finite_math_only, align 4
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %115, i1 %117, i1 false
  %119 = zext i1 %118 to i8
  %120 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !67
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i8
  br label %135

123:                                              ; preds = %107, %102
  %124 = trunc i64 %105 to i32
  %125 = and i32 %124, 65535
  %126 = add nsw i32 %125, -6
  %127 = icmp ult i32 %126, 3
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = and i64 %105, 2097152
  %130 = icmp eq i64 %129, 0
  %131 = load i32, ptr @flag_trapv, align 4
  %132 = icmp ne i32 %131, 0
  %133 = select i1 %130, i1 %132, i1 false
  %134 = zext i1 %133 to i8
  br label %135

135:                                              ; preds = %128, %123, %113, %21
  %136 = phi i8 [ %119, %113 ], [ 0, %21 ], [ 0, %123 ], [ 0, %128 ]
  %137 = phi i8 [ %122, %113 ], [ 0, %21 ], [ 0, %123 ], [ 0, %128 ]
  %138 = phi i8 [ 1, %113 ], [ 0, %21 ], [ 0, %123 ], [ 0, %128 ]
  %139 = phi i8 [ 0, %113 ], [ 0, %21 ], [ 0, %123 ], [ %134, %128 ]
  %140 = load i32, ptr %0, align 8
  %141 = and i32 %140, 255
  %142 = icmp eq i32 %141, 6
  br i1 %142, label %143, label %160

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %145 = load i32, ptr %144, align 4, !tbaa !63
  %146 = icmp ult i32 %145, 3
  br i1 %146, label %160, label %147

147:                                              ; preds = %143
  %148 = zext nneg i32 %141 to i64
  %149 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !67
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %151
  %153 = load i64, ptr %152, align 8, !tbaa !134
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %156

156:                                              ; preds = %155, %147
  %157 = getelementptr inbounds i8, ptr %0, i64 %153
  %158 = getelementptr inbounds ptr, ptr %157, i64 2
  %159 = load ptr, ptr %158, align 8, !tbaa !52
  br label %160

160:                                              ; preds = %156, %143, %135
  %161 = phi ptr [ null, %135 ], [ null, %143 ], [ %159, %156 ]
  %162 = call zeroext i8 @operation_could_trap_helper_p(i32 noundef %22, i8 noundef zeroext %138, i8 noundef zeroext %139, i8 noundef zeroext %136, i8 noundef zeroext %137, ptr noundef %161, ptr noundef nonnull %2)
  %163 = load i8, ptr %2, align 1, !tbaa !63
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %197

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %167 = load i32, ptr %166, align 4, !tbaa !63
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %197, label %174

169:                                              ; preds = %193
  %170 = add nuw nsw i64 %175, 1
  %171 = load i32, ptr %166, align 4, !tbaa !63
  %172 = zext i32 %171 to i64
  %173 = icmp ult i64 %170, %172
  br i1 %173, label %174, label %197, !llvm.loop !135

174:                                              ; preds = %165, %169
  %175 = phi i64 [ %170, %169 ], [ 0, %165 ]
  %176 = load i32, ptr %0, align 8
  %177 = and i32 %176, 255
  %178 = add nsw i32 %177, -10
  %179 = icmp ult i32 %178, -9
  br i1 %179, label %193, label %180

180:                                              ; preds = %174
  %181 = zext nneg i32 %177 to i64
  %182 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !67
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %184
  %186 = load i64, ptr %185, align 8, !tbaa !134
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %189

189:                                              ; preds = %188, %180
  %190 = getelementptr inbounds i8, ptr %0, i64 %186
  %191 = getelementptr inbounds ptr, ptr %190, i64 %175
  %192 = load ptr, ptr %191, align 8, !tbaa !52
  br label %193

193:                                              ; preds = %189, %174
  %194 = phi ptr [ %192, %189 ], [ null, %174 ]
  %195 = tail call zeroext i8 @tree_could_trap_p(ptr noundef %194), !range !118
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %169, label %197

197:                                              ; preds = %193, %169, %165, %160
  %198 = phi i8 [ %162, %160 ], [ 0, %165 ], [ 0, %169 ], [ 1, %193 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #22
  br label %207

199:                                              ; preds = %5
  %200 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !67
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %199
  %203 = lshr i32 %6, 17
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  br label %207

206:                                              ; preds = %5
  br label %207

207:                                              ; preds = %14, %199, %5, %1, %206, %202, %197, %8
  %208 = phi i8 [ 0, %206 ], [ %205, %202 ], [ %198, %197 ], [ %13, %8 ], [ 0, %1 ], [ 1, %5 ], [ 0, %199 ], [ 0, %14 ]
  ret i8 %208
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @tree_could_throw_p(ptr noundef %0) local_unnamed_addr #10 !prof !51 {
  %2 = load i32, ptr @flag_exceptions, align 4, !tbaa !67
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %42, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 53
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !67
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = tail call zeroext i8 @tree_could_trap_p(ptr noundef %13), !range !118
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %11, %8
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  br label %19

19:                                               ; preds = %16, %4
  %20 = phi ptr [ %18, %16 ], [ %0, %4 ]
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 150
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi ptr [ %26, %24 ], [ %20, %19 ]
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 59
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = tail call i32 @call_expr_flags(ptr noundef nonnull %28) #22
  %34 = and i32 %33, 64
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i8
  br label %42

37:                                               ; preds = %27
  %38 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !67
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call zeroext i8 @tree_could_trap_p(ptr noundef nonnull %28), !range !118
  br label %42

42:                                               ; preds = %37, %11, %1, %40, %32
  %43 = phi i8 [ %36, %32 ], [ %41, %40 ], [ 0, %1 ], [ 1, %11 ], [ 0, %37 ]
  ret i8 %43
}

declare i32 @call_expr_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @stmt_can_throw_external(ptr noundef %0) local_unnamed_addr #12 !prof !136 {
  %2 = alloca i8, align 1
  %3 = load i32, ptr @flag_exceptions, align 4, !tbaa !67
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %207, label %5, !prof !133

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i8
  switch i8 %7, label %206 [
    i8 14, label %207
    i8 8, label %8
    i8 6, label %14
    i8 1, label %14
    i8 7, label %199
  ]

8:                                                ; preds = %5
  %9 = tail call i32 @gimple_call_flags(ptr noundef nonnull %0) #22
  %10 = trunc i32 %9 to i8
  %11 = lshr i8 %10, 6
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  br label %207

14:                                               ; preds = %5, %5
  %15 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !67
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %207, label %17

17:                                               ; preds = %14
  switch i8 %7, label %20 [
    i8 6, label %18
    i8 1, label %18
    i8 8, label %21
  ]

18:                                               ; preds = %17, %17
  %19 = lshr i32 %6, 16
  br label %21

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %21

21:                                               ; preds = %20, %18, %17
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ], [ 59, %17 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #22
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !67
  %26 = add i32 %25, -5
  %27 = icmp ult i32 %26, 3
  br i1 %27, label %28, label %135

28:                                               ; preds = %21
  %29 = load i32, ptr %0, align 8
  %30 = trunc i32 %29 to i8
  switch i8 %30, label %101 [
    i8 8, label %31
    i8 6, label %52
    i8 1, label %102
  ]

31:                                               ; preds = %28
  %32 = and i32 %29, 255
  %33 = add nsw i32 %32, -1
  %34 = icmp ult i32 %33, 9
  tail call void @llvm.assume(i1 %34)
  %35 = zext nneg i32 %32 to i64
  %36 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !67
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !134
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %43

43:                                               ; preds = %42, %31
  %44 = getelementptr inbounds i8, ptr %0, i64 %40
  %45 = getelementptr inbounds ptr, ptr %44, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !63
  %49 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  br label %102

52:                                               ; preds = %28
  %53 = lshr i32 %29, 16
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !63
  %57 = icmp eq i8 %56, 3
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = and i32 %29, 255
  %60 = add nsw i32 %59, -1
  %61 = icmp ult i32 %60, 9
  tail call void @llvm.assume(i1 %61)
  %62 = zext nneg i32 %59 to i64
  %63 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !67
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !134
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %70

70:                                               ; preds = %69, %58
  %71 = getelementptr inbounds i8, ptr %0, i64 %67
  %72 = getelementptr inbounds ptr, ptr %71, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !52
  %74 = load i64, ptr %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = and i32 %75, 65535
  br label %77

77:                                               ; preds = %70, %52
  %78 = phi i32 [ %76, %70 ], [ %53, %52 ]
  %79 = icmp eq i32 %78, 66
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = load i32, ptr %0, align 8
  %82 = and i32 %81, 255
  %83 = add nsw i32 %82, -1
  %84 = icmp ult i32 %83, 9
  tail call void @llvm.assume(i1 %84)
  %85 = zext nneg i32 %82 to i64
  %86 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !67
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %88
  %90 = load i64, ptr %89, align 8, !tbaa !134
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %93

93:                                               ; preds = %92, %80
  %94 = getelementptr inbounds i8, ptr %0, i64 %90
  %95 = getelementptr inbounds ptr, ptr %94, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !52
  %97 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  br label %102

98:                                               ; preds = %77
  %99 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #22
  %100 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 2
  br label %102

101:                                              ; preds = %28
  br label %102

102:                                              ; preds = %101, %98, %93, %43, %28
  %103 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %101 ], [ %51, %43 ], [ %97, %93 ], [ %100, %98 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %28 ]
  %104 = load ptr, ptr %103, align 8, !tbaa !63
  %105 = load i64, ptr %104, align 8
  %106 = trunc i64 %105 to i16
  switch i16 %106, label %123 [
    i16 9, label %113
    i16 13, label %107
    i16 14, label %107
  ]

107:                                              ; preds = %102, %102
  %108 = getelementptr inbounds %struct.tree_common, ptr %104, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !63
  %110 = load i64, ptr %109, align 8
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 9
  br i1 %112, label %113, label %123

113:                                              ; preds = %107, %102
  %114 = load i32, ptr @flag_trapping_math, align 4, !tbaa !67
  %115 = icmp ne i32 %114, 0
  %116 = load i32, ptr @flag_finite_math_only, align 4
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %115, i1 %117, i1 false
  %119 = zext i1 %118 to i8
  %120 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !67
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i8
  br label %135

123:                                              ; preds = %107, %102
  %124 = trunc i64 %105 to i32
  %125 = and i32 %124, 65535
  %126 = add nsw i32 %125, -6
  %127 = icmp ult i32 %126, 3
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = and i64 %105, 2097152
  %130 = icmp eq i64 %129, 0
  %131 = load i32, ptr @flag_trapv, align 4
  %132 = icmp ne i32 %131, 0
  %133 = select i1 %130, i1 %132, i1 false
  %134 = zext i1 %133 to i8
  br label %135

135:                                              ; preds = %128, %123, %113, %21
  %136 = phi i8 [ %119, %113 ], [ 0, %21 ], [ 0, %123 ], [ 0, %128 ]
  %137 = phi i8 [ %122, %113 ], [ 0, %21 ], [ 0, %123 ], [ 0, %128 ]
  %138 = phi i8 [ 1, %113 ], [ 0, %21 ], [ 0, %123 ], [ 0, %128 ]
  %139 = phi i8 [ 0, %113 ], [ 0, %21 ], [ 0, %123 ], [ %134, %128 ]
  %140 = load i32, ptr %0, align 8
  %141 = and i32 %140, 255
  %142 = icmp eq i32 %141, 6
  br i1 %142, label %143, label %160

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %145 = load i32, ptr %144, align 4, !tbaa !63
  %146 = icmp ult i32 %145, 3
  br i1 %146, label %160, label %147

147:                                              ; preds = %143
  %148 = zext nneg i32 %141 to i64
  %149 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !67
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %151
  %153 = load i64, ptr %152, align 8, !tbaa !134
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %156

156:                                              ; preds = %155, %147
  %157 = getelementptr inbounds i8, ptr %0, i64 %153
  %158 = getelementptr inbounds ptr, ptr %157, i64 2
  %159 = load ptr, ptr %158, align 8, !tbaa !52
  br label %160

160:                                              ; preds = %156, %143, %135
  %161 = phi ptr [ null, %135 ], [ null, %143 ], [ %159, %156 ]
  %162 = call zeroext i8 @operation_could_trap_helper_p(i32 noundef %22, i8 noundef zeroext %138, i8 noundef zeroext %139, i8 noundef zeroext %136, i8 noundef zeroext %137, ptr noundef %161, ptr noundef nonnull %2)
  %163 = load i8, ptr %2, align 1, !tbaa !63
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %197

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %167 = load i32, ptr %166, align 4, !tbaa !63
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %197, label %174

169:                                              ; preds = %193
  %170 = add nuw nsw i64 %175, 1
  %171 = load i32, ptr %166, align 4, !tbaa !63
  %172 = zext i32 %171 to i64
  %173 = icmp ult i64 %170, %172
  br i1 %173, label %174, label %197, !llvm.loop !135

174:                                              ; preds = %165, %169
  %175 = phi i64 [ %170, %169 ], [ 0, %165 ]
  %176 = load i32, ptr %0, align 8
  %177 = and i32 %176, 255
  %178 = add nsw i32 %177, -10
  %179 = icmp ult i32 %178, -9
  br i1 %179, label %193, label %180

180:                                              ; preds = %174
  %181 = zext nneg i32 %177 to i64
  %182 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !67
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %184
  %186 = load i64, ptr %185, align 8, !tbaa !134
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %189

189:                                              ; preds = %188, %180
  %190 = getelementptr inbounds i8, ptr %0, i64 %186
  %191 = getelementptr inbounds ptr, ptr %190, i64 %175
  %192 = load ptr, ptr %191, align 8, !tbaa !52
  br label %193

193:                                              ; preds = %189, %174
  %194 = phi ptr [ %192, %189 ], [ null, %174 ]
  %195 = tail call zeroext i8 @tree_could_trap_p(ptr noundef %194), !range !118
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %169, label %197

197:                                              ; preds = %193, %169, %165, %160
  %198 = phi i8 [ %162, %160 ], [ 0, %165 ], [ 0, %169 ], [ 1, %193 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #22
  br label %207

199:                                              ; preds = %5
  %200 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !67
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %199
  %203 = lshr i32 %6, 17
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  br label %207

206:                                              ; preds = %5
  br label %207

207:                                              ; preds = %1, %5, %8, %14, %197, %199, %202, %206
  %208 = phi i8 [ 0, %206 ], [ %205, %202 ], [ %198, %197 ], [ %13, %8 ], [ 0, %1 ], [ 1, %5 ], [ 0, %199 ], [ 0, %14 ]
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %214, label %210, !prof !137

210:                                              ; preds = %207
  %211 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %0)
  %212 = icmp eq i32 %211, 0
  %213 = zext i1 %212 to i8
  br label %214

214:                                              ; preds = %207, %210
  %215 = phi i8 [ %213, %210 ], [ 0, %207 ]
  ret i8 %215
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @stmt_can_throw_internal(ptr noundef %0) local_unnamed_addr #12 !prof !138 {
  %2 = alloca i8, align 1
  %3 = load i32, ptr @flag_exceptions, align 4, !tbaa !67
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %207, label %5, !prof !133

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i8
  switch i8 %7, label %206 [
    i8 14, label %207
    i8 8, label %8
    i8 6, label %14
    i8 1, label %14
    i8 7, label %199
  ]

8:                                                ; preds = %5
  %9 = tail call i32 @gimple_call_flags(ptr noundef nonnull %0) #22
  %10 = trunc i32 %9 to i8
  %11 = lshr i8 %10, 6
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  br label %207

14:                                               ; preds = %5, %5
  %15 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !67
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %207, label %17

17:                                               ; preds = %14
  switch i8 %7, label %20 [
    i8 6, label %18
    i8 1, label %18
    i8 8, label %21
  ]

18:                                               ; preds = %17, %17
  %19 = lshr i32 %6, 16
  br label %21

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %21

21:                                               ; preds = %20, %18, %17
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ], [ 59, %17 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #22
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !67
  %26 = add i32 %25, -5
  %27 = icmp ult i32 %26, 3
  br i1 %27, label %28, label %135

28:                                               ; preds = %21
  %29 = load i32, ptr %0, align 8
  %30 = trunc i32 %29 to i8
  switch i8 %30, label %101 [
    i8 8, label %31
    i8 6, label %52
    i8 1, label %102
  ]

31:                                               ; preds = %28
  %32 = and i32 %29, 255
  %33 = add nsw i32 %32, -1
  %34 = icmp ult i32 %33, 9
  tail call void @llvm.assume(i1 %34)
  %35 = zext nneg i32 %32 to i64
  %36 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !67
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !134
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %43

43:                                               ; preds = %42, %31
  %44 = getelementptr inbounds i8, ptr %0, i64 %40
  %45 = getelementptr inbounds ptr, ptr %44, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !63
  %49 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  br label %102

52:                                               ; preds = %28
  %53 = lshr i32 %29, 16
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !63
  %57 = icmp eq i8 %56, 3
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = and i32 %29, 255
  %60 = add nsw i32 %59, -1
  %61 = icmp ult i32 %60, 9
  tail call void @llvm.assume(i1 %61)
  %62 = zext nneg i32 %59 to i64
  %63 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !67
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !134
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %70

70:                                               ; preds = %69, %58
  %71 = getelementptr inbounds i8, ptr %0, i64 %67
  %72 = getelementptr inbounds ptr, ptr %71, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !52
  %74 = load i64, ptr %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = and i32 %75, 65535
  br label %77

77:                                               ; preds = %70, %52
  %78 = phi i32 [ %76, %70 ], [ %53, %52 ]
  %79 = icmp eq i32 %78, 66
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = load i32, ptr %0, align 8
  %82 = and i32 %81, 255
  %83 = add nsw i32 %82, -1
  %84 = icmp ult i32 %83, 9
  tail call void @llvm.assume(i1 %84)
  %85 = zext nneg i32 %82 to i64
  %86 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !67
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %88
  %90 = load i64, ptr %89, align 8, !tbaa !134
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %93

93:                                               ; preds = %92, %80
  %94 = getelementptr inbounds i8, ptr %0, i64 %90
  %95 = getelementptr inbounds ptr, ptr %94, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !52
  %97 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  br label %102

98:                                               ; preds = %77
  %99 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #22
  %100 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 2
  br label %102

101:                                              ; preds = %28
  br label %102

102:                                              ; preds = %101, %98, %93, %43, %28
  %103 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %101 ], [ %51, %43 ], [ %97, %93 ], [ %100, %98 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %28 ]
  %104 = load ptr, ptr %103, align 8, !tbaa !63
  %105 = load i64, ptr %104, align 8
  %106 = trunc i64 %105 to i16
  switch i16 %106, label %123 [
    i16 9, label %113
    i16 13, label %107
    i16 14, label %107
  ]

107:                                              ; preds = %102, %102
  %108 = getelementptr inbounds %struct.tree_common, ptr %104, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !63
  %110 = load i64, ptr %109, align 8
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 9
  br i1 %112, label %113, label %123

113:                                              ; preds = %107, %102
  %114 = load i32, ptr @flag_trapping_math, align 4, !tbaa !67
  %115 = icmp ne i32 %114, 0
  %116 = load i32, ptr @flag_finite_math_only, align 4
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %115, i1 %117, i1 false
  %119 = zext i1 %118 to i8
  %120 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !67
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i8
  br label %135

123:                                              ; preds = %107, %102
  %124 = trunc i64 %105 to i32
  %125 = and i32 %124, 65535
  %126 = add nsw i32 %125, -6
  %127 = icmp ult i32 %126, 3
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = and i64 %105, 2097152
  %130 = icmp eq i64 %129, 0
  %131 = load i32, ptr @flag_trapv, align 4
  %132 = icmp ne i32 %131, 0
  %133 = select i1 %130, i1 %132, i1 false
  %134 = zext i1 %133 to i8
  br label %135

135:                                              ; preds = %128, %123, %113, %21
  %136 = phi i8 [ %119, %113 ], [ 0, %21 ], [ 0, %123 ], [ 0, %128 ]
  %137 = phi i8 [ %122, %113 ], [ 0, %21 ], [ 0, %123 ], [ 0, %128 ]
  %138 = phi i8 [ 1, %113 ], [ 0, %21 ], [ 0, %123 ], [ 0, %128 ]
  %139 = phi i8 [ 0, %113 ], [ 0, %21 ], [ 0, %123 ], [ %134, %128 ]
  %140 = load i32, ptr %0, align 8
  %141 = and i32 %140, 255
  %142 = icmp eq i32 %141, 6
  br i1 %142, label %143, label %160

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %145 = load i32, ptr %144, align 4, !tbaa !63
  %146 = icmp ult i32 %145, 3
  br i1 %146, label %160, label %147

147:                                              ; preds = %143
  %148 = zext nneg i32 %141 to i64
  %149 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !67
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %151
  %153 = load i64, ptr %152, align 8, !tbaa !134
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %156

156:                                              ; preds = %155, %147
  %157 = getelementptr inbounds i8, ptr %0, i64 %153
  %158 = getelementptr inbounds ptr, ptr %157, i64 2
  %159 = load ptr, ptr %158, align 8, !tbaa !52
  br label %160

160:                                              ; preds = %156, %143, %135
  %161 = phi ptr [ null, %135 ], [ null, %143 ], [ %159, %156 ]
  %162 = call zeroext i8 @operation_could_trap_helper_p(i32 noundef %22, i8 noundef zeroext %138, i8 noundef zeroext %139, i8 noundef zeroext %136, i8 noundef zeroext %137, ptr noundef %161, ptr noundef nonnull %2)
  %163 = load i8, ptr %2, align 1, !tbaa !63
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %197

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %167 = load i32, ptr %166, align 4, !tbaa !63
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %197, label %174

169:                                              ; preds = %193
  %170 = add nuw nsw i64 %175, 1
  %171 = load i32, ptr %166, align 4, !tbaa !63
  %172 = zext i32 %171 to i64
  %173 = icmp ult i64 %170, %172
  br i1 %173, label %174, label %197, !llvm.loop !135

174:                                              ; preds = %165, %169
  %175 = phi i64 [ %170, %169 ], [ 0, %165 ]
  %176 = load i32, ptr %0, align 8
  %177 = and i32 %176, 255
  %178 = add nsw i32 %177, -10
  %179 = icmp ult i32 %178, -9
  br i1 %179, label %193, label %180

180:                                              ; preds = %174
  %181 = zext nneg i32 %177 to i64
  %182 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !67
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %184
  %186 = load i64, ptr %185, align 8, !tbaa !134
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %189

189:                                              ; preds = %188, %180
  %190 = getelementptr inbounds i8, ptr %0, i64 %186
  %191 = getelementptr inbounds ptr, ptr %190, i64 %175
  %192 = load ptr, ptr %191, align 8, !tbaa !52
  br label %193

193:                                              ; preds = %189, %174
  %194 = phi ptr [ %192, %189 ], [ null, %174 ]
  %195 = tail call zeroext i8 @tree_could_trap_p(ptr noundef %194), !range !118
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %169, label %197

197:                                              ; preds = %193, %169, %165, %160
  %198 = phi i8 [ %162, %160 ], [ 0, %165 ], [ 0, %169 ], [ 1, %193 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #22
  br label %207

199:                                              ; preds = %5
  %200 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !67
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %199
  %203 = lshr i32 %6, 17
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  br label %207

206:                                              ; preds = %5
  br label %207

207:                                              ; preds = %1, %5, %8, %14, %197, %199, %202, %206
  %208 = phi i8 [ 0, %206 ], [ %205, %202 ], [ %198, %197 ], [ %13, %8 ], [ 0, %1 ], [ 1, %5 ], [ 0, %199 ], [ 0, %14 ]
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %214, label %210, !prof !139

210:                                              ; preds = %207
  %211 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %0)
  %212 = icmp sgt i32 %211, 0
  %213 = zext i1 %212 to i8
  br label %214

214:                                              ; preds = %207, %210
  %215 = phi i8 [ %213, %210 ], [ 0, %207 ]
  ret i8 %215
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @maybe_clean_eh_stmt_fn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !51 {
  %3 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %1)
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call zeroext i8 @remove_stmt_from_eh_lp_fn(ptr noundef %0, ptr noundef %1), !range !118
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8 [ %6, %5 ], [ 0, %2 ]
  ret i8 %8
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @maybe_clean_eh_stmt(ptr noundef %0) local_unnamed_addr #12 !prof !140 {
  %2 = alloca %struct.throw_stmt_node, align 8
  %3 = alloca i8, align 1
  %4 = load ptr, ptr @cfun, align 8, !tbaa !52
  %5 = load i32, ptr @flag_exceptions, align 4, !tbaa !67
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %209, label %7, !prof !133

7:                                                ; preds = %1
  %8 = load i32, ptr %0, align 8
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %208 [
    i8 14, label %209
    i8 8, label %10
    i8 6, label %16
    i8 1, label %16
    i8 7, label %201
  ]

10:                                               ; preds = %7
  %11 = tail call i32 @gimple_call_flags(ptr noundef nonnull %0) #22
  %12 = trunc i32 %11 to i8
  %13 = lshr i8 %12, 6
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  br label %209

16:                                               ; preds = %7, %7
  %17 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !67
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %209, label %19

19:                                               ; preds = %16
  switch i8 %9, label %22 [
    i8 6, label %20
    i8 1, label %20
    i8 8, label %23
  ]

20:                                               ; preds = %19, %19
  %21 = lshr i32 %8, 16
  br label %23

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %23

23:                                               ; preds = %22, %20, %19
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ], [ 59, %19 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !67
  %28 = add i32 %27, -5
  %29 = icmp ult i32 %28, 3
  br i1 %29, label %30, label %137

30:                                               ; preds = %23
  %31 = load i32, ptr %0, align 8
  %32 = trunc i32 %31 to i8
  switch i8 %32, label %103 [
    i8 8, label %33
    i8 6, label %54
    i8 1, label %104
  ]

33:                                               ; preds = %30
  %34 = and i32 %31, 255
  %35 = add nsw i32 %34, -1
  %36 = icmp ult i32 %35, 9
  tail call void @llvm.assume(i1 %36)
  %37 = zext nneg i32 %34 to i64
  %38 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !67
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !134
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %45

45:                                               ; preds = %44, %33
  %46 = getelementptr inbounds i8, ptr %0, i64 %42
  %47 = getelementptr inbounds ptr, ptr %46, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !52
  %49 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !63
  %53 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  br label %104

54:                                               ; preds = %30
  %55 = lshr i32 %31, 16
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !63
  %59 = icmp eq i8 %58, 3
  br i1 %59, label %60, label %79

60:                                               ; preds = %54
  %61 = and i32 %31, 255
  %62 = add nsw i32 %61, -1
  %63 = icmp ult i32 %62, 9
  tail call void @llvm.assume(i1 %63)
  %64 = zext nneg i32 %61 to i64
  %65 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !67
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %67
  %69 = load i64, ptr %68, align 8, !tbaa !134
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %72

72:                                               ; preds = %71, %60
  %73 = getelementptr inbounds i8, ptr %0, i64 %69
  %74 = getelementptr inbounds ptr, ptr %73, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !52
  %76 = load i64, ptr %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = and i32 %77, 65535
  br label %79

79:                                               ; preds = %72, %54
  %80 = phi i32 [ %78, %72 ], [ %55, %54 ]
  %81 = icmp eq i32 %80, 66
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load i32, ptr %0, align 8
  %84 = and i32 %83, 255
  %85 = add nsw i32 %84, -1
  %86 = icmp ult i32 %85, 9
  tail call void @llvm.assume(i1 %86)
  %87 = zext nneg i32 %84 to i64
  %88 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !67
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !134
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %95

95:                                               ; preds = %94, %82
  %96 = getelementptr inbounds i8, ptr %0, i64 %92
  %97 = getelementptr inbounds ptr, ptr %96, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !52
  %99 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 2
  br label %104

100:                                              ; preds = %79
  %101 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #22
  %102 = getelementptr inbounds %struct.tree_common, ptr %101, i64 0, i32 2
  br label %104

103:                                              ; preds = %30
  br label %104

104:                                              ; preds = %103, %100, %95, %45, %30
  %105 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %103 ], [ %53, %45 ], [ %99, %95 ], [ %102, %100 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %30 ]
  %106 = load ptr, ptr %105, align 8, !tbaa !63
  %107 = load i64, ptr %106, align 8
  %108 = trunc i64 %107 to i16
  switch i16 %108, label %125 [
    i16 9, label %115
    i16 13, label %109
    i16 14, label %109
  ]

109:                                              ; preds = %104, %104
  %110 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !63
  %112 = load i64, ptr %111, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 9
  br i1 %114, label %115, label %125

115:                                              ; preds = %109, %104
  %116 = load i32, ptr @flag_trapping_math, align 4, !tbaa !67
  %117 = icmp ne i32 %116, 0
  %118 = load i32, ptr @flag_finite_math_only, align 4
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %117, i1 %119, i1 false
  %121 = zext i1 %120 to i8
  %122 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !67
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i8
  br label %137

125:                                              ; preds = %109, %104
  %126 = trunc i64 %107 to i32
  %127 = and i32 %126, 65535
  %128 = add nsw i32 %127, -6
  %129 = icmp ult i32 %128, 3
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = and i64 %107, 2097152
  %132 = icmp eq i64 %131, 0
  %133 = load i32, ptr @flag_trapv, align 4
  %134 = icmp ne i32 %133, 0
  %135 = select i1 %132, i1 %134, i1 false
  %136 = zext i1 %135 to i8
  br label %137

137:                                              ; preds = %130, %125, %115, %23
  %138 = phi i8 [ %121, %115 ], [ 0, %23 ], [ 0, %125 ], [ 0, %130 ]
  %139 = phi i8 [ %124, %115 ], [ 0, %23 ], [ 0, %125 ], [ 0, %130 ]
  %140 = phi i8 [ 1, %115 ], [ 0, %23 ], [ 0, %125 ], [ 0, %130 ]
  %141 = phi i8 [ 0, %115 ], [ 0, %23 ], [ 0, %125 ], [ %136, %130 ]
  %142 = load i32, ptr %0, align 8
  %143 = and i32 %142, 255
  %144 = icmp eq i32 %143, 6
  br i1 %144, label %145, label %162

145:                                              ; preds = %137
  %146 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %147 = load i32, ptr %146, align 4, !tbaa !63
  %148 = icmp ult i32 %147, 3
  br i1 %148, label %162, label %149

149:                                              ; preds = %145
  %150 = zext nneg i32 %143 to i64
  %151 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !67
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %153
  %155 = load i64, ptr %154, align 8, !tbaa !134
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %158

158:                                              ; preds = %157, %149
  %159 = getelementptr inbounds i8, ptr %0, i64 %155
  %160 = getelementptr inbounds ptr, ptr %159, i64 2
  %161 = load ptr, ptr %160, align 8, !tbaa !52
  br label %162

162:                                              ; preds = %158, %145, %137
  %163 = phi ptr [ null, %137 ], [ null, %145 ], [ %161, %158 ]
  %164 = call zeroext i8 @operation_could_trap_helper_p(i32 noundef %24, i8 noundef zeroext %140, i8 noundef zeroext %141, i8 noundef zeroext %138, i8 noundef zeroext %139, ptr noundef %163, ptr noundef nonnull %3)
  %165 = load i8, ptr %3, align 1, !tbaa !63
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %199

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %169 = load i32, ptr %168, align 4, !tbaa !63
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %199, label %176

171:                                              ; preds = %195
  %172 = add nuw nsw i64 %177, 1
  %173 = load i32, ptr %168, align 4, !tbaa !63
  %174 = zext i32 %173 to i64
  %175 = icmp ult i64 %172, %174
  br i1 %175, label %176, label %199, !llvm.loop !135

176:                                              ; preds = %167, %171
  %177 = phi i64 [ %172, %171 ], [ 0, %167 ]
  %178 = load i32, ptr %0, align 8
  %179 = and i32 %178, 255
  %180 = add nsw i32 %179, -10
  %181 = icmp ult i32 %180, -9
  br i1 %181, label %195, label %182

182:                                              ; preds = %176
  %183 = zext nneg i32 %179 to i64
  %184 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !67
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %186
  %188 = load i64, ptr %187, align 8, !tbaa !134
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %191

191:                                              ; preds = %190, %182
  %192 = getelementptr inbounds i8, ptr %0, i64 %188
  %193 = getelementptr inbounds ptr, ptr %192, i64 %177
  %194 = load ptr, ptr %193, align 8, !tbaa !52
  br label %195

195:                                              ; preds = %191, %176
  %196 = phi ptr [ %194, %191 ], [ null, %176 ]
  %197 = tail call zeroext i8 @tree_could_trap_p(ptr noundef %196), !range !118
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %171, label %199

199:                                              ; preds = %195, %171, %167, %162
  %200 = phi i8 [ %164, %162 ], [ 0, %167 ], [ 0, %171 ], [ 1, %195 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  br label %209

201:                                              ; preds = %7
  %202 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !67
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %201
  %205 = lshr i32 %8, 17
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  br label %209

208:                                              ; preds = %7
  br label %209

209:                                              ; preds = %1, %7, %10, %16, %199, %201, %204, %208
  %210 = phi i8 [ 0, %208 ], [ %207, %204 ], [ %200, %199 ], [ %15, %10 ], [ 0, %1 ], [ 1, %7 ], [ 0, %201 ], [ 0, %16 ]
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %223, !prof !141

212:                                              ; preds = %209
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %213 = tail call ptr @get_eh_throw_stmt_table(ptr noundef %4) #22
  %214 = icmp eq ptr %213, null
  br i1 %214, label %221, label %215, !prof !78

215:                                              ; preds = %212
  store ptr %0, ptr %2, align 8, !tbaa !71
  %216 = tail call ptr @get_eh_throw_stmt_table(ptr noundef %4) #22
  %217 = call ptr @htab_find_slot(ptr noundef %216, ptr noundef nonnull %2, i32 noundef 0) #22
  %218 = icmp eq ptr %217, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %215
  %220 = call ptr @get_eh_throw_stmt_table(ptr noundef %4) #22
  call void @htab_clear_slot(ptr noundef %220, ptr noundef nonnull %217) #22
  br label %221

221:                                              ; preds = %212, %215, %219
  %222 = phi i8 [ 1, %219 ], [ 0, %212 ], [ 0, %215 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  br label %223

223:                                              ; preds = %209, %221
  %224 = phi i8 [ %222, %221 ], [ 0, %209 ]
  ret i8 %224
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !142 {
  %3 = alloca %struct.throw_stmt_node, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6, !prof !85

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %7 = load ptr, ptr %4, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.eh_status, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !prof !86

11:                                               ; preds = %6
  store ptr %0, ptr %3, align 8, !tbaa !71
  %12 = call ptr @htab_find(ptr noundef nonnull %9, ptr noundef nonnull %3) #22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.throw_stmt_node, ptr %12, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !73
  br label %17

17:                                               ; preds = %14, %11, %6
  %18 = phi i32 [ 0, %6 ], [ %16, %14 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  br label %19

19:                                               ; preds = %2, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22, !prof !143

22:                                               ; preds = %19
  %23 = call zeroext i8 @stmt_could_throw_p(ptr noundef %1)
  %24 = icmp eq ptr %1, %0
  %25 = icmp ne i8 %23, 0
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr @cfun, align 8, !tbaa !52
  %29 = call zeroext i8 @remove_stmt_from_eh_lp_fn(ptr noundef %28, ptr noundef %0), !range !118
  %30 = icmp eq i8 %23, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @cfun, align 8, !tbaa !52
  call void @add_stmt_to_eh_lp_fn(ptr noundef %32, ptr noundef %1, i32 noundef %20)
  br label %33

33:                                               ; preds = %19, %31, %22, %27
  %34 = phi i8 [ 0, %31 ], [ 0, %22 ], [ 1, %27 ], [ 0, %19 ]
  ret i8 %34
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @maybe_duplicate_eh_stmt_fn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #13 !prof !144 {
  %7 = alloca %struct.throw_stmt_node, align 8
  %8 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %1)
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %53, label %10, !prof !145

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #22
  %11 = load ptr, ptr %2, align 8, !tbaa !80
  %12 = getelementptr inbounds %struct.eh_status, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  store ptr %3, ptr %7, align 8, !tbaa !71
  %16 = call ptr @htab_find(ptr noundef nonnull %13, ptr noundef nonnull %7) #22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.throw_stmt_node, ptr %16, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !73
  br label %21

21:                                               ; preds = %10, %15, %18
  %22 = phi i32 [ 0, %10 ], [ %20, %18 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #22
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = icmp eq i32 %5, 0
  br i1 %25, label %53, label %51

26:                                               ; preds = %21
  %27 = icmp sgt i32 %22, 0
  %28 = load ptr, ptr %2, align 8, !tbaa !80
  br i1 %27, label %29, label %39

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.eh_status, ptr %28, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !146
  %32 = zext nneg i32 %22 to i64
  %33 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %31, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  %35 = call ptr @pointer_map_contains(ptr noundef %4, ptr noundef %34) #22
  %36 = load ptr, ptr %35, align 8, !tbaa !52
  %37 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %36, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !117
  br label %51

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.eh_status, ptr %28, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !147
  %42 = sub nsw i32 0, %22
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %41, i64 0, i32 2, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !52
  %46 = call ptr @pointer_map_contains(ptr noundef %4, ptr noundef %45) #22
  %47 = load ptr, ptr %46, align 8, !tbaa !52
  %48 = getelementptr inbounds %struct.eh_region_d, ptr %47, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !148
  %50 = sub nsw i32 0, %49
  br label %51

51:                                               ; preds = %24, %29, %39
  %52 = phi i32 [ %38, %29 ], [ %50, %39 ], [ %5, %24 ]
  call void @add_stmt_to_eh_lp_fn(ptr noundef %0, ptr noundef %1, i32 noundef %52)
  br label %53

53:                                               ; preds = %24, %6, %51
  %54 = phi i8 [ 1, %51 ], [ 0, %6 ], [ 0, %24 ]
  ret i8 %54
}

declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @maybe_duplicate_eh_stmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !149 {
  %3 = alloca i8, align 1
  %4 = load i32, ptr @flag_exceptions, align 4, !tbaa !67
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %208, label %6, !prof !133

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %207 [
    i8 14, label %208
    i8 8, label %9
    i8 6, label %15
    i8 1, label %15
    i8 7, label %200
  ]

9:                                                ; preds = %6
  %10 = tail call i32 @gimple_call_flags(ptr noundef nonnull %0) #22
  %11 = trunc i32 %10 to i8
  %12 = lshr i8 %11, 6
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  br label %208

15:                                               ; preds = %6, %6
  %16 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !67
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %208, label %18

18:                                               ; preds = %15
  switch i8 %8, label %21 [
    i8 6, label %19
    i8 1, label %19
    i8 8, label %22
  ]

19:                                               ; preds = %18, %18
  %20 = lshr i32 %7, 16
  br label %22

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %22

22:                                               ; preds = %21, %19, %18
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ], [ 59, %18 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !67
  %27 = add i32 %26, -5
  %28 = icmp ult i32 %27, 3
  br i1 %28, label %29, label %136

29:                                               ; preds = %22
  %30 = load i32, ptr %0, align 8
  %31 = trunc i32 %30 to i8
  switch i8 %31, label %102 [
    i8 8, label %32
    i8 6, label %53
    i8 1, label %103
  ]

32:                                               ; preds = %29
  %33 = and i32 %30, 255
  %34 = add nsw i32 %33, -1
  %35 = icmp ult i32 %34, 9
  tail call void @llvm.assume(i1 %35)
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !67
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !134
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %44

44:                                               ; preds = %43, %32
  %45 = getelementptr inbounds i8, ptr %0, i64 %41
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !52
  %48 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !63
  %50 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !63
  %52 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  br label %103

53:                                               ; preds = %29
  %54 = lshr i32 %30, 16
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !63
  %58 = icmp eq i8 %57, 3
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = and i32 %30, 255
  %61 = add nsw i32 %60, -1
  %62 = icmp ult i32 %61, 9
  tail call void @llvm.assume(i1 %62)
  %63 = zext nneg i32 %60 to i64
  %64 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !67
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !134
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %71

71:                                               ; preds = %70, %59
  %72 = getelementptr inbounds i8, ptr %0, i64 %68
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !52
  %75 = load i64, ptr %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = and i32 %76, 65535
  br label %78

78:                                               ; preds = %71, %53
  %79 = phi i32 [ %77, %71 ], [ %54, %53 ]
  %80 = icmp eq i32 %79, 66
  br i1 %80, label %81, label %99

81:                                               ; preds = %78
  %82 = load i32, ptr %0, align 8
  %83 = and i32 %82, 255
  %84 = add nsw i32 %83, -1
  %85 = icmp ult i32 %84, 9
  tail call void @llvm.assume(i1 %85)
  %86 = zext nneg i32 %83 to i64
  %87 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !67
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !134
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %94

94:                                               ; preds = %93, %81
  %95 = getelementptr inbounds i8, ptr %0, i64 %91
  %96 = getelementptr inbounds ptr, ptr %95, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !52
  %98 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 2
  br label %103

99:                                               ; preds = %78
  %100 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #22
  %101 = getelementptr inbounds %struct.tree_common, ptr %100, i64 0, i32 2
  br label %103

102:                                              ; preds = %29
  br label %103

103:                                              ; preds = %102, %99, %94, %44, %29
  %104 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %102 ], [ %52, %44 ], [ %98, %94 ], [ %101, %99 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %29 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !63
  %106 = load i64, ptr %105, align 8
  %107 = trunc i64 %106 to i16
  switch i16 %107, label %124 [
    i16 9, label %114
    i16 13, label %108
    i16 14, label %108
  ]

108:                                              ; preds = %103, %103
  %109 = getelementptr inbounds %struct.tree_common, ptr %105, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !63
  %111 = load i64, ptr %110, align 8
  %112 = and i64 %111, 65535
  %113 = icmp eq i64 %112, 9
  br i1 %113, label %114, label %124

114:                                              ; preds = %108, %103
  %115 = load i32, ptr @flag_trapping_math, align 4, !tbaa !67
  %116 = icmp ne i32 %115, 0
  %117 = load i32, ptr @flag_finite_math_only, align 4
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %116, i1 %118, i1 false
  %120 = zext i1 %119 to i8
  %121 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !67
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i8
  br label %136

124:                                              ; preds = %108, %103
  %125 = trunc i64 %106 to i32
  %126 = and i32 %125, 65535
  %127 = add nsw i32 %126, -6
  %128 = icmp ult i32 %127, 3
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = and i64 %106, 2097152
  %131 = icmp eq i64 %130, 0
  %132 = load i32, ptr @flag_trapv, align 4
  %133 = icmp ne i32 %132, 0
  %134 = select i1 %131, i1 %133, i1 false
  %135 = zext i1 %134 to i8
  br label %136

136:                                              ; preds = %129, %124, %114, %22
  %137 = phi i8 [ %120, %114 ], [ 0, %22 ], [ 0, %124 ], [ 0, %129 ]
  %138 = phi i8 [ %123, %114 ], [ 0, %22 ], [ 0, %124 ], [ 0, %129 ]
  %139 = phi i8 [ 1, %114 ], [ 0, %22 ], [ 0, %124 ], [ 0, %129 ]
  %140 = phi i8 [ 0, %114 ], [ 0, %22 ], [ 0, %124 ], [ %135, %129 ]
  %141 = load i32, ptr %0, align 8
  %142 = and i32 %141, 255
  %143 = icmp eq i32 %142, 6
  br i1 %143, label %144, label %161

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %146 = load i32, ptr %145, align 4, !tbaa !63
  %147 = icmp ult i32 %146, 3
  br i1 %147, label %161, label %148

148:                                              ; preds = %144
  %149 = zext nneg i32 %142 to i64
  %150 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !67
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %152
  %154 = load i64, ptr %153, align 8, !tbaa !134
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %157

157:                                              ; preds = %156, %148
  %158 = getelementptr inbounds i8, ptr %0, i64 %154
  %159 = getelementptr inbounds ptr, ptr %158, i64 2
  %160 = load ptr, ptr %159, align 8, !tbaa !52
  br label %161

161:                                              ; preds = %157, %144, %136
  %162 = phi ptr [ null, %136 ], [ null, %144 ], [ %160, %157 ]
  %163 = call zeroext i8 @operation_could_trap_helper_p(i32 noundef %23, i8 noundef zeroext %139, i8 noundef zeroext %140, i8 noundef zeroext %137, i8 noundef zeroext %138, ptr noundef %162, ptr noundef nonnull %3)
  %164 = load i8, ptr %3, align 1, !tbaa !63
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %198

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %168 = load i32, ptr %167, align 4, !tbaa !63
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %198, label %175

170:                                              ; preds = %194
  %171 = add nuw nsw i64 %176, 1
  %172 = load i32, ptr %167, align 4, !tbaa !63
  %173 = zext i32 %172 to i64
  %174 = icmp ult i64 %171, %173
  br i1 %174, label %175, label %198, !llvm.loop !135

175:                                              ; preds = %166, %170
  %176 = phi i64 [ %171, %170 ], [ 0, %166 ]
  %177 = load i32, ptr %0, align 8
  %178 = and i32 %177, 255
  %179 = add nsw i32 %178, -10
  %180 = icmp ult i32 %179, -9
  br i1 %180, label %194, label %181

181:                                              ; preds = %175
  %182 = zext nneg i32 %178 to i64
  %183 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !67
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %185
  %187 = load i64, ptr %186, align 8, !tbaa !134
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %190

190:                                              ; preds = %189, %181
  %191 = getelementptr inbounds i8, ptr %0, i64 %187
  %192 = getelementptr inbounds ptr, ptr %191, i64 %176
  %193 = load ptr, ptr %192, align 8, !tbaa !52
  br label %194

194:                                              ; preds = %190, %175
  %195 = phi ptr [ %193, %190 ], [ null, %175 ]
  %196 = tail call zeroext i8 @tree_could_trap_p(ptr noundef %195), !range !118
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %170, label %198

198:                                              ; preds = %194, %170, %166, %161
  %199 = phi i8 [ %163, %161 ], [ 0, %166 ], [ 0, %170 ], [ 1, %194 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  br label %208

200:                                              ; preds = %6
  %201 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !67
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %200
  %204 = lshr i32 %7, 17
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  br label %208

207:                                              ; preds = %6
  br label %208

208:                                              ; preds = %2, %6, %9, %15, %198, %200, %203, %207
  %209 = phi i8 [ 0, %207 ], [ %206, %203 ], [ %199, %198 ], [ %14, %9 ], [ 0, %2 ], [ 1, %6 ], [ 0, %200 ], [ 0, %15 ]
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %216, label %211, !prof !150

211:                                              ; preds = %208
  %212 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %1)
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = load ptr, ptr @cfun, align 8, !tbaa !52
  tail call void @add_stmt_to_eh_lp_fn(ptr noundef %215, ptr noundef %0, i32 noundef %212)
  br label %216

216:                                              ; preds = %211, %208, %214
  %217 = phi i8 [ 1, %214 ], [ 0, %208 ], [ 0, %211 ]
  ret i8 %217
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_refactor_eh() #14 !prof !87 !PGOFuncName !151 {
  %1 = load i32, ptr @flag_exceptions, align 4, !tbaa !67
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @refactor_eh() #10 !prof !51 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !52
  %2 = tail call ptr @gimple_body(ptr noundef %1) #22
  tail call fastcc void @refactor_eh_r(ptr noundef %2)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_lower_resx() #14 !prof !152 !PGOFuncName !153 {
  %1 = load i32, ptr @flag_exceptions, align 4, !tbaa !67
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: cold nounwind uwtable
define internal i32 @execute_lower_resx() #10 !prof !51 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = tail call ptr @pointer_map_create() #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !154
  %7 = load ptr, ptr %6, align 8, !tbaa !155
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !157
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %276, label %13

13:                                               ; preds = %0
  %14 = getelementptr inbounds i8, ptr %1, i64 8
  %15 = getelementptr inbounds i8, ptr %1, i64 16
  br label %16

16:                                               ; preds = %13, %261
  %17 = phi ptr [ %9, %13 ], [ %265, %261 ]
  %18 = phi i8 [ 0, %13 ], [ %263, %261 ]
  %19 = phi i8 [ 0, %13 ], [ %262, %261 ]
  %20 = call ptr @last_stmt(ptr noundef %17) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %261, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr %20, align 8
  %24 = and i32 %23, 255
  %25 = icmp eq i32 %24, 14
  br i1 %25, label %26, label %261

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  %27 = call i32 @lookup_stmt_eh_lp(ptr noundef nonnull %20)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call ptr @get_eh_region_from_lp_number(i32 noundef %27) #22
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi ptr [ %30, %29 ], [ null, %26 ]
  %33 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %20, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !63
  %35 = call ptr @get_eh_region_from_number(i32 noundef %34) #22
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 13
  %37 = load i32, ptr %36, align 8, !tbaa !160, !noalias !161
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !63, !noalias !161
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %42, align 8, !tbaa !164, !noalias !161
  br label %46

46:                                               ; preds = %44, %40, %31
  %47 = phi ptr [ %45, %44 ], [ null, %40 ], [ null, %31 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.gimple_seq_d, ptr %47, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !166, !noalias !161
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi ptr [ %51, %49 ], [ null, %46 ]
  store ptr %53, ptr %1, align 8, !tbaa.struct !168
  store ptr %47, ptr %14, align 8, !tbaa.struct !169
  store ptr %17, ptr %15, align 8, !tbaa.struct !170
  %54 = icmp eq ptr %35, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 509), align 8, !tbaa !52
  %57 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %56, i32 noundef 0) #22
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef %57, i32 noundef 1) #22
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 1
  br label %59

59:                                               ; preds = %67, %55
  %60 = load ptr, ptr %58, align 8, !tbaa !171
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %60, align 8, !tbaa !113
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i32 [ %63, %62 ], [ 0, %59 ]
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %258, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.VEC_edge_base, ptr %60, i64 0, i32 2, i64 0
  %69 = load ptr, ptr %68, align 8, !tbaa !52
  call void @remove_edge(ptr noundef %69) #22
  br label %59, !llvm.loop !172

70:                                               ; preds = %52
  %71 = icmp eq ptr %32, null
  br i1 %71, label %199, label %72

72:                                               ; preds = %70
  %73 = icmp slt i32 %27, 0
  br i1 %73, label %74, label %130

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.eh_region_d, ptr %32, i64 0, i32 4
  %76 = load i32, ptr %75, align 4, !tbaa !99
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2906, ptr noundef nonnull @.str.1) #22
  br label %79

79:                                               ; preds = %78, %74
  %80 = call ptr @pointer_map_contains(ptr noundef %3, ptr noundef nonnull %32) #22
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %111

82:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %83 = call ptr @create_empty_bb(ptr noundef %17) #22
  %84 = call ptr @gimple_block_label(ptr noundef %83) #22
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 13
  %86 = load i32, ptr %85, align 8, !tbaa !160, !noalias !173
  %87 = and i32 %86, 512
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 7
  %91 = load ptr, ptr %90, align 8, !tbaa !63, !noalias !173
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %91, align 8, !tbaa !164, !noalias !173
  br label %95

95:                                               ; preds = %93, %89, %82
  %96 = phi ptr [ %94, %93 ], [ null, %89 ], [ null, %82 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %96, align 8, !tbaa !176, !noalias !173
  br label %100

100:                                              ; preds = %98, %95
  %101 = phi ptr [ %99, %98 ], [ null, %95 ]
  %102 = getelementptr inbounds i8, ptr %2, i64 8
  %103 = getelementptr inbounds i8, ptr %2, i64 16
  store ptr %101, ptr %2, align 8, !tbaa.struct !168
  store ptr %96, ptr %102, align 8, !tbaa.struct !169
  store ptr %83, ptr %103, align 8, !tbaa.struct !170
  %104 = getelementptr inbounds %struct.eh_region_d, ptr %32, i64 0, i32 5
  %105 = load ptr, ptr %104, align 8, !tbaa !63
  %106 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %105, i32 noundef 0) #22
  %107 = getelementptr inbounds %struct.eh_region_d, ptr %32, i64 0, i32 5, i32 0, i32 1
  %108 = load i32, ptr %107, align 8, !tbaa !63
  %109 = getelementptr inbounds %struct.gimple_statement_base, ptr %106, i64 0, i32 2
  store i32 %108, ptr %109, align 8, !tbaa !63
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %106, i32 noundef 2) #22
  %110 = call ptr @pointer_map_insert(ptr noundef %3, ptr noundef nonnull %32) #22
  store ptr %84, ptr %110, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  br label %115

111:                                              ; preds = %79
  %112 = load ptr, ptr %80, align 8, !tbaa !52
  %113 = load ptr, ptr @cfun, align 8, !tbaa !52
  %114 = call ptr @label_to_block_fn(ptr noundef %113, ptr noundef %112) #22
  br label %115

115:                                              ; preds = %111, %100
  %116 = phi ptr [ %83, %100 ], [ %114, %111 ]
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !171
  %119 = icmp eq ptr %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %115
  %121 = load i32, ptr %118, align 8, !tbaa !113
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2931, ptr noundef nonnull @.str.1) #22
  br label %124

124:                                              ; preds = %115, %123, %120
  %125 = call ptr @make_edge(ptr noundef %17, ptr noundef %116, i32 noundef 1) #22
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 8
  %127 = load i64, ptr %126, align 8, !tbaa !177
  %128 = getelementptr inbounds %struct.edge_def, ptr %125, i64 0, i32 9
  store i64 %127, ptr %128, align 8, !tbaa !178
  %129 = getelementptr inbounds %struct.edge_def, ptr %125, i64 0, i32 8
  store i32 10000, ptr %129, align 4, !tbaa !179
  br label %258

130:                                              ; preds = %72
  %131 = getelementptr inbounds %struct.eh_region_d, ptr %32, i64 0, i32 3
  %132 = load i32, ptr %131, align 8, !tbaa !148
  %133 = sext i32 %132 to i64
  %134 = call ptr @build_int_cst(ptr noundef null, i64 noundef %133) #22
  %135 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 554), align 16, !tbaa !52
  %136 = getelementptr inbounds %struct.eh_region_d, ptr %35, i64 0, i32 3
  %137 = load i32, ptr %136, align 8, !tbaa !148
  %138 = sext i32 %137 to i64
  %139 = call ptr @build_int_cst(ptr noundef null, i64 noundef %138) #22
  %140 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %135, i32 noundef 2, ptr noundef %134, ptr noundef %139) #22
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef %140, i32 noundef 1) #22
  %141 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !171
  %143 = icmp eq ptr %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %130
  %145 = load i32, ptr %142, align 8, !tbaa !113
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %148, label %147

147:                                              ; preds = %144, %130
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 645, ptr noundef nonnull @.str.1) #22
  br label %148

148:                                              ; preds = %147, %144
  %149 = load ptr, ptr %141, align 8, !tbaa !171
  %150 = getelementptr inbounds %struct.VEC_edge_base, ptr %149, i64 0, i32 2, i64 0
  %151 = load ptr, ptr %150, align 8, !tbaa !52
  %152 = getelementptr inbounds %struct.edge_def, ptr %151, i64 0, i32 7
  %153 = load i32, ptr %152, align 8, !tbaa !115
  %154 = and i32 %153, 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2948, ptr noundef nonnull @.str.1) #22
  br label %157

157:                                              ; preds = %156, %148
  %158 = load i32, ptr %152, align 8, !tbaa !115
  %159 = and i32 %158, -10
  %160 = or disjoint i32 %159, 1
  store i32 %160, ptr %152, align 8, !tbaa !115
  %161 = getelementptr inbounds %struct.edge_def, ptr %151, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !109
  %163 = icmp eq ptr %162, null
  br label %164

164:                                              ; preds = %193, %157
  %165 = phi i32 [ 0, %157 ], [ %194, %193 ]
  br i1 %163, label %166, label %167

166:                                              ; preds = %164
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 687, ptr noundef nonnull @.str.1) #22
  br label %167

167:                                              ; preds = %166, %164
  %168 = load ptr, ptr %162, align 8, !tbaa !52
  %169 = icmp eq ptr %168, null
  br i1 %169, label %172, label %170

170:                                              ; preds = %167
  %171 = load i32, ptr %168, align 8, !tbaa !113
  br label %172

172:                                              ; preds = %170, %167
  %173 = phi i32 [ %171, %170 ], [ 0, %167 ]
  %174 = icmp eq i32 %173, %165
  br i1 %174, label %179, label %175

175:                                              ; preds = %172
  %176 = zext i32 %165 to i64
  %177 = getelementptr inbounds %struct.VEC_edge_base, ptr %168, i64 0, i32 2, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !52
  br label %179

179:                                              ; preds = %175, %172
  %180 = phi ptr [ %178, %175 ], [ null, %172 ]
  br i1 %174, label %195, label %181

181:                                              ; preds = %179
  %182 = getelementptr inbounds %struct.edge_def, ptr %180, i64 0, i32 7
  %183 = load i32, ptr %182, align 8, !tbaa !115
  %184 = and i32 %183, 8
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %181
  br i1 %169, label %189, label %187

187:                                              ; preds = %186
  %188 = load i32, ptr %168, align 8, !tbaa !113
  br label %189

189:                                              ; preds = %187, %186
  %190 = phi i32 [ %188, %187 ], [ 0, %186 ]
  %191 = icmp ult i32 %165, %190
  br i1 %191, label %193, label %192

192:                                              ; preds = %189
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %193

193:                                              ; preds = %192, %189
  %194 = add i32 %165, 1
  br label %164, !llvm.loop !180

195:                                              ; preds = %181, %179
  %196 = icmp eq ptr %180, null
  br i1 %196, label %197, label %258

197:                                              ; preds = %195
  %198 = call ptr @get_eh_landing_pad_from_number(i32 noundef %27) #22
  call void @remove_eh_landing_pad(ptr noundef %198) #22
  br label %258

199:                                              ; preds = %70
  %200 = getelementptr inbounds %struct.eh_region_d, ptr %35, i64 0, i32 9
  %201 = load i8, ptr %200, align 8, !tbaa !181
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %199
  %204 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 551), align 8, !tbaa !52
  %205 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %204, i32 noundef 0) #22
  br label %249

206:                                              ; preds = %199
  %207 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 552), align 16, !tbaa !52
  %208 = getelementptr inbounds %struct.eh_region_d, ptr %35, i64 0, i32 3
  %209 = load i32, ptr %208, align 8, !tbaa !148
  %210 = sext i32 %209 to i64
  %211 = call ptr @build_int_cst(ptr noundef null, i64 noundef %210) #22
  %212 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %207, i32 noundef 1, ptr noundef %211) #22
  %213 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !52
  %214 = call ptr @create_tmp_var(ptr noundef %213, ptr noundef null) #22
  %215 = load ptr, ptr @cfun, align 8, !tbaa !52
  %216 = call ptr @make_ssa_name_fn(ptr noundef %215, ptr noundef %214, ptr noundef %212) #22
  %217 = load i32, ptr %212, align 8
  %218 = and i32 %217, 255
  %219 = add nsw i32 %218, -10
  %220 = icmp ult i32 %219, -9
  br i1 %220, label %225, label %221

221:                                              ; preds = %206
  %222 = getelementptr inbounds %struct.gimple_statement_base, ptr %212, i64 0, i32 3
  %223 = load i32, ptr %222, align 4, !tbaa !63
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %221, %206
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1665, ptr noundef nonnull @.str.1) #22
  br label %226

226:                                              ; preds = %225, %221
  %227 = load i32, ptr %212, align 8
  %228 = and i32 %227, 255
  %229 = zext nneg i32 %228 to i64
  %230 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !67
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %232
  %234 = load i64, ptr %233, align 8, !tbaa !134
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %226
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %237

237:                                              ; preds = %236, %226
  %238 = getelementptr inbounds i8, ptr %212, i64 %234
  store ptr %216, ptr %238, align 8, !tbaa !52
  %239 = icmp eq ptr %216, null
  br i1 %239, label %246, label %240

240:                                              ; preds = %237
  %241 = load i64, ptr %216, align 8
  %242 = and i64 %241, 65535
  %243 = icmp eq i64 %242, 141
  br i1 %243, label %244, label %246

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.tree_ssa_name, ptr %216, i64 0, i32 2
  store ptr %212, ptr %245, align 8, !tbaa !63
  br label %246

246:                                              ; preds = %244, %240, %237
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef nonnull %212, i32 noundef 1) #22
  %247 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 550), align 16, !tbaa !52
  %248 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %247, i32 noundef 1, ptr noundef %216) #22
  br label %249

249:                                              ; preds = %246, %203
  %250 = phi ptr [ %248, %246 ], [ %205, %203 ]
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef %250, i32 noundef 1) #22
  %251 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !171
  %253 = icmp eq ptr %252, null
  br i1 %253, label %258, label %254

254:                                              ; preds = %249
  %255 = load i32, ptr %252, align 8, !tbaa !113
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %254
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2995, ptr noundef nonnull @.str.1) #22
  br label %258

258:                                              ; preds = %64, %249, %124, %195, %197, %254, %257
  %259 = phi i8 [ 0, %254 ], [ 0, %257 ], [ 1, %195 ], [ 1, %197 ], [ 1, %124 ], [ 0, %249 ], [ 0, %64 ]
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  %260 = or i8 %259, %19
  br label %261

261:                                              ; preds = %258, %22, %16
  %262 = phi i8 [ %260, %258 ], [ %19, %22 ], [ %19, %16 ]
  %263 = phi i8 [ 1, %258 ], [ %18, %22 ], [ %18, %16 ]
  %264 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %265 = load ptr, ptr %264, align 8, !tbaa !157
  %266 = load ptr, ptr @cfun, align 8, !tbaa !52
  %267 = getelementptr inbounds %struct.function, ptr %266, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !154
  %269 = getelementptr inbounds %struct.control_flow_graph, ptr %268, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !159
  %271 = icmp eq ptr %265, %270
  br i1 %271, label %272, label %16, !llvm.loop !182

272:                                              ; preds = %261
  %273 = icmp eq i8 %262, 0
  %274 = icmp eq i8 %263, 0
  %275 = select i1 %274, i32 0, i32 16384
  br label %276

276:                                              ; preds = %272, %0
  %277 = phi i1 [ true, %0 ], [ %273, %272 ]
  %278 = phi i32 [ 0, %0 ], [ %275, %272 ]
  call void @pointer_map_destroy(ptr noundef %3) #22
  br i1 %277, label %280, label %279

279:                                              ; preds = %276
  call void @free_dominance_info(i32 noundef 1) #22
  call void @free_dominance_info(i32 noundef 2) #22
  br label %280

280:                                              ; preds = %279, %276
  ret i32 %278
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_lower_eh_dispatch() #15 !prof !152 !PGOFuncName !183 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !52
  %2 = load ptr, ptr %1, align 8, !tbaa !80
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: cold nounwind uwtable
define internal i32 @execute_lower_eh_dispatch() #10 !prof !51 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  tail call void @assign_filter_values() #22
  %2 = load ptr, ptr @cfun, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !154
  %5 = load ptr, ptr %4, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %320, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds i8, ptr %1, i64 8
  %13 = getelementptr inbounds i8, ptr %1, i64 16
  br label %14

14:                                               ; preds = %11, %305
  %15 = phi ptr [ %7, %11 ], [ %309, %305 ]
  %16 = phi i8 [ 0, %11 ], [ %307, %305 ]
  %17 = phi i8 [ 0, %11 ], [ %306, %305 ]
  %18 = call ptr @last_stmt(ptr noundef %15) #22
  %19 = icmp eq ptr %18, null
  br i1 %19, label %305, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %18, align 8
  %22 = and i32 %21, 255
  %23 = icmp eq i32 %22, 15
  br i1 %23, label %24, label %305

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  %25 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %18, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !63
  %27 = call ptr @get_eh_region_from_number(i32 noundef %26) #22
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 13
  %29 = load i32, ptr %28, align 8, !tbaa !160, !noalias !185
  %30 = and i32 %29, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !63, !noalias !185
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %34, align 8, !tbaa !164, !noalias !185
  br label %38

38:                                               ; preds = %36, %32, %24
  %39 = phi ptr [ %37, %36 ], [ null, %32 ], [ null, %24 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.gimple_seq_d, ptr %39, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !166, !noalias !185
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi ptr [ %43, %41 ], [ null, %38 ]
  store ptr %45, ptr %1, align 8, !tbaa.struct !168
  store ptr %39, ptr %12, align 8, !tbaa.struct !169
  store ptr %15, ptr %13, align 8, !tbaa.struct !170
  %46 = getelementptr inbounds %struct.eh_region_d, ptr %27, i64 0, i32 4
  %47 = load i32, ptr %46, align 4, !tbaa !99
  switch i32 %47, label %301 [
    i32 1, label %48
    i32 2, label %226
  ]

48:                                               ; preds = %44
  %49 = call ptr @pointer_set_create() #22
  %50 = getelementptr inbounds %struct.eh_region_d, ptr %27, i64 0, i32 5
  br label %51

51:                                               ; preds = %109, %48
  %52 = phi ptr [ null, %48 ], [ %110, %109 ]
  %53 = phi ptr [ %50, %48 ], [ %56, %109 ]
  %54 = phi ptr [ null, %48 ], [ %111, %109 ]
  %55 = phi i8 [ 0, %48 ], [ %112, %109 ]
  %56 = load ptr, ptr %53, align 8, !tbaa !63
  %57 = icmp eq ptr %56, null
  br i1 %57, label %113, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.eh_catch_d, ptr %56, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !101
  store ptr null, ptr %59, align 8, !tbaa !101
  %61 = getelementptr inbounds %struct.eh_catch_d, ptr %56, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !103
  %63 = icmp eq ptr %62, null
  br i1 %63, label %109, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.eh_catch_d, ptr %56, i64 0, i32 3
  br label %66

66:                                               ; preds = %64, %96
  %67 = phi ptr [ %97, %96 ], [ %52, %64 ]
  %68 = phi ptr [ %101, %96 ], [ %65, %64 ]
  %69 = phi ptr [ %100, %96 ], [ %62, %64 ]
  %70 = phi i8 [ %98, %96 ], [ 0, %64 ]
  %71 = load ptr, ptr %68, align 8, !tbaa !63
  %72 = getelementptr inbounds %struct.tree_list, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !63
  %74 = call i32 @pointer_set_contains(ptr noundef %49, ptr noundef %73) #22
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %66
  %77 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !52
  %78 = load ptr, ptr %72, align 8, !tbaa !63
  %79 = call ptr @build3_stat(i32 noundef 139, ptr noundef %77, ptr noundef %78, ptr noundef null, ptr noundef %60) #22
  %80 = icmp eq ptr %67, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.VEC_tree_base, ptr %67, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !188
  %84 = load i32, ptr %67, align 8, !tbaa !190
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %81, %76
  %87 = call ptr @vec_heap_p_reserve(ptr noundef %67, i32 noundef 1) #22
  br label %88

88:                                               ; preds = %86, %81
  %89 = phi ptr [ %87, %86 ], [ %67, %81 ]
  %90 = load i32, ptr %89, align 8, !tbaa !190
  %91 = add i32 %90, 1
  store i32 %91, ptr %89, align 8, !tbaa !190
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds %struct.VEC_tree_base, ptr %89, i64 0, i32 2, i64 %92
  store ptr %79, ptr %93, align 8, !tbaa !52
  %94 = load ptr, ptr %72, align 8, !tbaa !63
  %95 = call i32 @pointer_set_insert(ptr noundef %49, ptr noundef %94) #22
  br label %96

96:                                               ; preds = %66, %88
  %97 = phi ptr [ %89, %88 ], [ %67, %66 ]
  %98 = phi i8 [ 1, %88 ], [ %70, %66 ]
  %99 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !63
  %101 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 1
  %102 = icmp eq ptr %100, null
  br i1 %102, label %103, label %66, !llvm.loop !191

103:                                              ; preds = %96
  %104 = icmp eq i8 %98, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %103
  %106 = load ptr, ptr @cfun, align 8, !tbaa !52
  %107 = call ptr @label_to_block_fn(ptr noundef %106, ptr noundef %60) #22
  %108 = call ptr @find_edge(ptr noundef %15, ptr noundef %107) #22
  call void @remove_edge(ptr noundef %108) #22
  br label %109

109:                                              ; preds = %105, %103, %58
  %110 = phi ptr [ %52, %58 ], [ %97, %105 ], [ %97, %103 ]
  %111 = phi ptr [ %60, %58 ], [ %54, %105 ], [ %54, %103 ]
  %112 = phi i8 [ %55, %58 ], [ 1, %105 ], [ %55, %103 ]
  br i1 %63, label %113, label %51, !llvm.loop !192

113:                                              ; preds = %109, %51
  %114 = phi ptr [ %52, %51 ], [ %110, %109 ]
  %115 = phi ptr [ %54, %51 ], [ %111, %109 ]
  %116 = phi i8 [ %55, %51 ], [ %112, %109 ]
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 1
  br label %118

118:                                              ; preds = %159, %113
  %119 = phi i32 [ 0, %113 ], [ %160, %159 ]
  %120 = phi ptr [ %115, %113 ], [ %150, %159 ]
  %121 = load ptr, ptr %117, align 8, !tbaa !52
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = load i32, ptr %121, align 8, !tbaa !113
  br label %125

125:                                              ; preds = %123, %118
  %126 = phi i32 [ %124, %123 ], [ 0, %118 ]
  %127 = icmp eq i32 %126, %119
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = zext i32 %119 to i64
  %130 = getelementptr inbounds %struct.VEC_edge_base, ptr %121, i64 0, i32 2, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !52
  br label %132

132:                                              ; preds = %128, %125
  %133 = phi ptr [ %131, %128 ], [ null, %125 ]
  br i1 %127, label %161, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.edge_def, ptr %133, i64 0, i32 7
  %136 = load i32, ptr %135, align 8, !tbaa !115
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %149, label %139

139:                                              ; preds = %134
  %140 = icmp eq ptr %120, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.edge_def, ptr %133, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !109
  %144 = call ptr @gimple_block_label(ptr noundef %143) #22
  br label %145

145:                                              ; preds = %141, %139
  %146 = phi ptr [ %144, %141 ], [ %120, %139 ]
  %147 = load i32, ptr %135, align 8, !tbaa !115
  %148 = and i32 %147, -2
  store i32 %148, ptr %135, align 8, !tbaa !115
  br label %149

149:                                              ; preds = %145, %134
  %150 = phi ptr [ %146, %145 ], [ %120, %134 ]
  %151 = load ptr, ptr %117, align 8, !tbaa !52
  %152 = icmp eq ptr %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = load i32, ptr %151, align 8, !tbaa !113
  br label %155

155:                                              ; preds = %153, %149
  %156 = phi i32 [ %154, %153 ], [ 0, %149 ]
  %157 = icmp ult i32 %119, %156
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %159

159:                                              ; preds = %158, %155
  %160 = add i32 %119, 1
  br label %118, !llvm.loop !193

161:                                              ; preds = %132
  %162 = icmp eq ptr %120, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %161
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3145, ptr noundef nonnull @.str.1) #22
  br label %164

164:                                              ; preds = %163, %161
  %165 = icmp eq ptr %114, null
  br i1 %165, label %166, label %180

166:                                              ; preds = %164
  %167 = load ptr, ptr %117, align 8, !tbaa !171
  %168 = icmp eq ptr %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = load i32, ptr %167, align 8, !tbaa !113
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %173, label %172

172:                                              ; preds = %169, %166
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 645, ptr noundef nonnull @.str.1) #22
  br label %173

173:                                              ; preds = %172, %169
  %174 = load ptr, ptr %117, align 8, !tbaa !171
  %175 = getelementptr inbounds %struct.VEC_edge_base, ptr %174, i64 0, i32 2, i64 0
  %176 = load ptr, ptr %175, align 8, !tbaa !52
  %177 = getelementptr inbounds %struct.edge_def, ptr %176, i64 0, i32 7
  %178 = load i32, ptr %177, align 8, !tbaa !115
  %179 = or i32 %178, 1
  store i32 %179, ptr %177, align 8, !tbaa !115
  br label %225

180:                                              ; preds = %164
  %181 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 553), align 8, !tbaa !52
  %182 = sext i32 %26 to i64
  %183 = call ptr @build_int_cst(ptr noundef null, i64 noundef %182) #22
  %184 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %181, i32 noundef 1, ptr noundef %183) #22
  %185 = getelementptr inbounds %struct.tree_common, ptr %181, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !63
  %187 = getelementptr inbounds %struct.tree_common, ptr %186, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !63
  %189 = call ptr @create_tmp_var(ptr noundef %188, ptr noundef null) #22
  %190 = load ptr, ptr @cfun, align 8, !tbaa !52
  %191 = call ptr @make_ssa_name_fn(ptr noundef %190, ptr noundef %189, ptr noundef %184) #22
  %192 = load i32, ptr %184, align 8
  %193 = and i32 %192, 255
  %194 = add nsw i32 %193, -10
  %195 = icmp ult i32 %194, -9
  br i1 %195, label %200, label %196

196:                                              ; preds = %180
  %197 = getelementptr inbounds %struct.gimple_statement_base, ptr %184, i64 0, i32 3
  %198 = load i32, ptr %197, align 4, !tbaa !63
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %196, %180
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1665, ptr noundef nonnull @.str.1) #22
  br label %201

201:                                              ; preds = %200, %196
  %202 = load i32, ptr %184, align 8
  %203 = and i32 %202, 255
  %204 = zext nneg i32 %203 to i64
  %205 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !67
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %207
  %209 = load i64, ptr %208, align 8, !tbaa !134
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %201
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %212

212:                                              ; preds = %211, %201
  %213 = getelementptr inbounds i8, ptr %184, i64 %209
  store ptr %191, ptr %213, align 8, !tbaa !52
  %214 = icmp eq ptr %191, null
  br i1 %214, label %221, label %215

215:                                              ; preds = %212
  %216 = load i64, ptr %191, align 8
  %217 = and i64 %216, 65535
  %218 = icmp eq i64 %217, 141
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.tree_ssa_name, ptr %191, i64 0, i32 2
  store ptr %184, ptr %220, align 8, !tbaa !63
  br label %221

221:                                              ; preds = %219, %215, %212
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef nonnull %184, i32 noundef 1) #22
  %222 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !52
  %223 = call ptr @build3_stat(i32 noundef 139, ptr noundef %222, ptr noundef null, ptr noundef null, ptr noundef %120) #22
  call void @sort_case_labels(ptr noundef nonnull %114) #22
  %224 = call ptr @gimple_build_switch_vec(ptr noundef %191, ptr noundef %223, ptr noundef nonnull %114) #22
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef %224, i32 noundef 1) #22
  call void @free(ptr noundef %114)
  br label %225

225:                                              ; preds = %221, %173
  call void @pointer_set_destroy(ptr noundef %49) #22
  br label %302

226:                                              ; preds = %44
  %227 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !171
  %229 = getelementptr inbounds %struct.VEC_edge_base, ptr %228, i64 0, i32 2, i64 0
  %230 = load ptr, ptr %229, align 8, !tbaa !52
  %231 = getelementptr inbounds %struct.edge_def, ptr %230, i64 0, i32 7
  %232 = load i32, ptr %231, align 8, !tbaa !115
  %233 = and i32 %232, 1
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %226
  %236 = getelementptr inbounds %struct.VEC_edge_base, ptr %228, i64 0, i32 2, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !52
  br label %238

238:                                              ; preds = %235, %226
  %239 = phi ptr [ %237, %235 ], [ %230, %226 ]
  br i1 %234, label %240, label %243

240:                                              ; preds = %238
  %241 = getelementptr inbounds %struct.VEC_edge_base, ptr %228, i64 0, i32 2, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !52
  br label %243

243:                                              ; preds = %240, %238
  %244 = phi ptr [ %242, %240 ], [ %230, %238 ]
  %245 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 553), align 8, !tbaa !52
  %246 = sext i32 %26 to i64
  %247 = call ptr @build_int_cst(ptr noundef null, i64 noundef %246) #22
  %248 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %245, i32 noundef 1, ptr noundef %247) #22
  %249 = getelementptr inbounds %struct.tree_common, ptr %245, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !63
  %251 = getelementptr inbounds %struct.tree_common, ptr %250, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !63
  %253 = call ptr @create_tmp_var(ptr noundef %252, ptr noundef null) #22
  %254 = load ptr, ptr @cfun, align 8, !tbaa !52
  %255 = call ptr @make_ssa_name_fn(ptr noundef %254, ptr noundef %253, ptr noundef %248) #22
  %256 = load i32, ptr %248, align 8
  %257 = and i32 %256, 255
  %258 = add nsw i32 %257, -10
  %259 = icmp ult i32 %258, -9
  br i1 %259, label %264, label %260

260:                                              ; preds = %243
  %261 = getelementptr inbounds %struct.gimple_statement_base, ptr %248, i64 0, i32 3
  %262 = load i32, ptr %261, align 4, !tbaa !63
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %260, %243
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1665, ptr noundef nonnull @.str.1) #22
  br label %265

265:                                              ; preds = %264, %260
  %266 = load i32, ptr %248, align 8
  %267 = and i32 %266, 255
  %268 = zext nneg i32 %267 to i64
  %269 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %268
  %270 = load i32, ptr %269, align 4, !tbaa !67
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %271
  %273 = load i64, ptr %272, align 8, !tbaa !134
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %265
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %276

276:                                              ; preds = %275, %265
  %277 = getelementptr inbounds i8, ptr %248, i64 %273
  store ptr %255, ptr %277, align 8, !tbaa !52
  %278 = icmp eq ptr %255, null
  br i1 %278, label %285, label %279

279:                                              ; preds = %276
  %280 = load i64, ptr %255, align 8
  %281 = and i64 %280, 65535
  %282 = icmp eq i64 %281, 141
  br i1 %282, label %283, label %285

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.tree_ssa_name, ptr %255, i64 0, i32 2
  store ptr %248, ptr %284, align 8, !tbaa !63
  br label %285

285:                                              ; preds = %283, %279, %276
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef nonnull %248, i32 noundef 1) #22
  %286 = getelementptr inbounds %struct.eh_region_d, ptr %27, i64 0, i32 5, i32 0, i32 1
  store ptr null, ptr %286, align 8, !tbaa !63
  %287 = getelementptr inbounds %struct.tree_common, ptr %255, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !63
  %289 = getelementptr inbounds %struct.eh_region_d, ptr %27, i64 0, i32 5, i32 0, i32 2
  %290 = load i32, ptr %289, align 8, !tbaa !63
  %291 = sext i32 %290 to i64
  %292 = call ptr @build_int_cst(ptr noundef %288, i64 noundef %291) #22
  %293 = call ptr @gimple_build_cond(i32 noundef 101, ptr noundef %255, ptr noundef %292, ptr noundef null, ptr noundef null) #22
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef %293, i32 noundef 1) #22
  %294 = getelementptr inbounds %struct.edge_def, ptr %239, i64 0, i32 7
  %295 = load i32, ptr %294, align 8, !tbaa !115
  %296 = or i32 %295, 1024
  store i32 %296, ptr %294, align 8, !tbaa !115
  %297 = getelementptr inbounds %struct.edge_def, ptr %244, i64 0, i32 7
  %298 = load i32, ptr %297, align 8, !tbaa !115
  %299 = and i32 %298, -2050
  %300 = or disjoint i32 %299, 2048
  store i32 %300, ptr %297, align 8, !tbaa !115
  br label %302

301:                                              ; preds = %44
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3202, ptr noundef nonnull @.str.1) #22
  br label %302

302:                                              ; preds = %225, %285, %301
  %303 = phi i8 [ 0, %301 ], [ 0, %285 ], [ %116, %225 ]
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  %304 = or i8 %303, %16
  br label %305

305:                                              ; preds = %302, %20, %14
  %306 = phi i8 [ 1, %302 ], [ %17, %20 ], [ %17, %14 ]
  %307 = phi i8 [ %304, %302 ], [ %16, %20 ], [ %16, %14 ]
  %308 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %309 = load ptr, ptr %308, align 8, !tbaa !157
  %310 = load ptr, ptr @cfun, align 8, !tbaa !52
  %311 = getelementptr inbounds %struct.function, ptr %310, i64 0, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !154
  %313 = getelementptr inbounds %struct.control_flow_graph, ptr %312, i64 0, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !159
  %315 = icmp eq ptr %309, %314
  br i1 %315, label %316, label %14, !llvm.loop !194

316:                                              ; preds = %305
  %317 = icmp eq i8 %307, 0
  %318 = icmp eq i8 %306, 0
  %319 = select i1 %318, i32 0, i32 16384
  br label %320

320:                                              ; preds = %316, %0
  %321 = phi i32 [ 0, %0 ], [ %319, %316 ]
  %322 = phi i1 [ true, %0 ], [ %317, %316 ]
  br i1 %322, label %325, label %323

323:                                              ; preds = %320
  %324 = call zeroext i8 @delete_unreachable_blocks() #22
  br label %325

325:                                              ; preds = %323, %320
  ret i32 %321
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_cleanup_eh() #15 !prof !195 !PGOFuncName !196 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !52
  %2 = load ptr, ptr %1, align 8, !tbaa !80
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !197

4:                                                ; preds = %0
  %5 = load ptr, ptr %2, align 8, !tbaa !184
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %0
  %9 = phi i8 [ 0, %0 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @execute_cleanup_eh() #10 !prof !51 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  %5 = load ptr, ptr @cfun, align 8, !tbaa !52
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.eh_status, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = load i32, ptr %8, align 8, !tbaa !198
  br label %12

12:                                               ; preds = %10, %0
  %13 = phi i32 [ %11, %10 ], [ 0, %0 ]
  %14 = tail call ptr @sbitmap_alloc(i32 noundef %13) #22
  %15 = load ptr, ptr @cfun, align 8, !tbaa !52
  %16 = load ptr, ptr %15, align 8, !tbaa !80
  %17 = getelementptr inbounds %struct.eh_status, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !146
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = load i32, ptr %18, align 8, !tbaa !200
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %21, %20 ], [ 0, %12 ]
  %24 = tail call ptr @sbitmap_alloc(i32 noundef %23) #22
  tail call void @sbitmap_zero(ptr noundef %14) #22
  tail call void @sbitmap_zero(ptr noundef %24) #22
  %25 = load ptr, ptr @cfun, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !154
  %28 = load ptr, ptr %27, align 8, !tbaa !155
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !157
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !159
  %33 = icmp eq ptr %30, %32
  br i1 %33, label %155, label %43

34:                                               ; preds = %151, %60
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !157
  %37 = load ptr, ptr @cfun, align 8, !tbaa !52
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !154
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !159
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %155, label %43, !llvm.loop !202

43:                                               ; preds = %22, %34
  %44 = phi ptr [ %36, %34 ], [ %30, %22 ]
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 13
  %46 = load i32, ptr %45, align 8, !tbaa !160, !noalias !203
  %47 = and i32 %46, 512
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !63, !noalias !203
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %51, align 8, !tbaa !164, !noalias !203
  br label %55

55:                                               ; preds = %53, %49, %43
  %56 = phi ptr [ %54, %53 ], [ null, %49 ], [ null, %43 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %56, align 8, !tbaa !176, !noalias !203
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi ptr [ %59, %58 ], [ null, %55 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %34, label %63

63:                                               ; preds = %60, %151
  %64 = phi ptr [ %153, %151 ], [ %61, %60 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !206
  %66 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %65)
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = sub nsw i32 0, %66
  %70 = load ptr, ptr %14, align 8, !tbaa !208
  %71 = icmp eq ptr %70, null
  br i1 %71, label %140, label %72

72:                                               ; preds = %68
  %73 = lshr i32 %69, 6
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds %struct.simple_bitmap_def, ptr %14, i64 0, i32 3, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !134
  %77 = and i32 %69, 63
  %78 = zext nneg i32 %77 to i64
  %79 = shl nuw i64 1, %78
  %80 = and i64 %76, %79
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %140

82:                                               ; preds = %72
  %83 = getelementptr inbounds i8, ptr %70, i64 %74
  br label %134

84:                                               ; preds = %63
  %85 = icmp eq i32 %66, 0
  br i1 %85, label %151, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %64, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !210
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3294, ptr noundef nonnull @.str.1) #22
  br label %91

91:                                               ; preds = %90, %86
  %92 = tail call ptr @get_eh_region_from_lp_number(i32 noundef %66) #22
  %93 = getelementptr inbounds %struct.eh_region_d, ptr %92, i64 0, i32 3
  %94 = load i32, ptr %93, align 8, !tbaa !148
  %95 = load ptr, ptr %14, align 8, !tbaa !208
  %96 = icmp eq ptr %95, null
  br i1 %96, label %111, label %97

97:                                               ; preds = %91
  %98 = lshr i32 %94, 6
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds %struct.simple_bitmap_def, ptr %14, i64 0, i32 3, i64 %99
  %101 = load i64, ptr %100, align 8, !tbaa !134
  %102 = and i32 %94, 63
  %103 = zext nneg i32 %102 to i64
  %104 = shl nuw i64 1, %103
  %105 = and i64 %101, %104
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = getelementptr inbounds i8, ptr %95, i64 %99
  %109 = load i8, ptr %108, align 1, !tbaa !63
  %110 = add i8 %109, 1
  store i8 %110, ptr %108, align 1, !tbaa !63
  br label %111

111:                                              ; preds = %107, %97, %91
  %112 = and i32 %94, 63
  %113 = zext nneg i32 %112 to i64
  %114 = shl nuw i64 1, %113
  %115 = lshr i32 %94, 6
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds %struct.simple_bitmap_def, ptr %14, i64 0, i32 3, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !134
  %119 = or i64 %118, %114
  store i64 %119, ptr %117, align 8, !tbaa !134
  %120 = load ptr, ptr %24, align 8, !tbaa !208
  %121 = icmp eq ptr %120, null
  br i1 %121, label %140, label %122

122:                                              ; preds = %111
  %123 = lshr i32 %66, 6
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds %struct.simple_bitmap_def, ptr %24, i64 0, i32 3, i64 %124
  %126 = load i64, ptr %125, align 8, !tbaa !134
  %127 = and i32 %66, 63
  %128 = zext nneg i32 %127 to i64
  %129 = shl nuw i64 1, %128
  %130 = and i64 %126, %129
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %120, i64 %124
  br label %134

134:                                              ; preds = %82, %132
  %135 = phi ptr [ %133, %132 ], [ %83, %82 ]
  %136 = phi i32 [ %66, %132 ], [ %69, %82 ]
  %137 = phi ptr [ %24, %132 ], [ %14, %82 ]
  %138 = load i8, ptr %135, align 1, !tbaa !63
  %139 = add i8 %138, 1
  store i8 %139, ptr %135, align 1, !tbaa !63
  br label %140

140:                                              ; preds = %134, %111, %122, %68, %72
  %141 = phi i32 [ %69, %72 ], [ %69, %68 ], [ %66, %122 ], [ %66, %111 ], [ %136, %134 ]
  %142 = phi ptr [ %14, %72 ], [ %14, %68 ], [ %24, %122 ], [ %24, %111 ], [ %137, %134 ]
  %143 = and i32 %141, 63
  %144 = zext nneg i32 %143 to i64
  %145 = shl nuw i64 1, %144
  %146 = lshr i32 %141, 6
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds %struct.simple_bitmap_def, ptr %142, i64 0, i32 3, i64 %147
  %149 = load i64, ptr %148, align 8, !tbaa !134
  %150 = or i64 %149, %145
  store i64 %150, ptr %148, align 8, !tbaa !134
  br label %151

151:                                              ; preds = %140, %84
  %152 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %64, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !210
  %154 = icmp eq ptr %153, null
  br i1 %154, label %34, label %63, !llvm.loop !211

155:                                              ; preds = %34, %22
  %156 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %157 = icmp eq ptr %156, null
  br i1 %157, label %168, label %158

158:                                              ; preds = %155
  %159 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 39, i64 1, ptr nonnull %156)
  %160 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %161 = load ptr, ptr @cfun, align 8, !tbaa !52
  tail call void @dump_eh_tree(ptr noundef %160, ptr noundef %161) #22
  %162 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %163 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 19, i64 1, ptr %162)
  %164 = load ptr, ptr @dump_file, align 8, !tbaa !52
  tail call void @dump_sbitmap_file(ptr noundef %164, ptr noundef %14) #22
  %165 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %166 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 24, i64 1, ptr %165)
  %167 = load ptr, ptr @dump_file, align 8, !tbaa !52
  tail call void @dump_sbitmap_file(ptr noundef %167, ptr noundef %24) #22
  br label %168

168:                                              ; preds = %158, %155
  br label %169

169:                                              ; preds = %168, %204
  %170 = phi i64 [ %205, %204 ], [ 1, %168 ]
  %171 = load ptr, ptr @cfun, align 8, !tbaa !52
  %172 = load ptr, ptr %171, align 8, !tbaa !80
  %173 = getelementptr inbounds %struct.eh_status, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !147
  %175 = icmp eq ptr %174, null
  br i1 %175, label %183, label %176

176:                                              ; preds = %169
  %177 = load i32, ptr %174, align 8, !tbaa !198
  %178 = zext i32 %177 to i64
  %179 = icmp ult i64 %170, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %174, i64 0, i32 2, i64 %170
  %182 = load ptr, ptr %181, align 8, !tbaa !52
  br label %183

183:                                              ; preds = %180, %176, %169
  %184 = phi ptr [ %182, %180 ], [ null, %176 ], [ null, %169 ]
  %185 = phi i1 [ false, %180 ], [ true, %176 ], [ true, %169 ]
  br i1 %185, label %206, label %186

186:                                              ; preds = %183
  %187 = icmp eq ptr %184, null
  br i1 %187, label %204, label %188

188:                                              ; preds = %186
  %189 = lshr i64 %170, 6
  %190 = and i64 %189, 67108863
  %191 = getelementptr inbounds %struct.simple_bitmap_def, ptr %14, i64 0, i32 3, i64 %190
  %192 = load i64, ptr %191, align 8, !tbaa !134
  %193 = and i64 %170, 63
  %194 = shl nuw i64 1, %193
  %195 = and i64 %192, %194
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %188
  %198 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %199 = icmp eq ptr %198, null
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = trunc i64 %170 to i32
  %202 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %198, ptr noundef nonnull @.str.22, i32 noundef %201)
  br label %203

203:                                              ; preds = %200, %197
  tail call void @remove_eh_handler(ptr noundef nonnull %184) #22
  br label %204

204:                                              ; preds = %203, %188, %186
  %205 = add nuw i64 %170, 1
  br label %169, !llvm.loop !212

206:                                              ; preds = %183, %241
  %207 = phi i64 [ %242, %241 ], [ 1, %183 ]
  %208 = load ptr, ptr @cfun, align 8, !tbaa !52
  %209 = load ptr, ptr %208, align 8, !tbaa !80
  %210 = getelementptr inbounds %struct.eh_status, ptr %209, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !146
  %212 = icmp eq ptr %211, null
  br i1 %212, label %220, label %213

213:                                              ; preds = %206
  %214 = load i32, ptr %211, align 8, !tbaa !200
  %215 = zext i32 %214 to i64
  %216 = icmp ult i64 %207, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %211, i64 0, i32 2, i64 %207
  %219 = load ptr, ptr %218, align 8, !tbaa !52
  br label %220

220:                                              ; preds = %217, %213, %206
  %221 = phi ptr [ %219, %217 ], [ null, %213 ], [ null, %206 ]
  %222 = phi i1 [ false, %217 ], [ true, %213 ], [ true, %206 ]
  br i1 %222, label %243, label %223

223:                                              ; preds = %220
  %224 = icmp eq ptr %221, null
  br i1 %224, label %241, label %225

225:                                              ; preds = %223
  %226 = lshr i64 %207, 6
  %227 = and i64 %226, 67108863
  %228 = getelementptr inbounds %struct.simple_bitmap_def, ptr %24, i64 0, i32 3, i64 %227
  %229 = load i64, ptr %228, align 8, !tbaa !134
  %230 = and i64 %207, 63
  %231 = shl nuw i64 1, %230
  %232 = and i64 %229, %231
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %225
  %235 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %236 = icmp eq ptr %235, null
  br i1 %236, label %240, label %237

237:                                              ; preds = %234
  %238 = trunc i64 %207 to i32
  %239 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %235, ptr noundef nonnull @.str.23, i32 noundef %238)
  br label %240

240:                                              ; preds = %237, %234
  tail call void @remove_eh_landing_pad(ptr noundef nonnull %221) #22
  br label %241

241:                                              ; preds = %240, %225, %223
  %242 = add nuw i64 %207, 1
  br label %206, !llvm.loop !213

243:                                              ; preds = %220
  %244 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %245 = icmp eq ptr %244, null
  br i1 %245, label %252, label %246

246:                                              ; preds = %243
  %247 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 40, i64 1, ptr nonnull %244)
  %248 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %249 = load ptr, ptr @cfun, align 8, !tbaa !52
  tail call void @dump_eh_tree(ptr noundef %248, ptr noundef %249) #22
  %250 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %251 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 2, i64 1, ptr %250)
  br label %252

252:                                              ; preds = %243, %246
  %253 = load ptr, ptr %14, align 8, !tbaa !208
  tail call void @free(ptr noundef %253)
  tail call void @free(ptr noundef %14)
  %254 = load ptr, ptr %24, align 8, !tbaa !208
  tail call void @free(ptr noundef %254)
  tail call void @free(ptr noundef %24)
  %255 = load ptr, ptr @cfun, align 8, !tbaa !52
  %256 = load ptr, ptr %255, align 8, !tbaa !80
  %257 = load ptr, ptr %256, align 8, !tbaa !184
  %258 = icmp ne ptr %257, null
  %259 = load i32, ptr @optimize, align 4
  %260 = icmp ne i32 %259, 0
  %261 = select i1 %258, i1 %260, i1 false
  br i1 %261, label %262, label %970

262:                                              ; preds = %252
  %263 = getelementptr inbounds i8, ptr %2, i64 8
  %264 = getelementptr inbounds i8, ptr %2, i64 16
  br label %265

265:                                              ; preds = %262, %573
  %266 = phi i64 [ 1, %262 ], [ %575, %573 ]
  %267 = phi i8 [ 0, %262 ], [ %574, %573 ]
  %268 = load ptr, ptr @cfun, align 8, !tbaa !52
  %269 = load ptr, ptr %268, align 8, !tbaa !80
  %270 = getelementptr inbounds %struct.eh_status, ptr %269, i64 0, i32 2
  %271 = load ptr, ptr %270, align 8, !tbaa !146
  %272 = icmp eq ptr %271, null
  br i1 %272, label %280, label %273

273:                                              ; preds = %265
  %274 = load i32, ptr %271, align 8, !tbaa !200
  %275 = zext i32 %274 to i64
  %276 = icmp ult i64 %266, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %271, i64 0, i32 2, i64 %266
  %279 = load ptr, ptr %278, align 8, !tbaa !52
  br label %280

280:                                              ; preds = %277, %273, %265
  %281 = phi ptr [ %279, %277 ], [ null, %273 ], [ null, %265 ]
  %282 = phi i1 [ false, %277 ], [ true, %273 ], [ true, %265 ]
  br i1 %282, label %576, label %283

283:                                              ; preds = %280
  %284 = icmp eq ptr %281, null
  br i1 %284, label %573, label %285

285:                                              ; preds = %283
  %286 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %281, i64 0, i32 2
  %287 = load ptr, ptr %286, align 8, !tbaa !107
  %288 = call ptr @label_to_block_fn(ptr noundef nonnull %268, ptr noundef %287) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %289 = load ptr, ptr %288, align 8, !tbaa !214
  %290 = icmp eq ptr %289, null
  br i1 %290, label %293, label %291

291:                                              ; preds = %285
  %292 = load i32, ptr %289, align 8, !tbaa !113
  br label %293

293:                                              ; preds = %291, %285
  %294 = phi i32 [ %292, %291 ], [ 0, %285 ]
  %295 = icmp eq i32 %294, 1
  br i1 %295, label %296, label %570

296:                                              ; preds = %293
  %297 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !171
  %299 = icmp eq ptr %298, null
  br i1 %299, label %302, label %300

300:                                              ; preds = %296
  %301 = load i32, ptr %298, align 8, !tbaa !113
  br label %302

302:                                              ; preds = %300, %296
  %303 = phi i32 [ %301, %300 ], [ 0, %296 ]
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %305, label %570

305:                                              ; preds = %302
  %306 = getelementptr inbounds %struct.VEC_edge_base, ptr %289, i64 0, i32 2, i64 0
  %307 = load ptr, ptr %306, align 8, !tbaa !52
  %308 = getelementptr inbounds %struct.VEC_edge_base, ptr %298, i64 0, i32 2, i64 0
  %309 = load ptr, ptr %308, align 8, !tbaa !52
  %310 = getelementptr inbounds %struct.edge_def, ptr %307, i64 0, i32 7
  %311 = load i32, ptr %310, align 8, !tbaa !115
  %312 = and i32 %311, 8
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %570, label %314

314:                                              ; preds = %305
  %315 = getelementptr inbounds %struct.edge_def, ptr %309, i64 0, i32 7
  %316 = load i32, ptr %315, align 8, !tbaa !115
  %317 = and i32 %316, 8
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %570

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 13
  %321 = load i32, ptr %320, align 8, !tbaa !160, !noalias !215
  %322 = and i32 %321, 512
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %330

324:                                              ; preds = %319
  %325 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 7
  %326 = load ptr, ptr %325, align 8, !tbaa !63, !noalias !215
  %327 = icmp eq ptr %326, null
  br i1 %327, label %330, label %328

328:                                              ; preds = %324
  %329 = load ptr, ptr %326, align 8, !tbaa !164, !noalias !215
  br label %330

330:                                              ; preds = %328, %324, %319
  %331 = phi ptr [ %329, %328 ], [ null, %324 ], [ null, %319 ]
  %332 = icmp eq ptr %331, null
  br i1 %332, label %335, label %333

333:                                              ; preds = %330
  %334 = load ptr, ptr %331, align 8, !tbaa !176, !noalias !215
  br label %335

335:                                              ; preds = %333, %330
  %336 = phi ptr [ %334, %333 ], [ null, %330 ]
  %337 = icmp eq ptr %336, null
  br i1 %337, label %353, label %338

338:                                              ; preds = %335
  %339 = load ptr, ptr %336, align 8, !tbaa !206, !noalias !220
  %340 = load i32, ptr %339, align 8, !noalias !220
  %341 = and i32 %340, 255
  %342 = icmp eq i32 %341, 4
  br i1 %342, label %348, label %353

343:                                              ; preds = %348
  %344 = load ptr, ptr %351, align 8, !tbaa !206, !noalias !220
  %345 = load i32, ptr %344, align 8, !noalias !220
  %346 = and i32 %345, 255
  %347 = icmp eq i32 %346, 4
  br i1 %347, label %348, label %353, !llvm.loop !221

348:                                              ; preds = %338, %343
  %349 = phi ptr [ %351, %343 ], [ %336, %338 ]
  %350 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %349, i64 0, i32 2
  %351 = load ptr, ptr %350, align 8, !tbaa !210, !noalias !220
  %352 = icmp eq ptr %351, null
  br i1 %352, label %353, label %343, !llvm.loop !221

353:                                              ; preds = %343, %348, %338, %335
  %354 = phi ptr [ %336, %335 ], [ %336, %338 ], [ %351, %348 ], [ %351, %343 ]
  %355 = phi i1 [ %337, %335 ], [ %337, %338 ], [ %352, %348 ], [ %352, %343 ]
  store ptr %354, ptr %2, align 8, !tbaa.struct !168
  store ptr %331, ptr %263, align 8, !tbaa.struct !169
  store ptr %288, ptr %264, align 8, !tbaa.struct !170
  br i1 %355, label %373, label %356

356:                                              ; preds = %353
  %357 = load ptr, ptr %354, align 8, !tbaa !206
  %358 = load i32, ptr %357, align 8
  %359 = and i32 %358, 255
  %360 = icmp eq i32 %359, 2
  br i1 %360, label %361, label %373

361:                                              ; preds = %356
  %362 = load ptr, ptr %2, align 8, !tbaa !222
  br label %363

363:                                              ; preds = %361, %368
  %364 = phi ptr [ %362, %361 ], [ %366, %368 ]
  %365 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %364, i64 0, i32 2
  %366 = load ptr, ptr %365, align 8, !tbaa !210
  store ptr %366, ptr %2, align 8, !tbaa !222
  %367 = icmp eq ptr %366, null
  br i1 %367, label %373, label %368

368:                                              ; preds = %363
  %369 = load ptr, ptr %366, align 8, !tbaa !206
  %370 = load i32, ptr %369, align 8
  %371 = and i32 %370, 255
  %372 = icmp eq i32 %371, 2
  br i1 %372, label %363, label %373, !llvm.loop !224

373:                                              ; preds = %368, %363, %356, %353
  %374 = load ptr, ptr %2, align 8
  %375 = icmp eq ptr %374, null
  br i1 %375, label %376, label %570

376:                                              ; preds = %373
  %377 = getelementptr inbounds %struct.edge_def, ptr %309, i64 0, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !109
  %379 = getelementptr inbounds %struct.basic_block_def, ptr %378, i64 0, i32 13
  %380 = load i32, ptr %379, align 8, !tbaa !160, !noalias !225
  %381 = and i32 %380, 512
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %389

383:                                              ; preds = %376
  %384 = getelementptr inbounds %struct.basic_block_def, ptr %378, i64 0, i32 7
  %385 = load ptr, ptr %384, align 8, !tbaa !63, !noalias !225
  %386 = icmp eq ptr %385, null
  br i1 %386, label %389, label %387

387:                                              ; preds = %383
  %388 = load ptr, ptr %385, align 8, !tbaa !164, !noalias !225
  br label %389

389:                                              ; preds = %387, %383, %376
  %390 = phi ptr [ %388, %387 ], [ null, %383 ], [ null, %376 ]
  %391 = icmp eq ptr %390, null
  br i1 %391, label %394, label %392

392:                                              ; preds = %389
  %393 = load ptr, ptr %390, align 8, !tbaa !176, !noalias !225
  br label %394

394:                                              ; preds = %392, %389
  %395 = phi ptr [ %393, %392 ], [ null, %389 ]
  store ptr %395, ptr %2, align 8, !tbaa.struct !168
  store ptr %390, ptr %263, align 8, !tbaa.struct !169
  store ptr %378, ptr %264, align 8, !tbaa.struct !170
  %396 = icmp eq ptr %395, null
  br i1 %396, label %432, label %397

397:                                              ; preds = %394
  %398 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %281, i64 0, i32 1
  br label %399

399:                                              ; preds = %397, %427
  %400 = phi ptr [ %395, %397 ], [ %430, %427 ]
  %401 = load ptr, ptr %400, align 8, !tbaa !206
  %402 = load i32, ptr %401, align 8
  %403 = and i32 %402, 255
  %404 = icmp eq i32 %403, 4
  br i1 %404, label %405, label %425

405:                                              ; preds = %399
  %406 = zext nneg i32 %403 to i64
  %407 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %406
  %408 = load i32, ptr %407, align 4, !tbaa !67
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %409
  %411 = load i64, ptr %410, align 8, !tbaa !134
  %412 = icmp eq i64 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %405
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %414

414:                                              ; preds = %413, %405
  %415 = getelementptr inbounds i8, ptr %401, i64 %411
  %416 = load ptr, ptr %415, align 8, !tbaa !52
  %417 = getelementptr inbounds %struct.tree_label_decl, ptr %416, i64 0, i32 2
  %418 = load i32, ptr %417, align 4, !tbaa !63
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %424, label %420

420:                                              ; preds = %414
  %421 = call ptr @get_eh_region_from_lp_number(i32 noundef %418) #22
  %422 = load ptr, ptr %398, align 8, !tbaa !112
  %423 = icmp eq ptr %421, %422
  br i1 %423, label %424, label %425

424:                                              ; preds = %420, %414
  br label %425

425:                                              ; preds = %424, %420, %399
  %426 = phi i32 [ 0, %424 ], [ 2, %399 ], [ 1, %420 ]
  switch i32 %426, label %570 [
    i32 0, label %427
    i32 2, label %432
  ]

427:                                              ; preds = %425
  %428 = load ptr, ptr %2, align 8, !tbaa !222
  %429 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %428, i64 0, i32 2
  %430 = load ptr, ptr %429, align 8, !tbaa !210
  store ptr %430, ptr %2, align 8, !tbaa !222
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %399, !llvm.loop !228

432:                                              ; preds = %427, %425, %394
  %433 = load ptr, ptr %307, align 8, !tbaa !111
  %434 = load ptr, ptr %377, align 8, !tbaa !109
  %435 = call ptr @find_edge(ptr noundef %433, ptr noundef %434) #22
  %436 = icmp eq ptr %435, null
  br i1 %436, label %437, label %570

437:                                              ; preds = %432
  %438 = load i32, ptr %320, align 8, !tbaa !160
  %439 = and i32 %438, 512
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %442, label %441

441:                                              ; preds = %437
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 510, ptr noundef nonnull @.str.1) #22
  br label %442

442:                                              ; preds = %441, %437
  %443 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 7
  %444 = load ptr, ptr %443, align 8, !tbaa !63
  %445 = icmp eq ptr %444, null
  br i1 %445, label %449, label %446

446:                                              ; preds = %442
  %447 = getelementptr inbounds %struct.gimple_bb_info, ptr %444, i64 0, i32 1
  %448 = load ptr, ptr %447, align 8, !tbaa !229
  br label %449

449:                                              ; preds = %446, %442
  %450 = phi ptr [ %448, %446 ], [ null, %442 ]
  %451 = icmp eq ptr %450, null
  br i1 %451, label %546, label %452

452:                                              ; preds = %449
  %453 = load ptr, ptr %450, align 8, !tbaa !176
  %454 = icmp eq ptr %453, null
  br i1 %454, label %546, label %455

455:                                              ; preds = %452
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %288) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !168
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  %456 = load ptr, ptr %2, align 8
  %457 = icmp eq ptr %456, null
  br i1 %457, label %546, label %458

458:                                              ; preds = %455
  %459 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %4, i64 0, i32 1
  %460 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %4, i64 0, i32 3
  %461 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %4, i64 0, i32 2
  %462 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %4, i64 0, i32 2, i32 1
  br label %463

463:                                              ; preds = %458, %543
  %464 = phi ptr [ %544, %543 ], [ %456, %458 ]
  %465 = load ptr, ptr %464, align 8, !tbaa !206
  %466 = getelementptr inbounds %struct.gimple_statement_phi, ptr %465, i64 0, i32 3
  %467 = load ptr, ptr %466, align 8, !tbaa !63
  %468 = getelementptr inbounds %struct.gimple_statement_phi, ptr %465, i64 0, i32 4, i64 0, i32 0, i32 3
  %469 = load ptr, ptr %468, align 8, !tbaa !230
  %470 = load ptr, ptr %469, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #22
  %471 = getelementptr inbounds %struct.tree_ssa_name, ptr %467, i64 0, i32 5
  store ptr %471, ptr %459, align 8, !tbaa !232
  %472 = getelementptr inbounds %struct.tree_ssa_name, ptr %467, i64 0, i32 5, i32 1
  %473 = load ptr, ptr %472, align 8, !tbaa !234
  store ptr %473, ptr %4, align 8, !tbaa !235
  %474 = icmp eq ptr %473, %471
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %461, i8 0, i64 40, i1 false)
  br i1 %474, label %476, label %475

475:                                              ; preds = %463
  call fastcc void @link_use_stmts_after(ptr noundef %473, ptr noundef nonnull %4)
  br label %476

476:                                              ; preds = %475, %463
  %477 = load ptr, ptr %4, align 8, !tbaa !235
  %478 = load ptr, ptr %459, align 8, !tbaa !232
  %479 = icmp eq ptr %477, %478
  br i1 %479, label %536, label %480

480:                                              ; preds = %476
  %481 = icmp eq ptr %470, null
  %482 = getelementptr inbounds %struct.tree_ssa_name, ptr %470, i64 0, i32 5
  %483 = getelementptr inbounds %struct.tree_ssa_name, ptr %470, i64 0, i32 5, i32 1
  br label %484

484:                                              ; preds = %480, %532
  %485 = phi ptr [ %477, %480 ], [ %533, %532 ]
  %486 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %485, i64 0, i32 1
  %487 = load ptr, ptr %486, align 8, !tbaa !234
  store ptr %487, ptr %460, align 8, !tbaa !236
  %488 = load ptr, ptr %4, align 8, !tbaa !235
  %489 = icmp eq ptr %488, %461
  br i1 %489, label %521, label %490

490:                                              ; preds = %484, %517
  %491 = phi ptr [ %518, %517 ], [ %485, %484 ]
  %492 = load ptr, ptr %491, align 8, !tbaa !237
  %493 = icmp eq ptr %492, null
  br i1 %493, label %499, label %494

494:                                              ; preds = %490
  %495 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %491, i64 0, i32 1
  %496 = load ptr, ptr %495, align 8, !tbaa !234
  %497 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %492, i64 0, i32 1
  store ptr %496, ptr %497, align 8, !tbaa !234
  %498 = load ptr, ptr %495, align 8, !tbaa !234
  store ptr %492, ptr %498, align 8, !tbaa !237
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %491, i8 0, i64 16, i1 false)
  br label %499

499:                                              ; preds = %494, %490
  %500 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %491, i64 0, i32 3
  %501 = load ptr, ptr %500, align 8, !tbaa !230
  store ptr %470, ptr %501, align 8, !tbaa !52
  br i1 %481, label %506, label %502

502:                                              ; preds = %499
  %503 = load i64, ptr %470, align 8
  %504 = and i64 %503, 65535
  %505 = icmp eq i64 %504, 141
  br i1 %505, label %507, label %506

506:                                              ; preds = %502, %499
  store ptr null, ptr %491, align 8, !tbaa !237
  br label %511

507:                                              ; preds = %502
  store ptr %482, ptr %491, align 8, !tbaa !237
  %508 = load ptr, ptr %483, align 8, !tbaa !234
  %509 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %491, i64 0, i32 1
  store ptr %508, ptr %509, align 8, !tbaa !234
  %510 = load ptr, ptr %483, align 8, !tbaa !234
  store ptr %491, ptr %510, align 8, !tbaa !237
  store ptr %491, ptr %483, align 8, !tbaa !234
  br label %511

511:                                              ; preds = %507, %506
  %512 = load ptr, ptr %460, align 8, !tbaa !236
  store ptr %512, ptr %4, align 8, !tbaa !235
  %513 = icmp eq ptr %512, %461
  br i1 %513, label %517, label %514

514:                                              ; preds = %511
  %515 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %512, i64 0, i32 1
  %516 = load ptr, ptr %515, align 8, !tbaa !234
  store ptr %516, ptr %460, align 8, !tbaa !236
  br label %517

517:                                              ; preds = %514, %511
  %518 = phi ptr [ %512, %514 ], [ null, %511 ]
  %519 = load ptr, ptr %4, align 8, !tbaa !235
  %520 = icmp eq ptr %519, %461
  br i1 %520, label %521, label %490, !llvm.loop !238

521:                                              ; preds = %517, %484
  %522 = load ptr, ptr %462, align 8, !tbaa !234
  store ptr %522, ptr %4, align 8, !tbaa !235
  %523 = load ptr, ptr %459, align 8, !tbaa !232
  %524 = icmp eq ptr %522, %523
  br i1 %524, label %525, label %531

525:                                              ; preds = %521
  %526 = load ptr, ptr %461, align 8, !tbaa !237
  %527 = icmp eq ptr %526, null
  br i1 %527, label %532, label %528

528:                                              ; preds = %525
  %529 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %526, i64 0, i32 1
  store ptr %522, ptr %529, align 8, !tbaa !234
  %530 = load ptr, ptr %462, align 8, !tbaa !234
  store ptr %526, ptr %530, align 8, !tbaa !237
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %461, i8 0, i64 16, i1 false)
  br label %532

531:                                              ; preds = %521
  call fastcc void @link_use_stmts_after(ptr noundef %522, ptr noundef nonnull %4)
  br label %532

532:                                              ; preds = %531, %528, %525
  %533 = load ptr, ptr %4, align 8, !tbaa !235
  %534 = load ptr, ptr %459, align 8, !tbaa !232
  %535 = icmp eq ptr %533, %534
  br i1 %535, label %536, label %484, !llvm.loop !239

536:                                              ; preds = %532, %476
  %537 = load i64, ptr %467, align 8
  %538 = and i64 %537, 4194304
  %539 = icmp eq i64 %538, 0
  br i1 %539, label %543, label %540

540:                                              ; preds = %536
  %541 = load i64, ptr %470, align 8
  %542 = or i64 %541, 4194304
  store i64 %542, ptr %470, align 8
  br label %543

543:                                              ; preds = %540, %536
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 1) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #22
  %544 = load ptr, ptr %2, align 8
  %545 = icmp eq ptr %544, null
  br i1 %545, label %546, label %463, !llvm.loop !240

546:                                              ; preds = %543, %455, %452, %449
  %547 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %548 = icmp eq ptr %547, null
  br i1 %548, label %560, label %549

549:                                              ; preds = %546
  %550 = load i32, ptr @dump_flags, align 4, !tbaa !67
  %551 = and i32 %550, 8
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %560, label %553

553:                                              ; preds = %549
  %554 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %281, i64 0, i32 4
  %555 = load i32, ptr %554, align 8, !tbaa !117
  %556 = load ptr, ptr %377, align 8, !tbaa !109
  %557 = getelementptr inbounds %struct.basic_block_def, ptr %556, i64 0, i32 9
  %558 = load i32, ptr %557, align 8, !tbaa !241
  %559 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %547, ptr noundef nonnull @.str.26, i32 noundef %555, i32 noundef %558)
  br label %560

560:                                              ; preds = %553, %549, %546
  %561 = load ptr, ptr %377, align 8, !tbaa !109
  call fastcc void @redirect_eh_edge_1(ptr noundef nonnull %307, ptr noundef %561, i8 noundef zeroext 0)
  %562 = load ptr, ptr %307, align 8, !tbaa !111
  call void @redirect_edge_pred(ptr noundef %309, ptr noundef %562) #22
  %563 = load i32, ptr %310, align 8, !tbaa !115
  store i32 %563, ptr %315, align 8, !tbaa !115
  %564 = getelementptr inbounds %struct.edge_def, ptr %307, i64 0, i32 8
  %565 = load i32, ptr %564, align 4, !tbaa !179
  %566 = getelementptr inbounds %struct.edge_def, ptr %309, i64 0, i32 8
  store i32 %565, ptr %566, align 4, !tbaa !179
  %567 = getelementptr inbounds %struct.edge_def, ptr %307, i64 0, i32 9
  %568 = load i64, ptr %567, align 8, !tbaa !178
  %569 = getelementptr inbounds %struct.edge_def, ptr %309, i64 0, i32 9
  store i64 %568, ptr %569, align 8, !tbaa !178
  call void @remove_edge(ptr noundef nonnull %307) #22
  br label %570

570:                                              ; preds = %425, %560, %432, %373, %314, %305, %302, %293
  %571 = phi i8 [ 1, %560 ], [ 0, %302 ], [ 0, %293 ], [ 0, %314 ], [ 0, %305 ], [ 0, %373 ], [ 0, %432 ], [ 0, %425 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  %572 = or i8 %571, %267
  br label %573

573:                                              ; preds = %570, %283
  %574 = phi i8 [ %572, %570 ], [ %267, %283 ]
  %575 = add nuw i64 %266, 1
  br label %265, !llvm.loop !242

576:                                              ; preds = %280, %925
  %577 = phi i64 [ %927, %925 ], [ 1, %280 ]
  %578 = phi i8 [ %926, %925 ], [ 0, %280 ]
  %579 = load ptr, ptr @cfun, align 8, !tbaa !52
  %580 = load ptr, ptr %579, align 8, !tbaa !80
  %581 = getelementptr inbounds %struct.eh_status, ptr %580, i64 0, i32 2
  %582 = load ptr, ptr %581, align 8, !tbaa !146
  %583 = icmp eq ptr %582, null
  br i1 %583, label %591, label %584

584:                                              ; preds = %576
  %585 = load i32, ptr %582, align 8, !tbaa !200
  %586 = zext i32 %585 to i64
  %587 = icmp ult i64 %577, %586
  br i1 %587, label %588, label %591

588:                                              ; preds = %584
  %589 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %582, i64 0, i32 2, i64 %577
  %590 = load ptr, ptr %589, align 8, !tbaa !52
  br label %591

591:                                              ; preds = %588, %584, %576
  %592 = phi ptr [ %590, %588 ], [ null, %584 ], [ null, %576 ]
  %593 = phi i1 [ false, %588 ], [ true, %584 ], [ true, %576 ]
  br i1 %593, label %928, label %594

594:                                              ; preds = %591
  %595 = icmp eq ptr %592, null
  br i1 %595, label %925, label %596

596:                                              ; preds = %594
  %597 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %592, i64 0, i32 2
  %598 = load ptr, ptr %597, align 8, !tbaa !107
  %599 = call ptr @label_to_block_fn(ptr noundef nonnull %579, ptr noundef %598) #22
  %600 = getelementptr inbounds %struct.basic_block_def, ptr %599, i64 0, i32 1
  %601 = load ptr, ptr %600, align 8, !tbaa !171
  %602 = icmp eq ptr %601, null
  br i1 %602, label %605, label %603

603:                                              ; preds = %596
  %604 = load i32, ptr %601, align 8, !tbaa !113
  br label %605

605:                                              ; preds = %603, %596
  %606 = phi i32 [ %604, %603 ], [ 0, %596 ]
  switch i32 %606, label %922 [
    i32 0, label %610
    i32 1, label %607
  ]

607:                                              ; preds = %605
  %608 = getelementptr inbounds %struct.VEC_edge_base, ptr %601, i64 0, i32 2, i64 0
  %609 = load ptr, ptr %608, align 8, !tbaa !52
  br label %610

610:                                              ; preds = %607, %605
  %611 = phi ptr [ %609, %607 ], [ null, %605 ]
  %612 = getelementptr inbounds %struct.basic_block_def, ptr %599, i64 0, i32 13
  %613 = load i32, ptr %612, align 8, !tbaa !160, !noalias !243
  %614 = and i32 %613, 512
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %622

616:                                              ; preds = %610
  %617 = getelementptr inbounds %struct.basic_block_def, ptr %599, i64 0, i32 7
  %618 = load ptr, ptr %617, align 8, !tbaa !63, !noalias !243
  %619 = icmp eq ptr %618, null
  br i1 %619, label %622, label %620

620:                                              ; preds = %616
  %621 = load ptr, ptr %618, align 8, !tbaa !164, !noalias !243
  br label %622

622:                                              ; preds = %620, %616, %610
  %623 = phi ptr [ %621, %620 ], [ null, %616 ], [ null, %610 ]
  %624 = icmp eq ptr %623, null
  br i1 %624, label %627, label %625

625:                                              ; preds = %622
  %626 = load ptr, ptr %623, align 8, !tbaa !176, !noalias !243
  br label %627

627:                                              ; preds = %625, %622
  %628 = phi ptr [ %626, %625 ], [ null, %622 ]
  %629 = icmp eq ptr %628, null
  br i1 %629, label %649, label %630

630:                                              ; preds = %627, %635
  %631 = phi ptr [ %637, %635 ], [ %628, %627 ]
  %632 = load ptr, ptr %631, align 8, !tbaa !206
  %633 = load i32, ptr %632, align 8
  %634 = trunc i32 %633 to i8
  switch i8 %634, label %649 [
    i8 4, label %635
    i8 2, label %639
  ]

635:                                              ; preds = %630
  %636 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %631, i64 0, i32 2
  %637 = load ptr, ptr %636, align 8, !tbaa !210, !noalias !248
  %638 = icmp eq ptr %637, null
  br i1 %638, label %649, label %630, !llvm.loop !221

639:                                              ; preds = %630, %644
  %640 = phi ptr [ %642, %644 ], [ %631, %630 ]
  %641 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %640, i64 0, i32 2
  %642 = load ptr, ptr %641, align 8, !tbaa !210
  %643 = icmp eq ptr %642, null
  br i1 %643, label %649, label %644

644:                                              ; preds = %639
  %645 = load ptr, ptr %642, align 8, !tbaa !206
  %646 = load i32, ptr %645, align 8
  %647 = and i32 %646, 255
  %648 = icmp eq i32 %647, 2
  br i1 %648, label %639, label %649, !llvm.loop !224

649:                                              ; preds = %635, %630, %644, %639, %627
  %650 = phi ptr [ %628, %627 ], [ %642, %639 ], [ %642, %644 ], [ %631, %630 ], [ %637, %635 ]
  %651 = icmp eq ptr %650, null
  br i1 %651, label %652, label %728

652:                                              ; preds = %649
  %653 = icmp eq ptr %611, null
  br i1 %653, label %654, label %655

654:                                              ; preds = %652
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3654, ptr noundef nonnull @.str.1) #22
  br label %655

655:                                              ; preds = %654, %652
  %656 = getelementptr inbounds %struct.edge_def, ptr %611, i64 0, i32 1
  %657 = load ptr, ptr %656, align 8, !tbaa !109
  %658 = getelementptr inbounds %struct.basic_block_def, ptr %657, i64 0, i32 13
  %659 = load i32, ptr %658, align 8, !tbaa !160, !noalias !249
  %660 = and i32 %659, 512
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %662, label %668

662:                                              ; preds = %655
  %663 = getelementptr inbounds %struct.basic_block_def, ptr %657, i64 0, i32 7
  %664 = load ptr, ptr %663, align 8, !tbaa !63, !noalias !249
  %665 = icmp eq ptr %664, null
  br i1 %665, label %668, label %666

666:                                              ; preds = %662
  %667 = load ptr, ptr %664, align 8, !tbaa !164, !noalias !249
  br label %668

668:                                              ; preds = %666, %662, %655
  %669 = phi ptr [ %667, %666 ], [ null, %662 ], [ null, %655 ]
  %670 = icmp eq ptr %669, null
  br i1 %670, label %673, label %671

671:                                              ; preds = %668
  %672 = load ptr, ptr %669, align 8, !tbaa !176, !noalias !249
  br label %673

673:                                              ; preds = %671, %668
  %674 = phi ptr [ %672, %671 ], [ null, %668 ]
  %675 = icmp eq ptr %674, null
  br i1 %675, label %710, label %676

676:                                              ; preds = %673
  %677 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %592, i64 0, i32 1
  br label %678

678:                                              ; preds = %676, %706
  %679 = phi ptr [ %674, %676 ], [ %708, %706 ]
  %680 = load ptr, ptr %679, align 8, !tbaa !206
  %681 = load i32, ptr %680, align 8
  %682 = and i32 %681, 255
  %683 = icmp eq i32 %682, 4
  br i1 %683, label %684, label %704

684:                                              ; preds = %678
  %685 = zext nneg i32 %682 to i64
  %686 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %685
  %687 = load i32, ptr %686, align 4, !tbaa !67
  %688 = zext i32 %687 to i64
  %689 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %688
  %690 = load i64, ptr %689, align 8, !tbaa !134
  %691 = icmp eq i64 %690, 0
  br i1 %691, label %692, label %693

692:                                              ; preds = %684
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %693

693:                                              ; preds = %692, %684
  %694 = getelementptr inbounds i8, ptr %680, i64 %690
  %695 = load ptr, ptr %694, align 8, !tbaa !52
  %696 = getelementptr inbounds %struct.tree_label_decl, ptr %695, i64 0, i32 2
  %697 = load i32, ptr %696, align 4, !tbaa !63
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %703, label %699

699:                                              ; preds = %693
  %700 = call ptr @get_eh_region_from_lp_number(i32 noundef %697) #22
  %701 = load ptr, ptr %677, align 8, !tbaa !112
  %702 = icmp eq ptr %700, %701
  br i1 %702, label %703, label %704

703:                                              ; preds = %699, %693
  br label %704

704:                                              ; preds = %703, %699, %678
  %705 = phi i32 [ 0, %703 ], [ 2, %678 ], [ 1, %699 ]
  switch i32 %705, label %922 [
    i32 0, label %706
    i32 2, label %710
  ]

706:                                              ; preds = %704
  %707 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %679, i64 0, i32 2
  %708 = load ptr, ptr %707, align 8, !tbaa !210
  %709 = icmp eq ptr %708, null
  br i1 %709, label %710, label %678, !llvm.loop !252

710:                                              ; preds = %706, %704, %673
  %711 = load ptr, ptr %656, align 8, !tbaa !109
  %712 = call fastcc zeroext i8 @cleanup_empty_eh_merge_phis(ptr noundef %711, ptr noundef %599, ptr noundef %611, i8 noundef zeroext 0)
  %713 = icmp eq i8 %712, 0
  br i1 %713, label %922, label %714

714:                                              ; preds = %710
  %715 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %716 = icmp eq ptr %715, null
  br i1 %716, label %922, label %717

717:                                              ; preds = %714
  %718 = load i32, ptr @dump_flags, align 4, !tbaa !67
  %719 = and i32 %718, 8
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %922, label %721

721:                                              ; preds = %717
  %722 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %592, i64 0, i32 4
  %723 = load i32, ptr %722, align 8, !tbaa !117
  %724 = load ptr, ptr %656, align 8, !tbaa !109
  %725 = getelementptr inbounds %struct.basic_block_def, ptr %724, i64 0, i32 9
  %726 = load i32, ptr %725, align 8, !tbaa !241
  %727 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %715, ptr noundef nonnull @.str.30, i32 noundef %723, i32 noundef %726)
  br label %922

728:                                              ; preds = %649
  %729 = load ptr, ptr %650, align 8, !tbaa !206
  %730 = load i32, ptr %729, align 8
  %731 = and i32 %730, 255
  %732 = icmp eq i32 %731, 14
  br i1 %732, label %733, label %922

733:                                              ; preds = %728
  %734 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %650, i64 0, i32 2
  %735 = load ptr, ptr %734, align 8, !tbaa !210
  %736 = icmp eq ptr %735, null
  br i1 %736, label %738, label %737

737:                                              ; preds = %733
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3729, ptr noundef nonnull @.str.1) #22
  br label %738

738:                                              ; preds = %737, %733
  %739 = icmp eq ptr %599, null
  br label %740

740:                                              ; preds = %770, %738
  %741 = phi i32 [ 0, %738 ], [ %771, %770 ]
  %742 = phi i8 [ 0, %738 ], [ %763, %770 ]
  br i1 %739, label %743, label %744

743:                                              ; preds = %740
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 687, ptr noundef nonnull @.str.1) #22
  br label %744

744:                                              ; preds = %743, %740
  %745 = load ptr, ptr %599, align 8, !tbaa !52
  %746 = icmp eq ptr %745, null
  br i1 %746, label %749, label %747

747:                                              ; preds = %744
  %748 = load i32, ptr %745, align 8, !tbaa !113
  br label %749

749:                                              ; preds = %747, %744
  %750 = phi i32 [ %748, %747 ], [ 0, %744 ]
  %751 = icmp eq i32 %750, %741
  br i1 %751, label %756, label %752

752:                                              ; preds = %749
  %753 = zext i32 %741 to i64
  %754 = getelementptr inbounds %struct.VEC_edge_base, ptr %745, i64 0, i32 2, i64 %753
  %755 = load ptr, ptr %754, align 8, !tbaa !52
  br label %756

756:                                              ; preds = %752, %749
  %757 = phi ptr [ %755, %752 ], [ null, %749 ]
  br i1 %751, label %772, label %758

758:                                              ; preds = %756
  %759 = getelementptr inbounds %struct.edge_def, ptr %757, i64 0, i32 7
  %760 = load i32, ptr %759, align 8, !tbaa !115
  %761 = and i32 %760, 8
  %762 = icmp eq i32 %761, 0
  %763 = select i1 %762, i8 1, i8 %742
  br i1 %746, label %766, label %764

764:                                              ; preds = %758
  %765 = load i32, ptr %745, align 8, !tbaa !113
  br label %766

766:                                              ; preds = %764, %758
  %767 = phi i32 [ %765, %764 ], [ 0, %758 ]
  %768 = icmp ult i32 %741, %767
  br i1 %768, label %770, label %769

769:                                              ; preds = %766
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %770

770:                                              ; preds = %769, %766
  %771 = add i32 %741, 1
  br label %740, !llvm.loop !253

772:                                              ; preds = %756
  %773 = call i32 @lookup_stmt_eh_lp(ptr noundef nonnull %729)
  %774 = call ptr @get_eh_region_from_lp_number(i32 noundef %773) #22
  %775 = icmp eq ptr %774, null
  br i1 %775, label %776, label %816

776:                                              ; preds = %772
  %777 = icmp eq ptr %611, null
  br i1 %777, label %779, label %778

778:                                              ; preds = %776
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3748, ptr noundef nonnull @.str.1) #22
  br label %779

779:                                              ; preds = %778, %776
  br label %780

780:                                              ; preds = %779, %814
  %781 = phi i32 [ 0, %779 ], [ %815, %814 ]
  %782 = zext i32 %781 to i64
  br label %783

783:                                              ; preds = %780, %802
  %784 = load ptr, ptr %599, align 8, !tbaa !52
  %785 = icmp eq ptr %784, null
  br i1 %785, label %788, label %786

786:                                              ; preds = %783
  %787 = load i32, ptr %784, align 8, !tbaa !113
  br label %788

788:                                              ; preds = %786, %783
  %789 = phi i32 [ %787, %786 ], [ 0, %783 ]
  %790 = icmp eq i32 %789, %781
  br i1 %790, label %794, label %791

791:                                              ; preds = %788
  %792 = getelementptr inbounds %struct.VEC_edge_base, ptr %784, i64 0, i32 2, i64 %782
  %793 = load ptr, ptr %792, align 8, !tbaa !52
  br label %794

794:                                              ; preds = %791, %788
  %795 = phi ptr [ %793, %791 ], [ null, %788 ]
  %796 = icmp eq ptr %795, null
  br i1 %796, label %910, label %797

797:                                              ; preds = %794
  %798 = getelementptr inbounds %struct.edge_def, ptr %795, i64 0, i32 7
  %799 = load i32, ptr %798, align 8, !tbaa !115
  %800 = and i32 %799, 8
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %807, label %802

802:                                              ; preds = %797
  %803 = load ptr, ptr %795, align 8, !tbaa !111
  %804 = call ptr @last_stmt(ptr noundef %803) #22
  %805 = load ptr, ptr @cfun, align 8, !tbaa !52
  %806 = call zeroext i8 @remove_stmt_from_eh_lp_fn(ptr noundef %805, ptr noundef %804), !range !118
  call void @remove_edge(ptr noundef nonnull %795) #22
  br label %783, !llvm.loop !254

807:                                              ; preds = %797
  br i1 %785, label %810, label %808

808:                                              ; preds = %807
  %809 = load i32, ptr %784, align 8, !tbaa !113
  br label %810

810:                                              ; preds = %808, %807
  %811 = phi i32 [ %809, %808 ], [ 0, %807 ]
  %812 = icmp ult i32 %781, %811
  br i1 %812, label %814, label %813

813:                                              ; preds = %810
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %814

814:                                              ; preds = %813, %810
  %815 = add i32 %781, 1
  br label %780, !llvm.loop !254

816:                                              ; preds = %772
  %817 = getelementptr inbounds %struct.eh_region_d, ptr %774, i64 0, i32 4
  %818 = load i32, ptr %817, align 4, !tbaa !99
  %819 = icmp eq i32 %818, 3
  br i1 %819, label %820, label %857

820:                                              ; preds = %816, %855
  %821 = phi i32 [ %856, %855 ], [ 0, %816 ]
  %822 = zext i32 %821 to i64
  br label %823

823:                                              ; preds = %820, %842
  %824 = load ptr, ptr %599, align 8, !tbaa !52
  %825 = icmp eq ptr %824, null
  br i1 %825, label %828, label %826

826:                                              ; preds = %823
  %827 = load i32, ptr %824, align 8, !tbaa !113
  br label %828

828:                                              ; preds = %826, %823
  %829 = phi i32 [ %827, %826 ], [ 0, %823 ]
  %830 = icmp eq i32 %829, %821
  br i1 %830, label %834, label %831

831:                                              ; preds = %828
  %832 = getelementptr inbounds %struct.VEC_edge_base, ptr %824, i64 0, i32 2, i64 %822
  %833 = load ptr, ptr %832, align 8, !tbaa !52
  br label %834

834:                                              ; preds = %831, %828
  %835 = phi ptr [ %833, %831 ], [ null, %828 ]
  %836 = icmp eq ptr %835, null
  br i1 %836, label %910, label %837

837:                                              ; preds = %834
  %838 = getelementptr inbounds %struct.edge_def, ptr %835, i64 0, i32 7
  %839 = load i32, ptr %838, align 8, !tbaa !115
  %840 = and i32 %839, 8
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %848, label %842

842:                                              ; preds = %837
  %843 = load ptr, ptr %835, align 8, !tbaa !111
  %844 = call ptr @last_stmt(ptr noundef %843) #22
  %845 = load ptr, ptr @cfun, align 8, !tbaa !52
  %846 = call zeroext i8 @remove_stmt_from_eh_lp_fn(ptr noundef %845, ptr noundef %844), !range !118
  %847 = load ptr, ptr @cfun, align 8, !tbaa !52
  call void @add_stmt_to_eh_lp_fn(ptr noundef %847, ptr noundef %844, i32 noundef %773)
  call void @remove_edge(ptr noundef nonnull %835) #22
  br label %823, !llvm.loop !255

848:                                              ; preds = %837
  br i1 %825, label %851, label %849

849:                                              ; preds = %848
  %850 = load i32, ptr %824, align 8, !tbaa !113
  br label %851

851:                                              ; preds = %849, %848
  %852 = phi i32 [ %850, %849 ], [ 0, %848 ]
  %853 = icmp ult i32 %821, %852
  br i1 %853, label %855, label %854

854:                                              ; preds = %851
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %855

855:                                              ; preds = %854, %851
  %856 = add i32 %821, 1
  br label %820, !llvm.loop !255

857:                                              ; preds = %816
  %858 = getelementptr inbounds %struct.edge_def, ptr %611, i64 0, i32 1
  %859 = load ptr, ptr %858, align 8, !tbaa !109
  %860 = call fastcc zeroext i8 @cleanup_empty_eh_merge_phis(ptr noundef %859, ptr noundef nonnull %599, ptr noundef %611, i8 noundef zeroext 1)
  %861 = icmp eq i8 %860, 0
  br i1 %861, label %862, label %910

862:                                              ; preds = %857
  %863 = icmp eq i8 %742, 0
  br i1 %863, label %864, label %922

864:                                              ; preds = %862
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  %865 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %592, i64 0, i32 1
  %866 = load ptr, ptr %865, align 8, !tbaa !112
  %867 = getelementptr inbounds %struct.eh_region_d, ptr %866, i64 0, i32 6
  br label %868

868:                                              ; preds = %868, %864
  %869 = phi ptr [ %867, %864 ], [ %870, %868 ]
  %870 = load ptr, ptr %869, align 8, !tbaa !52
  %871 = icmp eq ptr %870, %592
  br i1 %871, label %872, label %868, !llvm.loop !256

872:                                              ; preds = %868
  %873 = load ptr, ptr %592, align 8, !tbaa !257
  store ptr %873, ptr %869, align 8, !tbaa !52
  store ptr %774, ptr %865, align 8, !tbaa !112
  %874 = getelementptr inbounds %struct.eh_region_d, ptr %774, i64 0, i32 6
  %875 = load ptr, ptr %874, align 8, !tbaa !258
  store ptr %875, ptr %592, align 8, !tbaa !257
  store ptr %592, ptr %874, align 8, !tbaa !258
  %876 = load i32, ptr %612, align 8, !tbaa !160, !noalias !259
  %877 = and i32 %876, 512
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %879, label %885

879:                                              ; preds = %872
  %880 = getelementptr inbounds %struct.basic_block_def, ptr %599, i64 0, i32 7
  %881 = load ptr, ptr %880, align 8, !tbaa !63, !noalias !259
  %882 = icmp eq ptr %881, null
  br i1 %882, label %885, label %883

883:                                              ; preds = %879
  %884 = load ptr, ptr %881, align 8, !tbaa !164, !noalias !259
  br label %885

885:                                              ; preds = %883, %879, %872
  %886 = phi ptr [ %884, %883 ], [ null, %879 ], [ null, %872 ]
  %887 = getelementptr inbounds i8, ptr %1, i64 8
  %888 = getelementptr inbounds i8, ptr %1, i64 16
  %889 = icmp ne ptr %886, null
  call void @llvm.assume(i1 %889)
  %890 = getelementptr inbounds %struct.gimple_seq_d, ptr %886, i64 0, i32 1
  %891 = load ptr, ptr %890, align 8, !tbaa !166, !noalias !259
  store ptr %891, ptr %1, align 8, !tbaa.struct !168
  store ptr %886, ptr %887, align 8, !tbaa.struct !169
  store ptr %599, ptr %888, align 8, !tbaa.struct !170
  %892 = load ptr, ptr %891, align 8, !tbaa !206
  call void @mark_virtual_ops_for_renaming(ptr noundef %892) #22
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #22
  %893 = getelementptr inbounds %struct.edge_def, ptr %611, i64 0, i32 7
  %894 = load i32, ptr %893, align 8, !tbaa !115
  %895 = and i32 %894, -10
  %896 = or disjoint i32 %895, 1
  store i32 %896, ptr %893, align 8, !tbaa !115
  %897 = getelementptr inbounds %struct.edge_def, ptr %611, i64 0, i32 8
  store i32 10000, ptr %897, align 4, !tbaa !179
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  %898 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %899 = icmp eq ptr %898, null
  br i1 %899, label %922, label %900

900:                                              ; preds = %885
  %901 = load i32, ptr @dump_flags, align 4, !tbaa !67
  %902 = and i32 %901, 8
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %922, label %904

904:                                              ; preds = %900
  %905 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %592, i64 0, i32 4
  %906 = load i32, ptr %905, align 8, !tbaa !117
  %907 = getelementptr inbounds %struct.eh_region_d, ptr %774, i64 0, i32 3
  %908 = load i32, ptr %907, align 8, !tbaa !148
  %909 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %898, ptr noundef nonnull @.str.28, i32 noundef %906, i32 noundef %908)
  br label %922

910:                                              ; preds = %834, %794, %857
  %911 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %912 = icmp eq ptr %911, null
  br i1 %912, label %921, label %913

913:                                              ; preds = %910
  %914 = load i32, ptr @dump_flags, align 4, !tbaa !67
  %915 = and i32 %914, 8
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %921, label %917

917:                                              ; preds = %913
  %918 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %592, i64 0, i32 4
  %919 = load i32, ptr %918, align 8, !tbaa !117
  %920 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %911, ptr noundef nonnull @.str.29, i32 noundef %919)
  br label %921

921:                                              ; preds = %917, %913, %910
  call void @remove_eh_landing_pad(ptr noundef nonnull %592) #22
  br label %922

922:                                              ; preds = %704, %710, %921, %904, %900, %885, %862, %728, %721, %717, %714, %605
  %923 = phi i8 [ 1, %921 ], [ 0, %605 ], [ 0, %728 ], [ 1, %904 ], [ 1, %900 ], [ 1, %885 ], [ 0, %862 ], [ 1, %721 ], [ 1, %717 ], [ 1, %714 ], [ 0, %710 ], [ 0, %704 ]
  %924 = or i8 %923, %578
  br label %925

925:                                              ; preds = %922, %594
  %926 = phi i8 [ %924, %922 ], [ %578, %594 ]
  %927 = add nuw i64 %577, 1
  br label %576, !llvm.loop !262

928:                                              ; preds = %591
  %929 = or i8 %578, %267
  %930 = icmp eq i8 %929, 0
  br i1 %930, label %970, label %931

931:                                              ; preds = %928
  call void @free_dominance_info(i32 noundef 1) #22
  call void @free_dominance_info(i32 noundef 2) #22
  %932 = call zeroext i8 @delete_unreachable_blocks() #22
  br label %933

933:                                              ; preds = %967, %931
  %934 = phi i64 [ %968, %967 ], [ 1, %931 ]
  %935 = load ptr, ptr @cfun, align 8, !tbaa !52
  %936 = load ptr, ptr %935, align 8, !tbaa !80
  %937 = getelementptr inbounds %struct.eh_status, ptr %936, i64 0, i32 1
  %938 = load ptr, ptr %937, align 8, !tbaa !147
  %939 = icmp eq ptr %938, null
  br i1 %939, label %947, label %940

940:                                              ; preds = %933
  %941 = load i32, ptr %938, align 8, !tbaa !198
  %942 = zext i32 %941 to i64
  %943 = icmp ult i64 %934, %942
  br i1 %943, label %944, label %947

944:                                              ; preds = %940
  %945 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %938, i64 0, i32 2, i64 %934
  %946 = load ptr, ptr %945, align 8, !tbaa !52
  br label %947

947:                                              ; preds = %944, %940, %933
  %948 = phi ptr [ %946, %944 ], [ null, %940 ], [ null, %933 ]
  %949 = phi i1 [ false, %944 ], [ true, %940 ], [ true, %933 ]
  br i1 %949, label %969, label %950

950:                                              ; preds = %947
  %951 = icmp eq ptr %948, null
  br i1 %951, label %967, label %952

952:                                              ; preds = %950
  %953 = getelementptr inbounds %struct.eh_region_d, ptr %948, i64 0, i32 6
  %954 = load ptr, ptr %953, align 8, !tbaa !258
  %955 = icmp eq ptr %954, null
  br i1 %955, label %956, label %967

956:                                              ; preds = %952
  %957 = getelementptr inbounds %struct.eh_region_d, ptr %948, i64 0, i32 4
  %958 = load i32, ptr %957, align 4, !tbaa !99
  %959 = icmp eq i32 %958, 3
  br i1 %959, label %967, label %960

960:                                              ; preds = %956
  %961 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %962 = icmp eq ptr %961, null
  br i1 %962, label %966, label %963

963:                                              ; preds = %960
  %964 = trunc i64 %934 to i32
  %965 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %961, ptr noundef nonnull @.str.22, i32 noundef %964)
  br label %966

966:                                              ; preds = %963, %960
  call void @remove_eh_handler(ptr noundef nonnull %948) #22
  br label %967

967:                                              ; preds = %966, %956, %952, %950
  %968 = add nuw i64 %934, 1
  br label %933, !llvm.loop !263

969:                                              ; preds = %947
  br i1 %930, label %970, label %971

970:                                              ; preds = %928, %969, %252
  br label %971

971:                                              ; preds = %969, %970
  %972 = phi i32 [ 16416, %969 ], [ 0, %970 ]
  ret i32 %972
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @verify_eh_edges(ptr noundef %0) local_unnamed_addr #10 !prof !51 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %0)
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call ptr @get_eh_landing_pad_from_number(i32 noundef %4) #22
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ null, %1 ]
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 1
  br label %11

11:                                               ; preds = %46, %8
  %12 = phi i32 [ 0, %8 ], [ %47, %46 ]
  %13 = phi ptr [ null, %8 ], [ %38, %46 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %14, align 8, !tbaa !113
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi i32 [ %17, %16 ], [ 0, %11 ]
  %20 = icmp eq i32 %19, %12
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = zext i32 %12 to i64
  %23 = getelementptr inbounds %struct.VEC_edge_base, ptr %14, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  br label %25

25:                                               ; preds = %18, %21
  %26 = phi ptr [ %24, %21 ], [ null, %18 ]
  br i1 %20, label %48, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !115
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = icmp eq ptr %13, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !241
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.7, i32 noundef %36) #22
  br label %80

37:                                               ; preds = %27, %32
  %38 = phi ptr [ %13, %27 ], [ %26, %32 ]
  %39 = icmp eq ptr %14, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i32, ptr %14, align 8, !tbaa !113
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i32 [ %41, %40 ], [ 0, %37 ]
  %44 = icmp ult i32 %12, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %46

46:                                               ; preds = %42, %45
  %47 = add i32 %12, 1
  br label %11, !llvm.loop !264

48:                                               ; preds = %25
  %49 = icmp eq ptr %9, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = icmp eq ptr %13, null
  br i1 %51, label %80, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !241
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8, i32 noundef %54) #22
  br label %80

55:                                               ; preds = %48
  %56 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %0)
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !241
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9, i32 noundef %60) #22
  br label %80

61:                                               ; preds = %55
  %62 = icmp eq ptr %13, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !241
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.10, i32 noundef %65) #22
  br label %80

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !109
  %69 = load ptr, ptr @cfun, align 8, !tbaa !52
  %70 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %9, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !107
  %72 = tail call ptr @label_to_block_fn(ptr noundef %69, ptr noundef %71) #22
  %73 = icmp eq ptr %68, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !241
  %77 = load ptr, ptr %67, align 8, !tbaa !109
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 9
  %79 = load i32, ptr %78, align 8, !tbaa !241
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.11, i32 noundef %76, i32 noundef %79) #22
  br label %80

80:                                               ; preds = %66, %50, %74, %63, %58, %52, %34
  %81 = phi i8 [ 1, %34 ], [ 1, %52 ], [ 1, %63 ], [ 1, %74 ], [ 1, %58 ], [ 0, %50 ], [ 0, %66 ]
  ret i8 %81
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @verify_eh_dispatch_edge(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !51 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !63
  %4 = tail call ptr @get_eh_region_from_number(i32 noundef %3) #22
  %5 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 1
  br label %8

8:                                                ; preds = %37, %1
  %9 = phi i32 [ 0, %1 ], [ %38, %37 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %10, align 8, !tbaa !113
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ]
  %16 = icmp eq i32 %15, %9
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = zext i32 %9 to i64
  %19 = getelementptr inbounds %struct.VEC_edge_base, ptr %10, i64 0, i32 2, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  br label %21

21:                                               ; preds = %14, %17
  %22 = phi ptr [ %20, %17 ], [ null, %14 ]
  br i1 %16, label %39, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !265
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3978, ptr noundef nonnull @.str.1) #22
  br label %28

28:                                               ; preds = %27, %23
  %29 = load ptr, ptr %7, align 8, !tbaa !52
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr %29, align 8, !tbaa !113
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32 [ %32, %31 ], [ 0, %28 ]
  %35 = icmp ult i32 %9, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %37

37:                                               ; preds = %33, %36
  %38 = add i32 %9, 1
  br label %8, !llvm.loop !266

39:                                               ; preds = %21
  %40 = getelementptr inbounds %struct.eh_region_d, ptr %4, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !99
  switch i32 %41, label %69 [
    i32 1, label %42
    i32 2, label %60
  ]

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.eh_region_d, ptr %4, i64 0, i32 5
  br label %44

44:                                               ; preds = %55, %42
  %45 = phi ptr [ %43, %42 ], [ %46, %55 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !63
  %47 = icmp eq ptr %46, null
  br i1 %47, label %70, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr @cfun, align 8, !tbaa !52
  %50 = getelementptr inbounds %struct.eh_catch_d, ptr %46, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !101
  %52 = tail call ptr @label_to_block_fn(ptr noundef %49, ptr noundef %51) #22
  %53 = tail call ptr @find_edge(ptr noundef %6, ptr noundef %52) #22
  %54 = icmp eq ptr %53, null
  br i1 %54, label %116, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 3
  store ptr %53, ptr %56, align 8, !tbaa !265
  %57 = getelementptr inbounds %struct.eh_catch_d, ptr %46, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !103
  %59 = icmp eq ptr %58, null
  br i1 %59, label %70, label %44, !llvm.loop !267

60:                                               ; preds = %39
  %61 = load ptr, ptr @cfun, align 8, !tbaa !52
  %62 = getelementptr inbounds %struct.eh_region_d, ptr %4, i64 0, i32 5, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !63
  %64 = tail call ptr @label_to_block_fn(ptr noundef %61, ptr noundef %63) #22
  %65 = tail call ptr @find_edge(ptr noundef %6, ptr noundef %64) #22
  %66 = icmp eq ptr %65, null
  br i1 %66, label %116, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 3
  store ptr %65, ptr %68, align 8, !tbaa !265
  br label %70

69:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4015, ptr noundef nonnull @.str.1) #22
  br label %70

70:                                               ; preds = %55, %44, %69, %67
  %71 = phi i32 [ 1, %69 ], [ 1, %67 ], [ 1, %44 ], [ 0, %55 ]
  br label %72

72:                                               ; preds = %110, %70
  %73 = phi i32 [ 0, %70 ], [ %111, %110 ]
  %74 = phi ptr [ null, %70 ], [ %101, %110 ]
  %75 = load ptr, ptr %7, align 8, !tbaa !52
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = load i32, ptr %75, align 8, !tbaa !113
  br label %79

79:                                               ; preds = %77, %72
  %80 = phi i32 [ %78, %77 ], [ 0, %72 ]
  %81 = icmp eq i32 %80, %73
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = zext i32 %73 to i64
  %84 = getelementptr inbounds %struct.VEC_edge_base, ptr %75, i64 0, i32 2, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !52
  br label %86

86:                                               ; preds = %79, %82
  %87 = phi ptr [ %85, %82 ], [ null, %79 ]
  br i1 %81, label %112, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 7
  %90 = load i32, ptr %89, align 8, !tbaa !115
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = icmp eq ptr %74, null
  br i1 %94, label %100, label %116

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !265
  %98 = icmp eq ptr %97, null
  br i1 %98, label %116, label %99

99:                                               ; preds = %95
  store ptr null, ptr %96, align 8, !tbaa !265
  br label %100

100:                                              ; preds = %99, %93
  %101 = phi ptr [ %74, %99 ], [ %87, %93 ]
  %102 = load ptr, ptr %7, align 8, !tbaa !52
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = load i32, ptr %102, align 8, !tbaa !113
  br label %106

106:                                              ; preds = %104, %100
  %107 = phi i32 [ %105, %104 ], [ 0, %100 ]
  %108 = icmp ult i32 %73, %107
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %110

110:                                              ; preds = %106, %109
  %111 = add i32 %73, 1
  br label %72, !llvm.loop !268

112:                                              ; preds = %86
  %113 = icmp ne ptr %74, null
  %114 = zext i1 %113 to i32
  %115 = icmp eq i32 %71, %114
  br i1 %115, label %120, label %116

116:                                              ; preds = %48, %95, %93, %112, %60
  %117 = phi ptr [ @.str.12, %60 ], [ @.str.15, %112 ], [ @.str.14, %95 ], [ @.str.13, %93 ], [ @.str.12, %48 ]
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 9
  %119 = load i32, ptr %118, align 8, !tbaa !241
  tail call void (ptr, ...) @error(ptr noundef nonnull %117, i32 noundef %119) #22
  br label %120

120:                                              ; preds = %116, %112
  %121 = phi i8 [ 0, %112 ], [ 1, %116 ]
  ret i8 %121
}

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_body(ptr noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #17

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nounwind uwtable
define internal fastcc void @collect_finally_tree_1(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #13 !prof !87 !PGOFuncName !269 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4, !prof !89

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !176, !noalias !270
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  %8 = icmp eq ptr %7, null
  br i1 %8, label %63, label %9, !prof !273

9:                                                ; preds = %6, %59
  %10 = phi ptr [ %61, %59 ], [ %7, %6 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !206
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 255
  %14 = trunc i32 %12 to i8
  switch i8 %14, label %59 [
    i8 4, label %15
    i8 17, label %40
    i8 11, label %53
    i8 12, label %56
  ], !prof !274

15:                                               ; preds = %9
  %16 = add nsw i32 %13, -10
  %17 = icmp ult i32 %16, -9
  br i1 %17, label %30, label %18, !prof !275

18:                                               ; preds = %15
  %19 = zext nneg i32 %13 to i64
  %20 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !67
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !134
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27, !prof !275

26:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %27

27:                                               ; preds = %26, %18
  %28 = getelementptr inbounds i8, ptr %11, i64 %24
  %29 = load ptr, ptr %28, align 8, !tbaa !52
  br label %30

30:                                               ; preds = %15, %27
  %31 = phi ptr [ %29, %27 ], [ null, %15 ]
  %32 = tail call ptr @xmalloc(i64 noundef 16) #22
  store ptr %31, ptr %32, align 8, !tbaa.struct !276
  %33 = getelementptr inbounds %struct.finally_tree_node, ptr %32, i64 0, i32 1
  store ptr %1, ptr %33, align 8, !tbaa !277
  %34 = load ptr, ptr @finally_tree, align 8, !tbaa !52
  %35 = tail call ptr @htab_find_slot(ptr noundef %34, ptr noundef nonnull %32, i32 noundef 1) #22
  %36 = load ptr, ptr %35, align 8, !tbaa !52
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38, !prof !279

38:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 235, ptr noundef nonnull @.str.1) #22
  br label %39

39:                                               ; preds = %30, %38
  store ptr %32, ptr %35, align 8, !tbaa !52
  br label %59

40:                                               ; preds = %9
  %41 = lshr i32 %12, 16
  %42 = and i32 %41, 3
  switch i32 %42, label %59 [
    i32 2, label %43
    i32 1, label %48
  ]

43:                                               ; preds = %40
  tail call fastcc void @record_in_finally_tree(ptr nonnull %11, ptr noundef %1)
  %44 = getelementptr inbounds %struct.gimple_statement_try, ptr %11, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !63
  tail call fastcc void @collect_finally_tree_1(ptr noundef %45, ptr noundef nonnull %11)
  %46 = getelementptr inbounds %struct.gimple_statement_try, ptr %11, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !63
  tail call fastcc void @collect_finally_tree_1(ptr noundef %47, ptr noundef %1)
  br label %59

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.gimple_statement_try, ptr %11, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  tail call fastcc void @collect_finally_tree_1(ptr noundef %50, ptr noundef %1)
  %51 = getelementptr inbounds %struct.gimple_statement_try, ptr %11, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !63
  tail call fastcc void @collect_finally_tree_1(ptr noundef %52, ptr noundef %1)
  br label %59

53:                                               ; preds = %9
  %54 = getelementptr inbounds %struct.gimple_statement_catch, ptr %11, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !63
  tail call fastcc void @collect_finally_tree_1(ptr noundef %55, ptr noundef %1)
  br label %59

56:                                               ; preds = %9
  %57 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %11, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !63
  tail call fastcc void @collect_finally_tree_1(ptr noundef %58, ptr noundef %1)
  br label %59

59:                                               ; preds = %40, %9, %39, %43, %48, %53, %56
  %60 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %10, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !210
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %9, !prof !280, !llvm.loop !281

63:                                               ; preds = %59, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lower_eh_constructs_1(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !87 !PGOFuncName !282 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.leh_tf_state, align 8
  %12 = alloca %struct.leh_state, align 8
  %13 = alloca %struct.leh_state, align 8
  %14 = alloca ptr, align 8
  %15 = alloca %struct.leh_state, align 8
  %16 = alloca ptr, align 8
  %17 = alloca %struct.leh_state, align 8
  %18 = alloca %struct.leh_tf_state, align 8
  %19 = alloca ptr, align 8
  %20 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #22
  %21 = icmp eq ptr %1, null
  br i1 %21, label %24, label %22, !prof !89

22:                                               ; preds = %2
  %23 = load ptr, ptr %1, align 8, !tbaa !176, !noalias !283
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi ptr [ %23, %22 ], [ null, %2 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27, !prof !89

27:                                               ; preds = %24
  %28 = load ptr, ptr %25, align 8, !tbaa !206, !noalias !283
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30, !prof !89

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.gimple_statement_base, ptr %28, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !63, !noalias !283
  br label %33

33:                                               ; preds = %24, %27, %30
  %34 = phi ptr [ %32, %30 ], [ null, %27 ], [ null, %24 ]
  store ptr %25, ptr %20, align 8, !tbaa.struct !168
  %35 = getelementptr inbounds i8, ptr %20, i64 8
  store ptr %1, ptr %35, align 8, !tbaa.struct !169
  %36 = getelementptr inbounds i8, ptr %20, i64 16
  store ptr %34, ptr %36, align 8, !tbaa.struct !170
  %37 = icmp eq ptr %25, null
  br i1 %37, label %1308, label %38, !prof !273

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.leh_state, ptr %0, i64 0, i32 2
  br label %40

40:                                               ; preds = %38, %1305
  %41 = phi ptr [ %25, %38 ], [ %1306, %1305 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !206
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 255
  %45 = trunc i32 %43 to i8
  switch i8 %45, label %1301 [
    i8 8, label %46
    i8 6, label %140
    i8 1, label %429
    i8 3, label %429
    i8 9, label %429
    i8 17, label %526
  ], !prof !286

46:                                               ; preds = %40
  %47 = add nsw i32 %44, -10
  %48 = icmp ult i32 %47, -9
  br i1 %48, label %62, label %49, !prof !287

49:                                               ; preds = %46
  %50 = zext nneg i32 %44 to i64
  %51 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !67
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !134
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58, !prof !287

57:                                               ; preds = %49
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %58

58:                                               ; preds = %57, %49
  %59 = getelementptr inbounds i8, ptr %42, i64 %55
  %60 = getelementptr inbounds ptr, ptr %59, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !52
  br label %62

62:                                               ; preds = %58, %46
  %63 = phi ptr [ %61, %58 ], [ null, %46 ]
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 121
  br i1 %66, label %67, label %70, !prof !288

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.tree_exp, ptr %63, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !63
  br label %70

70:                                               ; preds = %62, %67
  %71 = phi ptr [ %69, %67 ], [ null, %62 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %140, label %73, !prof !287

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.tree_function_decl, ptr %71, i64 0, i32 5
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 6144
  %77 = icmp eq i32 %76, 6144
  br i1 %77, label %78, label %140, !prof !287

78:                                               ; preds = %73
  %79 = and i32 %75, 2047
  switch i32 %79, label %140 [
    i32 552, label %80
    i32 553, label %112
    i32 554, label %139
  ]

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.leh_state, ptr %0, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !289
  %83 = icmp eq ptr %82, null
  br i1 %83, label %116, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.eh_region_d, ptr %82, i64 0, i32 3
  %86 = load i32, ptr %85, align 8, !tbaa !148
  %87 = sext i32 %86 to i64
  %88 = call ptr @build_int_cst(ptr noundef null, i64 noundef %87) #22
  %89 = load i32, ptr %42, align 8
  %90 = and i32 %89, 255
  %91 = add nsw i32 %90, -10
  %92 = icmp ult i32 %91, -9
  br i1 %92, label %97, label %93

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.gimple_statement_base, ptr %42, i64 0, i32 3
  %95 = load i32, ptr %94, align 4, !tbaa !63
  %96 = icmp ugt i32 %95, 3
  br i1 %96, label %98, label %97

97:                                               ; preds = %93, %84
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1665, ptr noundef nonnull @.str.1) #22
  br label %98

98:                                               ; preds = %97, %93
  %99 = load i32, ptr %42, align 8
  %100 = and i32 %99, 255
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !67
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !134
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %109

109:                                              ; preds = %98, %108
  %110 = getelementptr inbounds i8, ptr %42, i64 %106
  %111 = getelementptr inbounds ptr, ptr %110, i64 3
  store ptr %88, ptr %111, align 8, !tbaa !52
  br label %140

112:                                              ; preds = %78
  %113 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !63
  %115 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  br label %116

116:                                              ; preds = %80, %112
  %117 = phi ptr [ %115, %112 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), %80 ]
  %118 = load ptr, ptr %117, align 8, !tbaa !63
  %119 = call ptr @build_int_cst(ptr noundef %118, i64 noundef 0) #22
  %120 = load i32, ptr %42, align 8
  %121 = and i32 %120, 255
  %122 = add nsw i32 %121, -10
  %123 = icmp ult i32 %122, -9
  br i1 %123, label %136, label %124

124:                                              ; preds = %116
  %125 = zext nneg i32 %121 to i64
  %126 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !67
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %128
  %130 = load i64, ptr %129, align 8, !tbaa !134
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %133

133:                                              ; preds = %132, %124
  %134 = getelementptr inbounds i8, ptr %42, i64 %130
  %135 = load ptr, ptr %134, align 8, !tbaa !52
  br label %136

136:                                              ; preds = %116, %133
  %137 = phi ptr [ %135, %133 ], [ null, %116 ]
  %138 = call ptr @gimple_build_assign_stat(ptr noundef %137, ptr noundef %119) #22
  call void @gsi_insert_before(ptr noundef nonnull %20, ptr noundef %138, i32 noundef 1) #22
  br label %139

139:                                              ; preds = %136, %78
  call void @gsi_remove(ptr noundef nonnull %20, i8 noundef zeroext 1) #22
  br label %1305

140:                                              ; preds = %109, %78, %73, %70, %40
  %141 = load i32, ptr @flag_exceptions, align 4, !tbaa !67
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %345, label %143, !prof !133

143:                                              ; preds = %140
  %144 = load i32, ptr %42, align 8
  %145 = trunc i32 %144 to i8
  switch i8 %145, label %344 [
    i8 14, label %345
    i8 8, label %146
    i8 6, label %152
    i8 1, label %152
    i8 7, label %337
  ]

146:                                              ; preds = %143
  %147 = call i32 @gimple_call_flags(ptr noundef nonnull %42) #22
  %148 = trunc i32 %147 to i8
  %149 = lshr i8 %148, 6
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  br label %345

152:                                              ; preds = %143, %143
  %153 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !67
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %345, label %155

155:                                              ; preds = %152
  switch i8 %145, label %158 [
    i8 6, label %156
    i8 1, label %156
    i8 8, label %159
  ]

156:                                              ; preds = %155, %155
  %157 = lshr i32 %144, 16
  br label %159

158:                                              ; preds = %155
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1446, ptr noundef nonnull @.str.1) #22
  br label %159

159:                                              ; preds = %158, %156, %155
  %160 = phi i32 [ %157, %156 ], [ 0, %158 ], [ 59, %155 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !67
  %164 = add i32 %163, -5
  %165 = icmp ult i32 %164, 3
  br i1 %165, label %166, label %273

166:                                              ; preds = %159
  %167 = load i32, ptr %42, align 8
  %168 = trunc i32 %167 to i8
  switch i8 %168, label %239 [
    i8 8, label %169
    i8 6, label %190
    i8 1, label %240
  ]

169:                                              ; preds = %166
  %170 = and i32 %167, 255
  %171 = add nsw i32 %170, -1
  %172 = icmp ult i32 %171, 9
  call void @llvm.assume(i1 %172)
  %173 = zext nneg i32 %170 to i64
  %174 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !67
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %176
  %178 = load i64, ptr %177, align 8, !tbaa !134
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %169
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %181

181:                                              ; preds = %180, %169
  %182 = getelementptr inbounds i8, ptr %42, i64 %178
  %183 = getelementptr inbounds ptr, ptr %182, i64 1
  %184 = load ptr, ptr %183, align 8, !tbaa !52
  %185 = getelementptr inbounds %struct.tree_common, ptr %184, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !63
  %187 = getelementptr inbounds %struct.tree_common, ptr %186, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !63
  %189 = getelementptr inbounds %struct.tree_common, ptr %188, i64 0, i32 2
  br label %240

190:                                              ; preds = %166
  %191 = lshr i32 %167, 16
  %192 = zext nneg i32 %191 to i64
  %193 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !63
  %195 = icmp eq i8 %194, 3
  br i1 %195, label %196, label %215

196:                                              ; preds = %190
  %197 = and i32 %167, 255
  %198 = add nsw i32 %197, -1
  %199 = icmp ult i32 %198, 9
  call void @llvm.assume(i1 %199)
  %200 = zext nneg i32 %197 to i64
  %201 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !67
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %203
  %205 = load i64, ptr %204, align 8, !tbaa !134
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %196
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %208

208:                                              ; preds = %207, %196
  %209 = getelementptr inbounds i8, ptr %42, i64 %205
  %210 = getelementptr inbounds ptr, ptr %209, i64 1
  %211 = load ptr, ptr %210, align 8, !tbaa !52
  %212 = load i64, ptr %211, align 8
  %213 = trunc i64 %212 to i32
  %214 = and i32 %213, 65535
  br label %215

215:                                              ; preds = %208, %190
  %216 = phi i32 [ %214, %208 ], [ %191, %190 ]
  %217 = icmp eq i32 %216, 66
  br i1 %217, label %218, label %236

218:                                              ; preds = %215
  %219 = load i32, ptr %42, align 8
  %220 = and i32 %219, 255
  %221 = add nsw i32 %220, -1
  %222 = icmp ult i32 %221, 9
  call void @llvm.assume(i1 %222)
  %223 = zext nneg i32 %220 to i64
  %224 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !67
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %226
  %228 = load i64, ptr %227, align 8, !tbaa !134
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %218
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %231

231:                                              ; preds = %230, %218
  %232 = getelementptr inbounds i8, ptr %42, i64 %228
  %233 = getelementptr inbounds ptr, ptr %232, i64 1
  %234 = load ptr, ptr %233, align 8, !tbaa !52
  %235 = getelementptr inbounds %struct.tree_common, ptr %234, i64 0, i32 2
  br label %240

236:                                              ; preds = %215
  %237 = call ptr @gimple_get_lhs(ptr noundef nonnull %42) #22
  %238 = getelementptr inbounds %struct.tree_common, ptr %237, i64 0, i32 2
  br label %240

239:                                              ; preds = %166
  br label %240

240:                                              ; preds = %239, %236, %231, %181, %166
  %241 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %239 ], [ %189, %181 ], [ %235, %231 ], [ %238, %236 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %166 ]
  %242 = load ptr, ptr %241, align 8, !tbaa !63
  %243 = load i64, ptr %242, align 8
  %244 = trunc i64 %243 to i16
  switch i16 %244, label %261 [
    i16 9, label %251
    i16 13, label %245
    i16 14, label %245
  ]

245:                                              ; preds = %240, %240
  %246 = getelementptr inbounds %struct.tree_common, ptr %242, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !63
  %248 = load i64, ptr %247, align 8
  %249 = and i64 %248, 65535
  %250 = icmp eq i64 %249, 9
  br i1 %250, label %251, label %261

251:                                              ; preds = %245, %240
  %252 = load i32, ptr @flag_trapping_math, align 4, !tbaa !67
  %253 = icmp ne i32 %252, 0
  %254 = load i32, ptr @flag_finite_math_only, align 4
  %255 = icmp eq i32 %254, 0
  %256 = select i1 %253, i1 %255, i1 false
  %257 = zext i1 %256 to i8
  %258 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !67
  %259 = icmp ne i32 %258, 0
  %260 = zext i1 %259 to i8
  br label %273

261:                                              ; preds = %245, %240
  %262 = trunc i64 %243 to i32
  %263 = and i32 %262, 65535
  %264 = add nsw i32 %263, -6
  %265 = icmp ult i32 %264, 3
  br i1 %265, label %266, label %273

266:                                              ; preds = %261
  %267 = and i64 %243, 2097152
  %268 = icmp eq i64 %267, 0
  %269 = load i32, ptr @flag_trapv, align 4
  %270 = icmp ne i32 %269, 0
  %271 = select i1 %268, i1 %270, i1 false
  %272 = zext i1 %271 to i8
  br label %273

273:                                              ; preds = %266, %261, %251, %159
  %274 = phi i8 [ %257, %251 ], [ 0, %159 ], [ 0, %261 ], [ 0, %266 ]
  %275 = phi i8 [ %260, %251 ], [ 0, %159 ], [ 0, %261 ], [ 0, %266 ]
  %276 = phi i8 [ 1, %251 ], [ 0, %159 ], [ 0, %261 ], [ 0, %266 ]
  %277 = phi i8 [ 0, %251 ], [ 0, %159 ], [ 0, %261 ], [ %272, %266 ]
  %278 = load i32, ptr %42, align 8
  %279 = and i32 %278, 255
  %280 = icmp eq i32 %279, 6
  br i1 %280, label %281, label %298

281:                                              ; preds = %273
  %282 = getelementptr inbounds %struct.gimple_statement_base, ptr %42, i64 0, i32 3
  %283 = load i32, ptr %282, align 4, !tbaa !63
  %284 = icmp ult i32 %283, 3
  br i1 %284, label %298, label %285

285:                                              ; preds = %281
  %286 = zext nneg i32 %279 to i64
  %287 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %286
  %288 = load i32, ptr %287, align 4, !tbaa !67
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %289
  %291 = load i64, ptr %290, align 8, !tbaa !134
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %285
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %294

294:                                              ; preds = %293, %285
  %295 = getelementptr inbounds i8, ptr %42, i64 %291
  %296 = getelementptr inbounds ptr, ptr %295, i64 2
  %297 = load ptr, ptr %296, align 8, !tbaa !52
  br label %298

298:                                              ; preds = %294, %281, %273
  %299 = phi ptr [ null, %273 ], [ null, %281 ], [ %297, %294 ]
  %300 = call zeroext i8 @operation_could_trap_helper_p(i32 noundef %160, i8 noundef zeroext %276, i8 noundef zeroext %277, i8 noundef zeroext %274, i8 noundef zeroext %275, ptr noundef %299, ptr noundef nonnull %3)
  %301 = load i8, ptr %3, align 1, !tbaa !63
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %303, label %335

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.gimple_statement_base, ptr %42, i64 0, i32 3
  %305 = load i32, ptr %304, align 4, !tbaa !63
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %335, label %312

307:                                              ; preds = %331
  %308 = add nuw nsw i64 %313, 1
  %309 = load i32, ptr %304, align 4, !tbaa !63
  %310 = zext i32 %309 to i64
  %311 = icmp ult i64 %308, %310
  br i1 %311, label %312, label %335, !llvm.loop !135

312:                                              ; preds = %303, %307
  %313 = phi i64 [ %308, %307 ], [ 0, %303 ]
  %314 = load i32, ptr %42, align 8
  %315 = and i32 %314, 255
  %316 = add nsw i32 %315, -10
  %317 = icmp ult i32 %316, -9
  br i1 %317, label %331, label %318

318:                                              ; preds = %312
  %319 = zext nneg i32 %315 to i64
  %320 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %319
  %321 = load i32, ptr %320, align 4, !tbaa !67
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %322
  %324 = load i64, ptr %323, align 8, !tbaa !134
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %318
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %327

327:                                              ; preds = %326, %318
  %328 = getelementptr inbounds i8, ptr %42, i64 %324
  %329 = getelementptr inbounds ptr, ptr %328, i64 %313
  %330 = load ptr, ptr %329, align 8, !tbaa !52
  br label %331

331:                                              ; preds = %327, %312
  %332 = phi ptr [ %330, %327 ], [ null, %312 ]
  %333 = call zeroext i8 @tree_could_trap_p(ptr noundef %332), !range !118
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %307, label %335

335:                                              ; preds = %331, %307, %303, %298
  %336 = phi i8 [ %300, %298 ], [ 0, %303 ], [ 0, %307 ], [ 1, %331 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  br label %345

337:                                              ; preds = %143
  %338 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !67
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %345, label %340

340:                                              ; preds = %337
  %341 = lshr i32 %144, 17
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  br label %345

344:                                              ; preds = %143
  br label %345

345:                                              ; preds = %140, %143, %146, %152, %335, %337, %340, %344
  %346 = phi i8 [ 0, %344 ], [ %343, %340 ], [ %336, %335 ], [ %151, %146 ], [ 0, %140 ], [ 1, %143 ], [ 0, %337 ], [ 0, %152 ]
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %407, label %348, !prof !291

348:                                              ; preds = %345
  %349 = load i32, ptr %42, align 8
  %350 = trunc i32 %349 to i8
  switch i8 %350, label %366 [
    i8 6, label %367
    i8 8, label %351
  ]

351:                                              ; preds = %348
  %352 = and i32 %349, 255
  %353 = zext nneg i32 %352 to i64
  %354 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !67
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %356
  %358 = load i64, ptr %357, align 8, !tbaa !134
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %351
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %361

361:                                              ; preds = %360, %351
  %362 = getelementptr inbounds i8, ptr %42, i64 %358
  %363 = load ptr, ptr %362, align 8, !tbaa !52
  %364 = icmp ne ptr %363, null
  %365 = zext i1 %364 to i8
  br label %367

366:                                              ; preds = %348
  br label %367

367:                                              ; preds = %348, %366, %361
  %368 = phi i8 [ 1, %348 ], [ %365, %361 ], [ 0, %366 ]
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %407, label %370

370:                                              ; preds = %367
  %371 = call zeroext i8 @gimple_stmt_may_fallthru(ptr noundef %42) #22
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %407, label %373

373:                                              ; preds = %370
  %374 = call ptr @gimple_get_lhs(ptr noundef %42) #22
  %375 = call zeroext i8 @tree_could_throw_p(ptr noundef %374), !range !118
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %377, label %407

377:                                              ; preds = %373
  %378 = call ptr @gimple_get_lhs(ptr noundef %42) #22
  %379 = getelementptr inbounds %struct.tree_common, ptr %378, i64 0, i32 2
  %380 = load ptr, ptr %379, align 8, !tbaa !63
  %381 = call zeroext i8 @is_gimple_reg_type(ptr noundef %380) #22
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %407, label %383

383:                                              ; preds = %377
  %384 = call ptr @gimple_get_lhs(ptr noundef %42) #22
  %385 = getelementptr inbounds %struct.tree_common, ptr %384, i64 0, i32 2
  %386 = load ptr, ptr %385, align 8, !tbaa !63
  %387 = call ptr @create_tmp_var(ptr noundef %386, ptr noundef null) #22
  %388 = call ptr @gimple_build_assign_stat(ptr noundef %384, ptr noundef %387) #22
  %389 = getelementptr inbounds %struct.gimple_statement_base, ptr %42, i64 0, i32 2
  %390 = load i32, ptr %389, align 8, !tbaa !63
  %391 = getelementptr inbounds %struct.gimple_statement_base, ptr %388, i64 0, i32 2
  store i32 %390, ptr %391, align 8, !tbaa !63
  %392 = getelementptr inbounds %struct.gimple_statement_base, ptr %42, i64 0, i32 5
  %393 = load ptr, ptr %392, align 8, !tbaa !63
  %394 = getelementptr inbounds %struct.gimple_statement_base, ptr %388, i64 0, i32 5
  store ptr %393, ptr %394, align 8, !tbaa !63
  call void @gimple_set_lhs(ptr noundef %42, ptr noundef %387) #22
  %395 = getelementptr inbounds %struct.tree_common, ptr %387, i64 0, i32 2
  %396 = load ptr, ptr %395, align 8, !tbaa !63
  %397 = load i64, ptr %396, align 8
  %398 = trunc i64 %397 to i32
  %399 = and i32 %398, 65535
  %400 = add nsw i32 %399, -13
  %401 = icmp ult i32 %400, 2
  br i1 %401, label %402, label %406

402:                                              ; preds = %383
  %403 = getelementptr inbounds %struct.tree_decl_common, ptr %387, i64 0, i32 2
  %404 = load i64, ptr %403, align 8
  %405 = or i64 %404, 134217728
  store i64 %405, ptr %403, align 8
  br label %406

406:                                              ; preds = %402, %383
  call void @gsi_insert_after(ptr noundef nonnull %20, ptr noundef %388, i32 noundef 1) #22
  br label %407

407:                                              ; preds = %406, %377, %373, %370, %367, %345
  %408 = load ptr, ptr %0, align 8, !tbaa !292
  %409 = icmp eq ptr %408, null
  br i1 %409, label %1301, label %410, !prof !291

410:                                              ; preds = %407
  %411 = call zeroext i8 @stmt_could_throw_p(ptr noundef %42)
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %1301, label %413

413:                                              ; preds = %410
  %414 = load ptr, ptr %0, align 8, !tbaa !292
  call fastcc void @record_stmt_eh_region(ptr noundef %414, ptr noundef %42)
  %415 = load ptr, ptr %0, align 8, !tbaa !292
  br label %416

416:                                              ; preds = %423, %413
  %417 = phi ptr [ %415, %413 ], [ %427, %423 ]
  %418 = load ptr, ptr @eh_region_may_contain_throw_map, align 8, !tbaa !52
  %419 = getelementptr inbounds %struct.eh_region_d, ptr %417, i64 0, i32 3
  %420 = load i32, ptr %419, align 8, !tbaa !148
  %421 = call i32 @bitmap_bit_p(ptr noundef %418, i32 noundef %420) #22
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %1301

423:                                              ; preds = %416
  %424 = load ptr, ptr @eh_region_may_contain_throw_map, align 8, !tbaa !52
  %425 = load i32, ptr %419, align 8, !tbaa !148
  %426 = call zeroext i8 @bitmap_set_bit(ptr noundef %424, i32 noundef %425) #22
  %427 = load ptr, ptr %417, align 8, !tbaa !293
  %428 = icmp eq ptr %427, null
  br i1 %428, label %1301, label %416, !llvm.loop !294

429:                                              ; preds = %40, %40, %40
  %430 = load ptr, ptr %39, align 8, !tbaa !295
  %431 = icmp eq ptr %430, null
  br i1 %431, label %1301, label %432, !prof !296

432:                                              ; preds = %429
  switch i8 %45, label %525 [
    i8 1, label %433
    i8 3, label %506
    i8 9, label %523
  ]

433:                                              ; preds = %432
  %434 = add nsw i32 %44, -10
  %435 = icmp ult i32 %434, -9
  br i1 %435, label %448, label %436

436:                                              ; preds = %433
  %437 = zext nneg i32 %44 to i64
  %438 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %437
  %439 = load i32, ptr %438, align 4, !tbaa !67
  %440 = zext i32 %439 to i64
  %441 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %440
  %442 = load i64, ptr %441, align 8, !tbaa !134
  %443 = icmp eq i64 %442, 0
  br i1 %443, label %444, label %445

444:                                              ; preds = %436
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %445

445:                                              ; preds = %444, %436
  %446 = getelementptr inbounds i8, ptr %42, i64 %442
  %447 = getelementptr inbounds ptr, ptr %446, i64 2
  br label %448

448:                                              ; preds = %445, %433
  %449 = phi ptr [ %447, %445 ], [ null, %433 ]
  %450 = load i32, ptr %42, align 8
  %451 = and i32 %450, 255
  %452 = add nsw i32 %451, -10
  %453 = icmp ult i32 %452, -9
  br i1 %453, label %467, label %454

454:                                              ; preds = %448
  %455 = zext nneg i32 %451 to i64
  %456 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %455
  %457 = load i32, ptr %456, align 4, !tbaa !67
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %458
  %460 = load i64, ptr %459, align 8, !tbaa !134
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %454
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %463

463:                                              ; preds = %462, %454
  %464 = getelementptr inbounds i8, ptr %42, i64 %460
  %465 = getelementptr inbounds ptr, ptr %464, i64 2
  %466 = load ptr, ptr %465, align 8, !tbaa !52
  br label %467

467:                                              ; preds = %463, %448
  %468 = phi ptr [ %466, %463 ], [ null, %448 ]
  call fastcc void @record_in_goto_queue_label(ptr noundef nonnull %430, ptr %449, ptr noundef %468)
  %469 = load i32, ptr %42, align 8
  %470 = and i32 %469, 255
  %471 = add nsw i32 %470, -10
  %472 = icmp ult i32 %471, -9
  br i1 %472, label %485, label %473

473:                                              ; preds = %467
  %474 = zext nneg i32 %470 to i64
  %475 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %474
  %476 = load i32, ptr %475, align 4, !tbaa !67
  %477 = zext i32 %476 to i64
  %478 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %477
  %479 = load i64, ptr %478, align 8, !tbaa !134
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %473
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %482

482:                                              ; preds = %481, %473
  %483 = getelementptr inbounds i8, ptr %42, i64 %479
  %484 = getelementptr inbounds ptr, ptr %483, i64 3
  br label %485

485:                                              ; preds = %482, %467
  %486 = phi ptr [ %484, %482 ], [ null, %467 ]
  %487 = load i32, ptr %42, align 8
  %488 = and i32 %487, 255
  %489 = add nsw i32 %488, -10
  %490 = icmp ult i32 %489, -9
  br i1 %490, label %504, label %491

491:                                              ; preds = %485
  %492 = zext nneg i32 %488 to i64
  %493 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %492
  %494 = load i32, ptr %493, align 4, !tbaa !67
  %495 = zext i32 %494 to i64
  %496 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %495
  %497 = load i64, ptr %496, align 8, !tbaa !134
  %498 = icmp eq i64 %497, 0
  br i1 %498, label %499, label %500

499:                                              ; preds = %491
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %500

500:                                              ; preds = %499, %491
  %501 = getelementptr inbounds i8, ptr %42, i64 %497
  %502 = getelementptr inbounds ptr, ptr %501, i64 3
  %503 = load ptr, ptr %502, align 8, !tbaa !52
  br label %504

504:                                              ; preds = %500, %485
  %505 = phi ptr [ %503, %500 ], [ null, %485 ]
  call fastcc void @record_in_goto_queue_label(ptr noundef nonnull %430, ptr %486, ptr noundef %505)
  br label %1301

506:                                              ; preds = %432
  %507 = add nsw i32 %44, -10
  %508 = icmp ult i32 %507, -9
  br i1 %508, label %521, label %509

509:                                              ; preds = %506
  %510 = zext nneg i32 %44 to i64
  %511 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %510
  %512 = load i32, ptr %511, align 4, !tbaa !67
  %513 = zext i32 %512 to i64
  %514 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %513
  %515 = load i64, ptr %514, align 8, !tbaa !134
  %516 = icmp eq i64 %515, 0
  br i1 %516, label %517, label %518

517:                                              ; preds = %509
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %518

518:                                              ; preds = %517, %509
  %519 = getelementptr inbounds i8, ptr %42, i64 %515
  %520 = load ptr, ptr %519, align 8, !tbaa !52
  br label %521

521:                                              ; preds = %518, %506
  %522 = phi ptr [ %520, %518 ], [ null, %506 ]
  call fastcc void @record_in_goto_queue_label(ptr noundef nonnull %430, ptr nonnull %42, ptr noundef %522)
  br label %1301

523:                                              ; preds = %432
  %524 = getelementptr inbounds %struct.leh_tf_state, ptr %430, i64 0, i32 12
  store i8 1, ptr %524, align 1, !tbaa !297
  call fastcc void @record_in_goto_queue(ptr noundef nonnull %430, ptr nonnull %42, i32 noundef -1, i8 noundef zeroext 0)
  br label %1301

525:                                              ; preds = %432
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 683, ptr noundef nonnull @.str.1) #22
  br label %1301

526:                                              ; preds = %40
  %527 = and i32 %43, 196608
  %528 = icmp eq i32 %527, 131072
  br i1 %528, label %529, label %1106

529:                                              ; preds = %526
  %530 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 1
  %531 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 3
  %532 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 4
  %533 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 11
  %534 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 13
  %535 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 9
  %536 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 12
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %11, i8 0, i64 96, i1 false)
  store ptr %42, ptr %11, align 8, !tbaa !299
  store ptr %42, ptr %530, align 8, !tbaa !300
  store ptr %0, ptr %531, align 8, !tbaa !301
  %537 = load i1, ptr @using_eh_for_cleanups_p, align 4
  br i1 %537, label %538, label %542

538:                                              ; preds = %529
  %539 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 4
  %540 = load ptr, ptr %0, align 8, !tbaa !292
  %541 = call ptr @gen_eh_region_cleanup(ptr noundef %540) #22
  store ptr %541, ptr %539, align 8, !tbaa !302
  br label %544

542:                                              ; preds = %529
  %543 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 4
  store ptr null, ptr %543, align 8, !tbaa !302
  br label %544

544:                                              ; preds = %542, %538
  %545 = getelementptr inbounds %struct.leh_state, ptr %0, i64 0, i32 1
  %546 = getelementptr inbounds %struct.leh_state, ptr %12, i64 0, i32 1
  %547 = getelementptr inbounds %struct.leh_state, ptr %12, i64 0, i32 2
  %548 = load ptr, ptr %532, align 8, !tbaa !302
  store ptr %548, ptr %12, align 8, !tbaa !292
  %549 = load ptr, ptr %545, align 8, !tbaa !289
  store ptr %549, ptr %546, align 8, !tbaa !289
  store ptr %11, ptr %547, align 8, !tbaa !295
  %550 = load ptr, ptr @eh_seq, align 8, !tbaa !52
  store ptr null, ptr @eh_seq, align 8, !tbaa !52
  %551 = getelementptr inbounds %struct.gimple_statement_try, ptr %42, i64 0, i32 1
  %552 = load ptr, ptr %551, align 8, !tbaa !63
  call fastcc void @lower_eh_constructs_1(ptr noundef nonnull %12, ptr noundef %552)
  %553 = load ptr, ptr %551, align 8, !tbaa !63
  %554 = call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %553) #22
  store i8 %554, ptr %533, align 8, !tbaa !303
  %555 = load i1, ptr @using_eh_for_cleanups_p, align 4
  br i1 %555, label %556, label %569

556:                                              ; preds = %544
  %557 = load ptr, ptr %532, align 8, !tbaa !302
  %558 = icmp eq ptr %557, null
  br i1 %558, label %566, label %559

559:                                              ; preds = %556
  %560 = load ptr, ptr @eh_region_may_contain_throw_map, align 8, !tbaa !52
  %561 = getelementptr inbounds %struct.eh_region_d, ptr %557, i64 0, i32 3
  %562 = load i32, ptr %561, align 8, !tbaa !148
  %563 = call i32 @bitmap_bit_p(ptr noundef %560, i32 noundef %562) #22
  %564 = icmp ne i32 %563, 0
  %565 = zext i1 %564 to i8
  br label %566

566:                                              ; preds = %559, %556
  %567 = phi i8 [ 0, %556 ], [ %565, %559 ]
  %568 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 13
  store i8 %567, ptr %568, align 2, !tbaa !304
  br label %569

569:                                              ; preds = %566, %544
  %570 = load i8, ptr %534, align 2, !tbaa !304
  %571 = icmp eq i8 %570, 0
  br i1 %571, label %573, label %572

572:                                              ; preds = %569
  call fastcc void @honor_protect_cleanup_actions(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %11)
  br label %573

573:                                              ; preds = %572, %569
  %574 = load ptr, ptr %535, align 8
  %575 = icmp eq ptr %574, null
  br i1 %575, label %578, label %576

576:                                              ; preds = %573
  %577 = load i32, ptr %574, align 8, !tbaa !190
  br label %578

578:                                              ; preds = %576, %573
  %579 = phi i32 [ %577, %576 ], [ 0, %573 ]
  %580 = load i8, ptr %533, align 8, !tbaa !303
  %581 = zext i8 %580 to i32
  %582 = add nsw i32 %579, %581
  %583 = load i8, ptr %536, align 1, !tbaa !297
  %584 = zext i8 %583 to i32
  %585 = add nsw i32 %582, %584
  %586 = load i8, ptr %534, align 2, !tbaa !304
  %587 = zext i8 %586 to i32
  %588 = add nsw i32 %585, %587
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %594

590:                                              ; preds = %578
  %591 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 2
  %592 = load ptr, ptr %551, align 8, !tbaa !63
  call void @gimple_seq_add_seq(ptr noundef nonnull %591, ptr noundef %592) #22
  %593 = getelementptr inbounds %struct.gimple_statement_try, ptr %42, i64 0, i32 2
  store ptr null, ptr %593, align 8, !tbaa !63
  br label %1076

594:                                              ; preds = %578
  %595 = getelementptr inbounds %struct.gimple_statement_try, ptr %42, i64 0, i32 2
  %596 = load ptr, ptr %595, align 8, !tbaa !63
  %597 = call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %596) #22
  %598 = icmp eq i8 %597, 0
  br i1 %598, label %599, label %640

599:                                              ; preds = %594
  %600 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 2
  %601 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 5
  %602 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  %603 = load ptr, ptr %11, align 8, !tbaa !299
  %604 = getelementptr inbounds %struct.gimple_statement_base, ptr %603, i64 0, i32 2
  %605 = load i32, ptr %604, align 8, !tbaa !63
  %606 = call ptr @create_artificial_label(i32 noundef %605) #22
  %607 = load ptr, ptr %530, align 8, !tbaa !300
  %608 = getelementptr inbounds %struct.gimple_statement_try, ptr %607, i64 0, i32 2
  %609 = load ptr, ptr %608, align 8, !tbaa !63
  %610 = getelementptr inbounds %struct.gimple_statement_try, ptr %607, i64 0, i32 1
  %611 = load ptr, ptr %610, align 8, !tbaa !63
  store ptr %611, ptr %600, align 8, !tbaa !305
  %612 = call ptr @gimple_build_label(ptr noundef %606) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %600, ptr noundef %612) #22
  store ptr null, ptr %10, align 8, !tbaa !52
  %613 = load ptr, ptr %601, align 8, !tbaa !306
  %614 = load i64, ptr %602, align 8, !tbaa !307
  %615 = getelementptr inbounds %struct.goto_queue_node, ptr %613, i64 %614
  %616 = icmp sgt i64 %614, 0
  br i1 %616, label %617, label %627

617:                                              ; preds = %599, %624
  %618 = phi ptr [ %625, %624 ], [ %613, %599 ]
  %619 = getelementptr inbounds %struct.goto_queue_node, ptr %618, i64 0, i32 3
  %620 = load i32, ptr %619, align 8, !tbaa !308
  %621 = icmp slt i32 %620, 0
  br i1 %621, label %622, label %623

622:                                              ; preds = %617
  call fastcc void @do_return_redirection(ptr noundef %618, ptr noundef %606, ptr noundef null, ptr noundef nonnull %10)
  br label %624

623:                                              ; preds = %617
  call fastcc void @do_goto_redirection(ptr noundef %618, ptr noundef %606, ptr noundef null, ptr noundef nonnull %11)
  br label %624

624:                                              ; preds = %623, %622
  %625 = getelementptr inbounds %struct.goto_queue_node, ptr %618, i64 1
  %626 = icmp ult ptr %625, %615
  br i1 %626, label %617, label %627, !llvm.loop !310

627:                                              ; preds = %624, %599
  %628 = load i64, ptr %602, align 8, !tbaa !307
  %629 = icmp eq i64 %628, 0
  br i1 %629, label %633, label %630

630:                                              ; preds = %627
  %631 = load ptr, ptr %600, align 8, !tbaa !305
  call fastcc void @replace_goto_queue_stmt_list(ptr noundef %631, ptr noundef nonnull %11)
  %632 = load ptr, ptr @eh_seq, align 8, !tbaa !52
  call fastcc void @replace_goto_queue_stmt_list(ptr noundef %632, ptr noundef nonnull %11)
  br label %633

633:                                              ; preds = %627, %630
  call fastcc void @lower_eh_constructs_1(ptr noundef %0, ptr noundef %609)
  call void @gimple_seq_add_seq(ptr noundef nonnull %600, ptr noundef %609) #22
  %634 = load i8, ptr %534, align 2, !tbaa !304
  %635 = icmp eq i8 %634, 0
  br i1 %635, label %639, label %636

636:                                              ; preds = %633
  %637 = load ptr, ptr %532, align 8, !tbaa !302
  call fastcc void @emit_post_landing_pad(ptr noundef %637)
  %638 = call ptr @gimple_build_goto(ptr noundef %606) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull @eh_seq, ptr noundef %638) #22
  br label %639

639:                                              ; preds = %636, %633
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  br label %1076

640:                                              ; preds = %594
  %641 = icmp eq i32 %588, 1
  br i1 %641, label %642, label %708

642:                                              ; preds = %640
  %643 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 2
  %644 = load ptr, ptr %11, align 8, !tbaa !299
  %645 = getelementptr inbounds %struct.gimple_statement_base, ptr %644, i64 0, i32 2
  %646 = load i32, ptr %645, align 8, !tbaa !63
  %647 = load ptr, ptr %530, align 8, !tbaa !300
  %648 = getelementptr inbounds %struct.gimple_statement_try, ptr %647, i64 0, i32 2
  %649 = load ptr, ptr %648, align 8, !tbaa !63
  %650 = getelementptr inbounds %struct.gimple_statement_try, ptr %647, i64 0, i32 1
  %651 = load ptr, ptr %650, align 8, !tbaa !63
  store ptr %651, ptr %643, align 8, !tbaa !305
  call fastcc void @lower_eh_constructs_1(ptr noundef %0, ptr noundef %649)
  %652 = load i8, ptr %534, align 2, !tbaa !304
  %653 = icmp eq i8 %652, 0
  br i1 %653, label %657, label %654

654:                                              ; preds = %642
  %655 = load ptr, ptr %532, align 8, !tbaa !302
  call fastcc void @emit_post_landing_pad(ptr noundef %655)
  call void @gimple_seq_add_seq(ptr noundef nonnull @eh_seq, ptr noundef %649) #22
  %656 = load ptr, ptr %532, align 8, !tbaa !302
  call fastcc void @emit_resx(ptr noundef nonnull @eh_seq, ptr noundef %656)
  br label %1076

657:                                              ; preds = %642
  %658 = load i8, ptr %533, align 8, !tbaa !303
  %659 = icmp eq i8 %658, 0
  br i1 %659, label %661, label %660

660:                                              ; preds = %657
  call void @gimple_seq_add_seq(ptr noundef nonnull %643, ptr noundef %649) #22
  br label %1076

661:                                              ; preds = %657
  %662 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 5
  %663 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 7
  %664 = call ptr @create_artificial_label(i32 noundef %646) #22
  %665 = call ptr @gimple_build_label(ptr noundef %664) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %643, ptr noundef %665) #22
  call void @gimple_seq_add_seq(ptr noundef nonnull %643, ptr noundef %649) #22
  %666 = load ptr, ptr %662, align 8, !tbaa !306
  %667 = load i64, ptr %663, align 8, !tbaa !307
  %668 = getelementptr inbounds %struct.goto_queue_node, ptr %666, i64 %667
  %669 = load i8, ptr %536, align 1, !tbaa !297
  %670 = icmp eq i8 %669, 0
  br i1 %670, label %671, label %674

671:                                              ; preds = %661
  %672 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 10
  %673 = icmp sgt i64 %667, 0
  br i1 %673, label %687, label %691

674:                                              ; preds = %661
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  store ptr null, ptr %9, align 8, !tbaa !52
  %675 = icmp sgt i64 %667, 0
  br i1 %675, label %676, label %680

676:                                              ; preds = %674, %676
  %677 = phi ptr [ %678, %676 ], [ %666, %674 ]
  call fastcc void @do_return_redirection(ptr noundef %677, ptr noundef %664, ptr noundef null, ptr noundef nonnull %9)
  %678 = getelementptr inbounds %struct.goto_queue_node, ptr %677, i64 1
  %679 = icmp ult ptr %678, %668
  br i1 %679, label %676, label %680, !llvm.loop !311

680:                                              ; preds = %676, %674
  %681 = load i64, ptr %663, align 8, !tbaa !307
  %682 = icmp eq i64 %681, 0
  br i1 %682, label %686, label %683

683:                                              ; preds = %680
  %684 = load ptr, ptr %643, align 8, !tbaa !305
  call fastcc void @replace_goto_queue_stmt_list(ptr noundef %684, ptr noundef nonnull %11)
  %685 = load ptr, ptr @eh_seq, align 8, !tbaa !52
  call fastcc void @replace_goto_queue_stmt_list(ptr noundef %685, ptr noundef nonnull %11)
  br label %686

686:                                              ; preds = %680, %683
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  br label %704

687:                                              ; preds = %671, %687
  %688 = phi ptr [ %689, %687 ], [ %666, %671 ]
  call fastcc void @do_goto_redirection(ptr noundef %688, ptr noundef %664, ptr noundef null, ptr noundef nonnull %11)
  %689 = getelementptr inbounds %struct.goto_queue_node, ptr %688, i64 1
  %690 = icmp ult ptr %689, %668
  br i1 %690, label %687, label %691, !llvm.loop !312

691:                                              ; preds = %687, %671
  %692 = load i64, ptr %663, align 8, !tbaa !307
  %693 = icmp eq i64 %692, 0
  br i1 %693, label %697, label %694

694:                                              ; preds = %691
  %695 = load ptr, ptr %643, align 8, !tbaa !305
  call fastcc void @replace_goto_queue_stmt_list(ptr noundef %695, ptr noundef nonnull %11)
  %696 = load ptr, ptr @eh_seq, align 8, !tbaa !52
  call fastcc void @replace_goto_queue_stmt_list(ptr noundef %696, ptr noundef nonnull %11)
  br label %697

697:                                              ; preds = %691, %694
  %698 = load ptr, ptr %535, align 8, !tbaa !313
  %699 = getelementptr inbounds %struct.VEC_tree_base, ptr %698, i64 0, i32 2, i64 0
  %700 = load ptr, ptr %699, align 8, !tbaa !52
  %701 = load ptr, ptr %672, align 8, !tbaa !314
  %702 = icmp eq ptr %700, %701
  br i1 %702, label %703, label %704

703:                                              ; preds = %697
  store ptr null, ptr %672, align 8, !tbaa !314
  br label %1076

704:                                              ; preds = %697, %686
  %705 = load ptr, ptr %662, align 8, !tbaa !306
  %706 = getelementptr inbounds %struct.goto_queue_node, ptr %705, i64 0, i32 2
  %707 = load ptr, ptr %706, align 8, !tbaa !315
  call void @gimple_seq_add_stmt(ptr noundef nonnull %643, ptr noundef %707) #22
  call fastcc void @maybe_record_in_goto_queue(ptr noundef %0, ptr noundef %707)
  br label %1076

708:                                              ; preds = %640
  %709 = load i32, ptr @optimize, align 4, !tbaa !67
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %873, label %711

711:                                              ; preds = %708
  %712 = load ptr, ptr %595, align 8, !tbaa !63
  %713 = call i32 @count_insns_seq(ptr noundef %712, ptr noundef nonnull @eni_size_weights) #22
  %714 = add nsw i32 %713, 1
  %715 = mul nsw i32 %714, %588
  %716 = shl nsw i32 %588, 1
  %717 = add nsw i32 %716, 10
  %718 = load ptr, ptr @cfun, align 8, !tbaa !52
  %719 = call zeroext i8 @optimize_function_for_size_p(ptr noundef %718) #22
  %720 = icmp eq i8 %719, 0
  br i1 %720, label %723, label %721

721:                                              ; preds = %711
  %722 = icmp slt i32 %715, %717
  br label %737

723:                                              ; preds = %711
  %724 = load i32, ptr @optimize, align 4, !tbaa !67
  %725 = icmp sgt i32 %724, 1
  br i1 %725, label %726, label %731

726:                                              ; preds = %723
  %727 = icmp slt i32 %715, 100
  %728 = shl nsw i32 %717, 1
  %729 = icmp slt i32 %715, %728
  %730 = select i1 %727, i1 true, i1 %729
  br label %737

731:                                              ; preds = %723
  %732 = icmp slt i32 %715, 40
  %733 = shl nuw nsw i32 %715, 1
  %734 = mul nsw i32 %717, 3
  %735 = icmp slt i32 %733, %734
  %736 = select i1 %732, i1 true, i1 %735
  br label %737

737:                                              ; preds = %731, %726, %721
  %738 = phi i1 [ %722, %721 ], [ %730, %726 ], [ %736, %731 ]
  br i1 %738, label %739, label %873

739:                                              ; preds = %737
  %740 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 2
  %741 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %742 = load ptr, ptr %11, align 8, !tbaa !299
  %743 = getelementptr inbounds %struct.gimple_statement_base, ptr %742, i64 0, i32 2
  %744 = load i32, ptr %743, align 8, !tbaa !63
  %745 = load ptr, ptr %530, align 8, !tbaa !300
  %746 = getelementptr inbounds %struct.gimple_statement_try, ptr %745, i64 0, i32 2
  %747 = load ptr, ptr %746, align 8, !tbaa !63
  %748 = getelementptr inbounds %struct.gimple_statement_try, ptr %745, i64 0, i32 1
  %749 = load ptr, ptr %748, align 8, !tbaa !63
  store ptr %749, ptr %740, align 8, !tbaa !305
  store ptr null, ptr %7, align 8, !tbaa !52
  %750 = load i8, ptr %533, align 8, !tbaa !303
  %751 = icmp eq i8 %750, 0
  br i1 %751, label %763, label %752

752:                                              ; preds = %739
  %753 = getelementptr inbounds %struct.leh_state, ptr %0, i64 0, i32 2
  %754 = call ptr @copy_gimple_seq_and_replace_locals(ptr noundef %747) #22
  %755 = load ptr, ptr %753, align 8, !tbaa !295
  %756 = icmp eq ptr %755, null
  br i1 %756, label %759, label %757

757:                                              ; preds = %752
  %758 = load ptr, ptr %755, align 8, !tbaa !299
  br label %759

759:                                              ; preds = %752, %757
  %760 = phi ptr [ %758, %757 ], [ null, %752 ]
  call fastcc void @collect_finally_tree_1(ptr noundef %754, ptr noundef %760)
  call fastcc void @lower_eh_constructs_1(ptr noundef %0, ptr noundef %754)
  call void @gimple_seq_add_seq(ptr noundef nonnull %7, ptr noundef %754) #22
  %761 = call fastcc ptr @lower_try_finally_fallthru_label(ptr noundef nonnull %11)
  %762 = call ptr @gimple_build_goto(ptr noundef %761) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %762) #22
  br label %763

763:                                              ; preds = %759, %739
  %764 = load i8, ptr %534, align 2, !tbaa !304
  %765 = icmp eq i8 %764, 0
  br i1 %765, label %777, label %766

766:                                              ; preds = %763
  %767 = getelementptr inbounds %struct.leh_state, ptr %0, i64 0, i32 2
  %768 = call ptr @copy_gimple_seq_and_replace_locals(ptr noundef %747) #22
  %769 = load ptr, ptr %767, align 8, !tbaa !295
  %770 = icmp eq ptr %769, null
  br i1 %770, label %773, label %771

771:                                              ; preds = %766
  %772 = load ptr, ptr %769, align 8, !tbaa !299
  br label %773

773:                                              ; preds = %766, %771
  %774 = phi ptr [ %772, %771 ], [ null, %766 ]
  call fastcc void @collect_finally_tree_1(ptr noundef %768, ptr noundef %774)
  call fastcc void @lower_eh_constructs_1(ptr noundef %0, ptr noundef %768)
  %775 = load ptr, ptr %532, align 8, !tbaa !302
  call fastcc void @emit_post_landing_pad(ptr noundef %775)
  call void @gimple_seq_add_seq(ptr noundef nonnull @eh_seq, ptr noundef %768) #22
  %776 = load ptr, ptr %532, align 8, !tbaa !302
  call fastcc void @emit_resx(ptr noundef nonnull @eh_seq, ptr noundef %776)
  br label %777

777:                                              ; preds = %773, %763
  %778 = load ptr, ptr %741, align 8, !tbaa !306
  %779 = icmp eq ptr %778, null
  br i1 %779, label %871, label %780

780:                                              ; preds = %777
  %781 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  store ptr null, ptr %8, align 8, !tbaa !52
  %782 = load ptr, ptr %535, align 8, !tbaa !313
  %783 = icmp eq ptr %782, null
  br i1 %783, label %786, label %784

784:                                              ; preds = %780
  %785 = load i32, ptr %782, align 8, !tbaa !190
  br label %786

786:                                              ; preds = %780, %784
  %787 = phi i32 [ %785, %784 ], [ 0, %780 ]
  %788 = add nsw i32 %787, 1
  %789 = sext i32 %788 to i64
  %790 = call ptr @xcalloc(i64 noundef %789, i64 noundef 16) #22
  %791 = load ptr, ptr %741, align 8, !tbaa !306
  %792 = load i64, ptr %781, align 8, !tbaa !307
  %793 = getelementptr inbounds %struct.goto_queue_node, ptr %791, i64 %792
  %794 = icmp sgt i64 %792, 0
  br i1 %794, label %802, label %795

795:                                              ; preds = %813, %786
  %796 = icmp slt i32 %787, 0
  br i1 %796, label %842, label %797

797:                                              ; preds = %795
  %798 = getelementptr inbounds %struct.leh_state, ptr %0, i64 0, i32 2
  %799 = zext nneg i32 %787 to i64
  %800 = add nuw i32 %787, 1
  %801 = zext i32 %800 to i64
  br label %816

802:                                              ; preds = %786, %813
  %803 = phi ptr [ %814, %813 ], [ %791, %786 ]
  %804 = getelementptr inbounds %struct.goto_queue_node, ptr %803, i64 0, i32 3
  %805 = load i32, ptr %804, align 8, !tbaa !308
  %806 = icmp slt i32 %805, 0
  %807 = select i1 %806, i32 %787, i32 %805
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds %struct.labels_s, ptr %790, i64 %808
  %810 = load ptr, ptr %809, align 8, !tbaa !316
  %811 = icmp eq ptr %810, null
  br i1 %811, label %812, label %813

812:                                              ; preds = %802
  store ptr %803, ptr %809, align 8, !tbaa !316
  br label %813

813:                                              ; preds = %812, %802
  %814 = getelementptr inbounds %struct.goto_queue_node, ptr %803, i64 1
  %815 = icmp ult ptr %814, %793
  br i1 %815, label %802, label %795, !llvm.loop !318

816:                                              ; preds = %797, %839
  %817 = phi i64 [ 0, %797 ], [ %840, %839 ]
  %818 = getelementptr inbounds %struct.labels_s, ptr %790, i64 %817
  %819 = load ptr, ptr %818, align 8, !tbaa !316
  %820 = icmp eq ptr %819, null
  br i1 %820, label %839, label %821

821:                                              ; preds = %816
  %822 = call ptr @create_artificial_label(i32 noundef %744) #22
  %823 = getelementptr inbounds %struct.labels_s, ptr %790, i64 %817, i32 1
  store ptr %822, ptr %823, align 8, !tbaa !319
  %824 = icmp eq i64 %817, %799
  br i1 %824, label %825, label %826

825:                                              ; preds = %821
  call fastcc void @do_return_redirection(ptr noundef nonnull %819, ptr noundef %822, ptr noundef null, ptr noundef nonnull %8)
  br label %827

826:                                              ; preds = %821
  call fastcc void @do_goto_redirection(ptr noundef nonnull %819, ptr noundef %822, ptr noundef null, ptr noundef nonnull %11)
  br label %827

827:                                              ; preds = %826, %825
  %828 = call ptr @gimple_build_label(ptr noundef %822) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %828) #22
  %829 = call ptr @copy_gimple_seq_and_replace_locals(ptr noundef %747) #22
  %830 = load ptr, ptr %798, align 8, !tbaa !295
  %831 = icmp eq ptr %830, null
  br i1 %831, label %834, label %832

832:                                              ; preds = %827
  %833 = load ptr, ptr %830, align 8, !tbaa !299
  br label %834

834:                                              ; preds = %827, %832
  %835 = phi ptr [ %833, %832 ], [ null, %827 ]
  call fastcc void @collect_finally_tree_1(ptr noundef %829, ptr noundef %835)
  call fastcc void @lower_eh_constructs_1(ptr noundef %0, ptr noundef %829)
  call void @gimple_seq_add_seq(ptr noundef nonnull %7, ptr noundef %829) #22
  %836 = getelementptr inbounds %struct.goto_queue_node, ptr %819, i64 0, i32 2
  %837 = load ptr, ptr %836, align 8, !tbaa !315
  call void @gimple_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %837) #22
  %838 = load ptr, ptr %836, align 8, !tbaa !315
  call fastcc void @maybe_record_in_goto_queue(ptr noundef %0, ptr noundef %838)
  br label %839

839:                                              ; preds = %834, %816
  %840 = add nuw nsw i64 %817, 1
  %841 = icmp eq i64 %840, %801
  br i1 %841, label %842, label %816, !llvm.loop !320

842:                                              ; preds = %839, %795
  %843 = load ptr, ptr %741, align 8, !tbaa !306
  %844 = icmp ult ptr %843, %793
  br i1 %844, label %845, label %864

845:                                              ; preds = %842, %861
  %846 = phi ptr [ %862, %861 ], [ %843, %842 ]
  %847 = getelementptr inbounds %struct.goto_queue_node, ptr %846, i64 0, i32 3
  %848 = load i32, ptr %847, align 8, !tbaa !308
  %849 = icmp slt i32 %848, 0
  %850 = select i1 %849, i32 %787, i32 %848
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds %struct.labels_s, ptr %790, i64 %851
  %853 = load ptr, ptr %852, align 8, !tbaa !316
  %854 = icmp eq ptr %853, %846
  br i1 %854, label %861, label %855

855:                                              ; preds = %845
  %856 = getelementptr inbounds %struct.labels_s, ptr %790, i64 %851, i32 1
  %857 = load ptr, ptr %856, align 8, !tbaa !319
  %858 = icmp eq i32 %850, %787
  br i1 %858, label %859, label %860

859:                                              ; preds = %855
  call fastcc void @do_return_redirection(ptr noundef %846, ptr noundef %857, ptr noundef null, ptr noundef nonnull %8)
  br label %861

860:                                              ; preds = %855
  call fastcc void @do_goto_redirection(ptr noundef %846, ptr noundef %857, ptr noundef null, ptr noundef nonnull %11)
  br label %861

861:                                              ; preds = %860, %859, %845
  %862 = getelementptr inbounds %struct.goto_queue_node, ptr %846, i64 1
  %863 = icmp ult ptr %862, %793
  br i1 %863, label %845, label %864, !llvm.loop !321

864:                                              ; preds = %861, %842
  %865 = load i64, ptr %781, align 8, !tbaa !307
  %866 = icmp eq i64 %865, 0
  br i1 %866, label %870, label %867

867:                                              ; preds = %864
  %868 = load ptr, ptr %740, align 8, !tbaa !305
  call fastcc void @replace_goto_queue_stmt_list(ptr noundef %868, ptr noundef nonnull %11)
  %869 = load ptr, ptr @eh_seq, align 8, !tbaa !52
  call fastcc void @replace_goto_queue_stmt_list(ptr noundef %869, ptr noundef nonnull %11)
  br label %870

870:                                              ; preds = %864, %867
  call void @free(ptr noundef %790)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  br label %871

871:                                              ; preds = %870, %777
  %872 = load ptr, ptr %7, align 8, !tbaa !52
  call void @gimple_seq_add_seq(ptr noundef nonnull %740, ptr noundef %872) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  br label %1076

873:                                              ; preds = %708, %737
  %874 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 2
  %875 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %876 = load ptr, ptr %11, align 8, !tbaa !299
  %877 = getelementptr inbounds %struct.gimple_statement_base, ptr %876, i64 0, i32 2
  %878 = load i32, ptr %877, align 8, !tbaa !63
  %879 = call ptr @gimple_seq_alloc() #22
  store ptr %879, ptr %5, align 8, !tbaa !52
  %880 = load ptr, ptr %530, align 8, !tbaa !300
  %881 = getelementptr inbounds %struct.gimple_statement_try, ptr %880, i64 0, i32 2
  %882 = load ptr, ptr %881, align 8, !tbaa !63
  %883 = getelementptr inbounds %struct.gimple_statement_try, ptr %880, i64 0, i32 1
  %884 = load ptr, ptr %883, align 8, !tbaa !63
  store ptr %884, ptr %874, align 8, !tbaa !305
  %885 = icmp eq ptr %884, null
  br i1 %885, label %889, label %886

886:                                              ; preds = %873
  %887 = getelementptr inbounds %struct.gimple_seq_d, ptr %884, i64 0, i32 1
  %888 = load ptr, ptr %887, align 8, !tbaa !166
  br label %889

889:                                              ; preds = %886, %873
  %890 = phi ptr [ %888, %886 ], [ null, %873 ]
  %891 = icmp eq ptr %890, null
  br i1 %891, label %894, label %892

892:                                              ; preds = %889
  %893 = load ptr, ptr %890, align 8, !tbaa !206
  br label %894

894:                                              ; preds = %889, %892
  %895 = phi ptr [ %893, %892 ], [ null, %889 ]
  %896 = icmp eq ptr %895, null
  br i1 %896, label %903, label %897

897:                                              ; preds = %894
  %898 = getelementptr inbounds %struct.gimple_seq_d, ptr %884, i64 0, i32 1
  %899 = load ptr, ptr %898, align 8, !tbaa !166, !nonnull !322, !noundef !322
  %900 = load ptr, ptr %899, align 8, !tbaa !206
  %901 = getelementptr inbounds %struct.gimple_statement_base, ptr %900, i64 0, i32 2
  %902 = load i32, ptr %901, align 8, !tbaa !63
  br label %903

903:                                              ; preds = %897, %894
  %904 = phi i32 [ %902, %897 ], [ %878, %894 ]
  call fastcc void @lower_eh_constructs_1(ptr noundef %0, ptr noundef %882)
  %905 = load ptr, ptr %535, align 8, !tbaa !313
  %906 = icmp eq ptr %905, null
  br i1 %906, label %909, label %907

907:                                              ; preds = %903
  %908 = load i32, ptr %905, align 8, !tbaa !190
  br label %909

909:                                              ; preds = %903, %907
  %910 = phi i32 [ %908, %907 ], [ 0, %903 ]
  %911 = load i8, ptr %536, align 1, !tbaa !297
  %912 = zext i8 %911 to i32
  %913 = add nsw i32 %910, %912
  %914 = load i8, ptr %534, align 2, !tbaa !304
  %915 = zext i8 %914 to i32
  %916 = add nsw i32 %913, %915
  %917 = load i8, ptr %533, align 8, !tbaa !303
  %918 = zext i8 %917 to i32
  %919 = add nsw i32 %916, %918
  %920 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !52
  %921 = call ptr @create_tmp_var(ptr noundef %920, ptr noundef nonnull @.str.17) #22
  %922 = call ptr @create_artificial_label(i32 noundef %904) #22
  %923 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %919) #22
  %924 = load i8, ptr %533, align 8, !tbaa !303
  %925 = icmp eq i8 %924, 0
  br i1 %925, label %943, label %926

926:                                              ; preds = %909
  %927 = sext i32 %916 to i64
  %928 = call ptr @build_int_cst(ptr noundef null, i64 noundef %927) #22
  %929 = call ptr @gimple_build_assign_stat(ptr noundef %921, ptr noundef %928) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %874, ptr noundef %929) #22
  %930 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !52
  %931 = call ptr @build_int_cst(ptr noundef null, i64 noundef %927) #22
  %932 = call ptr @create_artificial_label(i32 noundef %878) #22
  %933 = call ptr @build3_stat(i32 noundef 139, ptr noundef %930, ptr noundef %931, ptr noundef null, ptr noundef %932) #22
  %934 = load i32, ptr %923, align 8, !tbaa !190
  %935 = add i32 %934, 1
  store i32 %935, ptr %923, align 8, !tbaa !190
  %936 = zext i32 %934 to i64
  %937 = getelementptr inbounds %struct.VEC_tree_base, ptr %923, i64 0, i32 2, i64 %936
  store ptr %933, ptr %937, align 8, !tbaa !52
  %938 = getelementptr inbounds %struct.tree_exp, ptr %933, i64 1, i32 0, i32 1
  %939 = load ptr, ptr %938, align 8, !tbaa !63
  %940 = call ptr @gimple_build_label(ptr noundef %939) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %940) #22
  %941 = call fastcc ptr @lower_try_finally_fallthru_label(ptr noundef nonnull %11)
  %942 = call ptr @gimple_build_goto(ptr noundef %941) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %942) #22
  br label %943

943:                                              ; preds = %926, %909
  %944 = phi ptr [ %933, %926 ], [ null, %909 ]
  %945 = phi i32 [ 1, %926 ], [ 0, %909 ]
  %946 = load i8, ptr %534, align 2, !tbaa !304
  %947 = icmp eq i8 %946, 0
  br i1 %947, label %967, label %948

948:                                              ; preds = %943
  %949 = load ptr, ptr %532, align 8, !tbaa !302
  call fastcc void @emit_post_landing_pad(ptr noundef %949)
  %950 = sext i32 %913 to i64
  %951 = call ptr @build_int_cst(ptr noundef null, i64 noundef %950) #22
  %952 = call ptr @gimple_build_assign_stat(ptr noundef %921, ptr noundef %951) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull @eh_seq, ptr noundef %952) #22
  %953 = call ptr @gimple_build_goto(ptr noundef %922) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull @eh_seq, ptr noundef %953) #22
  %954 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !52
  %955 = call ptr @build_int_cst(ptr noundef null, i64 noundef %950) #22
  %956 = call ptr @create_artificial_label(i32 noundef %878) #22
  %957 = call ptr @build3_stat(i32 noundef 139, ptr noundef %954, ptr noundef %955, ptr noundef null, ptr noundef %956) #22
  %958 = load i32, ptr %923, align 8, !tbaa !190
  %959 = add i32 %958, 1
  store i32 %959, ptr %923, align 8, !tbaa !190
  %960 = zext i32 %958 to i64
  %961 = getelementptr inbounds %struct.VEC_tree_base, ptr %923, i64 0, i32 2, i64 %960
  store ptr %957, ptr %961, align 8, !tbaa !52
  %962 = add nuw nsw i32 %945, 1
  %963 = getelementptr inbounds %struct.tree_exp, ptr %957, i64 1, i32 0, i32 1
  %964 = load ptr, ptr %963, align 8, !tbaa !63
  %965 = call ptr @gimple_build_label(ptr noundef %964) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull @eh_seq, ptr noundef %965) #22
  %966 = load ptr, ptr %532, align 8, !tbaa !302
  call fastcc void @emit_resx(ptr noundef nonnull @eh_seq, ptr noundef %966)
  br label %967

967:                                              ; preds = %948, %943
  %968 = phi ptr [ %957, %948 ], [ %944, %943 ]
  %969 = phi i32 [ %962, %948 ], [ %945, %943 ]
  %970 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 5
  %971 = call ptr @gimple_build_label(ptr noundef %922) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %874, ptr noundef %971) #22
  call void @gimple_seq_add_seq(ptr noundef nonnull %874, ptr noundef %882) #22
  %972 = load ptr, ptr %970, align 8, !tbaa !306
  %973 = load i64, ptr %875, align 8, !tbaa !307
  %974 = getelementptr inbounds %struct.goto_queue_node, ptr %972, i64 %973
  %975 = load i8, ptr %536, align 1, !tbaa !297
  %976 = zext i8 %975 to i32
  %977 = add nuw nsw i32 %969, %976
  %978 = icmp sgt i64 %973, 0
  br i1 %978, label %979, label %982

979:                                              ; preds = %967
  %980 = sext i32 %910 to i64
  %981 = icmp eq ptr %923, null
  br label %990

982:                                              ; preds = %1038, %967
  %983 = phi ptr [ null, %967 ], [ %1039, %1038 ]
  %984 = icmp sgt i32 %910, 0
  br i1 %984, label %985, label %1061

985:                                              ; preds = %982
  %986 = add nsw i32 %969, %910
  %987 = icmp eq ptr %983, null
  %988 = zext nneg i32 %969 to i64
  %989 = sext i32 %986 to i64
  br label %1042

990:                                              ; preds = %979, %1038
  %991 = phi ptr [ %972, %979 ], [ %1040, %1038 ]
  %992 = phi ptr [ null, %979 ], [ %1039, %1038 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %993 = call ptr @gimple_seq_alloc() #22
  store ptr %993, ptr %6, align 8, !tbaa !52
  %994 = getelementptr inbounds %struct.goto_queue_node, ptr %991, i64 0, i32 3
  %995 = load i32, ptr %994, align 8, !tbaa !308
  %996 = icmp slt i32 %995, 0
  br i1 %996, label %997, label %1001

997:                                              ; preds = %990
  %998 = call ptr @build_int_cst(ptr noundef null, i64 noundef %980) #22
  %999 = call ptr @gimple_build_assign_stat(ptr noundef %921, ptr noundef %998) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %6, ptr noundef %999) #22
  %1000 = load ptr, ptr %6, align 8, !tbaa !52
  call fastcc void @do_return_redirection(ptr noundef %991, ptr noundef %922, ptr noundef %1000, ptr noundef nonnull %4)
  br label %1007

1001:                                             ; preds = %990
  %1002 = zext nneg i32 %995 to i64
  %1003 = call ptr @build_int_cst(ptr noundef null, i64 noundef %1002) #22
  %1004 = call ptr @gimple_build_assign_stat(ptr noundef %921, ptr noundef %1003) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %6, ptr noundef %1004) #22
  %1005 = load ptr, ptr %6, align 8, !tbaa !52
  call fastcc void @do_goto_redirection(ptr noundef %991, ptr noundef %922, ptr noundef %1005, ptr noundef nonnull %11)
  %1006 = load i32, ptr %994, align 8, !tbaa !308
  br label %1007

1007:                                             ; preds = %1001, %997
  %1008 = phi i32 [ %910, %997 ], [ %1006, %1001 ]
  %1009 = load i32, ptr %994, align 8, !tbaa !308
  %1010 = add nsw i32 %977, %1009
  br i1 %981, label %1013, label %1011

1011:                                             ; preds = %1007
  %1012 = load i32, ptr %923, align 8, !tbaa !190
  br label %1013

1013:                                             ; preds = %1007, %1011
  %1014 = phi i32 [ %1012, %1011 ], [ 0, %1007 ]
  %1015 = icmp ugt i32 %1014, %1010
  br i1 %1015, label %1016, label %1021

1016:                                             ; preds = %1013
  %1017 = zext i32 %1010 to i64
  %1018 = getelementptr inbounds %struct.VEC_tree_base, ptr %923, i64 0, i32 2, i64 %1017
  %1019 = load ptr, ptr %1018, align 8, !tbaa !52
  %1020 = icmp eq ptr %1019, null
  br i1 %1020, label %1021, label %1038

1021:                                             ; preds = %1016, %1013
  %1022 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !52
  %1023 = sext i32 %1008 to i64
  %1024 = call ptr @build_int_cst(ptr noundef null, i64 noundef %1023) #22
  %1025 = call ptr @build3_stat(i32 noundef 139, ptr noundef %1022, ptr noundef %1024, ptr noundef null, ptr noundef null) #22
  %1026 = icmp eq ptr %992, null
  br i1 %1026, label %1027, label %1029

1027:                                             ; preds = %1021
  %1028 = call ptr @pointer_map_create() #22
  br label %1029

1029:                                             ; preds = %1027, %1021
  %1030 = phi ptr [ %992, %1021 ], [ %1028, %1027 ]
  %1031 = call ptr @pointer_map_insert(ptr noundef %1030, ptr noundef %1025) #22
  %1032 = getelementptr inbounds %struct.goto_queue_node, ptr %991, i64 0, i32 2
  %1033 = load ptr, ptr %1032, align 8, !tbaa !315
  store ptr %1033, ptr %1031, align 8, !tbaa !52
  %1034 = load i32, ptr %923, align 8, !tbaa !190
  %1035 = add i32 %1034, 1
  store i32 %1035, ptr %923, align 8, !tbaa !190
  %1036 = zext i32 %1034 to i64
  %1037 = getelementptr inbounds %struct.VEC_tree_base, ptr %923, i64 0, i32 2, i64 %1036
  store ptr %1025, ptr %1037, align 8, !tbaa !52
  br label %1038

1038:                                             ; preds = %1029, %1016
  %1039 = phi ptr [ %1030, %1029 ], [ %992, %1016 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  %1040 = getelementptr inbounds %struct.goto_queue_node, ptr %991, i64 1
  %1041 = icmp ult ptr %1040, %974
  br i1 %1041, label %990, label %982, !llvm.loop !323

1042:                                             ; preds = %985, %1054
  %1043 = phi i64 [ %988, %985 ], [ %1059, %1054 ]
  %1044 = getelementptr inbounds %struct.VEC_tree_base, ptr %923, i64 0, i32 2, i64 %1043
  %1045 = load ptr, ptr %1044, align 8, !tbaa !52
  %1046 = icmp eq ptr %1045, null
  br i1 %1046, label %1047, label %1048

1047:                                             ; preds = %1042
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1443, ptr noundef nonnull @.str.1) #22
  br label %1048

1048:                                             ; preds = %1047, %1042
  br i1 %987, label %1049, label %1050

1049:                                             ; preds = %1048
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1444, ptr noundef nonnull @.str.1) #22
  br label %1050

1050:                                             ; preds = %1049, %1048
  %1051 = call ptr @pointer_map_contains(ptr noundef %983, ptr noundef %1045) #22
  %1052 = icmp eq ptr %1051, null
  br i1 %1052, label %1053, label %1054

1053:                                             ; preds = %1050
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1449, ptr noundef nonnull @.str.1) #22
  br label %1054

1054:                                             ; preds = %1053, %1050
  %1055 = load ptr, ptr %1051, align 8, !tbaa !52
  %1056 = call ptr @create_artificial_label(i32 noundef %878) #22
  %1057 = getelementptr inbounds %struct.tree_exp, ptr %1045, i64 1, i32 0, i32 1
  store ptr %1056, ptr %1057, align 8, !tbaa !63
  %1058 = call ptr @gimple_build_label(ptr noundef %1056) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %1058) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %1055) #22
  call fastcc void @maybe_record_in_goto_queue(ptr noundef %0, ptr noundef %1055)
  %1059 = add nuw nsw i64 %1043, 1
  %1060 = icmp slt i64 %1059, %989
  br i1 %1060, label %1042, label %1061, !llvm.loop !324

1061:                                             ; preds = %1054, %982
  %1062 = phi ptr [ %968, %982 ], [ %1045, %1054 ]
  %1063 = icmp eq ptr %983, null
  br i1 %1063, label %1065, label %1064

1064:                                             ; preds = %1061
  call void @pointer_map_destroy(ptr noundef nonnull %983) #22
  br label %1065

1065:                                             ; preds = %1064, %1061
  %1066 = load i64, ptr %875, align 8, !tbaa !307
  %1067 = icmp eq i64 %1066, 0
  br i1 %1067, label %1071, label %1068

1068:                                             ; preds = %1065
  %1069 = load ptr, ptr %874, align 8, !tbaa !305
  call fastcc void @replace_goto_queue_stmt_list(ptr noundef %1069, ptr noundef nonnull %11)
  %1070 = load ptr, ptr @eh_seq, align 8, !tbaa !52
  call fastcc void @replace_goto_queue_stmt_list(ptr noundef %1070, ptr noundef nonnull %11)
  br label %1071

1071:                                             ; preds = %1065, %1068
  %1072 = getelementptr inbounds %struct.tree_exp, ptr %1062, i64 0, i32 3
  store ptr null, ptr %1072, align 8, !tbaa !63
  call void @sort_case_labels(ptr noundef %923) #22
  %1073 = call ptr @gimple_build_switch_vec(ptr noundef %921, ptr noundef %1062, ptr noundef %923) #22
  %1074 = getelementptr inbounds %struct.gimple_statement_base, ptr %1073, i64 0, i32 2
  store i32 %904, ptr %1074, align 8, !tbaa !63
  call void @gimple_seq_add_stmt(ptr noundef nonnull %874, ptr noundef %1073) #22
  %1075 = load ptr, ptr %5, align 8, !tbaa !52
  call void @gimple_seq_add_seq(ptr noundef nonnull %874, ptr noundef %1075) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %1076

1076:                                             ; preds = %654, %660, %703, %704, %1071, %871, %639, %590
  %1077 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 10
  %1078 = load ptr, ptr %1077, align 8, !tbaa !314
  %1079 = icmp eq ptr %1078, null
  br i1 %1079, label %1083, label %1080

1080:                                             ; preds = %1076
  %1081 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 2
  %1082 = call ptr @gimple_build_label(ptr noundef nonnull %1078) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %1081, ptr noundef %1082) #22
  br label %1083

1083:                                             ; preds = %1080, %1076
  %1084 = load ptr, ptr %535, align 8, !tbaa !52
  %1085 = icmp eq ptr %1084, null
  br i1 %1085, label %1087, label %1086

1086:                                             ; preds = %1083
  call void @free(ptr noundef %1084)
  br label %1087

1087:                                             ; preds = %1086, %1083
  %1088 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 5
  store ptr null, ptr %535, align 8, !tbaa !52
  %1089 = load ptr, ptr %1088, align 8, !tbaa !306
  %1090 = icmp eq ptr %1089, null
  br i1 %1090, label %1092, label %1091

1091:                                             ; preds = %1087
  call void @free(ptr noundef %1089)
  br label %1092

1092:                                             ; preds = %1091, %1087
  %1093 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 8
  %1094 = load ptr, ptr %1093, align 8, !tbaa !325
  %1095 = icmp eq ptr %1094, null
  br i1 %1095, label %1097, label %1096

1096:                                             ; preds = %1092
  call void @pointer_map_destroy(ptr noundef nonnull %1094) #22
  br label %1097

1097:                                             ; preds = %1096, %1092
  %1098 = icmp eq ptr %550, null
  br i1 %1098, label %1103, label %1099

1099:                                             ; preds = %1097
  %1100 = load ptr, ptr @eh_seq, align 8, !tbaa !52
  %1101 = icmp eq ptr %1100, null
  store ptr %550, ptr @eh_seq, align 8, !tbaa !52
  br i1 %1101, label %1103, label %1102

1102:                                             ; preds = %1099
  call void @gimple_seq_add_seq(ptr noundef nonnull @eh_seq, ptr noundef nonnull %1100) #22
  br label %1103

1103:                                             ; preds = %1099, %1097, %1102
  %1104 = getelementptr inbounds %struct.leh_tf_state, ptr %11, i64 0, i32 2
  %1105 = load ptr, ptr %1104, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %11) #22
  br label %1299

1106:                                             ; preds = %526
  %1107 = getelementptr inbounds %struct.gimple_statement_try, ptr %42, i64 0, i32 2
  %1108 = load ptr, ptr %1107, align 8, !tbaa !63
  %1109 = icmp eq ptr %1108, null
  br i1 %1109, label %1112, label %1110

1110:                                             ; preds = %1106
  %1111 = load ptr, ptr %1108, align 8, !tbaa !176
  br label %1112

1112:                                             ; preds = %1110, %1106
  %1113 = phi ptr [ %1111, %1110 ], [ null, %1106 ]
  %1114 = icmp eq ptr %1113, null
  br i1 %1114, label %1117, label %1115

1115:                                             ; preds = %1112
  %1116 = load ptr, ptr %1113, align 8, !tbaa !206
  br label %1117

1117:                                             ; preds = %1112, %1115
  %1118 = phi ptr [ %1116, %1115 ], [ null, %1112 ]
  %1119 = icmp eq ptr %1118, null
  br i1 %1119, label %1120, label %1123

1120:                                             ; preds = %1117
  %1121 = getelementptr inbounds %struct.gimple_statement_try, ptr %42, i64 0, i32 1
  %1122 = load ptr, ptr %1121, align 8, !tbaa !63
  call fastcc void @lower_eh_constructs_1(ptr noundef %0, ptr noundef %1122)
  br label %1299

1123:                                             ; preds = %1117
  %1124 = load i32, ptr %1118, align 8
  %1125 = trunc i32 %1124 to i8
  switch i8 %1125, label %1253 [
    i8 11, label %1126
    i8 12, label %1201
    i8 13, label %1251
  ]

1126:                                             ; preds = %1123
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #22
  %1127 = getelementptr inbounds %struct.gimple_statement_base, ptr %42, i64 0, i32 2
  %1128 = load i32, ptr %1127, align 8, !tbaa !63
  %1129 = load i32, ptr @flag_exceptions, align 4, !tbaa !67
  %1130 = icmp eq i32 %1129, 0
  br i1 %1130, label %1134, label %1131

1131:                                             ; preds = %1126
  %1132 = load ptr, ptr %0, align 8, !tbaa !292
  %1133 = call ptr @gen_eh_region_try(ptr noundef %1132) #22
  store ptr %1133, ptr %13, align 8, !tbaa !292
  br label %1134

1134:                                             ; preds = %1131, %1126
  %1135 = phi ptr [ %1133, %1131 ], [ null, %1126 ]
  %1136 = getelementptr inbounds %struct.gimple_statement_try, ptr %42, i64 0, i32 1
  %1137 = load ptr, ptr %1136, align 8, !tbaa !63
  call fastcc void @lower_eh_constructs_1(ptr noundef nonnull %13, ptr noundef %1137)
  %1138 = icmp eq ptr %1135, null
  br i1 %1138, label %1146, label %1139

1139:                                             ; preds = %1134
  %1140 = load ptr, ptr @eh_region_may_contain_throw_map, align 8, !tbaa !52
  %1141 = getelementptr inbounds %struct.eh_region_d, ptr %1135, i64 0, i32 3
  %1142 = load i32, ptr %1141, align 8, !tbaa !148
  %1143 = call i32 @bitmap_bit_p(ptr noundef %1140, i32 noundef %1142) #22
  %1144 = icmp ne i32 %1143, 0
  %1145 = zext i1 %1144 to i8
  br label %1146

1146:                                             ; preds = %1139, %1134
  %1147 = phi i8 [ 0, %1134 ], [ %1145, %1139 ]
  %1148 = icmp eq i8 %1147, 0
  br i1 %1148, label %1149, label %1151

1149:                                             ; preds = %1146
  %1150 = load ptr, ptr %1136, align 8, !tbaa !63
  br label %1199

1151:                                             ; preds = %1146
  %1152 = getelementptr inbounds %struct.leh_state, ptr %13, i64 0, i32 1
  store ptr null, ptr %14, align 8, !tbaa !52
  %1153 = getelementptr inbounds %struct.eh_region_d, ptr %1135, i64 0, i32 3
  %1154 = load i32, ptr %1153, align 8, !tbaa !148
  %1155 = call ptr @gimple_build_eh_dispatch(i32 noundef %1154) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %14, ptr noundef %1155) #22
  call fastcc void @emit_resx(ptr noundef nonnull %14, ptr noundef %1135)
  %1156 = load ptr, ptr %0, align 8, !tbaa !292
  store ptr %1156, ptr %13, align 8, !tbaa !292
  store ptr %1135, ptr %1152, align 8, !tbaa !289
  %1157 = load ptr, ptr %1107, align 8, !tbaa !63
  %1158 = icmp eq ptr %1157, null
  br i1 %1158, label %1161, label %1159

1159:                                             ; preds = %1151
  %1160 = load ptr, ptr %1157, align 8, !tbaa !176, !noalias !326
  br label %1161

1161:                                             ; preds = %1159, %1151
  %1162 = phi ptr [ %1160, %1159 ], [ null, %1151 ]
  %1163 = icmp eq ptr %1162, null
  br i1 %1163, label %1195, label %1164

1164:                                             ; preds = %1161, %1191
  %1165 = phi ptr [ %1187, %1191 ], [ null, %1161 ]
  %1166 = phi ptr [ %1193, %1191 ], [ %1162, %1161 ]
  %1167 = load ptr, ptr %1166, align 8, !tbaa !206
  %1168 = getelementptr inbounds %struct.gimple_statement_catch, ptr %1167, i64 0, i32 1
  %1169 = load ptr, ptr %1168, align 8, !tbaa !63
  %1170 = call ptr @gen_eh_region_catch(ptr noundef %1135, ptr noundef %1169) #22
  %1171 = getelementptr inbounds %struct.gimple_statement_catch, ptr %1167, i64 0, i32 2
  %1172 = load ptr, ptr %1171, align 8, !tbaa !63
  call fastcc void @lower_eh_constructs_1(ptr noundef nonnull %13, ptr noundef %1172)
  %1173 = call ptr @create_artificial_label(i32 noundef 0) #22
  %1174 = getelementptr inbounds %struct.eh_catch_d, ptr %1170, i64 0, i32 4
  store ptr %1173, ptr %1174, align 8, !tbaa !101
  %1175 = call ptr @gimple_build_label(ptr noundef %1173) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %14, ptr noundef %1175) #22
  call void @gimple_seq_add_seq(ptr noundef nonnull %14, ptr noundef %1172) #22
  %1176 = load ptr, ptr %14, align 8, !tbaa !52
  %1177 = call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %1176) #22
  %1178 = icmp eq i8 %1177, 0
  br i1 %1178, label %1186, label %1179

1179:                                             ; preds = %1164
  %1180 = icmp eq ptr %1165, null
  br i1 %1180, label %1181, label %1183

1181:                                             ; preds = %1179
  %1182 = call ptr @create_artificial_label(i32 noundef %1128) #22
  br label %1183

1183:                                             ; preds = %1181, %1179
  %1184 = phi ptr [ %1165, %1179 ], [ %1182, %1181 ]
  %1185 = call ptr @gimple_build_goto(ptr noundef %1184) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %14, ptr noundef %1185) #22
  br label %1186

1186:                                             ; preds = %1183, %1164
  %1187 = phi ptr [ %1184, %1183 ], [ %1165, %1164 ]
  %1188 = getelementptr inbounds %struct.eh_catch_d, ptr %1170, i64 0, i32 2
  %1189 = load ptr, ptr %1188, align 8, !tbaa !103
  %1190 = icmp eq ptr %1189, null
  br i1 %1190, label %1195, label %1191

1191:                                             ; preds = %1186
  %1192 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1166, i64 0, i32 2
  %1193 = load ptr, ptr %1192, align 8, !tbaa !210
  %1194 = icmp eq ptr %1193, null
  br i1 %1194, label %1195, label %1164, !llvm.loop !329

1195:                                             ; preds = %1191, %1186, %1161
  %1196 = phi ptr [ null, %1161 ], [ %1187, %1186 ], [ %1187, %1191 ]
  %1197 = load ptr, ptr %14, align 8, !tbaa !52
  store ptr %1197, ptr %1107, align 8, !tbaa !63
  %1198 = call fastcc ptr @frob_into_branch_around(ptr noundef %42, ptr noundef %1135, ptr noundef %1196)
  br label %1199

1199:                                             ; preds = %1149, %1195
  %1200 = phi ptr [ %1198, %1195 ], [ %1150, %1149 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #22
  br label %1299

1201:                                             ; preds = %1123
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #22
  br i1 %1109, label %1204, label %1202

1202:                                             ; preds = %1201
  %1203 = load ptr, ptr %1108, align 8, !tbaa !176
  br label %1204

1204:                                             ; preds = %1202, %1201
  %1205 = phi ptr [ %1203, %1202 ], [ null, %1201 ]
  %1206 = icmp eq ptr %1205, null
  br i1 %1206, label %1209, label %1207

1207:                                             ; preds = %1204
  %1208 = load ptr, ptr %1205, align 8, !tbaa !206
  br label %1209

1209:                                             ; preds = %1207, %1204
  %1210 = phi ptr [ %1208, %1207 ], [ null, %1204 ]
  %1211 = load i32, ptr @flag_exceptions, align 4, !tbaa !67
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1218, label %1213

1213:                                             ; preds = %1209
  %1214 = load ptr, ptr %0, align 8, !tbaa !292
  %1215 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %1210, i64 0, i32 1
  %1216 = load ptr, ptr %1215, align 8, !tbaa !63
  %1217 = call ptr @gen_eh_region_allowed(ptr noundef %1214, ptr noundef %1216) #22
  store ptr %1217, ptr %15, align 8, !tbaa !292
  br label %1218

1218:                                             ; preds = %1213, %1209
  %1219 = phi ptr [ %1217, %1213 ], [ null, %1209 ]
  %1220 = getelementptr inbounds %struct.gimple_statement_try, ptr %42, i64 0, i32 1
  %1221 = load ptr, ptr %1220, align 8, !tbaa !63
  call fastcc void @lower_eh_constructs_1(ptr noundef nonnull %15, ptr noundef %1221)
  %1222 = icmp eq ptr %1219, null
  br i1 %1222, label %1230, label %1223

1223:                                             ; preds = %1218
  %1224 = load ptr, ptr @eh_region_may_contain_throw_map, align 8, !tbaa !52
  %1225 = getelementptr inbounds %struct.eh_region_d, ptr %1219, i64 0, i32 3
  %1226 = load i32, ptr %1225, align 8, !tbaa !148
  %1227 = call i32 @bitmap_bit_p(ptr noundef %1224, i32 noundef %1226) #22
  %1228 = icmp ne i32 %1227, 0
  %1229 = zext i1 %1228 to i8
  br label %1230

1230:                                             ; preds = %1223, %1218
  %1231 = phi i8 [ 0, %1218 ], [ %1229, %1223 ]
  %1232 = icmp eq i8 %1231, 0
  br i1 %1232, label %1233, label %1235

1233:                                             ; preds = %1230
  %1234 = load ptr, ptr %1220, align 8, !tbaa !63
  br label %1249

1235:                                             ; preds = %1230
  %1236 = getelementptr inbounds %struct.leh_state, ptr %15, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !52
  %1237 = load ptr, ptr %0, align 8, !tbaa !292
  store ptr %1237, ptr %15, align 8, !tbaa !292
  store ptr %1219, ptr %1236, align 8, !tbaa !289
  %1238 = getelementptr inbounds %struct.eh_region_d, ptr %1219, i64 0, i32 3
  %1239 = load i32, ptr %1238, align 8, !tbaa !148
  %1240 = call ptr @gimple_build_eh_dispatch(i32 noundef %1239) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %16, ptr noundef %1240) #22
  call fastcc void @emit_resx(ptr noundef nonnull %16, ptr noundef %1219)
  %1241 = call ptr @create_artificial_label(i32 noundef 0) #22
  %1242 = getelementptr inbounds %struct.eh_region_d, ptr %1219, i64 0, i32 5, i32 0, i32 1
  store ptr %1241, ptr %1242, align 8, !tbaa !63
  %1243 = call ptr @gimple_build_label(ptr noundef %1241) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %16, ptr noundef %1243) #22
  %1244 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %1210, i64 0, i32 2
  %1245 = load ptr, ptr %1244, align 8, !tbaa !63
  call fastcc void @lower_eh_constructs_1(ptr noundef nonnull %15, ptr noundef %1245)
  %1246 = load ptr, ptr %1244, align 8, !tbaa !63
  call void @gimple_seq_add_seq(ptr noundef nonnull %16, ptr noundef %1246) #22
  %1247 = load ptr, ptr %16, align 8, !tbaa !52
  store ptr %1247, ptr %1107, align 8, !tbaa !63
  %1248 = call fastcc ptr @frob_into_branch_around(ptr noundef %42, ptr noundef %1219, ptr noundef null)
  br label %1249

1249:                                             ; preds = %1233, %1235
  %1250 = phi ptr [ %1248, %1235 ], [ %1234, %1233 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #22
  br label %1299

1251:                                             ; preds = %1123
  %1252 = call fastcc ptr @lower_eh_must_not_throw(ptr noundef %0, ptr noundef %42)
  br label %1299

1253:                                             ; preds = %1123
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !168
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #22
  %1254 = load i32, ptr @flag_exceptions, align 4, !tbaa !67
  %1255 = icmp eq i32 %1254, 0
  br i1 %1255, label %1259, label %1256

1256:                                             ; preds = %1253
  %1257 = load ptr, ptr %0, align 8, !tbaa !292
  %1258 = call ptr @gen_eh_region_cleanup(ptr noundef %1257) #22
  store ptr %1258, ptr %17, align 8, !tbaa !292
  br label %1259

1259:                                             ; preds = %1256, %1253
  %1260 = phi ptr [ %1258, %1256 ], [ null, %1253 ]
  %1261 = getelementptr inbounds %struct.gimple_statement_try, ptr %42, i64 0, i32 1
  %1262 = load ptr, ptr %1261, align 8, !tbaa !63
  call fastcc void @lower_eh_constructs_1(ptr noundef nonnull %17, ptr noundef %1262)
  %1263 = icmp eq ptr %1260, null
  br i1 %1263, label %1271, label %1264

1264:                                             ; preds = %1259
  %1265 = load ptr, ptr @eh_region_may_contain_throw_map, align 8, !tbaa !52
  %1266 = getelementptr inbounds %struct.eh_region_d, ptr %1260, i64 0, i32 3
  %1267 = load i32, ptr %1266, align 8, !tbaa !148
  %1268 = call i32 @bitmap_bit_p(ptr noundef %1265, i32 noundef %1267) #22
  %1269 = icmp ne i32 %1268, 0
  %1270 = zext i1 %1269 to i8
  br label %1271

1271:                                             ; preds = %1264, %1259
  %1272 = phi i8 [ 0, %1259 ], [ %1270, %1264 ]
  %1273 = icmp eq i8 %1272, 0
  br i1 %1273, label %1296, label %1274

1274:                                             ; preds = %1271
  %1275 = getelementptr inbounds %struct.leh_tf_state, ptr %18, i64 0, i32 1
  %1276 = getelementptr inbounds %struct.leh_tf_state, ptr %18, i64 0, i32 3
  %1277 = getelementptr inbounds %struct.leh_tf_state, ptr %18, i64 0, i32 4
  %1278 = getelementptr inbounds %struct.leh_tf_state, ptr %18, i64 0, i32 11
  %1279 = getelementptr inbounds %struct.leh_tf_state, ptr %18, i64 0, i32 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %18, i8 0, i64 96, i1 false)
  store ptr %42, ptr %18, align 8, !tbaa !299
  store ptr %42, ptr %1275, align 8, !tbaa !300
  store ptr %0, ptr %1276, align 8, !tbaa !301
  store ptr %1260, ptr %1277, align 8, !tbaa !302
  %1280 = load ptr, ptr %1261, align 8, !tbaa !63
  %1281 = call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %1280) #22
  store i8 %1281, ptr %1278, align 8, !tbaa !303
  store i8 1, ptr %1279, align 2, !tbaa !304
  call fastcc void @honor_protect_cleanup_actions(ptr noundef %0, ptr noundef null, ptr noundef nonnull %18)
  %1282 = load i8, ptr %1279, align 2, !tbaa !304
  %1283 = icmp eq i8 %1282, 0
  br i1 %1283, label %1289, label %1284

1284:                                             ; preds = %1274
  %1285 = getelementptr inbounds %struct.leh_tf_state, ptr %18, i64 0, i32 10
  %1286 = load ptr, ptr %1107, align 8, !tbaa !63
  call fastcc void @lower_eh_constructs_1(ptr noundef %0, ptr noundef %1286)
  %1287 = load ptr, ptr %1285, align 8, !tbaa !314
  %1288 = call fastcc ptr @frob_into_branch_around(ptr noundef %42, ptr noundef %1260, ptr noundef %1287)
  store ptr %1288, ptr %19, align 8, !tbaa !52
  br label %1296

1289:                                             ; preds = %1274
  %1290 = getelementptr inbounds %struct.leh_tf_state, ptr %18, i64 0, i32 10
  %1291 = load ptr, ptr %1261, align 8, !tbaa !63
  store ptr %1291, ptr %19, align 8, !tbaa !52
  %1292 = load ptr, ptr %1290, align 8, !tbaa !314
  %1293 = icmp eq ptr %1292, null
  br i1 %1293, label %1296, label %1294

1294:                                             ; preds = %1289
  %1295 = call ptr @gimple_build_label(ptr noundef nonnull %1292) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %19, ptr noundef %1295) #22
  br label %1296

1296:                                             ; preds = %1284, %1289, %1294, %1271
  %1297 = phi ptr [ %1261, %1271 ], [ %19, %1294 ], [ %19, %1289 ], [ %19, %1284 ]
  %1298 = load ptr, ptr %1297, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #22
  br label %1299

1299:                                             ; preds = %1296, %1251, %1249, %1199, %1120, %1103
  %1300 = phi ptr [ %1105, %1103 ], [ %1298, %1296 ], [ %1252, %1251 ], [ %1250, %1249 ], [ %1200, %1199 ], [ %1122, %1120 ]
  call void @gsi_insert_seq_before(ptr noundef nonnull %20, ptr noundef %1300, i32 noundef 1) #22
  call void @gsi_remove(ptr noundef nonnull %20, i8 noundef zeroext 1) #22
  br label %1305

1301:                                             ; preds = %423, %416, %525, %523, %521, %504, %429, %407, %410, %40
  %1302 = load ptr, ptr %20, align 8, !tbaa !222
  %1303 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1302, i64 0, i32 2
  %1304 = load ptr, ptr %1303, align 8, !tbaa !210
  store ptr %1304, ptr %20, align 8, !tbaa !222
  br label %1305

1305:                                             ; preds = %139, %1299, %1301
  %1306 = load ptr, ptr %20, align 8
  %1307 = icmp eq ptr %1306, null
  br i1 %1307, label %1308, label %40, !prof !280, !llvm.loop !330

1308:                                             ; preds = %1305, %33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #22
  ret void
}

declare zeroext i8 @gimple_seq_may_fallthru(ptr noundef) local_unnamed_addr #3

declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare i32 @function_needs_eh_personality(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @record_in_finally_tree(ptr %0, ptr noundef %1) unnamed_addr #12 !prof !51 !PGOFuncName !331 {
  %3 = tail call ptr @xmalloc(i64 noundef 16) #22
  store ptr %0, ptr %3, align 8, !tbaa.struct !276
  %4 = getelementptr inbounds %struct.finally_tree_node, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !277
  %5 = load ptr, ptr @finally_tree, align 8, !tbaa !52
  %6 = tail call ptr @htab_find_slot(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 1) #22
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !279

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 235, ptr noundef nonnull @.str.1) #22
  br label %10

10:                                               ; preds = %2, %9
  store ptr %3, ptr %6, align 8, !tbaa !52
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @gimple_stmt_may_fallthru(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_lhs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @record_stmt_eh_region(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !51 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !99
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load ptr, ptr @cfun, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !148
  %12 = sub nsw i32 0, %11
  tail call void @add_stmt_to_eh_lp_fn(ptr noundef %9, ptr noundef %1, i32 noundef %12)
  br label %28

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !258
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call ptr @gen_eh_landing_pad(ptr noundef nonnull %0) #22
  br label %23

19:                                               ; preds = %13
  %20 = load ptr, ptr %15, align 8, !tbaa !257
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.1) #22
  br label %23

23:                                               ; preds = %22, %19, %17
  %24 = phi ptr [ %18, %17 ], [ %15, %19 ], [ %15, %22 ]
  %25 = load ptr, ptr @cfun, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %24, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !117
  tail call void @add_stmt_to_eh_lp_fn(ptr noundef %25, ptr noundef %1, i32 noundef %27)
  br label %28

28:                                               ; preds = %2, %23, %8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @maybe_record_in_goto_queue(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #12 !prof !51 !PGOFuncName !332 {
  %3 = getelementptr inbounds %struct.leh_state, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !295
  %5 = icmp eq ptr %4, null
  br i1 %5, label %103, label %6, !prof !296

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 255
  %9 = trunc i32 %7 to i8
  switch i8 %9, label %102 [
    i8 1, label %10
    i8 3, label %83
    i8 9, label %100
  ]

10:                                               ; preds = %6
  %11 = add nsw i32 %8, -10
  %12 = icmp ult i32 %11, -9
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  %14 = zext nneg i32 %8 to i64
  %15 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !67
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !134
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %22

22:                                               ; preds = %21, %13
  %23 = getelementptr inbounds i8, ptr %1, i64 %19
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  br label %25

25:                                               ; preds = %10, %22
  %26 = phi ptr [ %24, %22 ], [ null, %10 ]
  %27 = load i32, ptr %1, align 8
  %28 = and i32 %27, 255
  %29 = add nsw i32 %28, -10
  %30 = icmp ult i32 %29, -9
  br i1 %30, label %44, label %31

31:                                               ; preds = %25
  %32 = zext nneg i32 %28 to i64
  %33 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !67
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !134
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %40

40:                                               ; preds = %39, %31
  %41 = getelementptr inbounds i8, ptr %1, i64 %37
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  br label %44

44:                                               ; preds = %25, %40
  %45 = phi ptr [ %43, %40 ], [ null, %25 ]
  tail call fastcc void @record_in_goto_queue_label(ptr noundef nonnull %4, ptr %26, ptr noundef %45)
  %46 = load i32, ptr %1, align 8
  %47 = and i32 %46, 255
  %48 = add nsw i32 %47, -10
  %49 = icmp ult i32 %48, -9
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = zext nneg i32 %47 to i64
  %52 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !67
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !134
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %59

59:                                               ; preds = %58, %50
  %60 = getelementptr inbounds i8, ptr %1, i64 %56
  %61 = getelementptr inbounds ptr, ptr %60, i64 3
  br label %62

62:                                               ; preds = %44, %59
  %63 = phi ptr [ %61, %59 ], [ null, %44 ]
  %64 = load i32, ptr %1, align 8
  %65 = and i32 %64, 255
  %66 = add nsw i32 %65, -10
  %67 = icmp ult i32 %66, -9
  br i1 %67, label %81, label %68

68:                                               ; preds = %62
  %69 = zext nneg i32 %65 to i64
  %70 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !67
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %72
  %74 = load i64, ptr %73, align 8, !tbaa !134
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %77

77:                                               ; preds = %76, %68
  %78 = getelementptr inbounds i8, ptr %1, i64 %74
  %79 = getelementptr inbounds ptr, ptr %78, i64 3
  %80 = load ptr, ptr %79, align 8, !tbaa !52
  br label %81

81:                                               ; preds = %62, %77
  %82 = phi ptr [ %80, %77 ], [ null, %62 ]
  tail call fastcc void @record_in_goto_queue_label(ptr noundef nonnull %4, ptr %63, ptr noundef %82)
  br label %103

83:                                               ; preds = %6
  %84 = add nsw i32 %8, -10
  %85 = icmp ult i32 %84, -9
  br i1 %85, label %98, label %86

86:                                               ; preds = %83
  %87 = zext nneg i32 %8 to i64
  %88 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !67
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !134
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %95

95:                                               ; preds = %94, %86
  %96 = getelementptr inbounds i8, ptr %1, i64 %92
  %97 = load ptr, ptr %96, align 8, !tbaa !52
  br label %98

98:                                               ; preds = %83, %95
  %99 = phi ptr [ %97, %95 ], [ null, %83 ]
  tail call fastcc void @record_in_goto_queue_label(ptr noundef nonnull %4, ptr nonnull %1, ptr noundef %99)
  br label %103

100:                                              ; preds = %6
  %101 = getelementptr inbounds %struct.leh_tf_state, ptr %4, i64 0, i32 12
  store i8 1, ptr %101, align 1, !tbaa !297
  tail call fastcc void @record_in_goto_queue(ptr noundef nonnull %4, ptr nonnull %1, i32 noundef -1, i8 noundef zeroext 0)
  br label %103

102:                                              ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 683, ptr noundef nonnull @.str.1) #22
  br label %103

103:                                              ; preds = %81, %98, %100, %102, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @lower_eh_must_not_throw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !51 {
  %3 = alloca %struct.leh_state, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !168
  %4 = load i32, ptr @flag_exceptions, align 4, !tbaa !67
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gimple_statement_try, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !176
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ null, %6 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 8, !tbaa !206
  br label %17

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %16, %15 ], [ null, %12 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !292
  %20 = tail call ptr @gen_eh_region_must_not_throw(ptr noundef %19) #22
  %21 = getelementptr inbounds %struct.gimple_statement_eh_mnt, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = getelementptr inbounds %struct.eh_region_d, ptr %20, i64 0, i32 5
  store ptr %22, ptr %23, align 8, !tbaa !63
  %24 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !63
  %26 = getelementptr inbounds %struct.eh_region_d, ptr %20, i64 0, i32 5, i32 0, i32 1
  store i32 %25, ptr %26, align 8, !tbaa !63
  %27 = load i64, ptr %22, align 8
  %28 = or i64 %27, 16777216
  store i64 %28, ptr %22, align 8
  store ptr %20, ptr %3, align 8, !tbaa !292
  br label %29

29:                                               ; preds = %17, %2
  %30 = getelementptr inbounds %struct.gimple_statement_try, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !63
  call fastcc void @lower_eh_constructs_1(ptr noundef nonnull %3, ptr noundef %31)
  %32 = load ptr, ptr %30, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret ptr %32
}

declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_eh_landing_pad(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @record_in_goto_queue_label(ptr nocapture noundef %0, ptr %1, ptr noundef %2) unnamed_addr #10 !prof !51 {
  %4 = alloca %struct.finally_tree_node, align 8
  %5 = icmp eq ptr %2, null
  br i1 %5, label %64, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr %2, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 30
  br i1 %9, label %10, label %64

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  br label %12

12:                                               ; preds = %17, %10
  %13 = phi ptr [ %2, %10 ], [ %19, %17 ]
  store ptr %13, ptr %4, align 8, !tbaa.struct !276
  %14 = load ptr, ptr @finally_tree, align 8, !tbaa !52
  %15 = call ptr @htab_find(ptr noundef %14, ptr noundef nonnull %4) #22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.finally_tree_node, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !277
  %20 = icmp eq ptr %19, %11
  br i1 %20, label %21, label %12, !llvm.loop !333

21:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  br i1 %16, label %23, label %64

22:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  br label %23

23:                                               ; preds = %22, %21
  %24 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #22
  store ptr %28, ptr %24, align 8, !tbaa !313
  br label %55

29:                                               ; preds = %23
  %30 = load i32, ptr %25, align 8, !tbaa !190
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = zext nneg i32 %30 to i64
  br label %34

34:                                               ; preds = %32, %39
  %35 = phi i64 [ 0, %32 ], [ %40, %39 ]
  %36 = getelementptr inbounds %struct.VEC_tree_base, ptr %25, i64 0, i32 2, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !52
  %38 = icmp eq ptr %37, %2
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %33
  br i1 %41, label %44, label %34, !llvm.loop !334

42:                                               ; preds = %34
  %43 = trunc i64 %35 to i32
  br label %44

44:                                               ; preds = %42, %39, %29
  %45 = phi i32 [ 0, %29 ], [ %43, %42 ], [ %30, %39 ]
  %46 = icmp eq i32 %45, %30
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.VEC_tree_base, ptr %25, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !188
  %50 = icmp eq i32 %49, %30
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call ptr @vec_heap_p_reserve(ptr noundef nonnull %25, i32 noundef 1) #22
  store ptr %52, ptr %24, align 8, !tbaa !52
  br label %53

53:                                               ; preds = %47, %51
  %54 = load ptr, ptr %24, align 8, !tbaa !52
  br label %55

55:                                               ; preds = %27, %53
  %56 = phi ptr [ %28, %27 ], [ %54, %53 ]
  %57 = phi i32 [ 0, %27 ], [ %45, %53 ]
  %58 = load i32, ptr %56, align 8, !tbaa !190
  %59 = add i32 %58, 1
  store i32 %59, ptr %56, align 8, !tbaa !190
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds %struct.VEC_tree_base, ptr %56, i64 0, i32 2, i64 %60
  store ptr %2, ptr %61, align 8, !tbaa !52
  br label %62

62:                                               ; preds = %55, %44
  %63 = phi i32 [ %45, %44 ], [ %57, %55 ]
  call fastcc void @record_in_goto_queue(ptr noundef nonnull %0, ptr %1, i32 noundef %63, i8 noundef zeroext 1)
  br label %64

64:                                               ; preds = %21, %6, %3, %62
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @record_in_goto_queue(ptr nocapture noundef %0, ptr %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #10 !prof !51 {
  %5 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !325
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 583, ptr noundef nonnull @.str.1) #22
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 7
  %11 = load i64, ptr %10, align 8, !tbaa !307
  %12 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 6
  %13 = load i64, ptr %12, align 8, !tbaa !335
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = icmp eq i64 %13, 0
  %17 = shl i64 %13, 1
  %18 = select i1 %16, i64 32, i64 %17
  store i64 %18, ptr %12, align 8, !tbaa !335
  %19 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !306
  %21 = shl i64 %18, 5
  %22 = tail call ptr @xrealloc(ptr noundef %20, i64 noundef %21) #22
  store ptr %22, ptr %19, align 8, !tbaa !306
  br label %23

23:                                               ; preds = %15, %9
  %24 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !306
  %26 = getelementptr inbounds %struct.goto_queue_node, ptr %25, i64 %11
  %27 = add i64 %11, 1
  store i64 %27, ptr %10, align 8, !tbaa !307
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, i8 0, i64 32, i1 false)
  store ptr %1, ptr %26, align 8, !tbaa.struct !276
  %28 = getelementptr inbounds %struct.goto_queue_node, ptr %25, i64 %11, i32 3
  store i32 %2, ptr %28, align 8, !tbaa !308
  %29 = zext nneg i8 %3 to i32
  %30 = getelementptr inbounds %struct.goto_queue_node, ptr %25, i64 %11, i32 4
  store i32 %29, ptr %30, align 4, !tbaa !336
  ret void
}

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gen_eh_region_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @honor_protect_cleanup_actions(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef %2) unnamed_addr #10 !prof !51 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  %6 = load ptr, ptr @lang_protect_cleanup_actions, align 8, !tbaa !52
  %7 = icmp eq ptr %6, null
  br i1 %7, label %64, label %8

8:                                                ; preds = %3
  %9 = tail call ptr %6() #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %64, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.leh_tf_state, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !300
  %14 = getelementptr inbounds %struct.gimple_statement_try, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = tail call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %15) #22
  %17 = icmp eq ptr %1, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %11
  %19 = tail call ptr @copy_gimple_seq_and_replace_locals(ptr noundef %15) #22
  %20 = getelementptr inbounds %struct.leh_state, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !295
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %21, align 8, !tbaa !299
  br label %25

25:                                               ; preds = %18, %23
  %26 = phi ptr [ %24, %23 ], [ null, %18 ]
  tail call fastcc void @collect_finally_tree_1(ptr noundef %19, ptr noundef %26)
  br label %27

27:                                               ; preds = %25, %11
  %28 = phi ptr [ %19, %25 ], [ %15, %11 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %28, align 8, !tbaa !176, !noalias !337
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi ptr [ %31, %30 ], [ null, %27 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 8, !tbaa !206, !noalias !337
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.gimple_statement_base, ptr %36, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !63, !noalias !337
  br label %41

41:                                               ; preds = %32, %35, %38
  %42 = phi ptr [ %40, %38 ], [ null, %35 ], [ null, %32 ]
  store ptr %33, ptr %5, align 8, !tbaa.struct !168
  %43 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %28, ptr %43, align 8, !tbaa.struct !169
  %44 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr %42, ptr %44, align 8, !tbaa.struct !170
  %45 = load ptr, ptr %33, align 8, !tbaa !206
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 459007
  %48 = icmp eq i32 %47, 327697
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.gimple_statement_try, ptr %45, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !63
  call void @gsi_insert_seq_before(ptr noundef nonnull %5, ptr noundef %51, i32 noundef 1) #22
  call void @gsi_remove(ptr noundef nonnull %5, i8 noundef zeroext 0) #22
  br label %52

52:                                               ; preds = %49, %41
  %53 = call ptr @gimple_build_eh_must_not_throw(ptr noundef nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !52
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %53) #22
  %54 = load ptr, ptr %4, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  %55 = call ptr @gimple_build_try(ptr noundef %28, ptr noundef %54, i32 noundef 1) #22
  %56 = call fastcc ptr @lower_eh_must_not_throw(ptr noundef %0, ptr noundef %55)
  %57 = getelementptr inbounds %struct.leh_tf_state, ptr %2, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !302
  call fastcc void @emit_post_landing_pad(ptr noundef %58)
  call void @gimple_seq_add_seq(ptr noundef nonnull @eh_seq, ptr noundef %56) #22
  %59 = icmp eq i8 %16, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = load ptr, ptr %57, align 8, !tbaa !302
  call fastcc void @emit_resx(ptr noundef nonnull @eh_seq, ptr noundef %61)
  br label %62

62:                                               ; preds = %60, %52
  %63 = getelementptr inbounds %struct.leh_tf_state, ptr %2, i64 0, i32 13
  store i8 0, ptr %63, align 2, !tbaa !304
  br label %64

64:                                               ; preds = %8, %3, %62
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  ret void
}

declare ptr @gimple_build_label(ptr noundef) local_unnamed_addr #3

declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_eh_must_not_throw(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_try(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @emit_post_landing_pad(ptr noundef %0) unnamed_addr #10 !prof !51 {
  %2 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !258
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @gen_eh_landing_pad(ptr noundef %0) #22
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %9 = tail call ptr @create_artificial_label(i32 noundef 0) #22
  %10 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %8, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !107
  %11 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %8, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !117
  %13 = getelementptr inbounds %struct.tree_label_decl, ptr %9, i64 0, i32 2
  store i32 %12, ptr %13, align 4, !tbaa !63
  %14 = load ptr, ptr %10, align 8, !tbaa !107
  %15 = tail call ptr @gimple_build_label(ptr noundef %14) #22
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull @eh_seq, ptr noundef %15) #22
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @emit_resx(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !51 {
  %3 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !148
  %5 = tail call ptr @gimple_build_resx(i32 noundef %4) #22
  tail call void @gimple_seq_add_stmt(ptr noundef %0, ptr noundef %5) #22
  %6 = load ptr, ptr %1, align 8, !tbaa !293
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call fastcc void @record_stmt_eh_region(ptr noundef nonnull %6, ptr noundef %5)
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

declare ptr @copy_gimple_seq_and_replace_locals(ptr noundef) local_unnamed_addr #3

declare ptr @create_artificial_label(i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_resx(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @do_return_redirection(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #10 !prof !51 {
  %5 = getelementptr inbounds %struct.goto_queue_node, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !336
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 729, ptr noundef nonnull @.str.1) #22
  br label %9

9:                                                ; preds = %4, %8
  %10 = load ptr, ptr %0, align 8, !tbaa !63
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 255
  %13 = add nsw i32 %12, -10
  %14 = icmp ult i32 %13, -9
  br i1 %14, label %27, label %15

15:                                               ; preds = %9
  %16 = zext nneg i32 %12 to i64
  %17 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !67
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !134
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %24

24:                                               ; preds = %23, %15
  %25 = getelementptr inbounds i8, ptr %10, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  br label %27

27:                                               ; preds = %9, %24
  %28 = phi ptr [ %26, %24 ], [ null, %9 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %53, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %3, align 8, !tbaa !52
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store ptr %28, ptr %3, align 8, !tbaa !52
  br label %37

34:                                               ; preds = %30
  %35 = icmp eq ptr %31, %28
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %37

37:                                               ; preds = %36, %34, %33
  %38 = load ptr, ptr %0, align 8, !tbaa !63
  %39 = getelementptr inbounds %struct.goto_queue_node, ptr %0, i64 0, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !315
  %40 = load i64, ptr %28, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 36
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load ptr, ptr %3, align 8, !tbaa !52
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store ptr %28, ptr %3, align 8, !tbaa !52
  br label %50

47:                                               ; preds = %43
  %48 = icmp eq ptr %44, %28
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 767, ptr noundef nonnull @.str.1) #22
  br label %50

50:                                               ; preds = %49, %47, %46
  %51 = load ptr, ptr %0, align 8, !tbaa !63
  store ptr %51, ptr %39, align 8, !tbaa !315
  br label %56

52:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 771, ptr noundef nonnull @.str.1) #22
  br label %56

53:                                               ; preds = %27
  %54 = load ptr, ptr %0, align 8, !tbaa !63
  %55 = getelementptr inbounds %struct.goto_queue_node, ptr %0, i64 0, i32 2
  store ptr %54, ptr %55, align 8, !tbaa !315
  br label %56

56:                                               ; preds = %50, %52, %53
  %57 = getelementptr inbounds %struct.goto_queue_node, ptr %0, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !340
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = tail call ptr @gimple_seq_alloc() #22
  store ptr %61, ptr %57, align 8, !tbaa !340
  br label %62

62:                                               ; preds = %60, %56
  %63 = icmp eq ptr %2, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %62
  tail call void @gimple_seq_add_seq(ptr noundef nonnull %57, ptr noundef nonnull %2) #22
  br label %65

65:                                               ; preds = %64, %62
  %66 = tail call ptr @gimple_build_goto(ptr noundef %1) #22
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull %57, ptr noundef %66) #22
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @do_goto_redirection(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !prof !51 {
  %5 = getelementptr inbounds %struct.goto_queue_node, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !336
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 795, ptr noundef nonnull @.str.1) #22
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.goto_queue_node, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !340
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call ptr @gimple_seq_alloc() #22
  store ptr %14, ptr %10, align 8, !tbaa !340
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.leh_tf_state, ptr %3, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !313
  %18 = getelementptr inbounds %struct.goto_queue_node, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !308
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.VEC_tree_base, ptr %17, i64 0, i32 2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = tail call ptr @gimple_build_goto(ptr noundef %22) #22
  %24 = getelementptr inbounds %struct.goto_queue_node, ptr %0, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !315
  %25 = icmp eq ptr %2, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  tail call void @gimple_seq_add_seq(ptr noundef nonnull %10, ptr noundef nonnull %2) #22
  br label %27

27:                                               ; preds = %26, %15
  %28 = tail call ptr @gimple_build_goto(ptr noundef %1) #22
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull %10, ptr noundef %28) #22
  ret void
}

declare ptr @gimple_build_goto(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_seq_alloc() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @replace_goto_queue_stmt_list(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !51 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !176, !noalias !341
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  store ptr %8, ptr %3, align 8, !tbaa !222, !alias.scope !341
  %9 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %3, i64 0, i32 1
  store ptr %0, ptr %9, align 8, !tbaa !344, !alias.scope !341
  %10 = icmp eq ptr %8, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %8, align 8, !tbaa !206, !noalias !341
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !63, !noalias !341
  br label %17

17:                                               ; preds = %7, %11, %14
  %18 = phi ptr [ %16, %14 ], [ null, %11 ], [ null, %7 ]
  %19 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %3, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !345, !alias.scope !341
  %20 = load ptr, ptr %3, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %86, label %22

22:                                               ; preds = %17, %83
  %23 = phi ptr [ %84, %83 ], [ %20, %17 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !206
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 255
  %27 = trunc i32 %25 to i8
  switch i8 %27, label %79 [
    i8 3, label %28
    i8 9, label %28
    i8 1, label %33
    i8 17, label %68
    i8 11, label %73
    i8 12, label %76
  ]

28:                                               ; preds = %22, %22
  %29 = call fastcc ptr @find_goto_replacement(ptr noundef %1, ptr nonnull %24)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %79, label %31

31:                                               ; preds = %28
  %32 = call ptr @gimple_seq_copy(ptr noundef nonnull %29) #22
  call void @gsi_insert_seq_before(ptr noundef nonnull %3, ptr noundef %32, i32 noundef 1) #22
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 0) #22
  br label %83

33:                                               ; preds = %22
  %34 = add nsw i32 %26, -10
  %35 = icmp ult i32 %34, -9
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  %37 = zext nneg i32 %26 to i64
  %38 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !67
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !134
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %45

45:                                               ; preds = %44, %36
  %46 = getelementptr inbounds i8, ptr %24, i64 %42
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  br label %48

48:                                               ; preds = %33, %45
  %49 = phi ptr [ %47, %45 ], [ null, %33 ]
  call fastcc void @replace_goto_queue_cond_clause(ptr noundef %49, ptr noundef %1, ptr noundef nonnull %3)
  %50 = load i32, ptr %24, align 8
  %51 = and i32 %50, 255
  %52 = add nsw i32 %51, -10
  %53 = icmp ult i32 %52, -9
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = zext nneg i32 %51 to i64
  %56 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !67
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !134
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %63

63:                                               ; preds = %62, %54
  %64 = getelementptr inbounds i8, ptr %24, i64 %60
  %65 = getelementptr inbounds ptr, ptr %64, i64 3
  br label %66

66:                                               ; preds = %48, %63
  %67 = phi ptr [ %65, %63 ], [ null, %48 ]
  call fastcc void @replace_goto_queue_cond_clause(ptr noundef %67, ptr noundef %1, ptr noundef nonnull %3)
  br label %79

68:                                               ; preds = %22
  %69 = getelementptr inbounds %struct.gimple_statement_try, ptr %24, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !63
  call fastcc void @replace_goto_queue_stmt_list(ptr noundef %70, ptr noundef %1)
  %71 = getelementptr inbounds %struct.gimple_statement_try, ptr %24, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !63
  call fastcc void @replace_goto_queue_stmt_list(ptr noundef %72, ptr noundef %1)
  br label %79

73:                                               ; preds = %22
  %74 = getelementptr inbounds %struct.gimple_statement_catch, ptr %24, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !63
  call fastcc void @replace_goto_queue_stmt_list(ptr noundef %75, ptr noundef %1)
  br label %79

76:                                               ; preds = %22
  %77 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %24, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !63
  call fastcc void @replace_goto_queue_stmt_list(ptr noundef %78, ptr noundef %1)
  br label %79

79:                                               ; preds = %28, %76, %73, %68, %66, %22
  %80 = load ptr, ptr %3, align 8, !tbaa !222
  %81 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !210
  store ptr %82, ptr %3, align 8, !tbaa !222
  br label %83

83:                                               ; preds = %31, %79
  %84 = load ptr, ptr %3, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %22, !llvm.loop !346

86:                                               ; preds = %83, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @find_goto_replacement(ptr nocapture noundef %0, ptr %1) unnamed_addr #10 !prof !51 {
  %3 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 7
  %4 = load i64, ptr %3, align 8, !tbaa !307
  %5 = icmp ult i64 %4, 20
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %62, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !306
  %11 = trunc i64 %4 to i32
  br label %16

12:                                               ; preds = %16
  %13 = add i32 %18, 1
  %14 = zext i32 %13 to i64
  %15 = icmp ult i32 %13, %11
  br i1 %15, label %16, label %62, !llvm.loop !347

16:                                               ; preds = %8, %12
  %17 = phi i64 [ 0, %8 ], [ %14, %12 ]
  %18 = phi i32 [ 0, %8 ], [ %13, %12 ]
  %19 = getelementptr inbounds %struct.goto_queue_node, ptr %10, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %12

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.goto_queue_node, ptr %10, i64 %17, i32 1
  br label %59

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !325
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = tail call ptr @pointer_map_create() #22
  store ptr %29, ptr %25, align 8, !tbaa !325
  %30 = load i64, ptr %3, align 8, !tbaa !307
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 5
  br label %34

34:                                               ; preds = %32, %45
  %35 = phi i64 [ 0, %32 ], [ %49, %45 ]
  %36 = phi i32 [ 0, %32 ], [ %48, %45 ]
  %37 = load ptr, ptr %25, align 8, !tbaa !325
  %38 = load ptr, ptr %33, align 8, !tbaa !306
  %39 = getelementptr inbounds %struct.goto_queue_node, ptr %38, i64 %35
  %40 = load ptr, ptr %39, align 8, !tbaa !63
  %41 = tail call ptr @pointer_map_insert(ptr noundef %37, ptr noundef %40) #22
  %42 = load ptr, ptr %41, align 8, !tbaa !52
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 451, ptr noundef nonnull @.str.1) #22
  br label %45

45:                                               ; preds = %34, %44
  %46 = load ptr, ptr %33, align 8, !tbaa !306
  %47 = getelementptr inbounds %struct.goto_queue_node, ptr %46, i64 %35
  store ptr %47, ptr %41, align 8, !tbaa !52
  %48 = add i32 %36, 1
  %49 = zext i32 %48 to i64
  %50 = load i64, ptr %3, align 8, !tbaa !307
  %51 = icmp ugt i64 %50, %49
  br i1 %51, label %34, label %52, !llvm.loop !348

52:                                               ; preds = %45, %28, %24
  %53 = load ptr, ptr %25, align 8, !tbaa !325
  %54 = tail call ptr @pointer_map_contains(ptr noundef %53, ptr noundef %1) #22
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %54, align 8, !tbaa !52
  %58 = getelementptr inbounds %struct.goto_queue_node, ptr %57, i64 0, i32 1
  br label %59

59:                                               ; preds = %22, %56
  %60 = phi ptr [ %58, %56 ], [ %23, %22 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !340
  br label %62

62:                                               ; preds = %12, %59, %6, %52
  %63 = phi ptr [ null, %52 ], [ null, %6 ], [ %61, %59 ], [ null, %12 ]
  ret ptr %63
}

declare ptr @gimple_seq_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @replace_goto_queue_cond_clause(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #10 !prof !51 {
  %4 = load ptr, ptr %2, align 1
  %5 = load ptr, ptr %4, align 8, !tbaa !206
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !63
  %8 = tail call fastcc ptr @find_goto_replacement(ptr noundef %1, ptr %0)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %45, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %8, align 8, !tbaa !176
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gimple_seq_d, ptr %8, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !166
  %16 = icmp eq ptr %11, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = load ptr, ptr %11, align 8, !tbaa !206
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 255
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load i32, ptr %18, align 8
  %24 = and i32 %23, 255
  %25 = add nsw i32 %24, -10
  %26 = icmp ult i32 %25, -9
  br i1 %26, label %39, label %27

27:                                               ; preds = %22
  %28 = zext nneg i32 %24 to i64
  %29 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !67
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !134
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %36

36:                                               ; preds = %35, %27
  %37 = getelementptr inbounds i8, ptr %18, i64 %33
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  br label %39

39:                                               ; preds = %22, %36
  %40 = phi ptr [ %38, %36 ], [ null, %22 ]
  store ptr %40, ptr %0, align 8, !tbaa !52
  br label %45

41:                                               ; preds = %10, %17, %13
  %42 = tail call ptr @create_artificial_label(i32 noundef %7) #22
  store ptr %42, ptr %0, align 8, !tbaa !52
  %43 = tail call ptr @gimple_build_label(ptr noundef %42) #22
  tail call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %43, i32 noundef 2) #22
  %44 = tail call ptr @gimple_seq_copy(ptr noundef nonnull %8) #22
  tail call void @gsi_insert_seq_after(ptr noundef nonnull %2, ptr noundef %44, i32 noundef 2) #22
  br label %45

45:                                               ; preds = %3, %41, %39
  ret void
}

declare ptr @pointer_map_create() local_unnamed_addr #3

declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @count_insns_seq(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @lower_try_finally_fallthru_label(ptr nocapture noundef %0) unnamed_addr #10 !prof !51 {
  %2 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !314
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !299
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !63
  %9 = tail call ptr @create_artificial_label(i32 noundef %8) #22
  store ptr %9, ptr %2, align 8, !tbaa !314
  %10 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !301
  %12 = getelementptr inbounds %struct.leh_state, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !295
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %5
  %16 = load ptr, ptr %13, align 8, !tbaa !299
  tail call fastcc void @record_in_finally_tree(ptr %9, ptr noundef %16)
  br label %17

17:                                               ; preds = %5, %15, %1
  %18 = phi ptr [ %3, %1 ], [ %9, %15 ], [ %9, %5 ]
  ret ptr %18
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sort_case_labels(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_switch_vec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_eh_region_try(ptr noundef) local_unnamed_addr #3

declare ptr @gen_eh_region_catch(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @frob_into_branch_around(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !51 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  store ptr %9, ptr %4, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  store ptr %11, ptr %5, align 8, !tbaa !52
  %12 = icmp eq ptr %1, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  tail call fastcc void @emit_post_landing_pad(ptr noundef nonnull %1)
  br label %14

14:                                               ; preds = %13, %3
  %15 = load ptr, ptr %4, align 8, !tbaa !52
  %16 = tail call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %15) #22
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = icmp eq ptr %2, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = tail call ptr @create_artificial_label(i32 noundef %7) #22
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %2, %18 ], [ %21, %20 ]
  %24 = tail call ptr @gimple_build_goto(ptr noundef %23) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %24) #22
  br label %25

25:                                               ; preds = %22, %14
  %26 = phi ptr [ %23, %22 ], [ %2, %14 ]
  %27 = load ptr, ptr %4, align 8, !tbaa !52
  call void @gimple_seq_add_seq(ptr noundef nonnull @eh_seq, ptr noundef %27) #22
  %28 = icmp eq ptr %26, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call ptr @gimple_build_label(ptr noundef nonnull %26) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %30) #22
  br label %31

31:                                               ; preds = %29, %25
  %32 = load ptr, ptr %5, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret ptr %32
}

declare ptr @gimple_build_eh_dispatch(i32 noundef) local_unnamed_addr #3

declare ptr @gen_eh_region_allowed(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_eh_region_must_not_throw(ptr noundef) local_unnamed_addr #3

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare void @remove_eh_landing_pad(ptr noundef) local_unnamed_addr #3

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @refactor_eh_r(ptr noundef readonly %0) unnamed_addr #10 !prof !51 {
  %2 = alloca ptr, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %300
  %5 = phi ptr [ %301, %300 ], [ %0, %1 ]
  %6 = phi ptr [ %15, %300 ], [ null, %1 ]
  %7 = load ptr, ptr %5, align 8, !tbaa !52
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi ptr [ null, %1 ], [ %7, %4 ]
  %10 = phi ptr [ null, %1 ], [ %6, %4 ]
  %11 = icmp eq ptr %9, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %9, align 8, !tbaa !206
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  %16 = icmp ne ptr %10, null
  %17 = icmp ne ptr %15, null
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %284

19:                                               ; preds = %14
  %20 = load i32, ptr %10, align 8
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, 17
  br i1 %22, label %23, label %284

23:                                               ; preds = %19
  %24 = load i32, ptr %15, align 8
  %25 = and i32 %20, 196608
  %26 = icmp eq i32 %25, 131072
  %27 = and i32 %24, 196863
  %28 = icmp eq i32 %27, 131089
  %29 = and i1 %26, %28
  br i1 %29, label %30, label %284

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.gimple_statement_try, ptr %10, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !63
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 8, !tbaa !176, !noalias !349
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi ptr [ %35, %34 ], [ null, %30 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %37, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !210
  %42 = icmp eq ptr %41, null
  %43 = zext i1 %42 to i8
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i8 [ %43, %39 ], [ 0, %36 ]
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %284, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %37, align 8, !tbaa !206
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 196863
  %51 = icmp eq i32 %50, 65553
  br i1 %51, label %52, label %284

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.gimple_statement_try, ptr %48, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !63
  %55 = getelementptr inbounds %struct.gimple_statement_try, ptr %15, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !63
  %57 = icmp eq ptr %54, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %54, align 8, !tbaa !176, !noalias !352
  br label %60

60:                                               ; preds = %58, %52
  %61 = phi ptr [ %59, %58 ], [ null, %52 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %61, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !210
  %66 = icmp eq ptr %65, null
  %67 = zext i1 %66 to i8
  br label %68

68:                                               ; preds = %63, %60
  %69 = phi i8 [ %67, %63 ], [ 0, %60 ]
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %284, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %61, align 8, !tbaa !206
  %73 = icmp eq ptr %56, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %56, align 8, !tbaa !176, !noalias !355
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi ptr [ %75, %74 ], [ null, %71 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %77, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !210
  %82 = icmp eq ptr %81, null
  %83 = zext i1 %82 to i8
  br label %84

84:                                               ; preds = %79, %76
  %85 = phi i8 [ %83, %79 ], [ 0, %76 ]
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %284, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %77, align 8, !tbaa !206
  %89 = load i32, ptr %72, align 8
  %90 = and i32 %89, 255
  %91 = icmp eq i32 %90, 8
  br i1 %91, label %92, label %284

92:                                               ; preds = %87
  %93 = load i32, ptr %88, align 8
  %94 = and i32 %93, 255
  %95 = icmp eq i32 %94, 8
  br i1 %95, label %96, label %284

96:                                               ; preds = %92
  %97 = zext nneg i32 %90 to i64
  %98 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !67
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !134
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %105

105:                                              ; preds = %104, %96
  %106 = getelementptr inbounds i8, ptr %72, i64 %102
  %107 = load ptr, ptr %106, align 8, !tbaa !52
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %284

109:                                              ; preds = %105
  %110 = load i32, ptr %88, align 8
  %111 = and i32 %110, 255
  %112 = add nsw i32 %111, -10
  %113 = icmp ult i32 %112, -9
  br i1 %113, label %126, label %114

114:                                              ; preds = %109
  %115 = zext nneg i32 %111 to i64
  %116 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !67
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !134
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %123

123:                                              ; preds = %122, %114
  %124 = getelementptr inbounds i8, ptr %88, i64 %120
  %125 = load ptr, ptr %124, align 8, !tbaa !52
  br label %126

126:                                              ; preds = %123, %109
  %127 = phi ptr [ %125, %123 ], [ null, %109 ]
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %284

129:                                              ; preds = %126
  %130 = load i32, ptr %72, align 8
  %131 = and i32 %130, 255
  %132 = add nsw i32 %131, -10
  %133 = icmp ult i32 %132, -9
  br i1 %133, label %148, label %134

134:                                              ; preds = %129
  %135 = zext nneg i32 %131 to i64
  %136 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !67
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %138
  %140 = load i64, ptr %139, align 8, !tbaa !134
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %143

143:                                              ; preds = %142, %134
  %144 = getelementptr inbounds i8, ptr %72, i64 %140
  %145 = getelementptr inbounds ptr, ptr %144, i64 2
  %146 = load ptr, ptr %145, align 8, !tbaa !52
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %284

148:                                              ; preds = %143, %129
  %149 = load i32, ptr %88, align 8
  %150 = and i32 %149, 255
  %151 = add nsw i32 %150, -10
  %152 = icmp ult i32 %151, -9
  br i1 %152, label %167, label %153

153:                                              ; preds = %148
  %154 = zext nneg i32 %150 to i64
  %155 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !67
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %157
  %159 = load i64, ptr %158, align 8, !tbaa !134
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %162

162:                                              ; preds = %161, %153
  %163 = getelementptr inbounds i8, ptr %88, i64 %159
  %164 = getelementptr inbounds ptr, ptr %163, i64 2
  %165 = load ptr, ptr %164, align 8, !tbaa !52
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %284

167:                                              ; preds = %162, %148
  %168 = load i32, ptr %72, align 8
  %169 = and i32 %168, 255
  %170 = add nsw i32 %169, -10
  %171 = icmp ult i32 %170, -9
  br i1 %171, label %185, label %172

172:                                              ; preds = %167
  %173 = zext nneg i32 %169 to i64
  %174 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !67
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %176
  %178 = load i64, ptr %177, align 8, !tbaa !134
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %181

181:                                              ; preds = %180, %172
  %182 = getelementptr inbounds i8, ptr %72, i64 %178
  %183 = getelementptr inbounds ptr, ptr %182, i64 1
  %184 = load ptr, ptr %183, align 8, !tbaa !52
  br label %185

185:                                              ; preds = %181, %167
  %186 = phi ptr [ %184, %181 ], [ null, %167 ]
  %187 = load i32, ptr %88, align 8
  %188 = and i32 %187, 255
  %189 = add nsw i32 %188, -10
  %190 = icmp ult i32 %189, -9
  br i1 %190, label %204, label %191

191:                                              ; preds = %185
  %192 = zext nneg i32 %188 to i64
  %193 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !67
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %195
  %197 = load i64, ptr %196, align 8, !tbaa !134
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %200

200:                                              ; preds = %199, %191
  %201 = getelementptr inbounds i8, ptr %88, i64 %197
  %202 = getelementptr inbounds ptr, ptr %201, i64 1
  %203 = load ptr, ptr %202, align 8, !tbaa !52
  br label %204

204:                                              ; preds = %200, %185
  %205 = phi ptr [ %203, %200 ], [ null, %185 ]
  %206 = call i32 @operand_equal_p(ptr noundef %186, ptr noundef %205, i32 noundef 0) #22
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %284, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.gimple_statement_base, ptr %72, i64 0, i32 3
  %210 = load i32, ptr %209, align 4, !tbaa !63
  %211 = getelementptr inbounds %struct.gimple_statement_base, ptr %88, i64 0, i32 3
  %212 = load i32, ptr %211, align 4, !tbaa !63
  %213 = icmp eq i32 %210, %212
  br i1 %213, label %214, label %284

214:                                              ; preds = %208
  %215 = load i32, ptr %209, align 4, !tbaa !63
  %216 = icmp eq i32 %215, 3
  br i1 %216, label %269, label %223

217:                                              ; preds = %265
  %218 = add nuw nsw i64 %224, 1
  %219 = load i32, ptr %209, align 4, !tbaa !63
  %220 = add i32 %219, -3
  %221 = zext i32 %220 to i64
  %222 = icmp ult i64 %218, %221
  br i1 %222, label %223, label %269, !llvm.loop !358

223:                                              ; preds = %214, %217
  %224 = phi i64 [ %218, %217 ], [ 0, %214 ]
  %225 = trunc i64 %224 to i32
  %226 = add i32 %225, 3
  %227 = load i32, ptr %72, align 8
  %228 = and i32 %227, 255
  %229 = add nsw i32 %228, -10
  %230 = icmp ult i32 %229, -9
  br i1 %230, label %245, label %231

231:                                              ; preds = %223
  %232 = zext nneg i32 %228 to i64
  %233 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !67
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %235
  %237 = load i64, ptr %236, align 8, !tbaa !134
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %231
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %240

240:                                              ; preds = %239, %231
  %241 = getelementptr inbounds i8, ptr %72, i64 %237
  %242 = zext i32 %226 to i64
  %243 = getelementptr inbounds ptr, ptr %241, i64 %242
  %244 = load ptr, ptr %243, align 8, !tbaa !52
  br label %245

245:                                              ; preds = %240, %223
  %246 = phi ptr [ %244, %240 ], [ null, %223 ]
  %247 = load i32, ptr %88, align 8
  %248 = and i32 %247, 255
  %249 = add nsw i32 %248, -10
  %250 = icmp ult i32 %249, -9
  br i1 %250, label %265, label %251

251:                                              ; preds = %245
  %252 = zext nneg i32 %248 to i64
  %253 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !67
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %255
  %257 = load i64, ptr %256, align 8, !tbaa !134
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %251
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %260

260:                                              ; preds = %259, %251
  %261 = getelementptr inbounds i8, ptr %88, i64 %257
  %262 = zext i32 %226 to i64
  %263 = getelementptr inbounds ptr, ptr %261, i64 %262
  %264 = load ptr, ptr %263, align 8, !tbaa !52
  br label %265

265:                                              ; preds = %260, %245
  %266 = phi ptr [ %264, %260 ], [ null, %245 ]
  %267 = call i32 @operand_equal_p(ptr noundef %246, ptr noundef %266, i32 noundef 0) #22
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %284, label %217

269:                                              ; preds = %217, %214
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %270 = getelementptr inbounds %struct.gimple_statement_try, ptr %48, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !63
  store ptr %271, ptr %2, align 8, !tbaa !52
  store ptr %271, ptr %31, align 8, !tbaa !63
  %272 = load i32, ptr %10, align 8
  %273 = and i32 %272, 196608
  %274 = icmp eq i32 %273, 65536
  br i1 %274, label %278, label %275

275:                                              ; preds = %269
  %276 = and i32 %272, 65535
  %277 = or disjoint i32 %276, 65536
  store i32 %277, ptr %10, align 8
  br label %278

278:                                              ; preds = %275, %269
  %279 = load ptr, ptr %2, align 8, !tbaa !52
  %280 = call ptr @copy_gimple_seq_and_replace_locals(ptr noundef %279) #22
  store ptr %280, ptr %2, align 8, !tbaa !52
  %281 = getelementptr inbounds %struct.gimple_statement_try, ptr %15, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !63
  call void @gimple_seq_add_seq(ptr noundef nonnull %2, ptr noundef %282) #22
  %283 = load ptr, ptr %2, align 8, !tbaa !52
  store ptr %283, ptr %281, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  br label %284

284:                                              ; preds = %265, %204, %278, %47, %44, %87, %92, %105, %126, %143, %162, %208, %84, %68, %23, %19, %14
  br i1 %16, label %285, label %299

285:                                              ; preds = %284
  %286 = load i32, ptr %10, align 8
  %287 = trunc i32 %286 to i8
  switch i8 %287, label %299 [
    i8 17, label %288
    i8 11, label %292
    i8 12, label %294
  ]

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.gimple_statement_try, ptr %10, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !63
  call fastcc void @refactor_eh_r(ptr noundef %290)
  %291 = getelementptr inbounds %struct.gimple_statement_try, ptr %10, i64 0, i32 2
  br label %296

292:                                              ; preds = %285
  %293 = getelementptr inbounds %struct.gimple_statement_catch, ptr %10, i64 0, i32 2
  br label %296

294:                                              ; preds = %285
  %295 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %10, i64 0, i32 2
  br label %296

296:                                              ; preds = %294, %292, %288
  %297 = phi ptr [ %291, %288 ], [ %293, %292 ], [ %295, %294 ]
  %298 = load ptr, ptr %297, align 8, !tbaa !63
  call fastcc void @refactor_eh_r(ptr noundef %298)
  br label %299

299:                                              ; preds = %296, %285, %284
  br i1 %17, label %300, label %302

300:                                              ; preds = %299
  %301 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %9, i64 0, i32 2
  br label %4, !llvm.loop !359

302:                                              ; preds = %299
  ret void
}

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare ptr @get_eh_region_from_lp_number(i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare void @remove_edge(ptr noundef) local_unnamed_addr #3

declare ptr @create_empty_bb(ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @assign_filter_values() local_unnamed_addr #3

declare zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #3

declare ptr @pointer_set_create() local_unnamed_addr #3

declare i32 @pointer_set_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @dump_eh_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dump_sbitmap_file(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_eh_handler(ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @redirect_edge_pred(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !51 {
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !230
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #22
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %77

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %15) #22
  %17 = icmp eq i8 %16, 0
  %18 = xor i1 %9, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !63
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 4, i64 0
  br label %25

25:                                               ; preds = %19, %13, %23
  %26 = phi i32 [ %21, %23 ], [ 0, %13 ], [ %21, %19 ]
  %27 = phi i32 [ 1, %23 ], [ 0, %13 ], [ 0, %19 ]
  %28 = phi ptr [ %4, %23 ], [ null, %13 ], [ %4, %19 ]
  %29 = phi i1 [ true, %23 ], [ false, %13 ], [ false, %19 ]
  %30 = phi i8 [ 0, %23 ], [ 1, %13 ], [ 1, %19 ]
  %31 = phi ptr [ %24, %23 ], [ null, %13 ], [ null, %19 ]
  br i1 %29, label %32, label %188

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 1
  br label %34

34:                                               ; preds = %32, %72
  %35 = phi ptr [ %31, %32 ], [ %75, %72 ]
  %36 = phi ptr [ %0, %32 ], [ %62, %72 ]
  %37 = phi i8 [ %30, %32 ], [ %74, %72 ]
  %38 = phi i32 [ %27, %32 ], [ %73, %72 ]
  %39 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !230
  %41 = load ptr, ptr %40, align 8, !tbaa !52
  %42 = icmp ne ptr %41, %7
  %43 = icmp eq ptr %35, %0
  %44 = or i1 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !234
  %48 = icmp eq ptr %47, %35
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %35, align 8, !tbaa !237
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !234
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !234
  %56 = load ptr, ptr %53, align 8, !tbaa !234
  store ptr %50, ptr %56, align 8, !tbaa !237
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %57

57:                                               ; preds = %52, %49
  store ptr %36, ptr %35, align 8, !tbaa !237
  %58 = load ptr, ptr %46, align 8, !tbaa !234
  %59 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !234
  %60 = load ptr, ptr %46, align 8, !tbaa !234
  store ptr %35, ptr %60, align 8, !tbaa !237
  store ptr %35, ptr %46, align 8, !tbaa !234
  br label %61

61:                                               ; preds = %34, %45, %57
  %62 = phi ptr [ %36, %34 ], [ %35, %57 ], [ %35, %45 ]
  %63 = icmp slt i32 %38, %26
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = add nsw i32 %38, 1
  %66 = load i32, ptr %33, align 8, !tbaa !63
  %67 = icmp ult i32 %66, %38
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3103, ptr noundef nonnull @.str.1) #22
  br label %69

69:                                               ; preds = %68, %64
  %70 = zext i32 %38 to i64
  %71 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 4, i64 %70
  br label %72

72:                                               ; preds = %61, %69
  %73 = phi i32 [ %65, %69 ], [ %38, %61 ]
  %74 = phi i8 [ %37, %69 ], [ 1, %61 ]
  %75 = phi ptr [ %71, %69 ], [ null, %61 ]
  %76 = icmp eq i8 %74, 0
  br i1 %76, label %34, label %188, !llvm.loop !360

77:                                               ; preds = %2
  br i1 %9, label %147, label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %4, align 8
  %80 = and i32 %79, 255
  %81 = add nsw i32 %80, -10
  %82 = icmp ult i32 %81, -9
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !63
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi ptr [ %85, %83 ], [ null, %78 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  %90 = and i32 %79, 254
  %91 = add nsw i32 %90, -10
  %92 = icmp ult i32 %91, -4
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !63
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %87, align 8, !tbaa !361
  br label %99

99:                                               ; preds = %97, %93, %89, %86
  %100 = phi ptr [ %87, %86 ], [ %87, %89 ], [ %87, %93 ], [ %98, %97 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.use_optype_d, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %100, align 8, !tbaa !361
  br label %105

105:                                              ; preds = %99, %102
  %106 = phi ptr [ %104, %102 ], [ %100, %99 ]
  %107 = phi i8 [ 0, %102 ], [ 1, %99 ]
  %108 = phi ptr [ %103, %102 ], [ null, %99 ]
  br i1 %101, label %188, label %109

109:                                              ; preds = %105, %142
  %110 = phi ptr [ %145, %142 ], [ %108, %105 ]
  %111 = phi ptr [ %137, %142 ], [ %0, %105 ]
  %112 = phi i8 [ %144, %142 ], [ %107, %105 ]
  %113 = phi ptr [ %143, %142 ], [ %106, %105 ]
  %114 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !230
  %116 = load ptr, ptr %115, align 8, !tbaa !52
  %117 = icmp ne ptr %116, %7
  %118 = icmp eq ptr %110, %0
  %119 = or i1 %117, %118
  br i1 %119, label %136, label %120

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !234
  %123 = icmp eq ptr %122, %110
  br i1 %123, label %136, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %110, align 8, !tbaa !237
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !234
  %130 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %125, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !234
  %131 = load ptr, ptr %128, align 8, !tbaa !234
  store ptr %125, ptr %131, align 8, !tbaa !237
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  br label %132

132:                                              ; preds = %127, %124
  store ptr %111, ptr %110, align 8, !tbaa !237
  %133 = load ptr, ptr %121, align 8, !tbaa !234
  %134 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !234
  %135 = load ptr, ptr %121, align 8, !tbaa !234
  store ptr %110, ptr %135, align 8, !tbaa !237
  store ptr %110, ptr %121, align 8, !tbaa !234
  br label %136

136:                                              ; preds = %132, %120, %109
  %137 = phi ptr [ %111, %109 ], [ %110, %132 ], [ %110, %120 ]
  %138 = icmp eq ptr %113, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.use_optype_d, ptr %113, i64 0, i32 1
  %141 = load ptr, ptr %113, align 8, !tbaa !361
  br label %142

142:                                              ; preds = %136, %139
  %143 = phi ptr [ %141, %139 ], [ %113, %136 ]
  %144 = phi i8 [ %112, %139 ], [ 1, %136 ]
  %145 = phi ptr [ %140, %139 ], [ null, %136 ]
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %109, label %188, !llvm.loop !363

147:                                              ; preds = %77
  %148 = and i32 %10, 254
  %149 = add nsw i32 %148, -10
  %150 = icmp ult i32 %149, -4
  br i1 %150, label %162, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !63
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !364
  %158 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %159 = icmp eq ptr %157, %158
  %160 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1
  %161 = select i1 %159, ptr %160, ptr null
  br label %162

162:                                              ; preds = %147, %151, %155
  %163 = phi ptr [ null, %147 ], [ null, %151 ], [ %161, %155 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %188, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !230
  %168 = load ptr, ptr %167, align 8, !tbaa !52
  %169 = icmp ne ptr %168, %7
  %170 = icmp eq ptr %163, %0
  %171 = or i1 %170, %169
  br i1 %171, label %188, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !234
  %175 = icmp eq ptr %174, %163
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %163, align 8, !tbaa !237
  %178 = icmp eq ptr %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !234
  %182 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %177, i64 0, i32 1
  store ptr %181, ptr %182, align 8, !tbaa !234
  %183 = load ptr, ptr %180, align 8, !tbaa !234
  store ptr %177, ptr %183, align 8, !tbaa !237
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  br label %184

184:                                              ; preds = %179, %176
  store ptr %0, ptr %163, align 8, !tbaa !237
  %185 = load ptr, ptr %173, align 8, !tbaa !234
  %186 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !234
  %187 = load ptr, ptr %173, align 8, !tbaa !234
  store ptr %163, ptr %187, align 8, !tbaa !237
  store ptr %163, ptr %173, align 8, !tbaa !234
  br label %188

188:                                              ; preds = %142, %72, %105, %25, %184, %172, %165, %162
  %189 = phi ptr [ %0, %165 ], [ %0, %162 ], [ %163, %184 ], [ %163, %172 ], [ %0, %25 ], [ %0, %105 ], [ %62, %72 ], [ %137, %142 ]
  %190 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !237
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !234
  %196 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !234
  %197 = load ptr, ptr %194, align 8, !tbaa !234
  store ptr %191, ptr %197, align 8, !tbaa !237
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %190, i8 0, i64 16, i1 false)
  br label %198

198:                                              ; preds = %193, %188
  store ptr %189, ptr %190, align 8, !tbaa !237
  %199 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %189, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !234
  %201 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %200, ptr %201, align 8, !tbaa !234
  %202 = load ptr, ptr %199, align 8, !tbaa !234
  store ptr %190, ptr %202, align 8, !tbaa !237
  store ptr %190, ptr %199, align 8, !tbaa !234
  ret void
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @cleanup_empty_eh_merge_phis(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #10 !prof !51 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  %9 = icmp eq ptr %1, null
  br label %10

10:                                               ; preds = %36, %4
  %11 = phi i32 [ 0, %4 ], [ %37, %36 ]
  br i1 %9, label %12, label %13

12:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 687, ptr noundef nonnull @.str.1) #22
  br label %13

13:                                               ; preds = %12, %10
  %14 = load ptr, ptr %1, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %14, align 8, !tbaa !113
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %17, %16 ], [ 0, %13 ]
  %20 = icmp eq i32 %19, %11
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = zext i32 %11 to i64
  %23 = getelementptr inbounds %struct.VEC_edge_base, ptr %14, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  br label %25

25:                                               ; preds = %18, %21
  %26 = phi ptr [ %24, %21 ], [ null, %18 ]
  br i1 %20, label %38, label %27

27:                                               ; preds = %25
  tail call void @redirect_edge_var_map_clear(ptr noundef %26) #22
  %28 = load ptr, ptr %1, align 8, !tbaa !52
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %28, align 8, !tbaa !113
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %31, %30 ], [ 0, %27 ]
  %34 = icmp ult i32 %11, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %36

36:                                               ; preds = %32, %35
  %37 = add i32 %11, 1
  br label %10, !llvm.loop !365

38:                                               ; preds = %25
  %39 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %40 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %0) #22
  %41 = load ptr, ptr %5, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %177, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 6
  br label %45

45:                                               ; preds = %43, %172
  %46 = phi ptr [ %41, %43 ], [ %175, %172 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !206
  %48 = getelementptr inbounds %struct.gimple_statement_phi, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !63
  %50 = load i32, ptr %44, align 4, !tbaa !366
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.gimple_statement_phi, ptr %47, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !63
  %54 = icmp ult i32 %53, %50
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3103, ptr noundef nonnull @.str.1) #22
  br label %56

56:                                               ; preds = %45, %55
  %57 = getelementptr inbounds %struct.gimple_statement_phi, ptr %47, i64 0, i32 4, i64 %51, i32 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !230
  %59 = load ptr, ptr %58, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %1) #22
  %60 = load ptr, ptr %6, align 8, !tbaa.struct !168
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %56, %68
  %63 = phi ptr [ %70, %68 ], [ %60, %56 ]
  %64 = load ptr, ptr %63, align 8, !tbaa !206
  %65 = getelementptr inbounds %struct.gimple_statement_phi, ptr %64, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !63
  %67 = icmp eq ptr %66, %59
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %63, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !210
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %62, !llvm.loop !367

72:                                               ; preds = %68, %62, %56
  %73 = phi ptr [ null, %56 ], [ null, %68 ], [ %64, %62 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %130, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.tree_ssa_name, ptr %59, i64 0, i32 3
  %77 = load i32, ptr %76, align 8, !tbaa !63
  %78 = call zeroext i8 @bitmap_set_bit(ptr noundef %39, i32 noundef %77) #22
  %79 = getelementptr inbounds %struct.gimple_statement_phi, ptr %73, i64 0, i32 1
  br label %80

80:                                               ; preds = %128, %75
  %81 = phi i32 [ 0, %75 ], [ %129, %128 ]
  %82 = load ptr, ptr %1, align 8, !tbaa !52
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load i32, ptr %82, align 8, !tbaa !113
  br label %86

86:                                               ; preds = %84, %80
  %87 = phi i32 [ %85, %84 ], [ 0, %80 ]
  %88 = icmp eq i32 %87, %81
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = zext i32 %81 to i64
  %91 = getelementptr inbounds %struct.VEC_edge_base, ptr %82, i64 0, i32 2, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !52
  br label %93

93:                                               ; preds = %86, %89
  %94 = phi ptr [ %92, %89 ], [ null, %86 ]
  br i1 %88, label %172, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.edge_def, ptr %94, i64 0, i32 7
  %97 = load i32, ptr %96, align 8, !tbaa !115
  %98 = and i32 %97, 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %119, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.edge_def, ptr %94, i64 0, i32 6
  %102 = load i32, ptr %101, align 4, !tbaa !366
  %103 = zext i32 %102 to i64
  %104 = load i32, ptr %79, align 8, !tbaa !63
  %105 = icmp ult i32 %104, %102
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3103, ptr noundef nonnull @.str.1) #22
  br label %107

107:                                              ; preds = %100, %106
  %108 = getelementptr inbounds %struct.gimple_statement_phi, ptr %73, i64 0, i32 4, i64 %103, i32 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !230
  %110 = load ptr, ptr %109, align 8, !tbaa !52
  %111 = load i32, ptr %101, align 4, !tbaa !366
  %112 = zext i32 %111 to i64
  %113 = load i32, ptr %79, align 8, !tbaa !63
  %114 = icmp ult i32 %113, %111
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3103, ptr noundef nonnull @.str.1) #22
  br label %116

116:                                              ; preds = %107, %115
  %117 = getelementptr inbounds %struct.gimple_statement_phi, ptr %73, i64 0, i32 4, i64 %112, i32 2
  %118 = load i32, ptr %117, align 8, !tbaa !368
  call void @redirect_edge_var_map_add(ptr noundef %94, ptr noundef %49, ptr noundef %110, i32 noundef %118) #22
  br label %119

119:                                              ; preds = %116, %95
  %120 = load ptr, ptr %1, align 8, !tbaa !52
  %121 = icmp eq ptr %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = load i32, ptr %120, align 8, !tbaa !113
  br label %124

124:                                              ; preds = %122, %119
  %125 = phi i32 [ %123, %122 ], [ 0, %119 ]
  %126 = icmp ult i32 %81, %125
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %128

128:                                              ; preds = %124, %127
  %129 = add i32 %81, 1
  br label %80, !llvm.loop !370

130:                                              ; preds = %72
  %131 = call zeroext i8 @is_gimple_reg(ptr noundef %49) #22
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.tree_ssa_name, ptr %49, i64 0, i32 3
  %135 = load i32, ptr %134, align 8, !tbaa !63
  %136 = call zeroext i8 @bitmap_set_bit(ptr noundef %40, i32 noundef %135) #22
  br label %172

137:                                              ; preds = %130
  %138 = load i32, ptr %44, align 4, !tbaa !366
  %139 = zext i32 %138 to i64
  %140 = load i32, ptr %52, align 8, !tbaa !63
  %141 = icmp ult i32 %140, %138
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3103, ptr noundef nonnull @.str.1) #22
  br label %143

143:                                              ; preds = %137, %142
  %144 = getelementptr inbounds %struct.gimple_statement_phi, ptr %47, i64 0, i32 4, i64 %139, i32 2
  %145 = load i32, ptr %144, align 8, !tbaa !368
  br label %146

146:                                              ; preds = %170, %143
  %147 = phi i32 [ 0, %143 ], [ %171, %170 ]
  %148 = load ptr, ptr %1, align 8, !tbaa !52
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = load i32, ptr %148, align 8, !tbaa !113
  br label %152

152:                                              ; preds = %150, %146
  %153 = phi i32 [ %151, %150 ], [ 0, %146 ]
  %154 = icmp eq i32 %153, %147
  br i1 %154, label %159, label %155

155:                                              ; preds = %152
  %156 = zext i32 %147 to i64
  %157 = getelementptr inbounds %struct.VEC_edge_base, ptr %148, i64 0, i32 2, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !52
  br label %159

159:                                              ; preds = %152, %155
  %160 = phi ptr [ %158, %155 ], [ null, %152 ]
  br i1 %154, label %172, label %161

161:                                              ; preds = %159
  call void @redirect_edge_var_map_add(ptr noundef %160, ptr noundef %49, ptr noundef %59, i32 noundef %145) #22
  %162 = load ptr, ptr %1, align 8, !tbaa !52
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %161
  %165 = load i32, ptr %162, align 8, !tbaa !113
  br label %166

166:                                              ; preds = %164, %161
  %167 = phi i32 [ %165, %164 ], [ 0, %161 ]
  %168 = icmp ult i32 %147, %167
  br i1 %168, label %170, label %169

169:                                              ; preds = %166
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %170

170:                                              ; preds = %166, %169
  %171 = add i32 %147, 1
  br label %146, !llvm.loop !371

172:                                              ; preds = %93, %159, %133
  %173 = load ptr, ptr %5, align 8, !tbaa !222
  %174 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %173, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !210
  store ptr %175, ptr %5, align 8, !tbaa !222
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %45, !llvm.loop !372

177:                                              ; preds = %172, %38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %1) #22
  %178 = load ptr, ptr %7, align 8, !tbaa.struct !168
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  %179 = icmp eq ptr %178, null
  br i1 %179, label %193, label %180

180:                                              ; preds = %177, %189
  %181 = phi ptr [ %191, %189 ], [ %178, %177 ]
  %182 = load ptr, ptr %181, align 8, !tbaa !206
  %183 = getelementptr inbounds %struct.gimple_statement_phi, ptr %182, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !63
  %185 = getelementptr inbounds %struct.tree_ssa_name, ptr %184, i64 0, i32 3
  %186 = load i32, ptr %185, align 8, !tbaa !63
  %187 = call i32 @bitmap_bit_p(ptr noundef %39, i32 noundef %186) #22
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %253, label %189

189:                                              ; preds = %180
  %190 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %181, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !210
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %180, !llvm.loop !373

193:                                              ; preds = %189, %177
  %194 = load ptr, ptr %40, align 8, !tbaa !374
  %195 = icmp eq ptr %194, null
  br i1 %195, label %216, label %196

196:                                              ; preds = %193
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #22
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %0) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !168
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  %197 = load ptr, ptr %5, align 8
  %198 = icmp eq ptr %197, null
  br i1 %198, label %216, label %199

199:                                              ; preds = %196, %213
  %200 = phi ptr [ %214, %213 ], [ %197, %196 ]
  %201 = load ptr, ptr %200, align 8, !tbaa !206
  %202 = getelementptr inbounds %struct.gimple_statement_phi, ptr %201, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !63
  %204 = getelementptr inbounds %struct.tree_ssa_name, ptr %203, i64 0, i32 3
  %205 = load i32, ptr %204, align 8, !tbaa !63
  %206 = call i32 @bitmap_bit_p(ptr noundef nonnull %40, i32 noundef %205) #22
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %199
  call void @mark_virtual_phi_result_for_renaming(ptr noundef %201) #22
  call void @remove_phi_node(ptr noundef nonnull %5, i8 noundef zeroext 1) #22
  br label %213

209:                                              ; preds = %199
  %210 = load ptr, ptr %5, align 8, !tbaa !222
  %211 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %210, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !210
  store ptr %212, ptr %5, align 8, !tbaa !222
  br label %213

213:                                              ; preds = %209, %208
  %214 = load ptr, ptr %5, align 8
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %199, !llvm.loop !376

216:                                              ; preds = %213, %196, %193
  br label %217

217:                                              ; preds = %216, %250
  %218 = phi i32 [ 0, %216 ], [ %251, %250 ]
  %219 = zext i32 %218 to i64
  br label %220

220:                                              ; preds = %217, %241
  br i1 %9, label %221, label %222

221:                                              ; preds = %220
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 687, ptr noundef nonnull @.str.1) #22
  br label %222

222:                                              ; preds = %221, %220
  %223 = load ptr, ptr %1, align 8, !tbaa !52
  %224 = icmp eq ptr %223, null
  br i1 %224, label %227, label %225

225:                                              ; preds = %222
  %226 = load i32, ptr %223, align 8, !tbaa !113
  br label %227

227:                                              ; preds = %225, %222
  %228 = phi i32 [ %226, %225 ], [ 0, %222 ]
  %229 = icmp eq i32 %228, %218
  br i1 %229, label %233, label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.VEC_edge_base, ptr %223, i64 0, i32 2, i64 %219
  %232 = load ptr, ptr %231, align 8, !tbaa !52
  br label %233

233:                                              ; preds = %227, %230
  %234 = phi ptr [ %232, %230 ], [ null, %227 ]
  %235 = icmp eq ptr %234, null
  br i1 %235, label %252, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.edge_def, ptr %234, i64 0, i32 7
  %238 = load i32, ptr %237, align 8, !tbaa !115
  %239 = and i32 %238, 8
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %236
  call fastcc void @redirect_eh_edge_1(ptr noundef nonnull %234, ptr noundef %0, i8 noundef zeroext %3)
  call void @redirect_edge_succ(ptr noundef nonnull %234, ptr noundef %0) #22
  call void @flush_pending_stmts(ptr noundef nonnull %234) #22
  br label %220, !llvm.loop !377

242:                                              ; preds = %236
  %243 = icmp eq ptr %223, null
  br i1 %243, label %246, label %244

244:                                              ; preds = %242
  %245 = load i32, ptr %223, align 8, !tbaa !113
  br label %246

246:                                              ; preds = %244, %242
  %247 = phi i32 [ %245, %244 ], [ 0, %242 ]
  %248 = icmp ult i32 %218, %247
  br i1 %248, label %250, label %249

249:                                              ; preds = %246
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %250

250:                                              ; preds = %246, %249
  %251 = add i32 %218, 1
  br label %217, !llvm.loop !377

252:                                              ; preds = %233
  call void @bitmap_obstack_free(ptr noundef %39) #22
  call void @bitmap_obstack_free(ptr noundef nonnull %40) #22
  br label %280

253:                                              ; preds = %180, %277
  %254 = phi i32 [ %278, %277 ], [ 0, %180 ]
  %255 = load ptr, ptr %1, align 8, !tbaa !52
  %256 = icmp eq ptr %255, null
  br i1 %256, label %259, label %257

257:                                              ; preds = %253
  %258 = load i32, ptr %255, align 8, !tbaa !113
  br label %259

259:                                              ; preds = %257, %253
  %260 = phi i32 [ %258, %257 ], [ 0, %253 ]
  %261 = icmp eq i32 %260, %254
  br i1 %261, label %266, label %262

262:                                              ; preds = %259
  %263 = zext i32 %254 to i64
  %264 = getelementptr inbounds %struct.VEC_edge_base, ptr %255, i64 0, i32 2, i64 %263
  %265 = load ptr, ptr %264, align 8, !tbaa !52
  br label %266

266:                                              ; preds = %259, %262
  %267 = phi ptr [ %265, %262 ], [ null, %259 ]
  br i1 %261, label %279, label %268

268:                                              ; preds = %266
  call void @redirect_edge_var_map_clear(ptr noundef %267) #22
  %269 = load ptr, ptr %1, align 8, !tbaa !52
  %270 = icmp eq ptr %269, null
  br i1 %270, label %273, label %271

271:                                              ; preds = %268
  %272 = load i32, ptr %269, align 8, !tbaa !113
  br label %273

273:                                              ; preds = %271, %268
  %274 = phi i32 [ %272, %271 ], [ 0, %268 ]
  %275 = icmp ult i32 %254, %274
  br i1 %275, label %277, label %276

276:                                              ; preds = %273
  call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %277

277:                                              ; preds = %273, %276
  %278 = add i32 %254, 1
  br label %253, !llvm.loop !378

279:                                              ; preds = %266
  call void @bitmap_obstack_free(ptr noundef %39) #22
  call void @bitmap_obstack_free(ptr noundef %40) #22
  br label %280

280:                                              ; preds = %279, %252
  %281 = phi i8 [ 0, %279 ], [ 1, %252 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  ret i8 %281
}

declare void @redirect_edge_var_map_clear(ptr noundef) local_unnamed_addr #3

declare void @redirect_edge_var_map_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @mark_virtual_phi_result_for_renaming(ptr noundef) local_unnamed_addr #3

declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @flush_pending_stmts(ptr noundef) local_unnamed_addr #3

declare void @mark_virtual_ops_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!50}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @remove_stmt_from_eh_lp, ptr @get_eh_throw_stmt_table, i64 443031}
!36 = !{ptr @lower_eh_constructs, ptr @gimple_body, i64 80}
!37 = !{ptr @lower_eh_constructs, ptr @htab_create, i64 40}
!38 = !{ptr @lower_eh_constructs, ptr @bitmap_obstack_alloc_stat, i64 40}
!39 = !{ptr @lower_eh_constructs, ptr @collect_finally_tree_1, i64 40}
!40 = !{ptr @lower_eh_constructs, ptr @lower_eh_constructs_1, i64 40}
!41 = !{ptr @lower_eh_constructs, ptr @gimple_seq_may_fallthru, i64 40}
!42 = !{ptr @lower_eh_constructs, ptr @gimple_seq_add_seq, i64 40}
!43 = !{ptr @lower_eh_constructs, ptr @htab_delete, i64 40}
!44 = !{ptr @lower_eh_constructs, ptr @bitmap_obstack_free, i64 40}
!45 = !{ptr @lower_eh_constructs, ptr @function_needs_eh_personality, i64 40}
!46 = !{ptr @maybe_clean_eh_stmt, ptr @get_eh_throw_stmt_table, i64 1114432}
!47 = !{ptr @maybe_duplicate_eh_stmt_fn, ptr @stmt_could_throw_p, i64 334}
!48 = !{ptr @collect_finally_tree_1, ptr @xmalloc, i64 210604}
!49 = !{ptr @collect_finally_tree_1, ptr @htab_find_slot, i64 210604}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !{!57, !53, i64 8}
!57 = !{!"_IO_FILE", !58, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !58, i64 112, !58, i64 116, !59, i64 120, !60, i64 128, !54, i64 130, !54, i64 131, !53, i64 136, !59, i64 144, !53, i64 152, !53, i64 160, !53, i64 168, !53, i64 176, !59, i64 184, !58, i64 192, !54, i64 196}
!58 = !{!"int", !54, i64 0}
!59 = !{!"long", !54, i64 0}
!60 = !{!"short", !54, i64 0}
!61 = !{!57, !53, i64 16}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{!54, !54, i64 0}
!64 = !{!57, !53, i64 40}
!65 = !{!57, !53, i64 48}
!66 = !{!57, !58, i64 0}
!67 = !{!58, !58, i64 0}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!72, !53, i64 0}
!72 = !{!"throw_stmt_node", !53, i64 0, !58, i64 8}
!73 = !{!72, !58, i64 8}
!74 = !{!"function_entry_count", i64 579959}
!75 = !{!"tree-eh.c;struct_ptr_hash"}
!76 = !{!"function_entry_count", i64 320460}
!77 = !{!"tree-eh.c;struct_ptr_eq"}
!78 = !{!"branch_weights", i32 1557463, i32 0}
!79 = !{!"function_entry_count", i64 443031}
!80 = !{!81, !53, i64 0}
!81 = !{!"function", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !58, i64 104, !58, i64 108, !58, i64 112, !58, i64 116, !58, i64 120, !58, i64 124, !53, i64 128, !58, i64 136, !58, i64 137, !58, i64 138, !58, i64 138, !58, i64 138, !58, i64 138, !58, i64 138, !58, i64 138, !58, i64 138, !58, i64 139, !58, i64 139, !58, i64 139, !58, i64 139, !58, i64 139, !58, i64 139, !58, i64 139}
!82 = !{!83, !53, i64 24}
!83 = !{!"eh_status", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !54, i64 40}
!84 = !{!"function_entry_count", i64 86160}
!85 = !{!"branch_weights", i32 0, i32 184673}
!86 = !{!"branch_weights", i32 184673, i32 0}
!87 = !{!"function_entry_count", i64 40}
!88 = !{!"tree-eh.c;lower_eh_constructs"}
!89 = !{!"branch_weights", i32 0, i32 40}
!90 = !{!"branch_weights", i32 40, i32 0}
!91 = !{!92, !53, i64 656}
!92 = !{!"lang_hooks", !53, i64 0, !59, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !53, i64 112, !53, i64 120, !53, i64 128, !53, i64 136, !53, i64 144, !53, i64 152, !53, i64 160, !53, i64 168, !53, i64 176, !53, i64 184, !53, i64 192, !53, i64 200, !53, i64 208, !53, i64 216, !53, i64 224, !53, i64 232, !93, i64 240, !94, i64 248, !95, i64 256, !96, i64 272, !97, i64 432, !98, i64 560, !53, i64 584, !53, i64 592, !53, i64 600, !53, i64 608, !53, i64 616, !53, i64 624, !53, i64 632, !53, i64 640, !53, i64 648, !53, i64 656, !53, i64 664, !54, i64 672}
!93 = !{!"lang_hooks_for_tree_inlining", !53, i64 0}
!94 = !{!"lang_hooks_for_callgraph", !53, i64 0}
!95 = !{!"lang_hooks_for_tree_dump", !53, i64 0, !53, i64 8}
!96 = !{!"lang_hooks_for_decls", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !53, i64 112, !53, i64 120, !53, i64 128, !53, i64 136, !53, i64 144, !53, i64 152}
!97 = !{!"lang_hooks_for_types", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !53, i64 112, !54, i64 120}
!98 = !{!"lang_hooks_for_lto", !53, i64 0, !53, i64 8, !53, i64 16}
!99 = !{!100, !58, i64 28}
!100 = !{!"eh_region_d", !53, i64 0, !53, i64 8, !53, i64 16, !58, i64 24, !58, i64 28, !54, i64 32, !53, i64 56, !53, i64 64, !53, i64 72, !54, i64 80}
!101 = !{!102, !53, i64 32}
!102 = !{!"eh_catch_d", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32}
!103 = !{!102, !53, i64 16}
!104 = distinct !{!104, !69, !70}
!105 = !{!"function_entry_count", i64 61}
!106 = !{!"branch_weights", i32 61, i32 0}
!107 = !{!108, !53, i64 16}
!108 = !{!"eh_landing_pad_d", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !58, i64 32}
!109 = !{!110, !53, i64 8}
!110 = !{!"edge_def", !53, i64 0, !53, i64 8, !54, i64 16, !53, i64 24, !53, i64 32, !58, i64 40, !58, i64 44, !58, i64 48, !58, i64 52, !59, i64 56}
!111 = !{!110, !53, i64 0}
!112 = !{!108, !53, i64 8}
!113 = !{!114, !58, i64 0}
!114 = !{!"VEC_edge_base", !58, i64 0, !58, i64 4, !54, i64 8}
!115 = !{!110, !58, i64 48}
!116 = distinct !{!116, !69, !70}
!117 = !{!108, !58, i64 32}
!118 = !{i8 0, i8 2}
!119 = distinct !{!119, !69, !70}
!120 = !{!"function_entry_count", i64 46}
!121 = !{!"branch_weights", i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 138, i32 0, i32 3, i32 0, i32 108396, i32 44718, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!122 = !{!"branch_weights", i32 0, i32 4}
!123 = !{!"branch_weights", i32 153252, i32 92}
!124 = !{!"branch_weights", i32 0, i32 153252}
!125 = !{!"function_entry_count", i64 153344}
!126 = !{!"branch_weights", i32 0, i32 153344}
!127 = !{!"branch_weights", i32 153252, i32 0, i32 0, i32 0}
!128 = !{!"branch_weights", i32 92, i32 0, i32 0, i32 0}
!129 = !{!"branch_weights", i32 153344, i32 0}
!130 = !{!"branch_weights", i32 76, i32 153268}
!131 = !{!"branch_weights", i32 153344, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!132 = !{!"function_entry_count", i64 2870907}
!133 = !{!"branch_weights", i32 14035760, i32 0}
!134 = !{!59, !59, i64 0}
!135 = distinct !{!135, !69, !70}
!136 = !{!"function_entry_count", i64 207493}
!137 = !{!"branch_weights", i32 207493, i32 0}
!138 = !{!"function_entry_count", i64 9497410}
!139 = !{!"branch_weights", i32 9497410, i32 0}
!140 = !{!"function_entry_count", i64 1114432}
!141 = !{!"branch_weights", i32 1114432, i32 0}
!142 = !{!"function_entry_count", i64 98452}
!143 = !{!"branch_weights", i32 98452, i32 0}
!144 = !{!"function_entry_count", i64 334}
!145 = !{!"branch_weights", i32 334, i32 0}
!146 = !{!83, !53, i64 16}
!147 = !{!83, !53, i64 8}
!148 = !{!100, !58, i64 24}
!149 = !{!"function_entry_count", i64 87675}
!150 = !{!"branch_weights", i32 87675, i32 0}
!151 = !{!"tree-eh.c;gate_refactor_eh"}
!152 = !{!"function_entry_count", i64 38}
!153 = !{!"tree-eh.c;gate_lower_resx"}
!154 = !{!81, !53, i64 8}
!155 = !{!156, !53, i64 0}
!156 = !{!"control_flow_graph", !53, i64 0, !53, i64 8, !53, i64 16, !58, i64 24, !58, i64 28, !58, i64 32, !53, i64 40, !58, i64 48, !54, i64 52, !54, i64 60, !58, i64 68, !58, i64 72}
!157 = !{!158, !53, i64 56}
!158 = !{!"basic_block_def", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !54, i64 32, !53, i64 48, !53, i64 56, !54, i64 64, !59, i64 72, !58, i64 80, !58, i64 84, !58, i64 88, !58, i64 92, !58, i64 96}
!159 = !{!156, !53, i64 8}
!160 = !{!158, !58, i64 96}
!161 = !{!162}
!162 = distinct !{!162, !163, !"gsi_last_bb: argument 0"}
!163 = distinct !{!163, !"gsi_last_bb"}
!164 = !{!165, !53, i64 0}
!165 = !{!"gimple_bb_info", !53, i64 0, !53, i64 8}
!166 = !{!167, !53, i64 8}
!167 = !{!"gimple_seq_d", !53, i64 0, !53, i64 8, !53, i64 16}
!168 = !{i64 0, i64 8, !52, i64 8, i64 8, !52, i64 16, i64 8, !52}
!169 = !{i64 0, i64 8, !52, i64 8, i64 8, !52}
!170 = !{i64 0, i64 8, !52}
!171 = !{!158, !53, i64 8}
!172 = distinct !{!172, !69, !70}
!173 = !{!174}
!174 = distinct !{!174, !175, !"gsi_start_bb: argument 0"}
!175 = distinct !{!175, !"gsi_start_bb"}
!176 = !{!167, !53, i64 0}
!177 = !{!158, !59, i64 72}
!178 = !{!110, !59, i64 56}
!179 = !{!110, !58, i64 52}
!180 = distinct !{!180, !69, !70}
!181 = !{!100, !54, i64 80}
!182 = distinct !{!182, !69, !70}
!183 = !{!"tree-eh.c;gate_lower_eh_dispatch"}
!184 = !{!83, !53, i64 0}
!185 = !{!186}
!186 = distinct !{!186, !187, !"gsi_last_bb: argument 0"}
!187 = distinct !{!187, !"gsi_last_bb"}
!188 = !{!189, !58, i64 4}
!189 = !{!"VEC_tree_base", !58, i64 0, !58, i64 4, !54, i64 8}
!190 = !{!189, !58, i64 0}
!191 = distinct !{!191, !69, !70}
!192 = distinct !{!192, !69, !70}
!193 = distinct !{!193, !69, !70}
!194 = distinct !{!194, !69, !70}
!195 = !{!"function_entry_count", i64 78}
!196 = !{!"tree-eh.c;gate_cleanup_eh"}
!197 = !{!"branch_weights", i32 0, i32 78}
!198 = !{!199, !58, i64 0}
!199 = !{!"VEC_eh_region_base", !58, i64 0, !58, i64 4, !54, i64 8}
!200 = !{!201, !58, i64 0}
!201 = !{!"VEC_eh_landing_pad_base", !58, i64 0, !58, i64 4, !54, i64 8}
!202 = distinct !{!202, !69, !70}
!203 = !{!204}
!204 = distinct !{!204, !205, !"gsi_start_bb: argument 0"}
!205 = distinct !{!205, !"gsi_start_bb"}
!206 = !{!207, !53, i64 0}
!207 = !{!"gimple_seq_node_d", !53, i64 0, !53, i64 8, !53, i64 16}
!208 = !{!209, !53, i64 0}
!209 = !{!"simple_bitmap_def", !53, i64 0, !58, i64 8, !58, i64 12, !54, i64 16}
!210 = !{!207, !53, i64 16}
!211 = distinct !{!211, !69, !70}
!212 = distinct !{!212, !69, !70}
!213 = distinct !{!213, !69, !70}
!214 = !{!158, !53, i64 0}
!215 = !{!216, !218}
!216 = distinct !{!216, !217, !"gsi_start_bb: argument 0"}
!217 = distinct !{!217, !"gsi_start_bb"}
!218 = distinct !{!218, !219, !"gsi_after_labels: argument 0"}
!219 = distinct !{!219, !"gsi_after_labels"}
!220 = !{!218}
!221 = distinct !{!221, !69, !70}
!222 = !{!223, !53, i64 0}
!223 = !{!"", !53, i64 0, !53, i64 8, !53, i64 16}
!224 = distinct !{!224, !69, !70}
!225 = !{!226}
!226 = distinct !{!226, !227, !"gsi_start_bb: argument 0"}
!227 = distinct !{!227, !"gsi_start_bb"}
!228 = distinct !{!228, !69, !70}
!229 = !{!165, !53, i64 8}
!230 = !{!231, !53, i64 24}
!231 = !{!"ssa_use_operand_d", !53, i64 0, !53, i64 8, !54, i64 16, !53, i64 24}
!232 = !{!233, !53, i64 8}
!233 = !{!"immediate_use_iterator_d", !53, i64 0, !53, i64 8, !231, i64 16, !53, i64 48}
!234 = !{!231, !53, i64 8}
!235 = !{!233, !53, i64 0}
!236 = !{!233, !53, i64 48}
!237 = !{!231, !53, i64 0}
!238 = distinct !{!238, !69, !70}
!239 = distinct !{!239, !69, !70}
!240 = distinct !{!240, !69, !70}
!241 = !{!158, !58, i64 80}
!242 = distinct !{!242, !69, !70}
!243 = !{!244, !246}
!244 = distinct !{!244, !245, !"gsi_start_bb: argument 0"}
!245 = distinct !{!245, !"gsi_start_bb"}
!246 = distinct !{!246, !247, !"gsi_after_labels: argument 0"}
!247 = distinct !{!247, !"gsi_after_labels"}
!248 = !{!246}
!249 = !{!250}
!250 = distinct !{!250, !251, !"gsi_start_bb: argument 0"}
!251 = distinct !{!251, !"gsi_start_bb"}
!252 = distinct !{!252, !69, !70}
!253 = distinct !{!253, !69, !70}
!254 = distinct !{!254, !69, !70}
!255 = distinct !{!255, !69, !70}
!256 = distinct !{!256, !69, !70}
!257 = !{!108, !53, i64 0}
!258 = !{!100, !53, i64 56}
!259 = !{!260}
!260 = distinct !{!260, !261, !"gsi_last_bb: argument 0"}
!261 = distinct !{!261, !"gsi_last_bb"}
!262 = distinct !{!262, !69, !70}
!263 = distinct !{!263, !69, !70}
!264 = distinct !{!264, !69, !70}
!265 = !{!110, !53, i64 24}
!266 = distinct !{!266, !69, !70}
!267 = distinct !{!267, !69, !70}
!268 = distinct !{!268, !69, !70}
!269 = !{!"tree-eh.c;collect_finally_tree_1"}
!270 = !{!271}
!271 = distinct !{!271, !272, !"gsi_start: argument 0"}
!272 = distinct !{!272, !"gsi_start"}
!273 = !{!"branch_weights", i32 1, i32 159}
!274 = !{!"branch_weights", i32 445426, i32 210605, i32 0, i32 0, i32 0}
!275 = !{!"branch_weights", i32 0, i32 210605}
!276 = !{i64 0, i64 8, !52, i64 0, i64 8, !52, i64 0, i64 8, !52}
!277 = !{!278, !53, i64 8}
!278 = !{!"finally_tree_node", !54, i64 0, !53, i64 8}
!279 = !{!"branch_weights", i32 210605, i32 0}
!280 = !{!"branch_weights", i32 159, i32 2623965}
!281 = distinct !{!281, !69, !70}
!282 = !{!"tree-eh.c;lower_eh_constructs_1"}
!283 = !{!284}
!284 = distinct !{!284, !285, !"gsi_start: argument 0"}
!285 = distinct !{!285, !"gsi_start"}
!286 = !{!"branch_weights", i32 210643, i32 69244, i32 188599, i32 143772, i32 43733, i32 40, i32 0}
!287 = !{!"branch_weights", i32 0, i32 69244}
!288 = !{!"branch_weights", i32 69244, i32 0}
!289 = !{!290, !53, i64 8}
!290 = !{!"leh_state", !53, i64 0, !53, i64 8, !53, i64 16}
!291 = !{!"branch_weights", i32 257843, i32 0}
!292 = !{!290, !53, i64 0}
!293 = !{!100, !53, i64 0}
!294 = distinct !{!294, !69, !70}
!295 = !{!290, !53, i64 16}
!296 = !{!"branch_weights", i32 187545, i32 0}
!297 = !{!298, !54, i64 89}
!298 = !{!"leh_tf_state", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !59, i64 48, !59, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !54, i64 88, !54, i64 89, !54, i64 90}
!299 = !{!298, !53, i64 0}
!300 = !{!298, !53, i64 8}
!301 = !{!298, !53, i64 24}
!302 = !{!298, !53, i64 32}
!303 = !{!298, !54, i64 88}
!304 = !{!298, !54, i64 90}
!305 = !{!298, !53, i64 16}
!306 = !{!298, !53, i64 40}
!307 = !{!298, !59, i64 56}
!308 = !{!309, !58, i64 24}
!309 = !{!"goto_queue_node", !54, i64 0, !53, i64 8, !53, i64 16, !58, i64 24, !58, i64 28}
!310 = distinct !{!310, !69, !70}
!311 = distinct !{!311, !69, !70}
!312 = distinct !{!312, !69, !70}
!313 = !{!298, !53, i64 72}
!314 = !{!298, !53, i64 80}
!315 = !{!309, !53, i64 16}
!316 = !{!317, !53, i64 0}
!317 = !{!"labels_s", !53, i64 0, !53, i64 8}
!318 = distinct !{!318, !69, !70}
!319 = !{!317, !53, i64 8}
!320 = distinct !{!320, !69, !70}
!321 = distinct !{!321, !69, !70}
!322 = !{}
!323 = distinct !{!323, !69, !70}
!324 = distinct !{!324, !69, !70}
!325 = !{!298, !53, i64 64}
!326 = !{!327}
!327 = distinct !{!327, !328, !"gsi_start: argument 0"}
!328 = distinct !{!328, !"gsi_start"}
!329 = distinct !{!329, !69, !70}
!330 = distinct !{!330, !69, !70}
!331 = !{!"tree-eh.c;record_in_finally_tree"}
!332 = !{!"tree-eh.c;maybe_record_in_goto_queue"}
!333 = distinct !{!333, !69, !70}
!334 = distinct !{!334, !69, !70}
!335 = !{!298, !59, i64 48}
!336 = !{!309, !58, i64 28}
!337 = !{!338}
!338 = distinct !{!338, !339, !"gsi_start: argument 0"}
!339 = distinct !{!339, !"gsi_start"}
!340 = !{!309, !53, i64 8}
!341 = !{!342}
!342 = distinct !{!342, !343, !"gsi_start: argument 0"}
!343 = distinct !{!343, !"gsi_start"}
!344 = !{!223, !53, i64 8}
!345 = !{!223, !53, i64 16}
!346 = distinct !{!346, !69, !70}
!347 = distinct !{!347, !69, !70}
!348 = distinct !{!348, !69, !70}
!349 = !{!350}
!350 = distinct !{!350, !351, !"gsi_start: argument 0"}
!351 = distinct !{!351, !"gsi_start"}
!352 = !{!353}
!353 = distinct !{!353, !354, !"gsi_start: argument 0"}
!354 = distinct !{!354, !"gsi_start"}
!355 = !{!356}
!356 = distinct !{!356, !357, !"gsi_start: argument 0"}
!357 = distinct !{!357, !"gsi_start"}
!358 = distinct !{!358, !69, !70}
!359 = distinct !{!359, !70}
!360 = distinct !{!360, !69, !70}
!361 = !{!362, !53, i64 0}
!362 = !{!"use_optype_d", !53, i64 0, !231, i64 8}
!363 = distinct !{!363, !69, !70}
!364 = !{!362, !53, i64 32}
!365 = distinct !{!365, !69, !70}
!366 = !{!110, !58, i64 44}
!367 = distinct !{!367, !69, !70}
!368 = !{!369, !58, i64 40}
!369 = !{!"phi_arg_d", !231, i64 0, !53, i64 32, !58, i64 40}
!370 = distinct !{!370, !69, !70}
!371 = distinct !{!371, !69, !70}
!372 = distinct !{!372, !69, !70}
!373 = distinct !{!373, !69, !70}
!374 = !{!375, !53, i64 0}
!375 = !{!"bitmap_head_def", !53, i64 0, !53, i64 8, !58, i64 16, !53, i64 24}
!376 = distinct !{!376, !69, !70}
!377 = distinct !{!377, !69, !70}
!378 = distinct !{!378, !69, !70}
