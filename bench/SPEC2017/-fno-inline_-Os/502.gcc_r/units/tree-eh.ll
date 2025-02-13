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
%struct.eh_region_d = type { ptr, ptr, ptr, i32, i32, %union.eh_region_u, ptr, ptr, ptr, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { ptr, ptr, i32 }
%struct.eh_catch_d = type { ptr, ptr, ptr, ptr, ptr }
%struct.gimple_statement_eh_ctrl = type { %struct.gimple_statement_base, i32 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.eh_landing_pad_d = type { ptr, ptr, ptr, ptr, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.VEC_eh_landing_pad_base = type { i32, i32, [1 x ptr] }
%struct.VEC_eh_region_base = type { i32, i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.finally_tree_node = type { %union.treemple, ptr }
%union.treemple = type { ptr }
%struct.gimple_statement_try = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_catch = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_eh_filter = type { %struct.gimple_statement_base, ptr, ptr }
%struct.leh_tf_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, i8, i8, i8 }
%struct.goto_queue_node = type { %union.treemple, ptr, ptr, i32, i32 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.labels_s = type { ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_eh_mnt = type { %struct.gimple_statement_base, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @using_eh_for_cleanups() local_unnamed_addr #0 !prof !123 {
  store i1 true, ptr @using_eh_for_cleanups_p, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_stmt_to_eh_lp_fn(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 !prof !123 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 99, ptr noundef nonnull @.str.1) #20
  br label %6

6:                                                ; preds = %3, %5
  %7 = tail call ptr @ggc_alloc_stat(i64 noundef 16) #20
  store ptr %1, ptr %7, align 8, !tbaa !124
  %8 = getelementptr inbounds %struct.throw_stmt_node, ptr %7, i64 0, i32 1
  store i32 %2, ptr %8, align 8, !tbaa !130
  %9 = tail call ptr @get_eh_throw_stmt_table(ptr noundef %0) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call ptr @htab_create_alloc(i64 noundef 31, ptr noundef nonnull @struct_ptr_hash, ptr noundef nonnull @struct_ptr_eq, ptr noundef nonnull @ggc_free, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #20
  tail call void @set_eh_throw_stmt_table(ptr noundef %0, ptr noundef %12) #20
  br label %13

13:                                               ; preds = %11, %6
  %14 = tail call ptr @get_eh_throw_stmt_table(ptr noundef %0) #20
  %15 = tail call ptr @htab_find_slot(ptr noundef %14, ptr noundef nonnull %7, i32 noundef 1) #20
  %16 = load ptr, ptr %15, align 8, !tbaa !131
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 111, ptr noundef nonnull @.str.1) #20
  br label %19

19:                                               ; preds = %13, %18
  store ptr %7, ptr %15, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_eh_throw_stmt_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_eh_throw_stmt_table(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @struct_ptr_hash(ptr nocapture noundef readonly %0) #4 !prof !132 !PGOFuncName !133 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  %3 = ptrtoint ptr %2 to i64
  %4 = lshr i64 %3, 4
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @struct_ptr_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !prof !134 !PGOFuncName !135 {
  %3 = load ptr, ptr %0, align 8, !tbaa !131
  %4 = load ptr, ptr %1, align 8, !tbaa !131
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #3

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #3

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_stmt_to_eh_lp(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !123 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !131
  tail call void @add_stmt_to_eh_lp_fn(ptr noundef %3, ptr noundef %0, i32 noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @remove_stmt_from_eh_lp_fn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !136 {
  %3 = alloca %struct.throw_stmt_node, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = tail call ptr @get_eh_throw_stmt_table(ptr noundef %0) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !137

6:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !124
  %7 = tail call ptr @get_eh_throw_stmt_table(ptr noundef %0) #20
  %8 = call ptr @htab_find_slot(ptr noundef %7, ptr noundef nonnull %3, i32 noundef 0) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = call ptr @get_eh_throw_stmt_table(ptr noundef %0) #20
  call void @htab_clear_slot(ptr noundef %11, ptr noundef nonnull %8) #20
  br label %12

12:                                               ; preds = %6, %2, %10
  %13 = phi i8 [ 1, %10 ], [ 0, %2 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret i8 %13
}

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @remove_stmt_from_eh_lp(ptr noundef %0) local_unnamed_addr #1 !prof !138 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !131
  %3 = tail call zeroext i8 @remove_stmt_from_eh_lp_fn(ptr noundef %2, ptr noundef %0) #21, !range !139
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lookup_stmt_eh_lp_fn(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 !prof !140 {
  %3 = alloca %struct.throw_stmt_node, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = load ptr, ptr %0, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct.eh_status, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !143
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8, !prof !145

8:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !124
  %9 = call ptr @htab_find(ptr noundef nonnull %6, ptr noundef nonnull %3) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.throw_stmt_node, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !130
  br label %14

14:                                               ; preds = %11, %8, %2
  %15 = phi i32 [ 0, %2 ], [ %13, %11 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret i32 %15
}

; Function Attrs: optsize
declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lookup_stmt_eh_lp(ptr noundef %0) local_unnamed_addr #1 !prof !140 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !131
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !146

4:                                                ; preds = %1
  %5 = tail call i32 @lookup_stmt_eh_lp_fn(ptr noundef nonnull %2, ptr noundef %0) #21
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @lower_eh_constructs() #1 !prof !147 !PGOFuncName !148 {
  %1 = alloca %struct.leh_state, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !131
  %4 = tail call ptr @gimple_body(ptr noundef %3) #20
  store ptr %4, ptr %2, align 8, !tbaa !131
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6, !prof !149

6:                                                ; preds = %0
  %7 = tail call ptr @htab_create(i64 noundef 31, ptr noundef nonnull @struct_ptr_hash, ptr noundef nonnull @struct_ptr_eq, ptr noundef nonnull @free) #20
  store ptr %7, ptr @finally_tree, align 8, !tbaa !131
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  store ptr %8, ptr @eh_region_may_contain_throw_map, align 8, !tbaa !131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  tail call fastcc void @collect_finally_tree_1(ptr noundef nonnull %4, ptr noundef null) #21
  call fastcc void @lower_eh_constructs_1(ptr noundef nonnull %1, ptr noundef nonnull %4) #21
  %9 = call zeroext i8 @gimple_seq_may_fallthru(ptr noundef nonnull %4) #20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11, !prof !150

11:                                               ; preds = %6
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2006, ptr noundef nonnull @.str.1) #20
  br label %12

12:                                               ; preds = %6, %11
  %13 = load ptr, ptr @eh_seq, align 8, !tbaa !131
  call void @gimple_seq_add_seq(ptr noundef nonnull %2, ptr noundef %13) #20
  %14 = load ptr, ptr %2, align 8, !tbaa !131
  %15 = load ptr, ptr @current_function_decl, align 8, !tbaa !131
  %16 = call ptr @gimple_body(ptr noundef %15) #20
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %19, label %18, !prof !150

18:                                               ; preds = %12
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2011, ptr noundef nonnull @.str.1) #20
  br label %19

19:                                               ; preds = %12, %18
  %20 = load ptr, ptr @finally_tree, align 8, !tbaa !131
  call void @htab_delete(ptr noundef %20) #20
  %21 = load ptr, ptr @eh_region_may_contain_throw_map, align 8, !tbaa !131
  call void @bitmap_obstack_free(ptr noundef %21) #20
  store ptr null, ptr @eh_region_may_contain_throw_map, align 8, !tbaa !131
  store ptr null, ptr @eh_seq, align 8, !tbaa !131
  %22 = load ptr, ptr @cfun, align 8, !tbaa !131
  %23 = call i32 @function_needs_eh_personality(ptr noundef %22) #20
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %35, !prof !149

25:                                               ; preds = %19
  %26 = load ptr, ptr @current_function_decl, align 8, !tbaa !131
  %27 = getelementptr inbounds %struct.tree_function_decl, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !151
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 45), align 8, !tbaa !152
  %32 = call ptr %31() #20
  %33 = load ptr, ptr @current_function_decl, align 8, !tbaa !131
  %34 = getelementptr inbounds %struct.tree_function_decl, ptr %33, i64 0, i32 2
  store ptr %32, ptr %34, align 8, !tbaa !151
  br label %35

35:                                               ; preds = %19, %25, %30, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @make_eh_dispatch_edges(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !123 {
  %2 = tail call fastcc i32 @gimple_eh_dispatch_region(ptr noundef %0) #21
  %3 = tail call ptr @get_eh_region_from_number(i32 noundef %2) #20
  %4 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %5 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !161
  switch i32 %6, label %28 [
    i32 1, label %7
    i32 2, label %22
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 5
  br label %9

9:                                                ; preds = %13, %7
  %10 = phi ptr [ %8, %7 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !151
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @cfun, align 8, !tbaa !131
  %15 = getelementptr inbounds %struct.eh_catch_d, ptr %11, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !163
  %17 = tail call ptr @label_to_block_fn(ptr noundef %14, ptr noundef %16) #20
  %18 = tail call ptr @make_edge(ptr noundef %4, ptr noundef %17, i32 noundef 0) #20
  %19 = getelementptr inbounds %struct.eh_catch_d, ptr %11, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !165
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %9, !llvm.loop !166

22:                                               ; preds = %1
  %23 = load ptr, ptr @cfun, align 8, !tbaa !131
  %24 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 5, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !151
  %26 = tail call ptr @label_to_block_fn(ptr noundef %23, ptr noundef %25) #20
  %27 = tail call ptr @make_edge(ptr noundef %4, ptr noundef %26, i32 noundef 0) #20
  br label %29

28:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2080, ptr noundef nonnull @.str.1) #20
  br label %29

29:                                               ; preds = %9, %13, %22, %28
  %30 = phi i8 [ 1, %28 ], [ 1, %22 ], [ 1, %9 ], [ 0, %13 ]
  ret i8 %30
}

; Function Attrs: optsize
declare ptr @get_eh_region_from_number(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_eh_dispatch_region(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !168 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !151
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !169 !PGOFuncName !170 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @label_to_block_fn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_eh_edges(ptr noundef %0) local_unnamed_addr #1 !prof !171 {
  %2 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %0) #21
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %15, label %4, !prof !172

4:                                                ; preds = %1
  %5 = tail call ptr @get_eh_landing_pad_from_number(i32 noundef %2) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2101, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %4, %7
  %9 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %10 = load ptr, ptr @cfun, align 8, !tbaa !131
  %11 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %5, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !173
  %13 = tail call ptr @label_to_block_fn(ptr noundef %10, ptr noundef %12) #20
  %14 = tail call ptr @make_edge(ptr noundef %9, ptr noundef %13, i32 noundef 8) #20
  br label %15

15:                                               ; preds = %1, %8
  ret void
}

; Function Attrs: optsize
declare ptr @get_eh_landing_pad_from_number(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @redirect_eh_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !123 {
  tail call fastcc void @redirect_eh_edge_1(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #21
  %3 = tail call ptr @ssa_redirect_edge(ptr noundef %0, ptr noundef %1) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @redirect_eh_edge_1(ptr noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #1 !prof !123 !PGOFuncName !175 {
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !176
  %8 = tail call ptr @gimple_block_label(ptr noundef %7) #20
  %9 = getelementptr inbounds %struct.tree_label_decl, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !151
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2131, ptr noundef nonnull @.str.1) #20
  br label %13

13:                                               ; preds = %3, %12
  %14 = tail call ptr @get_eh_landing_pad_from_number(i32 noundef %10) #20
  %15 = load ptr, ptr %0, align 8, !tbaa !178
  %16 = tail call ptr @last_stmt(ptr noundef %15) #20
  %17 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %16) #21
  %18 = icmp eq i32 %17, %10
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2135, ptr noundef nonnull @.str.1) #20
  br label %20

20:                                               ; preds = %13, %19
  %21 = tail call ptr @gimple_block_label(ptr noundef %1) #20
  %22 = getelementptr inbounds %struct.tree_label_decl, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !151
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %20
  %26 = tail call ptr @get_eh_landing_pad_from_number(i32 noundef %23) #20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2144, ptr noundef nonnull @.str.1) #20
  br label %29

29:                                               ; preds = %25, %28
  %30 = icmp eq i8 %2, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %26, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !179
  %34 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %14, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !179
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %42, label %39

37:                                               ; preds = %20
  %38 = icmp eq i8 %2, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %37, %31
  %40 = phi i32 [ 2148, %31 ], [ 2153, %37 ]
  %41 = phi ptr [ %26, %31 ], [ null, %37 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %40, ptr noundef nonnull @.str.1) #20
  br label %42

42:                                               ; preds = %39, %37, %31, %29
  %43 = phi ptr [ %26, %29 ], [ %26, %31 ], [ null, %37 ], [ %41, %39 ]
  %44 = tail call fastcc ptr @ei_start_1(ptr noundef %7) #21
  store i32 0, ptr %4, align 8, !tbaa.struct !180
  %45 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %44, ptr %45, align 8, !tbaa.struct !182
  %46 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %44, ptr noundef nonnull %5) #21, !range !139
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %42, %56
  %49 = load ptr, ptr %5, align 8, !tbaa !131
  %50 = icmp eq ptr %49, %0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !183
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %48, %51
  call fastcc void @ei_next(ptr noundef nonnull %4) #21
  %57 = load i32, ptr %4, align 8
  %58 = load ptr, ptr %45, align 8
  %59 = call fastcc zeroext i8 @ei_cond(i32 %57, ptr %58, ptr noundef nonnull %5) #21, !range !139
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %48, !llvm.loop !184

61:                                               ; preds = %56, %51, %42
  %62 = icmp eq ptr %43, null
  %63 = load ptr, ptr %5, align 8, !tbaa !131
  br i1 %62, label %69, label %64

64:                                               ; preds = %61
  %65 = icmp ne ptr %63, null
  %66 = icmp ne i8 %2, 0
  %67 = or i1 %66, %65
  br i1 %67, label %84, label %68

68:                                               ; preds = %64
  tail call void @remove_eh_landing_pad(ptr noundef %14) #20
  br label %84

69:                                               ; preds = %61
  %70 = icmp eq ptr %63, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %14, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !173
  %74 = getelementptr inbounds %struct.tree_label_decl, ptr %73, i64 0, i32 2
  store i32 0, ptr %74, align 4, !tbaa !151
  br label %79

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %14, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !179
  %78 = tail call ptr @gen_eh_landing_pad(ptr noundef %77) #20
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi ptr [ %14, %71 ], [ %78, %75 ]
  %81 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %80, i64 0, i32 2
  store ptr %21, ptr %81, align 8, !tbaa !173
  %82 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %80, i64 0, i32 4
  %83 = load i32, ptr %82, align 8, !tbaa !185
  store i32 %83, ptr %22, align 4, !tbaa !151
  br label %84

84:                                               ; preds = %64, %68, %79
  %85 = phi ptr [ %43, %64 ], [ %43, %68 ], [ %80, %79 ]
  %86 = icmp eq ptr %14, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = tail call zeroext i8 @remove_stmt_from_eh_lp(ptr noundef %16) #21, !range !139
  %89 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %85, i64 0, i32 4
  %90 = load i32, ptr %89, align 8, !tbaa !185
  tail call void @add_stmt_to_eh_lp(ptr noundef %16, i32 noundef %90) #21
  br label %91

91:                                               ; preds = %87, %84
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare ptr @ssa_redirect_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_eh_dispatch_edge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #1 !prof !123 {
  %4 = tail call ptr @gimple_block_label(ptr noundef %2) #20
  %5 = tail call fastcc i32 @gimple_eh_dispatch_region(ptr noundef %0) #21
  %6 = tail call ptr @get_eh_region_from_number(i32 noundef %5) #20
  %7 = getelementptr inbounds %struct.eh_region_d, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !161
  switch i32 %8, label %43 [
    i32 1, label %9
    i32 2, label %33
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.eh_region_d, ptr %6, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !151
  %12 = icmp eq ptr %11, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  br label %15

15:                                               ; preds = %29, %13
  %16 = phi ptr [ %31, %29 ], [ %11, %13 ]
  %17 = phi i1 [ false, %29 ], [ true, %13 ]
  br label %18

18:                                               ; preds = %15, %26
  %19 = phi ptr [ %27, %26 ], [ %16, %15 ]
  %20 = load ptr, ptr @cfun, align 8, !tbaa !131
  %21 = getelementptr inbounds %struct.eh_catch_d, ptr %19, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !163
  %23 = tail call ptr @label_to_block_fn(ptr noundef %20, ptr noundef %22) #20
  %24 = load ptr, ptr %14, align 8, !tbaa !176
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load ptr, ptr %19, align 8, !tbaa !151
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %18, !llvm.loop !186

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.eh_catch_d, ptr %19, i64 0, i32 4
  store ptr %4, ptr %30, align 8, !tbaa !163
  %31 = load ptr, ptr %19, align 8, !tbaa !151
  %32 = icmp eq ptr %31, null
  br i1 %32, label %46, label %15, !llvm.loop !186

33:                                               ; preds = %3
  %34 = load ptr, ptr @cfun, align 8, !tbaa !131
  %35 = getelementptr inbounds %struct.eh_region_d, ptr %6, i64 0, i32 5, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !151
  %37 = tail call ptr @label_to_block_fn(ptr noundef %34, ptr noundef %36) #20
  %38 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !176
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2234, ptr noundef nonnull @.str.1) #20
  br label %42

42:                                               ; preds = %41, %33
  store ptr %4, ptr %35, align 8, !tbaa !151
  br label %46

43:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2240, ptr noundef nonnull @.str.1) #20
  br label %45

44:                                               ; preds = %26
  br i1 %17, label %45, label %46

45:                                               ; preds = %9, %43, %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2243, ptr noundef nonnull @.str.1) #20
  br label %46

46:                                               ; preds = %29, %42, %44, %45
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_block_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @operation_could_trap_helper_p(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #1 !prof !187 {
  store i8 1, ptr %6, align 1, !tbaa !151
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
  ], !prof !188

8:                                                ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  %9 = or i8 %4, %2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %8
  %12 = icmp eq i8 %1, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr @flag_trapping_math, align 4, !tbaa !181
  %15 = trunc i32 %14 to i8
  br label %42

16:                                               ; preds = %11
  %17 = load i64, ptr %5, align 8
  %18 = and i64 %17, 131072
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @integer_zerop(ptr noundef nonnull %5) #20
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
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %42, label %41, !prof !189

41:                                               ; preds = %36
  store i8 0, ptr %6, align 1, !tbaa !151
  br label %42

42:                                               ; preds = %20, %36, %33, %28, %25, %7, %7, %7, %7, %7, %7, %7, %16, %8, %41, %24, %13
  %43 = phi i8 [ 0, %41 ], [ %4, %24 ], [ %15, %13 ], [ 1, %8 ], [ 1, %16 ], [ %3, %7 ], [ %3, %7 ], [ %3, %7 ], [ %3, %7 ], [ %3, %7 ], [ %3, %7 ], [ %3, %7 ], [ %27, %25 ], [ 1, %28 ], [ %35, %33 ], [ 1, %36 ], [ %23, %20 ]
  ret i8 %43
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @operation_could_trap_p(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #1 !prof !190 {
  %5 = alloca i8, align 1
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %17, label %7, !prof !191

7:                                                ; preds = %4
  %8 = load i32, ptr @flag_trapping_math, align 4, !tbaa !181
  %9 = icmp ne i32 %8, 0
  %10 = load i32, ptr @flag_finite_math_only, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  %13 = zext i1 %12 to i8
  %14 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !181
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %4, %7
  %18 = phi i8 [ %13, %7 ], [ 0, %4 ]
  %19 = phi i8 [ %16, %7 ], [ 0, %4 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #22
  %20 = sext i32 %0 to i64
  %21 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !181
  %23 = add i32 %22, -5
  %24 = icmp ult i32 %23, 3
  br i1 %24, label %25, label %27, !prof !192

25:                                               ; preds = %17
  %26 = call zeroext i8 @operation_could_trap_helper_p(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %18, i8 noundef zeroext %19, ptr noundef %3, ptr noundef nonnull %5) #21
  br label %27

27:                                               ; preds = %17, %25
  %28 = phi i8 [ %26, %25 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #22
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @tree_could_trap_p(ptr noundef %0) local_unnamed_addr #1 !prof !190 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %132, label %3, !prof !193

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 65535
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !151
  %9 = icmp eq ptr %8, null
  %10 = and i64 %4, 65535
  br i1 %9, label %53, label %11, !prof !193

11:                                               ; preds = %3
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %13 = load i32, ptr %12, align 4, !tbaa !181
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %15, label %29, !prof !194

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !151
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !151
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %28 [
    i16 9, label %39
    i16 13, label %22
    i16 14, label %22
  ], !prof !195

22:                                               ; preds = %15, %15
  %23 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !151
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 9
  br label %39

28:                                               ; preds = %15
  br label %39

29:                                               ; preds = %11
  %30 = load i64, ptr %8, align 8
  %31 = trunc i64 %30 to i16
  switch i16 %31, label %38 [
    i16 9, label %39
    i16 13, label %32
    i16 14, label %32
  ], !prof !196

32:                                               ; preds = %29, %29
  %33 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !151
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 9
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %32, %38, %29, %22, %28, %15
  %40 = phi i1 [ true, %15 ], [ %27, %22 ], [ false, %28 ], [ true, %29 ], [ %37, %32 ], [ false, %38 ]
  %41 = load i64, ptr %8, align 8
  %42 = trunc i64 %41 to i32
  %43 = and i32 %42, 65535
  %44 = add nsw i32 %43, -6
  %45 = icmp ult i32 %44, 3
  %46 = and i64 %41, 2097152
  %47 = icmp eq i64 %46, 0
  %48 = and i1 %47, %45
  br i1 %48, label %49, label %53, !prof !197

49:                                               ; preds = %39
  %50 = load i32, ptr @flag_trapv, align 4, !tbaa !181
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i8
  br label %53

53:                                               ; preds = %3, %39, %49
  %54 = phi i1 [ %40, %39 ], [ %40, %49 ], [ false, %3 ]
  %55 = phi i8 [ 0, %39 ], [ %52, %49 ], [ 0, %3 ]
  %56 = zext i1 %54 to i8
  %57 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %58 = load i32, ptr %57, align 4, !tbaa !181
  %59 = icmp eq i32 %58, 7
  br i1 %59, label %60, label %63, !prof !193

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !151
  br label %63

63:                                               ; preds = %60, %53
  %64 = phi ptr [ %62, %60 ], [ null, %53 ]
  %65 = tail call zeroext i8 @operation_could_trap_p(i32 noundef %6, i8 noundef zeroext %56, i8 noundef zeroext %55, ptr noundef %64) #21
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %132, !prof !191

67:                                               ; preds = %63, %73
  %68 = phi ptr [ %75, %73 ], [ %0, %63 ]
  %69 = phi i32 [ %78, %73 ], [ %6, %63 ]
  %70 = trunc i32 %69 to i16
  switch i16 %70, label %132 [
    i16 152, label %71
    i16 41, label %79
    i16 43, label %79
    i16 44, label %79
    i16 42, label %79
    i16 118, label %79
    i16 150, label %79
    i16 46, label %81
    i16 45, label %94
    i16 47, label %107
    i16 48, label %107
    i16 49, label %107
    i16 140, label %112
    i16 59, label %117
  ], !prof !198

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.tree_exp, ptr %68, i64 1, i32 2
  br label %73

73:                                               ; preds = %71, %79
  %74 = phi ptr [ %80, %79 ], [ %72, %71 ]
  %75 = load ptr, ptr %74, align 8, !tbaa !151
  %76 = load i64, ptr %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = and i32 %77, 65535
  br label %67

79:                                               ; preds = %67, %67, %67, %67, %67, %67
  %80 = getelementptr inbounds %struct.tree_exp, ptr %68, i64 0, i32 3
  br label %73

81:                                               ; preds = %67
  %82 = getelementptr inbounds %struct.tree_exp, ptr %68, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !151
  %84 = tail call zeroext i8 @tree_could_trap_p(ptr noundef %83) #21, !range !139
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %132

86:                                               ; preds = %81
  %87 = load i64, ptr %68, align 8
  %88 = and i64 %87, 33554432
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %132

90:                                               ; preds = %86
  %91 = tail call zeroext i8 @range_in_array_bounds_p(ptr noundef nonnull %68) #20
  %92 = icmp eq i8 %91, 0
  %93 = zext i1 %92 to i8
  br label %132

94:                                               ; preds = %67
  %95 = getelementptr inbounds %struct.tree_exp, ptr %68, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !151
  %97 = tail call zeroext i8 @tree_could_trap_p(ptr noundef %96) #21, !range !139
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %132

99:                                               ; preds = %94
  %100 = load i64, ptr %68, align 8
  %101 = and i64 %100, 33554432
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %132

103:                                              ; preds = %99
  %104 = tail call zeroext i8 @in_array_bounds_p(ptr noundef nonnull %68) #20
  %105 = icmp eq i8 %104, 0
  %106 = zext i1 %105 to i8
  br label %132

107:                                              ; preds = %67, %67, %67
  %108 = load i64, ptr %68, align 8
  %109 = and i64 %108, 33554432
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i8
  br label %132

112:                                              ; preds = %67
  %113 = load i64, ptr %68, align 8
  %114 = lshr i64 %113, 19
  %115 = trunc i64 %114 to i8
  %116 = and i8 %115, 1
  br label %132

117:                                              ; preds = %67
  %118 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %68) #20
  %119 = icmp eq ptr %118, null
  br i1 %119, label %132, label %120

120:                                              ; preds = %117
  %121 = load i64, ptr %118, align 8
  %122 = and i64 %121, 65535
  %123 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !181
  %125 = icmp eq i32 %124, 3
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %118, i64 0, i32 4
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 128
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i8
  br label %132

132:                                              ; preds = %67, %126, %117, %120, %99, %94, %86, %81, %63, %1, %112, %107, %103, %90
  %133 = phi i8 [ %116, %112 ], [ %111, %107 ], [ %106, %103 ], [ %93, %90 ], [ 0, %1 ], [ 1, %63 ], [ 1, %81 ], [ 0, %86 ], [ 1, %94 ], [ 0, %99 ], [ 1, %120 ], [ 1, %117 ], [ %131, %126 ], [ 0, %67 ]
  ret i8 %133
}

; Function Attrs: optsize
declare zeroext i8 @range_in_array_bounds_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @in_array_bounds_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @stmt_could_throw_p(ptr noundef %0) local_unnamed_addr #1 !prof !199 {
  %2 = load i32, ptr @flag_exceptions, align 4, !tbaa !181
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %21, label %4, !prof !200

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !201
  %6 = trunc i32 %5 to i8
  switch i8 %6, label %20 [
    i8 14, label %21
    i8 8, label %7
    i8 6, label %10
    i8 1, label %10
    i8 7, label %15
  ]

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @gimple_call_nothrow_p(ptr noundef %0) #21, !range !139
  %9 = xor i8 %8, 1
  br label %21

10:                                               ; preds = %4, %4
  %11 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !181
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc zeroext i8 @stmt_could_throw_1_p(ptr noundef %0) #21
  br label %21

15:                                               ; preds = %4
  %16 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !181
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @gimple_asm_volatile_p(ptr noundef %0) #21, !range !139
  br label %21

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %15, %10, %4, %1, %20, %18, %13, %7
  %22 = phi i8 [ 0, %20 ], [ %19, %18 ], [ %14, %13 ], [ %9, %7 ], [ 0, %1 ], [ 1, %4 ], [ 0, %10 ], [ 0, %15 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !202 !PGOFuncName !203 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_call_nothrow_p(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !204 {
  %2 = tail call i32 @gimple_call_flags(ptr noundef %0) #20
  %3 = trunc i32 %2 to i8
  %4 = lshr i8 %3, 6
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @stmt_could_throw_1_p(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !205 {
  %2 = alloca i8, align 1
  %3 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #21, !range !206
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #22
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !181
  %7 = add i32 %6, -5
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  %10 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #21
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %29 [
    i16 9, label %19
    i16 13, label %13
    i16 14, label %13
  ]

13:                                               ; preds = %9, %9
  %14 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !151
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 9
  br i1 %18, label %19, label %41

19:                                               ; preds = %9, %13
  %20 = load i32, ptr @flag_trapping_math, align 4, !tbaa !181
  %21 = icmp ne i32 %20, 0
  %22 = load i32, ptr @flag_finite_math_only, align 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  %25 = zext i1 %24 to i8
  %26 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !181
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i8
  br label %41

29:                                               ; preds = %9
  %30 = trunc i64 %11 to i32
  %31 = and i32 %30, 65535
  %32 = add nsw i32 %31, -6
  %33 = icmp ult i32 %32, 3
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = and i64 %11, 2097152
  %36 = icmp eq i64 %35, 0
  %37 = load i32, ptr @flag_trapv, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  %40 = zext i1 %39 to i8
  br label %41

41:                                               ; preds = %13, %34, %29, %1, %19
  %42 = phi i8 [ %25, %19 ], [ 0, %1 ], [ 0, %29 ], [ 0, %34 ], [ 0, %13 ]
  %43 = phi i8 [ %28, %19 ], [ 0, %1 ], [ 0, %29 ], [ 0, %34 ], [ 0, %13 ]
  %44 = phi i8 [ 1, %19 ], [ 0, %1 ], [ 0, %29 ], [ 0, %34 ], [ 0, %13 ]
  %45 = phi i8 [ 0, %19 ], [ 0, %1 ], [ 0, %29 ], [ %40, %34 ], [ 0, %13 ]
  %46 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #21, !range !139
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #21
  br label %50

50:                                               ; preds = %41, %48
  %51 = phi ptr [ %49, %48 ], [ null, %41 ]
  %52 = call zeroext i8 @operation_could_trap_helper_p(i32 noundef %3, i8 noundef zeroext %44, i8 noundef zeroext %45, i8 noundef zeroext %42, i8 noundef zeroext %43, ptr noundef %51, ptr noundef nonnull %2) #21
  %53 = load i8, ptr %2, align 1, !tbaa !151
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %63

58:                                               ; preds = %63
  %59 = add nuw nsw i64 %64, 1
  %60 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %61 = zext i32 %60 to i64
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %69, !llvm.loop !207

63:                                               ; preds = %55, %58
  %64 = phi i64 [ %59, %58 ], [ 0, %55 ]
  %65 = trunc i64 %64 to i32
  %66 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %65) #21
  %67 = tail call zeroext i8 @tree_could_trap_p(ptr noundef %66) #21, !range !139
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %58, label %69

69:                                               ; preds = %63, %58, %55, %50
  %70 = phi i8 [ %52, %50 ], [ 0, %55 ], [ 1, %63 ], [ 0, %58 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #22
  ret i8 %70
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_asm_volatile_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !208 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 17
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @tree_could_throw_p(ptr noundef %0) local_unnamed_addr #1 !prof !123 {
  %2 = load i32, ptr @flag_exceptions, align 4, !tbaa !181
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %44, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 53
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !181
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !151
  %14 = tail call zeroext i8 @tree_could_trap_p(ptr noundef %13) #21, !range !139
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %11, %8
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !151
  %19 = load i64, ptr %18, align 8
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i64 [ %19, %16 ], [ %5, %4 ]
  %22 = phi ptr [ %18, %16 ], [ %0, %4 ]
  %23 = and i64 %21, 65535
  %24 = icmp eq i64 %23, 150
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.tree_exp, ptr %22, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !151
  %28 = load i64, ptr %27, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i64 [ %28, %25 ], [ %21, %20 ]
  %31 = phi ptr [ %27, %25 ], [ %22, %20 ]
  %32 = and i64 %30, 65535
  %33 = icmp eq i64 %32, 59
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = tail call i32 @call_expr_flags(ptr noundef nonnull %31) #20
  %36 = and i32 %35, 64
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i8
  br label %44

39:                                               ; preds = %29
  %40 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !181
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = tail call zeroext i8 @tree_could_trap_p(ptr noundef nonnull %31) #21, !range !139
  br label %44

44:                                               ; preds = %39, %11, %1, %42, %34
  %45 = phi i8 [ %38, %34 ], [ %43, %42 ], [ 0, %1 ], [ 1, %11 ], [ 0, %39 ]
  ret i8 %45
}

; Function Attrs: optsize
declare i32 @call_expr_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @stmt_can_throw_external(ptr noundef %0) local_unnamed_addr #1 !prof !209 {
  %2 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %0) #21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !210

4:                                                ; preds = %1
  %5 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %0) #21
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @stmt_can_throw_internal(ptr noundef %0) local_unnamed_addr #1 !prof !211 {
  %2 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %0) #21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !212

4:                                                ; preds = %1
  %5 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %0) #21
  %6 = icmp sgt i32 %5, 0
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @maybe_clean_eh_stmt_fn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !213 {
  %3 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %1) #21
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !214

5:                                                ; preds = %2
  %6 = tail call zeroext i8 @remove_stmt_from_eh_lp_fn(ptr noundef %0, ptr noundef %1) #21, !range !139
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8 [ %6, %5 ], [ 0, %2 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @maybe_clean_eh_stmt(ptr noundef %0) local_unnamed_addr #1 !prof !213 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !131
  %3 = tail call zeroext i8 @maybe_clean_eh_stmt_fn(ptr noundef %2, ptr noundef %0) #21, !range !139
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !215 {
  %3 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %0) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5, !prof !216

5:                                                ; preds = %2
  %6 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %1) #21
  %7 = icmp eq ptr %1, %0
  %8 = icmp ne i8 %6, 0
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = tail call zeroext i8 @remove_stmt_from_eh_lp(ptr noundef %0) #21, !range !139
  %12 = icmp eq i8 %6, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @add_stmt_to_eh_lp(ptr noundef %1, i32 noundef %3) #21
  br label %14

14:                                               ; preds = %2, %13, %5, %10
  %15 = phi i8 [ 0, %13 ], [ 0, %5 ], [ 1, %10 ], [ 0, %2 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @maybe_duplicate_eh_stmt_fn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 !prof !217 {
  %7 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %1) #21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %37, label %9, !prof !218

9:                                                ; preds = %6
  %10 = tail call i32 @lookup_stmt_eh_lp_fn(ptr noundef %2, ptr noundef %3) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %37, label %35

14:                                               ; preds = %9
  %15 = icmp sgt i32 %10, 0
  %16 = load ptr, ptr %2, align 8, !tbaa !141
  br i1 %15, label %17, label %25

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.eh_status, ptr %16, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !219
  %20 = tail call fastcc ptr @VEC_eh_landing_pad_base_index(ptr noundef %19, i32 noundef %10) #21
  %21 = tail call ptr @pointer_map_contains(ptr noundef %4, ptr noundef %20) #20
  %22 = load ptr, ptr %21, align 8, !tbaa !131
  %23 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %22, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !185
  br label %35

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.eh_status, ptr %16, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !220
  %28 = sub nsw i32 0, %10
  %29 = tail call fastcc ptr @VEC_eh_region_base_index(ptr noundef %27, i32 noundef %28) #21
  %30 = tail call ptr @pointer_map_contains(ptr noundef %4, ptr noundef %29) #20
  %31 = load ptr, ptr %30, align 8, !tbaa !131
  %32 = getelementptr inbounds %struct.eh_region_d, ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !221
  %34 = sub nsw i32 0, %33
  br label %35

35:                                               ; preds = %12, %17, %25
  %36 = phi i32 [ %24, %17 ], [ %34, %25 ], [ %5, %12 ]
  tail call void @add_stmt_to_eh_lp_fn(ptr noundef %0, ptr noundef %1, i32 noundef %36) #21
  br label %37

37:                                               ; preds = %12, %6, %35
  %38 = phi i8 [ 1, %35 ], [ 0, %6 ], [ 0, %12 ]
  ret i8 %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_eh_landing_pad_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !123 !PGOFuncName !222 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !131
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_eh_region_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !123 !PGOFuncName !223 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !131
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @maybe_duplicate_eh_stmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !224 {
  %3 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %0) #21
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !225

5:                                                ; preds = %2
  %6 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %1) #21
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @add_stmt_to_eh_lp(ptr noundef %0, i32 noundef %6) #21
  br label %9

9:                                                ; preds = %5, %2, %8
  %10 = phi i8 [ 1, %8 ], [ 0, %2 ], [ 0, %5 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_refactor_eh() #5 !prof !147 !PGOFuncName !226 {
  %1 = load i32, ptr @flag_exceptions, align 4, !tbaa !181
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @refactor_eh() #1 !prof !123 !PGOFuncName !227 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !131
  %2 = tail call ptr @gimple_body(ptr noundef %1) #20
  tail call fastcc void @refactor_eh_r(ptr noundef %2) #21
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_lower_resx() #5 !prof !228 !PGOFuncName !229 {
  %1 = load i32, ptr @flag_exceptions, align 4, !tbaa !181
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @execute_lower_resx() #1 !prof !123 !PGOFuncName !230 {
  %1 = tail call ptr @pointer_map_create() #20
  %2 = load ptr, ptr @cfun, align 8, !tbaa !131
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !231
  %5 = load ptr, ptr %4, align 8, !tbaa !232
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !234
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !236
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  tail call void @pointer_map_destroy(ptr noundef %1) #20
  br label %40

12:                                               ; preds = %0, %24
  %13 = phi ptr [ %28, %24 ], [ %7, %0 ]
  %14 = phi i8 [ %26, %24 ], [ 0, %0 ]
  %15 = phi i8 [ %25, %24 ], [ 0, %0 ]
  %16 = tail call ptr @last_stmt(ptr noundef %13) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = tail call fastcc zeroext i8 @is_gimple_resx(ptr noundef nonnull %16) #21, !range !139
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc zeroext i8 @lower_resx(ptr noundef %13, ptr noundef nonnull %16, ptr noundef %1) #21, !range !139
  %23 = or i8 %22, %15
  br label %24

24:                                               ; preds = %21, %18, %12
  %25 = phi i8 [ %23, %21 ], [ %15, %18 ], [ %15, %12 ]
  %26 = phi i8 [ 1, %21 ], [ %14, %18 ], [ %14, %12 ]
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !234
  %29 = load ptr, ptr @cfun, align 8, !tbaa !131
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !231
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !236
  %34 = icmp eq ptr %28, %33
  br i1 %34, label %35, label %12, !llvm.loop !237

35:                                               ; preds = %24
  %36 = icmp eq i8 %25, 0
  %37 = icmp eq i8 %26, 0
  %38 = select i1 %37, i32 0, i32 16384
  tail call void @pointer_map_destroy(ptr noundef %1) #20
  br i1 %36, label %40, label %39

39:                                               ; preds = %35
  tail call void @free_dominance_info(i32 noundef 1) #20
  tail call void @free_dominance_info(i32 noundef 2) #20
  br label %40

40:                                               ; preds = %11, %39, %35
  %41 = phi i32 [ 0, %11 ], [ %38, %39 ], [ %38, %35 ]
  ret i32 %41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_lower_eh_dispatch() #6 !prof !228 !PGOFuncName !238 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !131
  %2 = load ptr, ptr %1, align 8, !tbaa !141
  %3 = load ptr, ptr %2, align 8, !tbaa !239
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @execute_lower_eh_dispatch() #1 !prof !123 !PGOFuncName !240 {
  tail call void @assign_filter_values() #20
  %1 = load ptr, ptr @cfun, align 8, !tbaa !131
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !231
  %4 = load ptr, ptr %3, align 8, !tbaa !232
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !234
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !236
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %39, label %10

10:                                               ; preds = %0, %22
  %11 = phi ptr [ %26, %22 ], [ %6, %0 ]
  %12 = phi i8 [ %24, %22 ], [ 0, %0 ]
  %13 = phi i8 [ %23, %22 ], [ 0, %0 ]
  %14 = tail call ptr @last_stmt(ptr noundef %11) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %14) #21, !range !201
  %18 = icmp eq i32 %17, 15
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = tail call fastcc zeroext i8 @lower_eh_dispatch(ptr noundef %11, ptr noundef nonnull %14) #21, !range !139
  %21 = or i8 %20, %12
  br label %22

22:                                               ; preds = %19, %16, %10
  %23 = phi i8 [ 1, %19 ], [ %13, %16 ], [ %13, %10 ]
  %24 = phi i8 [ %21, %19 ], [ %12, %16 ], [ %12, %10 ]
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !234
  %27 = load ptr, ptr @cfun, align 8, !tbaa !131
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !231
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !236
  %32 = icmp eq ptr %26, %31
  br i1 %32, label %33, label %10, !llvm.loop !241

33:                                               ; preds = %22
  %34 = icmp eq i8 %24, 0
  %35 = icmp eq i8 %23, 0
  %36 = select i1 %35, i32 0, i32 16384
  br i1 %34, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call zeroext i8 @delete_unreachable_blocks() #20
  br label %39

39:                                               ; preds = %0, %37, %33
  %40 = phi i32 [ %36, %37 ], [ %36, %33 ], [ 0, %0 ]
  ret i32 %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_cleanup_eh() #6 !prof !242 !PGOFuncName !243 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !131
  %2 = load ptr, ptr %1, align 8, !tbaa !141
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !244

4:                                                ; preds = %0
  %5 = load ptr, ptr %2, align 8, !tbaa !239
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %0
  %9 = phi i8 [ 0, %0 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_cleanup_eh() #1 !prof !123 !PGOFuncName !245 {
  tail call fastcc void @remove_unreachable_handlers() #21
  %1 = load ptr, ptr @cfun, align 8, !tbaa !131
  %2 = load ptr, ptr %1, align 8, !tbaa !141
  %3 = load ptr, ptr %2, align 8, !tbaa !239
  %4 = icmp ne ptr %3, null
  %5 = load i32, ptr @optimize, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = tail call fastcc zeroext i8 @unsplit_all_eh() #21, !range !139
  %10 = tail call fastcc zeroext i8 @cleanup_all_empty_eh() #21, !range !139
  %11 = or i8 %10, %9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  tail call void @free_dominance_info(i32 noundef 1) #20
  tail call void @free_dominance_info(i32 noundef 2) #20
  %14 = tail call zeroext i8 @delete_unreachable_blocks() #20
  tail call fastcc void @remove_unreachable_handlers_no_lp() #21
  br label %15

15:                                               ; preds = %8, %0, %13
  %16 = phi i32 [ 16416, %13 ], [ 0, %0 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @verify_eh_edges(ptr noundef %0) local_unnamed_addr #1 !prof !123 {
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %5 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %0) #21
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call ptr @get_eh_landing_pad_from_number(i32 noundef %5) #20
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ null, %1 ]
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 1
  %12 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %11) #21
  store i32 0, ptr %2, align 8, !tbaa.struct !180
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %12, ptr %13, align 8, !tbaa.struct !182
  %14 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %12, ptr noundef nonnull %3) #21, !range !139
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %9, %28
  %17 = phi ptr [ %29, %28 ], [ null, %9 ]
  %18 = load ptr, ptr %3, align 8, !tbaa !131
  %19 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !183
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = icmp eq ptr %17, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !246
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.7, i32 noundef %27) #20
  br label %71

28:                                               ; preds = %23, %16
  %29 = phi ptr [ %17, %16 ], [ %18, %23 ]
  call fastcc void @ei_next(ptr noundef nonnull %2) #21
  %30 = load i32, ptr %2, align 8
  %31 = load ptr, ptr %13, align 8
  %32 = call fastcc zeroext i8 @ei_cond(i32 %30, ptr %31, ptr noundef nonnull %3) #21, !range !139
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %16, !llvm.loop !247

34:                                               ; preds = %28
  %35 = icmp eq ptr %10, null
  br i1 %35, label %38, label %43

36:                                               ; preds = %9
  %37 = icmp eq ptr %10, null
  br i1 %37, label %71, label %46

38:                                               ; preds = %34
  %39 = icmp eq ptr %29, null
  br i1 %39, label %71, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !246
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8, i32 noundef %42) #20
  br label %71

43:                                               ; preds = %34
  %44 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %0) #21
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %49, label %52

46:                                               ; preds = %36
  %47 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %0) #21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46, %43
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !246
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9, i32 noundef %51) #20
  br label %71

52:                                               ; preds = %43
  %53 = icmp eq ptr %29, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %46, %52
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !246
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.10, i32 noundef %56) #20
  br label %71

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !176
  %60 = load ptr, ptr @cfun, align 8, !tbaa !131
  %61 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %10, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !173
  %63 = tail call ptr @label_to_block_fn(ptr noundef %60, ptr noundef %62) #20
  %64 = icmp eq ptr %59, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %67 = load i32, ptr %66, align 8, !tbaa !246
  %68 = load ptr, ptr %58, align 8, !tbaa !176
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !246
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.11, i32 noundef %67, i32 noundef %70) #20
  br label %71

71:                                               ; preds = %36, %57, %38, %65, %54, %49, %40, %25
  %72 = phi i8 [ 1, %25 ], [ 1, %40 ], [ 1, %54 ], [ 1, %65 ], [ 1, %49 ], [ 0, %38 ], [ 0, %57 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  ret i8 %72
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 !prof !123 !PGOFuncName !248 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !123 !PGOFuncName !249 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #21, !range !139
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #21
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !131
  ret i8 %10
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !250 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #21
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #21
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !251
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !251
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @verify_eh_dispatch_edge(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !123 {
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = tail call fastcc i32 @gimple_eh_dispatch_region(ptr noundef %0) #21
  %5 = tail call ptr @get_eh_region_from_number(i32 noundef %4) #20
  %6 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 1
  %8 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %7) #21
  store i32 0, ptr %2, align 8, !tbaa.struct !180
  %9 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !182
  %10 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %3) #21, !range !139
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %1, %18
  %13 = load ptr, ptr %3, align 8, !tbaa !131
  %14 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !253
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3978, ptr noundef nonnull @.str.1) #20
  br label %18

18:                                               ; preds = %12, %17
  call fastcc void @ei_next(ptr noundef nonnull %2) #21
  %19 = load i32, ptr %2, align 8
  %20 = load ptr, ptr %9, align 8
  %21 = call fastcc zeroext i8 @ei_cond(i32 %19, ptr %20, ptr noundef nonnull %3) #21, !range !139
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %12, !llvm.loop !254

23:                                               ; preds = %18, %1
  %24 = getelementptr inbounds %struct.eh_region_d, ptr %5, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !161
  switch i32 %25, label %56 [
    i32 1, label %26
    i32 2, label %47
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.eh_region_d, ptr %5, i64 0, i32 5
  %28 = load ptr, ptr %3, align 8, !tbaa !131
  %29 = load ptr, ptr %27, align 8, !tbaa !151
  %30 = icmp eq ptr %29, null
  br i1 %30, label %57, label %34

31:                                               ; preds = %42
  %32 = load ptr, ptr %35, align 8, !tbaa !151
  %33 = icmp eq ptr %32, null
  br i1 %33, label %57, label %34, !llvm.loop !255

34:                                               ; preds = %26, %31
  %35 = phi ptr [ %32, %31 ], [ %29, %26 ]
  %36 = load ptr, ptr @cfun, align 8, !tbaa !131
  %37 = getelementptr inbounds %struct.eh_catch_d, ptr %35, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !163
  %39 = tail call ptr @label_to_block_fn(ptr noundef %36, ptr noundef %38) #20
  %40 = tail call ptr @find_edge(ptr noundef %6, ptr noundef %39) #20
  %41 = icmp eq ptr %40, null
  br i1 %41, label %90, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 3
  store ptr %40, ptr %43, align 8, !tbaa !253
  %44 = getelementptr inbounds %struct.eh_catch_d, ptr %35, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !165
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %31, !llvm.loop !255

47:                                               ; preds = %23
  %48 = load ptr, ptr @cfun, align 8, !tbaa !131
  %49 = getelementptr inbounds %struct.eh_region_d, ptr %5, i64 0, i32 5, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !151
  %51 = tail call ptr @label_to_block_fn(ptr noundef %48, ptr noundef %50) #20
  %52 = tail call ptr @find_edge(ptr noundef %6, ptr noundef %51) #20
  store ptr %52, ptr %3, align 8, !tbaa !131
  %53 = icmp eq ptr %52, null
  br i1 %53, label %90, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 3
  store ptr %52, ptr %55, align 8, !tbaa !253
  br label %60

56:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4015, ptr noundef nonnull @.str.1) #20
  br label %60

57:                                               ; preds = %42, %31, %26
  %58 = phi ptr [ %28, %26 ], [ %40, %31 ], [ %40, %42 ]
  %59 = phi i32 [ 1, %26 ], [ 0, %42 ], [ 1, %31 ]
  store ptr %58, ptr %3, align 8, !tbaa !131
  br label %60

60:                                               ; preds = %57, %56, %54
  %61 = phi i32 [ 1, %56 ], [ 1, %54 ], [ %59, %57 ]
  store i32 0, ptr %2, align 8, !tbaa.struct !180
  store ptr %8, ptr %9, align 8, !tbaa.struct !182
  %62 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %3) #21, !range !139
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %60, %78
  %65 = phi ptr [ %79, %78 ], [ null, %60 ]
  %66 = load ptr, ptr %3, align 8, !tbaa !131
  %67 = getelementptr inbounds %struct.edge_def, ptr %66, i64 0, i32 7
  %68 = load i32, ptr %67, align 8, !tbaa !183
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %64
  %72 = icmp eq ptr %65, null
  br i1 %72, label %78, label %90

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.edge_def, ptr %66, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !253
  %76 = icmp eq ptr %75, null
  br i1 %76, label %90, label %77

77:                                               ; preds = %73
  store ptr null, ptr %74, align 8, !tbaa !253
  br label %78

78:                                               ; preds = %71, %77
  %79 = phi ptr [ %65, %77 ], [ %66, %71 ]
  call fastcc void @ei_next(ptr noundef nonnull %2) #21
  %80 = load i32, ptr %2, align 8
  %81 = load ptr, ptr %9, align 8
  %82 = call fastcc zeroext i8 @ei_cond(i32 %80, ptr %81, ptr noundef nonnull %3) #21, !range !139
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %64, !llvm.loop !256

84:                                               ; preds = %78
  %85 = icmp ne ptr %79, null
  %86 = zext i1 %85 to i32
  br label %87

87:                                               ; preds = %84, %60
  %88 = phi i32 [ 0, %60 ], [ %86, %84 ]
  %89 = icmp eq i32 %61, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %34, %73, %71, %87, %47
  %91 = phi ptr [ @.str.12, %47 ], [ @.str.15, %87 ], [ @.str.13, %71 ], [ @.str.14, %73 ], [ @.str.12, %34 ]
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 9
  %93 = load i32, ptr %92, align 8, !tbaa !246
  tail call void (ptr, ...) @error(ptr noundef nonnull %91, i32 noundef %93) #20
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi i8 [ 0, %87 ], [ 1, %90 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  ret i8 %95
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_body(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #9

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @collect_finally_tree_1(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !147 !PGOFuncName !257 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #21
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !139
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10, !prof !258

6:                                                ; preds = %2, %6
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  tail call fastcc void @collect_finally_tree(ptr noundef %7, ptr noundef %1) #21
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %8 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !139
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %6, label %10, !prof !259, !llvm.loop !260

10:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_eh_constructs_1(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !147 !PGOFuncName !261 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #21
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !139
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !258

6:                                                ; preds = %2, %6
  call fastcc void @lower_eh_constructs_2(ptr noundef %0, ptr noundef nonnull %3) #21
  %7 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !139
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %6, label %9, !prof !259, !llvm.loop !262

9:                                                ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_seq_may_fallthru(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @function_needs_eh_personality(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 !prof !169 !PGOFuncName !263 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #21
  store ptr %3, ptr %0, align 8, !tbaa !264
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !266
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !267

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !268
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !267

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #21
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !270
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !271 !PGOFuncName !272 {
  %2 = load ptr, ptr %0, align 8, !tbaa !264
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @collect_finally_tree(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !273 !PGOFuncName !274 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !201
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %19 [
    i8 4, label %5
    i8 17, label %7
    i8 11, label %15
    i8 12, label %17
  ], !prof !275

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_label_label(ptr noundef %0) #21
  tail call fastcc void @record_in_finally_tree(ptr %6, ptr noundef %1) #21
  br label %19

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @gimple_try_kind(ptr noundef %0) #21, !range !276
  switch i32 %8, label %19 [
    i32 2, label %9
    i32 1, label %12
  ]

9:                                                ; preds = %7
  tail call fastcc void @record_in_finally_tree(ptr %0, ptr noundef %1) #21
  %10 = tail call fastcc ptr @gimple_try_eval(ptr noundef %0) #21
  tail call fastcc void @collect_finally_tree_1(ptr noundef %10, ptr noundef %0) #21
  %11 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %0) #21
  tail call fastcc void @collect_finally_tree_1(ptr noundef %11, ptr noundef %1) #21
  br label %19

12:                                               ; preds = %7
  %13 = tail call fastcc ptr @gimple_try_eval(ptr noundef %0) #21
  tail call fastcc void @collect_finally_tree_1(ptr noundef %13, ptr noundef %1) #21
  %14 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %0) #21
  tail call fastcc void @collect_finally_tree_1(ptr noundef %14, ptr noundef %1) #21
  br label %19

15:                                               ; preds = %2
  %16 = tail call fastcc ptr @gimple_catch_handler(ptr noundef %0) #21
  tail call fastcc void @collect_finally_tree_1(ptr noundef %16, ptr noundef %1) #21
  br label %19

17:                                               ; preds = %2
  %18 = tail call fastcc ptr @gimple_eh_filter_failure(ptr noundef %0) #21
  tail call fastcc void @collect_finally_tree_1(ptr noundef %18, ptr noundef %1) #21
  br label %19

19:                                               ; preds = %7, %2, %9, %12, %17, %15, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !277 !PGOFuncName !278 {
  %2 = load ptr, ptr %0, align 8, !tbaa !264
  %3 = load ptr, ptr %2, align 8, !tbaa !268
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #11 !prof !277 !PGOFuncName !279 {
  %2 = load ptr, ptr %0, align 8, !tbaa !264
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !280
  store ptr %4, ptr %0, align 8, !tbaa !264
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !169 !PGOFuncName !281 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !267

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !282
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_label_label(ptr noundef %0) unnamed_addr #1 !prof !284 !PGOFuncName !285 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_in_finally_tree(ptr %0, ptr noundef %1) unnamed_addr #1 !prof !284 !PGOFuncName !286 {
  %3 = tail call ptr @xmalloc(i64 noundef 16) #20
  store ptr %0, ptr %3, align 8, !tbaa.struct !287
  %4 = getelementptr inbounds %struct.finally_tree_node, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !288
  %5 = load ptr, ptr @finally_tree, align 8, !tbaa !131
  %6 = tail call ptr @htab_find_slot(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 1) #20
  %7 = load ptr, ptr %6, align 8, !tbaa !131
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !290

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 235, ptr noundef nonnull @.str.1) #20
  br label %10

10:                                               ; preds = %2, %9
  store ptr %3, ptr %6, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_try_kind(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !291 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 3
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_try_eval(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !292 {
  %2 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_try_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !293 {
  %2 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_catch_handler(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !294 {
  %2 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_eh_filter_failure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !295 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !296 !PGOFuncName !297 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !139
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !298

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !131
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !296 !PGOFuncName !299 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !201
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !296 !PGOFuncName !300 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #21
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !301
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !298

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !296 !PGOFuncName !302 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !201
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #21
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #7 !prof !296 !PGOFuncName !303 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !181
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_eh_constructs_2(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !273 !PGOFuncName !304 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #21
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #21, !range !201
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %109 [
    i8 8, label %6
    i8 6, label %36
    i8 1, label %84
    i8 3, label %84
    i8 9, label %84
    i8 17, label %85
  ], !prof !305

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %3) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9, !prof !306

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_function_decl, ptr %7, i64 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 6144
  %13 = icmp eq i32 %12, 6144
  br i1 %13, label %14, label %36, !prof !306

14:                                               ; preds = %9
  %15 = and i32 %11, 2047
  switch i32 %15, label %36 [
    i32 552, label %16
    i32 553, label %25
    i32 554, label %35
  ]

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.leh_state, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !307
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.eh_region_d, ptr %18, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !221
  %23 = sext i32 %22 to i64
  %24 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %23) #20
  tail call fastcc void @gimple_call_set_arg(ptr noundef %3, ptr noundef %24) #21
  br label %36

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !151
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  br label %29

29:                                               ; preds = %16, %25
  %30 = phi ptr [ %28, %25 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), %16 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !151
  %32 = tail call ptr @build_int_cst(ptr noundef %31, i64 noundef 0) #20
  %33 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %3) #21
  %34 = tail call ptr @gimple_build_assign_stat(ptr noundef %33, ptr noundef %32) #20
  tail call void @gsi_insert_before(ptr noundef %1, ptr noundef %34, i32 noundef 1) #20
  br label %35

35:                                               ; preds = %14, %29
  tail call void @gsi_remove(ptr noundef %1, i8 noundef zeroext 1) #20
  br label %110

36:                                               ; preds = %20, %14, %9, %6, %2
  %37 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %3) #21
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %75, label %39, !prof !309

39:                                               ; preds = %36
  %40 = tail call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %3) #21, !range !139
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %75, label %42

42:                                               ; preds = %39
  %43 = tail call zeroext i8 @gimple_stmt_may_fallthru(ptr noundef %3) #20
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %75, label %45

45:                                               ; preds = %42
  %46 = tail call ptr @gimple_get_lhs(ptr noundef %3) #20
  %47 = tail call zeroext i8 @tree_could_throw_p(ptr noundef %46) #21, !range !139
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %45
  %50 = tail call ptr @gimple_get_lhs(ptr noundef %3) #20
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !151
  %53 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %52) #20
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %49
  %56 = tail call ptr @gimple_get_lhs(ptr noundef %3) #20
  %57 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !151
  %59 = tail call ptr @create_tmp_var(ptr noundef %58, ptr noundef null) #20
  %60 = tail call ptr @gimple_build_assign_stat(ptr noundef %56, ptr noundef %59) #20
  %61 = tail call fastcc i32 @gimple_location(ptr noundef %3) #21
  tail call fastcc void @gimple_set_location(ptr noundef %60, i32 noundef %61) #21
  %62 = tail call fastcc ptr @gimple_block(ptr noundef %3) #21
  tail call fastcc void @gimple_set_block(ptr noundef %60, ptr noundef %62) #21
  tail call void @gimple_set_lhs(ptr noundef %3, ptr noundef %59) #20
  %63 = getelementptr inbounds %struct.tree_common, ptr %59, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !151
  %65 = load i64, ptr %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = and i32 %66, 65535
  %68 = add nsw i32 %67, -13
  %69 = icmp ult i32 %68, 2
  br i1 %69, label %70, label %74

70:                                               ; preds = %55
  %71 = getelementptr inbounds %struct.tree_decl_common, ptr %59, i64 0, i32 2
  %72 = load i64, ptr %71, align 8
  %73 = or i64 %72, 134217728
  store i64 %73, ptr %71, align 8
  br label %74

74:                                               ; preds = %55, %70
  tail call void @gsi_insert_after(ptr noundef %1, ptr noundef %60, i32 noundef 1) #20
  br label %75

75:                                               ; preds = %74, %49, %45, %42, %39, %36
  %76 = load ptr, ptr %0, align 8, !tbaa !310
  %77 = icmp eq ptr %76, null
  br i1 %77, label %109, label %78, !prof !309

78:                                               ; preds = %75
  %79 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %3) #21
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %109, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %0, align 8, !tbaa !310
  tail call fastcc void @record_stmt_eh_region(ptr noundef %82, ptr noundef %3) #21
  %83 = load ptr, ptr %0, align 8, !tbaa !310
  tail call fastcc void @note_eh_region_may_contain_throw(ptr noundef %83) #21
  br label %109

84:                                               ; preds = %2, %2, %2
  tail call fastcc void @maybe_record_in_goto_queue(ptr noundef %0, ptr noundef %3) #21
  br label %109

85:                                               ; preds = %2
  %86 = tail call fastcc i32 @gimple_try_kind(ptr noundef %3) #21, !range !276
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = tail call fastcc ptr @lower_try_finally(ptr noundef %0, ptr noundef %3) #21
  br label %107

90:                                               ; preds = %85
  %91 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %3) #21
  %92 = tail call fastcc ptr @gimple_seq_first_stmt(ptr noundef %91) #21
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = tail call fastcc ptr @gimple_try_eval(ptr noundef %3) #21
  tail call fastcc void @lower_eh_constructs_1(ptr noundef %0, ptr noundef %95) #21
  br label %107

96:                                               ; preds = %90
  %97 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %92) #21, !range !201
  %98 = trunc i32 %97 to i8
  switch i8 %98, label %105 [
    i8 11, label %99
    i8 12, label %101
    i8 13, label %103
  ]

99:                                               ; preds = %96
  %100 = tail call fastcc ptr @lower_catch(ptr noundef %0, ptr noundef %3) #21
  br label %107

101:                                              ; preds = %96
  %102 = tail call fastcc ptr @lower_eh_filter(ptr noundef %0, ptr noundef %3) #21
  br label %107

103:                                              ; preds = %96
  %104 = tail call fastcc ptr @lower_eh_must_not_throw(ptr noundef %0, ptr noundef %3) #21
  br label %107

105:                                              ; preds = %96
  %106 = tail call fastcc ptr @lower_cleanup(ptr noundef %0, ptr noundef %3) #21
  br label %107

107:                                              ; preds = %94, %105, %103, %101, %99, %88
  %108 = phi ptr [ %89, %88 ], [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %100, %99 ], [ %95, %94 ]
  tail call void @gsi_insert_seq_before(ptr noundef %1, ptr noundef %108, i32 noundef 1) #20
  tail call void @gsi_remove(ptr noundef %1, i8 noundef zeroext 1) #20
  br label %110

109:                                              ; preds = %2, %75, %78, %81, %84
  tail call fastcc void @gsi_next(ptr noundef %1) #21
  br label %110

110:                                              ; preds = %35, %109, %107
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 !prof !311 !PGOFuncName !312 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #21
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !313

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !151
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_arg(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !314 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 3, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !315 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !316 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #21, !range !139
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #21, !range !139
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #21
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %4, %7, %1
  %12 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: optsize
declare zeroext i8 @gimple_stmt_may_fallthru(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #12 !prof !123 !PGOFuncName !317 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !318 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !151
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_block(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #12 !prof !123 !PGOFuncName !319 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_block(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !320 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  ret ptr %3
}

; Function Attrs: optsize
declare void @gimple_set_lhs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_stmt_eh_region(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !321 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !161
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load ptr, ptr @cfun, align 8, !tbaa !131
  %10 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !221
  %12 = sub nsw i32 0, %11
  tail call void @add_stmt_to_eh_lp_fn(ptr noundef %9, ptr noundef %1, i32 noundef %12) #21
  br label %28

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !322
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call ptr @gen_eh_landing_pad(ptr noundef nonnull %0) #20
  br label %23

19:                                               ; preds = %13
  %20 = load ptr, ptr %15, align 8, !tbaa !323
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.1) #20
  br label %23

23:                                               ; preds = %22, %19, %17
  %24 = phi ptr [ %18, %17 ], [ %15, %19 ], [ %15, %22 ]
  %25 = load ptr, ptr @cfun, align 8, !tbaa !131
  %26 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %24, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !185
  tail call void @add_stmt_to_eh_lp_fn(ptr noundef %25, ptr noundef %1, i32 noundef %27) #21
  br label %28

28:                                               ; preds = %2, %23, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @note_eh_region_may_contain_throw(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !123 !PGOFuncName !324 {
  br label %2

2:                                                ; preds = %9, %1
  %3 = phi ptr [ %0, %1 ], [ %13, %9 ]
  %4 = load ptr, ptr @eh_region_may_contain_throw_map, align 8, !tbaa !131
  %5 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !221
  %7 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %6) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load ptr, ptr @eh_region_may_contain_throw_map, align 8, !tbaa !131
  %11 = load i32, ptr %5, align 8, !tbaa !221
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %10, i32 noundef %11) #20
  %13 = load ptr, ptr %3, align 8, !tbaa !325
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %2, !llvm.loop !326

15:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_record_in_goto_queue(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 !prof !327 !PGOFuncName !328 {
  %3 = getelementptr inbounds %struct.leh_state, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !329
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6, !prof !330

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !201
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %18 [
    i8 1, label %9
    i8 3, label %14
    i8 9, label %16
  ]

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %1, i32 noundef 2) #21
  %11 = tail call fastcc ptr @gimple_cond_true_label(ptr noundef %1) #21
  tail call fastcc void @record_in_goto_queue_label(ptr noundef nonnull %4, ptr %10, ptr noundef %11) #21
  %12 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %1, i32 noundef 3) #21
  %13 = tail call fastcc ptr @gimple_cond_false_label(ptr noundef %1) #21
  tail call fastcc void @record_in_goto_queue_label(ptr noundef nonnull %4, ptr %12, ptr noundef %13) #21
  br label %19

14:                                               ; preds = %6
  %15 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %1) #21
  tail call fastcc void @record_in_goto_queue_label(ptr noundef nonnull %4, ptr %1, ptr noundef %15) #21
  br label %19

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.leh_tf_state, ptr %4, i64 0, i32 12
  store i8 1, ptr %17, align 1, !tbaa !331
  tail call fastcc void @record_in_goto_queue(ptr noundef nonnull %4, ptr %1, i32 noundef -1, i8 noundef zeroext 0) #21
  br label %19

18:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 683, ptr noundef nonnull @.str.1) #20
  br label %19

19:                                               ; preds = %9, %14, %16, %18, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lower_try_finally(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !333 {
  %3 = alloca %struct.leh_tf_state, align 8
  %4 = alloca %struct.leh_state, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  %5 = getelementptr inbounds i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %5, i8 0, i64 80, i1 false)
  store ptr %1, ptr %3, align 8, !tbaa !334
  %6 = getelementptr inbounds %struct.leh_tf_state, ptr %3, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !335
  %7 = getelementptr inbounds %struct.leh_tf_state, ptr %3, i64 0, i32 3
  store ptr %0, ptr %7, align 8, !tbaa !336
  %8 = load i1, ptr @using_eh_for_cleanups_p, align 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !310
  %11 = tail call ptr @gen_eh_region_cleanup(ptr noundef %10) #20
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  %14 = getelementptr inbounds %struct.leh_tf_state, ptr %3, i64 0, i32 4
  store ptr %13, ptr %14, align 8
  store ptr %13, ptr %4, align 8, !tbaa !310
  %15 = getelementptr inbounds %struct.leh_state, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !307
  %17 = getelementptr inbounds %struct.leh_state, ptr %4, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !307
  %18 = getelementptr inbounds %struct.leh_state, ptr %4, i64 0, i32 2
  store ptr %3, ptr %18, align 8, !tbaa !329
  %19 = load ptr, ptr @eh_seq, align 8, !tbaa !131
  store ptr null, ptr @eh_seq, align 8, !tbaa !131
  %20 = call fastcc ptr @gimple_try_eval(ptr noundef %1) #21
  call fastcc void @lower_eh_constructs_1(ptr noundef nonnull %4, ptr noundef %20) #21
  %21 = call fastcc ptr @gimple_try_eval(ptr noundef %1) #21
  %22 = call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %21) #20
  %23 = getelementptr inbounds %struct.leh_tf_state, ptr %3, i64 0, i32 11
  store i8 %22, ptr %23, align 8, !tbaa !337
  %24 = load i1, ptr @using_eh_for_cleanups_p, align 4
  br i1 %24, label %28, label %25

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.leh_tf_state, ptr %3, i64 0, i32 13
  %27 = load i8, ptr %26, align 2, !tbaa !338
  br label %32

28:                                               ; preds = %12
  %29 = load ptr, ptr %14, align 8, !tbaa !339
  %30 = call fastcc zeroext i8 @eh_region_may_contain_throw(ptr noundef %29) #21, !range !139
  %31 = getelementptr inbounds %struct.leh_tf_state, ptr %3, i64 0, i32 13
  store i8 %30, ptr %31, align 2, !tbaa !338
  br label %32

32:                                               ; preds = %25, %28
  %33 = phi i8 [ %27, %25 ], [ %30, %28 ]
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.leh_tf_state, ptr %3, i64 0, i32 13
  call fastcc void @honor_protect_cleanup_actions(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #21
  %37 = load i8, ptr %36, align 2, !tbaa !338
  %38 = zext i8 %37 to i32
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i32 [ %38, %35 ], [ 0, %32 ]
  %41 = getelementptr inbounds %struct.leh_tf_state, ptr %3, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8
  %43 = call fastcc i32 @VEC_tree_base_length(ptr noundef %42) #21
  %44 = load i8, ptr %23, align 8, !tbaa !337
  %45 = zext i8 %44 to i32
  %46 = add nsw i32 %43, %45
  %47 = getelementptr inbounds %struct.leh_tf_state, ptr %3, i64 0, i32 12
  %48 = load i8, ptr %47, align 1, !tbaa !331
  %49 = zext i8 %48 to i32
  %50 = add nsw i32 %46, %49
  %51 = add nsw i32 %50, %40
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = getelementptr inbounds %struct.leh_tf_state, ptr %3, i64 0, i32 2
  %55 = call fastcc ptr @gimple_try_eval(ptr noundef %1) #21
  call void @gimple_seq_add_seq(ptr noundef nonnull %54, ptr noundef %55) #20
  call fastcc void @gimple_try_set_cleanup(ptr noundef %1, ptr noundef null) #21
  br label %70

56:                                               ; preds = %39
  %57 = call fastcc ptr @gimple_try_cleanup(ptr noundef %1) #21
  %58 = call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %57) #20
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  call fastcc void @lower_try_finally_nofallthru(ptr noundef nonnull %0, ptr noundef nonnull %3) #21
  br label %70

61:                                               ; preds = %56
  %62 = icmp eq i32 %51, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  call fastcc void @lower_try_finally_onedest(ptr noundef nonnull %0, ptr noundef nonnull %3) #21
  br label %70

64:                                               ; preds = %61
  %65 = call fastcc ptr @gimple_try_cleanup(ptr noundef %1) #21
  %66 = call fastcc zeroext i8 @decide_copy_try_finally(i32 noundef %51, ptr noundef %65) #21, !range !139
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  call fastcc void @lower_try_finally_copy(ptr noundef nonnull %0, ptr noundef nonnull %3) #21
  br label %70

69:                                               ; preds = %64
  call fastcc void @lower_try_finally_switch(ptr noundef nonnull %0, ptr noundef nonnull %3) #21
  br label %70

70:                                               ; preds = %60, %68, %69, %63, %53
  %71 = getelementptr inbounds %struct.leh_tf_state, ptr %3, i64 0, i32 10
  %72 = load ptr, ptr %71, align 8, !tbaa !340
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = call ptr @gimple_build_label(ptr noundef nonnull %72) #20
  %76 = getelementptr inbounds %struct.leh_tf_state, ptr %3, i64 0, i32 2
  call void @gimple_seq_add_stmt(ptr noundef nonnull %76, ptr noundef %75) #20
  br label %77

77:                                               ; preds = %74, %70
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %41) #21
  %78 = getelementptr inbounds %struct.leh_tf_state, ptr %3, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !341
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  call void @free(ptr noundef nonnull %79) #21
  br label %82

82:                                               ; preds = %81, %77
  %83 = getelementptr inbounds %struct.leh_tf_state, ptr %3, i64 0, i32 8
  %84 = load ptr, ptr %83, align 8, !tbaa !342
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  call void @pointer_map_destroy(ptr noundef nonnull %84) #20
  br label %87

87:                                               ; preds = %86, %82
  %88 = icmp eq ptr %19, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %87
  %90 = load ptr, ptr @eh_seq, align 8, !tbaa !131
  %91 = icmp eq ptr %90, null
  store ptr %19, ptr @eh_seq, align 8, !tbaa !131
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  call void @gimple_seq_add_seq(ptr noundef nonnull @eh_seq, ptr noundef nonnull %90) #20
  br label %93

93:                                               ; preds = %89, %92, %87
  %94 = getelementptr inbounds %struct.leh_tf_state, ptr %3, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !343
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #22
  ret ptr %95
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_first_stmt(ptr noundef readonly %0) unnamed_addr #6 !prof !123 !PGOFuncName !344 {
  %2 = tail call fastcc ptr @gimple_seq_first(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !268
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lower_catch(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !345 {
  %3 = alloca %struct.leh_state, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !346
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = tail call fastcc i32 @gimple_location(ptr noundef %1) #21
  %7 = load i32, ptr @flag_exceptions, align 4, !tbaa !181
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !310
  %11 = tail call ptr @gen_eh_region_try(ptr noundef %10) #20
  store ptr %11, ptr %3, align 8, !tbaa !310
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  %14 = tail call fastcc ptr @gimple_try_eval(ptr noundef %1) #21
  call fastcc void @lower_eh_constructs_1(ptr noundef nonnull %3, ptr noundef %14) #21
  %15 = call fastcc zeroext i8 @eh_region_may_contain_throw(ptr noundef %13) #21, !range !139
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call fastcc ptr @gimple_try_eval(ptr noundef %1) #21
  br label %56

19:                                               ; preds = %12
  store ptr null, ptr %5, align 8, !tbaa !131
  call fastcc void @emit_eh_dispatch(ptr noundef nonnull %5, ptr noundef %13) #21
  call fastcc void @emit_resx(ptr noundef nonnull %5, ptr noundef %13) #21
  %20 = load ptr, ptr %0, align 8, !tbaa !310
  store ptr %20, ptr %3, align 8, !tbaa !310
  %21 = getelementptr inbounds %struct.leh_state, ptr %3, i64 0, i32 1
  store ptr %13, ptr %21, align 8, !tbaa !307
  %22 = call fastcc ptr @gimple_try_cleanup(ptr noundef %1) #21
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %22) #21
  %23 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21, !range !139
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %19, %49
  %26 = phi ptr [ %45, %49 ], [ null, %19 ]
  %27 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21
  %28 = call fastcc ptr @gimple_catch_types(ptr noundef %27) #21
  %29 = call ptr @gen_eh_region_catch(ptr noundef %13, ptr noundef %28) #20
  %30 = call fastcc ptr @gimple_catch_handler(ptr noundef %27) #21
  call fastcc void @lower_eh_constructs_1(ptr noundef nonnull %3, ptr noundef %30) #21
  %31 = call ptr @create_artificial_label(i32 noundef 0) #20
  %32 = getelementptr inbounds %struct.eh_catch_d, ptr %29, i64 0, i32 4
  store ptr %31, ptr %32, align 8, !tbaa !163
  %33 = call ptr @gimple_build_label(ptr noundef %31) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %33) #20
  call void @gimple_seq_add_seq(ptr noundef nonnull %5, ptr noundef %30) #20
  %34 = load ptr, ptr %5, align 8, !tbaa !131
  %35 = call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %34) #20
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %25
  %38 = icmp eq ptr %26, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = call ptr @create_artificial_label(i32 noundef %6) #20
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi ptr [ %26, %37 ], [ %40, %39 ]
  %43 = call ptr @gimple_build_goto(ptr noundef %42) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %43) #20
  br label %44

44:                                               ; preds = %41, %25
  %45 = phi ptr [ %42, %41 ], [ %26, %25 ]
  %46 = getelementptr inbounds %struct.eh_catch_d, ptr %29, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !165
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  call fastcc void @gsi_next(ptr noundef nonnull %4) #21
  %50 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21, !range !139
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %25, label %52, !llvm.loop !347

52:                                               ; preds = %49, %44, %19
  %53 = phi ptr [ null, %19 ], [ %45, %44 ], [ %45, %49 ]
  %54 = load ptr, ptr %5, align 8, !tbaa !131
  call fastcc void @gimple_try_set_cleanup(ptr noundef %1, ptr noundef %54) #21
  %55 = call fastcc ptr @frob_into_branch_around(ptr noundef %1, ptr noundef %13, ptr noundef %53) #21
  br label %56

56:                                               ; preds = %52, %17
  %57 = phi ptr [ %55, %52 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret ptr %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lower_eh_filter(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !348 {
  %3 = alloca %struct.leh_state, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !346
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %1) #21
  %6 = tail call fastcc ptr @gimple_seq_first_stmt(ptr noundef %5) #21
  %7 = load i32, ptr @flag_exceptions, align 4, !tbaa !181
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !310
  %11 = tail call fastcc ptr @gimple_eh_filter_types(ptr noundef %6) #21
  %12 = tail call ptr @gen_eh_region_allowed(ptr noundef %10, ptr noundef %11) #20
  store ptr %12, ptr %3, align 8, !tbaa !310
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi ptr [ %12, %9 ], [ null, %2 ]
  %15 = tail call fastcc ptr @gimple_try_eval(ptr noundef %1) #21
  call fastcc void @lower_eh_constructs_1(ptr noundef nonnull %3, ptr noundef %15) #21
  %16 = call fastcc zeroext i8 @eh_region_may_contain_throw(ptr noundef %14) #21, !range !139
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call fastcc ptr @gimple_try_eval(ptr noundef %1) #21
  br label %30

20:                                               ; preds = %13
  store ptr null, ptr %4, align 8, !tbaa !131
  %21 = load ptr, ptr %0, align 8, !tbaa !310
  store ptr %21, ptr %3, align 8, !tbaa !310
  %22 = getelementptr inbounds %struct.leh_state, ptr %3, i64 0, i32 1
  store ptr %14, ptr %22, align 8, !tbaa !307
  call fastcc void @emit_eh_dispatch(ptr noundef nonnull %4, ptr noundef %14) #21
  call fastcc void @emit_resx(ptr noundef nonnull %4, ptr noundef %14) #21
  %23 = call ptr @create_artificial_label(i32 noundef 0) #20
  %24 = getelementptr inbounds %struct.eh_region_d, ptr %14, i64 0, i32 5, i32 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !151
  %25 = call ptr @gimple_build_label(ptr noundef %23) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %25) #20
  %26 = call fastcc ptr @gimple_eh_filter_failure(ptr noundef %6) #21
  call fastcc void @lower_eh_constructs_1(ptr noundef nonnull %3, ptr noundef %26) #21
  %27 = call fastcc ptr @gimple_eh_filter_failure(ptr noundef %6) #21
  call void @gimple_seq_add_seq(ptr noundef nonnull %4, ptr noundef %27) #20
  %28 = load ptr, ptr %4, align 8, !tbaa !131
  call fastcc void @gimple_try_set_cleanup(ptr noundef %1, ptr noundef %28) #21
  %29 = call fastcc ptr @frob_into_branch_around(ptr noundef %1, ptr noundef %14, ptr noundef null) #21
  br label %30

30:                                               ; preds = %20, %18
  %31 = phi ptr [ %29, %20 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lower_eh_must_not_throw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !123 !PGOFuncName !349 {
  %3 = alloca %struct.leh_state, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !346
  %4 = load i32, ptr @flag_exceptions, align 4, !tbaa !181
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %1) #21
  %8 = tail call fastcc ptr @gimple_seq_first_stmt(ptr noundef %7) #21
  %9 = load ptr, ptr %0, align 8, !tbaa !310
  %10 = tail call ptr @gen_eh_region_must_not_throw(ptr noundef %9) #20
  %11 = tail call fastcc ptr @gimple_eh_must_not_throw_fndecl(ptr noundef %8) #21
  %12 = getelementptr inbounds %struct.eh_region_d, ptr %10, i64 0, i32 5
  store ptr %11, ptr %12, align 8, !tbaa !151
  %13 = tail call fastcc i32 @gimple_location(ptr noundef %1) #21
  %14 = getelementptr inbounds %struct.eh_region_d, ptr %10, i64 0, i32 5, i32 0, i32 1
  store i32 %13, ptr %14, align 8, !tbaa !151
  %15 = load i64, ptr %11, align 8
  %16 = or i64 %15, 16777216
  store i64 %16, ptr %11, align 8
  store ptr %10, ptr %3, align 8, !tbaa !310
  br label %17

17:                                               ; preds = %6, %2
  %18 = tail call fastcc ptr @gimple_try_eval(ptr noundef %1) #21
  call fastcc void @lower_eh_constructs_1(ptr noundef nonnull %3, ptr noundef %18) #21
  %19 = call fastcc ptr @gimple_try_eval(ptr noundef %1) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lower_cleanup(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !350 {
  %3 = alloca %struct.leh_state, align 8
  %4 = alloca %struct.leh_tf_state, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !346
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = load i32, ptr @flag_exceptions, align 4, !tbaa !181
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !310
  %10 = tail call ptr @gen_eh_region_cleanup(ptr noundef %9) #20
  store ptr %10, ptr %3, align 8, !tbaa !310
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  %13 = tail call fastcc ptr @gimple_try_eval(ptr noundef %1) #21
  call fastcc void @lower_eh_constructs_1(ptr noundef nonnull %3, ptr noundef %13) #21
  %14 = call fastcc zeroext i8 @eh_region_may_contain_throw(ptr noundef %12) #21, !range !139
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call fastcc ptr @gimple_try_eval(ptr noundef %1) #21
  br label %41

18:                                               ; preds = %11
  %19 = getelementptr inbounds i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %19, i8 0, i64 80, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !334
  %20 = getelementptr inbounds %struct.leh_tf_state, ptr %4, i64 0, i32 1
  store ptr %1, ptr %20, align 8, !tbaa !335
  %21 = getelementptr inbounds %struct.leh_tf_state, ptr %4, i64 0, i32 3
  store ptr %0, ptr %21, align 8, !tbaa !336
  %22 = getelementptr inbounds %struct.leh_tf_state, ptr %4, i64 0, i32 4
  store ptr %12, ptr %22, align 8, !tbaa !339
  %23 = call fastcc ptr @gimple_try_eval(ptr noundef %1) #21
  %24 = call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %23) #20
  %25 = getelementptr inbounds %struct.leh_tf_state, ptr %4, i64 0, i32 11
  store i8 %24, ptr %25, align 8, !tbaa !337
  %26 = getelementptr inbounds %struct.leh_tf_state, ptr %4, i64 0, i32 13
  store i8 1, ptr %26, align 2, !tbaa !338
  call fastcc void @honor_protect_cleanup_actions(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %4) #21
  %27 = load i8, ptr %26, align 2, !tbaa !338
  %28 = icmp eq i8 %27, 0
  %29 = getelementptr inbounds %struct.leh_tf_state, ptr %4, i64 0, i32 10
  br i1 %28, label %34, label %30

30:                                               ; preds = %18
  %31 = call fastcc ptr @gimple_try_cleanup(ptr noundef %1) #21
  call fastcc void @lower_eh_constructs_1(ptr noundef nonnull %0, ptr noundef %31) #21
  %32 = load ptr, ptr %29, align 8, !tbaa !340
  %33 = call fastcc ptr @frob_into_branch_around(ptr noundef %1, ptr noundef %12, ptr noundef %32) #21
  br label %41

34:                                               ; preds = %18
  %35 = call fastcc ptr @gimple_try_eval(ptr noundef %1) #21
  store ptr %35, ptr %5, align 8, !tbaa !131
  %36 = load ptr, ptr %29, align 8, !tbaa !340
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = call ptr @gimple_build_label(ptr noundef nonnull %36) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %39) #20
  %40 = load ptr, ptr %5, align 8, !tbaa !131
  br label %41

41:                                               ; preds = %30, %38, %34, %16
  %42 = phi ptr [ %17, %16 ], [ %35, %34 ], [ %40, %38 ], [ %33, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret ptr %42
}

; Function Attrs: optsize
declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 !prof !311 !PGOFuncName !351 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 !prof !123 !PGOFuncName !352 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !139
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1665, ptr noundef nonnull @.str.1) #20
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !353 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !151
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !354 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !201
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !355 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !201
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @gen_eh_landing_pad(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !356 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !139
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_in_goto_queue_label(ptr nocapture noundef %0, ptr %1, ptr noundef %2) unnamed_addr #1 !prof !123 !PGOFuncName !357 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %3
  %6 = load i64, ptr %2, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 30
  br i1 %8, label %9, label %35

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !334
  %11 = tail call fastcc zeroext i8 @outside_finally_tree(ptr nonnull %2, ptr noundef %10) #21, !range !139
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !358
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 10) #21
  store ptr %18, ptr %14, align 8, !tbaa !358
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %18, ptr noundef nonnull %2) #21
  br label %33

19:                                               ; preds = %13
  %20 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef nonnull %15) #21
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19, %26
  %23 = phi i32 [ %27, %26 ], [ 0, %19 ]
  %24 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef nonnull %15, i32 noundef %23) #21
  %25 = icmp eq ptr %24, %2
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = add nuw nsw i32 %23, 1
  %28 = icmp eq i32 %27, %20
  br i1 %28, label %32, label %22, !llvm.loop !359

29:                                               ; preds = %22, %19
  %30 = phi i32 [ 0, %19 ], [ %23, %22 ]
  %31 = icmp eq i32 %30, %20
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %29
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %14, ptr noundef nonnull %2) #21
  br label %33

33:                                               ; preds = %29, %32, %17
  %34 = phi i32 [ 0, %17 ], [ %20, %32 ], [ %30, %29 ]
  tail call fastcc void @record_in_goto_queue(ptr noundef nonnull %0, ptr %1, i32 noundef %34, i8 noundef zeroext 1) #21
  br label %35

35:                                               ; preds = %9, %5, %3, %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_true_label(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !360 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_false_label(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !361 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 3) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_goto_dest(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !362 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_in_goto_queue(ptr nocapture noundef %0, ptr %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #1 !prof !123 !PGOFuncName !363 {
  %5 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !342
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 583, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 7
  %11 = load i64, ptr %10, align 8, !tbaa !364
  %12 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 6
  %13 = load i64, ptr %12, align 8, !tbaa !365
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !341
  br label %26

18:                                               ; preds = %9
  %19 = icmp eq i64 %13, 0
  %20 = shl i64 %13, 1
  %21 = select i1 %19, i64 32, i64 %20
  store i64 %21, ptr %12, align 8, !tbaa !365
  %22 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !341
  %24 = shl i64 %21, 5
  %25 = tail call ptr @xrealloc(ptr noundef %23, i64 noundef %24) #20
  store ptr %25, ptr %22, align 8, !tbaa !341
  br label %26

26:                                               ; preds = %15, %18
  %27 = phi ptr [ %17, %15 ], [ %25, %18 ]
  %28 = getelementptr inbounds %struct.goto_queue_node, ptr %27, i64 %11
  %29 = add i64 %11, 1
  store i64 %29, ptr %10, align 8, !tbaa !364
  %30 = getelementptr inbounds i8, ptr %28, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, i8 0, i64 24, i1 false)
  store ptr %1, ptr %28, align 8, !tbaa.struct !287
  %31 = getelementptr inbounds %struct.goto_queue_node, ptr %27, i64 %11, i32 3
  store i32 %2, ptr %31, align 8, !tbaa !366
  %32 = zext nneg i8 %3 to i32
  %33 = getelementptr inbounds %struct.goto_queue_node, ptr %27, i64 %11, i32 4
  store i32 %32, ptr %33, align 4, !tbaa !368
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @outside_finally_tree(ptr %0, ptr noundef readnone %1) unnamed_addr #1 !prof !123 !PGOFuncName !369 {
  %3 = alloca %struct.finally_tree_node, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  br label %4

4:                                                ; preds = %9, %2
  %5 = phi ptr [ %0, %2 ], [ %11, %9 ]
  store ptr %5, ptr %3, align 8, !tbaa.struct !287
  %6 = load ptr, ptr @finally_tree, align 8, !tbaa !131
  %7 = call ptr @htab_find(ptr noundef %6, ptr noundef nonnull %3) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.finally_tree_node, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !288
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %4, !llvm.loop !370

13:                                               ; preds = %9, %4
  %14 = phi i8 [ 1, %4 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !371 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !123 !PGOFuncName !372 {
  %3 = load i32, ptr %0, align 8, !tbaa !373
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !373
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !375 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !373
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !123 !PGOFuncName !376 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !131
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !377 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !131
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !378 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #20
  store ptr %6, ptr %0, align 8, !tbaa !131
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !379 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !380
  %6 = load i32, ptr %0, align 8, !tbaa !373
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_eh_region_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @eh_region_may_contain_throw(ptr noundef readonly %0) unnamed_addr #1 !prof !123 !PGOFuncName !381 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @eh_region_may_contain_throw_map, align 8, !tbaa !131
  %5 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !221
  %7 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %6) #20
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %3, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %3 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @honor_protect_cleanup_actions(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !123 !PGOFuncName !382 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  %5 = load ptr, ptr @lang_protect_cleanup_actions, align 8, !tbaa !131
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %3
  %8 = tail call ptr %5() #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.leh_tf_state, ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !335
  %13 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %12) #21
  %14 = tail call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %13) #20
  %15 = icmp eq ptr %1, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call fastcc ptr @lower_try_finally_dup_block(ptr noundef %13, ptr noundef %0) #21
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi ptr [ %17, %16 ], [ %13, %10 ]
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %19) #21
  %20 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21
  %21 = tail call fastcc i32 @gimple_code(ptr noundef %20) #21, !range !201
  %22 = icmp eq i32 %21, 17
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = tail call fastcc i32 @gimple_try_kind(ptr noundef %20) #21, !range !276
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = tail call fastcc zeroext i8 @gimple_try_catch_is_cleanup(ptr noundef %20) #21, !range !139
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @gimple_try_eval(ptr noundef %20) #21
  call void @gsi_insert_seq_before(ptr noundef nonnull %4, ptr noundef %30, i32 noundef 1) #20
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 0) #20
  br label %31

31:                                               ; preds = %29, %26, %23, %18
  %32 = call ptr @gimple_build_eh_must_not_throw(ptr noundef nonnull %8) #20
  %33 = call fastcc ptr @gimple_seq_alloc_with_stmt(ptr noundef %32) #21
  %34 = call ptr @gimple_build_try(ptr noundef %19, ptr noundef %33, i32 noundef 1) #20
  %35 = call fastcc ptr @lower_eh_must_not_throw(ptr noundef %0, ptr noundef %34) #21
  %36 = getelementptr inbounds %struct.leh_tf_state, ptr %2, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !339
  call fastcc void @emit_post_landing_pad(ptr noundef %37) #21
  call void @gimple_seq_add_seq(ptr noundef nonnull @eh_seq, ptr noundef %35) #20
  %38 = icmp eq i8 %14, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %36, align 8, !tbaa !339
  call fastcc void @emit_resx(ptr noundef nonnull @eh_seq, ptr noundef %40) #21
  br label %41

41:                                               ; preds = %39, %31
  %42 = getelementptr inbounds %struct.leh_tf_state, ptr %2, i64 0, i32 13
  store i8 0, ptr %42, align 2, !tbaa !338
  br label %43

43:                                               ; preds = %7, %3, %41
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_try_set_cleanup(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #12 !prof !123 !PGOFuncName !383 {
  %3 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !151
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_try_finally_nofallthru(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !384 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = load ptr, ptr %1, align 8, !tbaa !334
  %5 = tail call fastcc i32 @gimple_location(ptr noundef %4) #21
  %6 = tail call ptr @create_artificial_label(i32 noundef %5) #20
  %7 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !335
  %9 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %8) #21
  %10 = tail call fastcc ptr @gimple_try_eval(ptr noundef %8) #21
  %11 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !343
  %12 = tail call ptr @gimple_build_label(ptr noundef %6) #20
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull %11, ptr noundef %12) #20
  store ptr null, ptr %3, align 8, !tbaa !131
  %13 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !341
  %15 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !364
  %17 = getelementptr inbounds %struct.goto_queue_node, ptr %14, i64 %16
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2, %26
  %20 = phi ptr [ %27, %26 ], [ %14, %2 ]
  %21 = getelementptr inbounds %struct.goto_queue_node, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !366
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  call fastcc void @do_return_redirection(ptr noundef nonnull %20, ptr noundef %6, ptr noundef null, ptr noundef nonnull %3) #21
  br label %26

25:                                               ; preds = %19
  tail call fastcc void @do_goto_redirection(ptr noundef nonnull %20, ptr noundef %6, ptr noundef null, ptr noundef nonnull %1) #21
  br label %26

26:                                               ; preds = %24, %25
  %27 = getelementptr inbounds %struct.goto_queue_node, ptr %20, i64 1
  %28 = icmp ult ptr %27, %17
  br i1 %28, label %19, label %29, !llvm.loop !385

29:                                               ; preds = %26, %2
  tail call fastcc void @replace_goto_queue(ptr noundef nonnull %1) #21
  tail call fastcc void @lower_eh_constructs_1(ptr noundef %0, ptr noundef %9) #21
  tail call void @gimple_seq_add_seq(ptr noundef nonnull %11, ptr noundef %9) #20
  %30 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 13
  %31 = load i8, ptr %30, align 2, !tbaa !338
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !339
  tail call fastcc void @emit_post_landing_pad(ptr noundef %35) #21
  %36 = tail call ptr @gimple_build_goto(ptr noundef %6) #20
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull @eh_seq, ptr noundef %36) #20
  br label %37

37:                                               ; preds = %33, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_try_finally_onedest(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !386 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !334
  %5 = tail call fastcc i32 @gimple_location(ptr noundef %4) #21
  %6 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !335
  %8 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %7) #21
  %9 = tail call fastcc ptr @gimple_try_eval(ptr noundef %7) #21
  %10 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !343
  tail call fastcc void @lower_eh_constructs_1(ptr noundef %0, ptr noundef %8) #21
  %11 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 13
  %12 = load i8, ptr %11, align 2, !tbaa !338
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !339
  tail call fastcc void @emit_post_landing_pad(ptr noundef %16) #21
  tail call void @gimple_seq_add_seq(ptr noundef nonnull @eh_seq, ptr noundef %8) #20
  %17 = load ptr, ptr %15, align 8, !tbaa !339
  tail call fastcc void @emit_resx(ptr noundef nonnull @eh_seq, ptr noundef %17) #21
  br label %59

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 11
  %20 = load i8, ptr %19, align 8, !tbaa !337
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gimple_seq_add_seq(ptr noundef nonnull %10, ptr noundef %8) #20
  br label %59

23:                                               ; preds = %18
  %24 = tail call ptr @create_artificial_label(i32 noundef %5) #20
  %25 = tail call ptr @gimple_build_label(ptr noundef %24) #20
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull %10, ptr noundef %25) #20
  tail call void @gimple_seq_add_seq(ptr noundef nonnull %10, ptr noundef %8) #20
  %26 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !341
  %28 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 7
  %29 = load i64, ptr %28, align 8, !tbaa !364
  %30 = getelementptr inbounds %struct.goto_queue_node, ptr %27, i64 %29
  %31 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 12
  %32 = load i8, ptr %31, align 1, !tbaa !331
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = icmp sgt i64 %29, 0
  br i1 %35, label %43, label %47

36:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !131
  %37 = icmp sgt i64 %29, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %36, %38
  %39 = phi ptr [ %40, %38 ], [ %27, %36 ]
  call fastcc void @do_return_redirection(ptr noundef %39, ptr noundef %24, ptr noundef null, ptr noundef nonnull %3) #21
  %40 = getelementptr inbounds %struct.goto_queue_node, ptr %39, i64 1
  %41 = icmp ult ptr %40, %30
  br i1 %41, label %38, label %42, !llvm.loop !387

42:                                               ; preds = %38, %36
  tail call fastcc void @replace_goto_queue(ptr noundef nonnull %1) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %55

43:                                               ; preds = %34, %43
  %44 = phi ptr [ %45, %43 ], [ %27, %34 ]
  tail call fastcc void @do_goto_redirection(ptr noundef %44, ptr noundef %24, ptr noundef null, ptr noundef nonnull %1) #21
  %45 = getelementptr inbounds %struct.goto_queue_node, ptr %44, i64 1
  %46 = icmp ult ptr %45, %30
  br i1 %46, label %43, label %47, !llvm.loop !388

47:                                               ; preds = %43, %34
  tail call fastcc void @replace_goto_queue(ptr noundef nonnull %1) #21
  %48 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !358
  %50 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %49, i32 noundef 0) #21
  %51 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !340
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store ptr null, ptr %51, align 8, !tbaa !340
  br label %59

55:                                               ; preds = %47, %42
  %56 = load ptr, ptr %26, align 8, !tbaa !341
  %57 = getelementptr inbounds %struct.goto_queue_node, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !389
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull %10, ptr noundef %58) #20
  tail call fastcc void @maybe_record_in_goto_queue(ptr noundef %0, ptr noundef %58) #21
  br label %59

59:                                               ; preds = %55, %54, %22, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @decide_copy_try_finally(i32 noundef %0, ptr noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !390 {
  %3 = load i32, ptr @optimize, align 4, !tbaa !181
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @count_insns_seq(ptr noundef %1, ptr noundef nonnull @eni_size_weights) #20
  %7 = add nsw i32 %6, 1
  %8 = mul nsw i32 %7, %0
  %9 = shl nsw i32 %0, 1
  %10 = add nsw i32 %9, 10
  %11 = load ptr, ptr @cfun, align 8, !tbaa !131
  %12 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %11) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = icmp slt i32 %8, %10
  br label %30

16:                                               ; preds = %5
  %17 = load i32, ptr @optimize, align 4, !tbaa !181
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = icmp slt i32 %8, 100
  %21 = shl nsw i32 %10, 1
  %22 = icmp slt i32 %8, %21
  %23 = select i1 %20, i1 true, i1 %22
  br label %30

24:                                               ; preds = %16
  %25 = icmp slt i32 %8, 40
  %26 = shl nuw nsw i32 %8, 1
  %27 = mul nsw i32 %10, 3
  %28 = icmp slt i32 %26, %27
  %29 = select i1 %25, i1 true, i1 %28
  br label %30

30:                                               ; preds = %2, %24, %19, %14
  %31 = phi i1 [ %15, %14 ], [ %23, %19 ], [ %29, %24 ], [ false, %2 ]
  %32 = zext i1 %31 to i8
  ret i8 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_try_finally_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !391 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %5 = load ptr, ptr %1, align 8, !tbaa !334
  %6 = tail call fastcc i32 @gimple_location(ptr noundef %5) #21
  %7 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !335
  %9 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %8) #21
  %10 = tail call fastcc ptr @gimple_try_eval(ptr noundef %8) #21
  %11 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !343
  store ptr null, ptr %3, align 8, !tbaa !131
  %12 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 11
  %13 = load i8, ptr %12, align 8, !tbaa !337
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = tail call fastcc ptr @lower_try_finally_dup_block(ptr noundef %9, ptr noundef %0) #21
  tail call fastcc void @lower_eh_constructs_1(ptr noundef %0, ptr noundef %16) #21
  call void @gimple_seq_add_seq(ptr noundef nonnull %3, ptr noundef %16) #20
  %17 = call fastcc ptr @lower_try_finally_fallthru_label(ptr noundef nonnull %1) #21
  %18 = call ptr @gimple_build_goto(ptr noundef %17) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %18) #20
  br label %19

19:                                               ; preds = %15, %2
  %20 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 13
  %21 = load i8, ptr %20, align 2, !tbaa !338
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = call fastcc ptr @lower_try_finally_dup_block(ptr noundef %9, ptr noundef %0) #21
  call fastcc void @lower_eh_constructs_1(ptr noundef %0, ptr noundef %24) #21
  %25 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !339
  call fastcc void @emit_post_landing_pad(ptr noundef %26) #21
  call void @gimple_seq_add_seq(ptr noundef nonnull @eh_seq, ptr noundef %24) #20
  %27 = load ptr, ptr %25, align 8, !tbaa !339
  call fastcc void @emit_resx(ptr noundef nonnull @eh_seq, ptr noundef %27) #21
  br label %28

28:                                               ; preds = %23, %19
  %29 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !341
  %31 = icmp eq ptr %30, null
  br i1 %31, label %108, label %32

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !131
  %33 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !358
  %35 = call fastcc i32 @VEC_tree_base_length(ptr noundef %34) #21
  %36 = add i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = call ptr @xcalloc(i64 noundef %37, i64 noundef 16) #20
  %39 = load ptr, ptr %29, align 8, !tbaa !341
  %40 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 7
  %41 = load i64, ptr %40, align 8, !tbaa !364
  %42 = getelementptr inbounds %struct.goto_queue_node, ptr %39, i64 %41
  %43 = icmp sgt i64 %41, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %60, %32
  %45 = icmp slt i32 %35, 0
  br i1 %45, label %85, label %46

46:                                               ; preds = %44
  %47 = zext nneg i32 %35 to i64
  %48 = zext i32 %36 to i64
  br label %63

49:                                               ; preds = %32, %60
  %50 = phi ptr [ %61, %60 ], [ %39, %32 ]
  %51 = getelementptr inbounds %struct.goto_queue_node, ptr %50, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !366
  %53 = icmp slt i32 %52, 0
  %54 = select i1 %53, i32 %35, i32 %52
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.labels_s, ptr %38, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !392
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store ptr %50, ptr %56, align 8, !tbaa !392
  br label %60

60:                                               ; preds = %49, %59
  %61 = getelementptr inbounds %struct.goto_queue_node, ptr %50, i64 1
  %62 = icmp ult ptr %61, %42
  br i1 %62, label %49, label %44, !llvm.loop !394

63:                                               ; preds = %46, %80
  %64 = phi i64 [ 0, %46 ], [ %81, %80 ]
  %65 = getelementptr inbounds %struct.labels_s, ptr %38, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !392
  %67 = icmp eq ptr %66, null
  br i1 %67, label %80, label %68

68:                                               ; preds = %63
  %69 = call ptr @create_artificial_label(i32 noundef %6) #20
  %70 = getelementptr inbounds %struct.labels_s, ptr %38, i64 %64, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !395
  %71 = icmp eq i64 %64, %47
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  call fastcc void @do_return_redirection(ptr noundef nonnull %66, ptr noundef %69, ptr noundef null, ptr noundef nonnull %4) #21
  br label %74

73:                                               ; preds = %68
  call fastcc void @do_goto_redirection(ptr noundef nonnull %66, ptr noundef %69, ptr noundef null, ptr noundef nonnull %1) #21
  br label %74

74:                                               ; preds = %73, %72
  %75 = call ptr @gimple_build_label(ptr noundef %69) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %75) #20
  %76 = call fastcc ptr @lower_try_finally_dup_block(ptr noundef %9, ptr noundef %0) #21
  call fastcc void @lower_eh_constructs_1(ptr noundef %0, ptr noundef %76) #21
  call void @gimple_seq_add_seq(ptr noundef nonnull %3, ptr noundef %76) #20
  %77 = getelementptr inbounds %struct.goto_queue_node, ptr %66, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !389
  call void @gimple_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %78) #20
  %79 = load ptr, ptr %77, align 8, !tbaa !389
  call fastcc void @maybe_record_in_goto_queue(ptr noundef %0, ptr noundef %79) #21
  br label %80

80:                                               ; preds = %63, %74
  %81 = add nuw nsw i64 %64, 1
  %82 = icmp eq i64 %81, %48
  br i1 %82, label %83, label %63, !llvm.loop !396

83:                                               ; preds = %80
  %84 = load ptr, ptr %29, align 8, !tbaa !341
  br label %85

85:                                               ; preds = %83, %44
  %86 = phi ptr [ %84, %83 ], [ %39, %44 ]
  %87 = icmp ult ptr %86, %42
  br i1 %87, label %88, label %107

88:                                               ; preds = %85, %104
  %89 = phi ptr [ %105, %104 ], [ %86, %85 ]
  %90 = getelementptr inbounds %struct.goto_queue_node, ptr %89, i64 0, i32 3
  %91 = load i32, ptr %90, align 8, !tbaa !366
  %92 = icmp slt i32 %91, 0
  %93 = select i1 %92, i32 %35, i32 %91
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.labels_s, ptr %38, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !392
  %97 = icmp eq ptr %96, %89
  br i1 %97, label %104, label %98

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.labels_s, ptr %38, i64 %94, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !395
  %101 = icmp eq i32 %93, %35
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  call fastcc void @do_return_redirection(ptr noundef nonnull %89, ptr noundef %100, ptr noundef null, ptr noundef nonnull %4) #21
  br label %104

103:                                              ; preds = %98
  call fastcc void @do_goto_redirection(ptr noundef nonnull %89, ptr noundef %100, ptr noundef null, ptr noundef nonnull %1) #21
  br label %104

104:                                              ; preds = %102, %103, %88
  %105 = getelementptr inbounds %struct.goto_queue_node, ptr %89, i64 1
  %106 = icmp ult ptr %105, %42
  br i1 %106, label %88, label %107, !llvm.loop !397

107:                                              ; preds = %104, %85
  call fastcc void @replace_goto_queue(ptr noundef nonnull %1) #21
  call void @free(ptr noundef %38) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %108

108:                                              ; preds = %107, %28
  %109 = load ptr, ptr %3, align 8, !tbaa !131
  call void @gimple_seq_add_seq(ptr noundef nonnull %11, ptr noundef %109) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_try_finally_switch(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !398 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %6 = load ptr, ptr %1, align 8, !tbaa !334
  %7 = tail call fastcc i32 @gimple_location(ptr noundef %6) #21
  %8 = tail call ptr @gimple_seq_alloc() #20
  store ptr %8, ptr %4, align 8, !tbaa !131
  %9 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !335
  %11 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %10) #21
  %12 = tail call fastcc ptr @gimple_try_eval(ptr noundef %10) #21
  %13 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !343
  %14 = tail call fastcc ptr @gimple_seq_last_stmt(ptr noundef %12) #21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = tail call fastcc i32 @gimple_location(ptr noundef nonnull %14) #21
  br label %18

18:                                               ; preds = %2, %16
  %19 = phi i32 [ %17, %16 ], [ %7, %2 ]
  tail call fastcc void @lower_eh_constructs_1(ptr noundef %0, ptr noundef %11) #21
  %20 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !358
  %22 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %21) #21
  %23 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 12
  %24 = load i8, ptr %23, align 1, !tbaa !331
  %25 = zext i8 %24 to i32
  %26 = add nsw i32 %22, %25
  %27 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 13
  %28 = load i8, ptr %27, align 2, !tbaa !338
  %29 = zext i8 %28 to i32
  %30 = add nsw i32 %26, %29
  %31 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 11
  %32 = load i8, ptr %31, align 8, !tbaa !337
  %33 = zext i8 %32 to i32
  %34 = add nsw i32 %30, %33
  %35 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !131
  %36 = tail call ptr @create_tmp_var(ptr noundef %35, ptr noundef nonnull @.str.17) #20
  %37 = tail call ptr @create_artificial_label(i32 noundef %19) #20
  %38 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %34) #21
  %39 = load i8, ptr %31, align 8, !tbaa !337
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %18
  %42 = sext i32 %30 to i64
  %43 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %42) #20
  %44 = tail call ptr @gimple_build_assign_stat(ptr noundef %36, ptr noundef %43) #20
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull %13, ptr noundef %44) #20
  %45 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !131
  %46 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %42) #20
  %47 = tail call ptr @create_artificial_label(i32 noundef %7) #20
  %48 = tail call ptr @build3_stat(i32 noundef 139, ptr noundef %45, ptr noundef %46, ptr noundef null, ptr noundef %47) #20
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %38, ptr noundef %48) #21
  %49 = getelementptr inbounds %struct.tree_exp, ptr %48, i64 1, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !151
  %51 = tail call ptr @gimple_build_label(ptr noundef %50) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %51) #20
  %52 = call fastcc ptr @lower_try_finally_fallthru_label(ptr noundef nonnull %1) #21
  %53 = call ptr @gimple_build_goto(ptr noundef %52) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %53) #20
  br label %54

54:                                               ; preds = %41, %18
  %55 = phi ptr [ %48, %41 ], [ null, %18 ]
  %56 = phi i32 [ 1, %41 ], [ 0, %18 ]
  %57 = load i8, ptr %27, align 2, !tbaa !338
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !339
  call fastcc void @emit_post_landing_pad(ptr noundef %61) #21
  %62 = sext i32 %26 to i64
  %63 = call ptr @build_int_cst(ptr noundef null, i64 noundef %62) #20
  %64 = call ptr @gimple_build_assign_stat(ptr noundef %36, ptr noundef %63) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull @eh_seq, ptr noundef %64) #20
  %65 = call ptr @gimple_build_goto(ptr noundef %37) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull @eh_seq, ptr noundef %65) #20
  %66 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !131
  %67 = call ptr @build_int_cst(ptr noundef null, i64 noundef %62) #20
  %68 = call ptr @create_artificial_label(i32 noundef %7) #20
  %69 = call ptr @build3_stat(i32 noundef 139, ptr noundef %66, ptr noundef %67, ptr noundef null, ptr noundef %68) #20
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %38, ptr noundef %69) #21
  %70 = add nuw nsw i32 %56, 1
  %71 = getelementptr inbounds %struct.tree_exp, ptr %69, i64 1, i32 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !151
  %73 = call ptr @gimple_build_label(ptr noundef %72) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull @eh_seq, ptr noundef %73) #20
  %74 = load ptr, ptr %60, align 8, !tbaa !339
  call fastcc void @emit_resx(ptr noundef nonnull @eh_seq, ptr noundef %74) #21
  br label %75

75:                                               ; preds = %59, %54
  %76 = phi ptr [ %69, %59 ], [ %55, %54 ]
  %77 = phi i32 [ %70, %59 ], [ %56, %54 ]
  %78 = call ptr @gimple_build_label(ptr noundef %37) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull %13, ptr noundef %78) #20
  call void @gimple_seq_add_seq(ptr noundef nonnull %13, ptr noundef %11) #20
  %79 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !341
  %81 = getelementptr inbounds %struct.leh_tf_state, ptr %1, i64 0, i32 7
  %82 = load i64, ptr %81, align 8, !tbaa !364
  %83 = getelementptr inbounds %struct.goto_queue_node, ptr %80, i64 %82
  %84 = load i8, ptr %23, align 1, !tbaa !331
  %85 = zext i8 %84 to i32
  %86 = add nuw nsw i32 %77, %85
  %87 = icmp sgt i64 %82, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %75
  %89 = sext i32 %22 to i64
  br label %96

90:                                               ; preds = %136, %75
  %91 = phi ptr [ null, %75 ], [ %137, %136 ]
  %92 = add nsw i32 %77, %22
  %93 = icmp sgt i32 %22, 0
  br i1 %93, label %94, label %158

94:                                               ; preds = %90
  %95 = icmp eq ptr %91, null
  br label %140

96:                                               ; preds = %88, %136
  %97 = phi ptr [ %80, %88 ], [ %138, %136 ]
  %98 = phi ptr [ null, %88 ], [ %137, %136 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %99 = call ptr @gimple_seq_alloc() #20
  store ptr %99, ptr %5, align 8, !tbaa !131
  %100 = getelementptr inbounds %struct.goto_queue_node, ptr %97, i64 0, i32 3
  %101 = load i32, ptr %100, align 8, !tbaa !366
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = call ptr @build_int_cst(ptr noundef null, i64 noundef %89) #20
  %105 = call ptr @gimple_build_assign_stat(ptr noundef %36, ptr noundef %104) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %105) #20
  %106 = load ptr, ptr %5, align 8, !tbaa !131
  call fastcc void @do_return_redirection(ptr noundef nonnull %97, ptr noundef %37, ptr noundef %106, ptr noundef nonnull %3) #21
  %107 = load i32, ptr %100, align 8, !tbaa !366
  br label %114

108:                                              ; preds = %96
  %109 = zext nneg i32 %101 to i64
  %110 = call ptr @build_int_cst(ptr noundef null, i64 noundef %109) #20
  %111 = call ptr @gimple_build_assign_stat(ptr noundef %36, ptr noundef %110) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %111) #20
  %112 = load ptr, ptr %5, align 8, !tbaa !131
  call fastcc void @do_goto_redirection(ptr noundef nonnull %97, ptr noundef %37, ptr noundef %112, ptr noundef nonnull %1) #21
  %113 = load i32, ptr %100, align 8, !tbaa !366
  br label %114

114:                                              ; preds = %108, %103
  %115 = phi i32 [ %107, %103 ], [ %113, %108 ]
  %116 = phi i32 [ %22, %103 ], [ %113, %108 ]
  %117 = add nsw i32 %86, %115
  %118 = call fastcc i32 @VEC_tree_base_length(ptr noundef %38) #21
  %119 = icmp ugt i32 %118, %117
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = call fastcc ptr @VEC_tree_base_index(ptr noundef %38, i32 noundef %117) #21
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %136

123:                                              ; preds = %120, %114
  %124 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !131
  %125 = sext i32 %116 to i64
  %126 = call ptr @build_int_cst(ptr noundef null, i64 noundef %125) #20
  %127 = call ptr @build3_stat(i32 noundef 139, ptr noundef %124, ptr noundef %126, ptr noundef null, ptr noundef null) #20
  %128 = icmp eq ptr %98, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = call ptr @pointer_map_create() #20
  br label %131

131:                                              ; preds = %129, %123
  %132 = phi ptr [ %98, %123 ], [ %130, %129 ]
  %133 = call ptr @pointer_map_insert(ptr noundef %132, ptr noundef %127) #20
  %134 = getelementptr inbounds %struct.goto_queue_node, ptr %97, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !389
  store ptr %135, ptr %133, align 8, !tbaa !131
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %38, ptr noundef %127) #21
  br label %136

136:                                              ; preds = %131, %120
  %137 = phi ptr [ %132, %131 ], [ %98, %120 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  %138 = getelementptr inbounds %struct.goto_queue_node, ptr %97, i64 1
  %139 = icmp ult ptr %138, %83
  br i1 %139, label %96, label %90, !llvm.loop !399

140:                                              ; preds = %94, %151
  %141 = phi i32 [ %77, %94 ], [ %156, %151 ]
  %142 = call fastcc ptr @VEC_tree_base_index(ptr noundef %38, i32 noundef %141) #21
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1443, ptr noundef nonnull @.str.1) #20
  br label %145

145:                                              ; preds = %140, %144
  br i1 %95, label %146, label %147

146:                                              ; preds = %145
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1444, ptr noundef nonnull @.str.1) #20
  br label %147

147:                                              ; preds = %145, %146
  %148 = call ptr @pointer_map_contains(ptr noundef %91, ptr noundef %142) #20
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1449, ptr noundef nonnull @.str.1) #20
  br label %151

151:                                              ; preds = %147, %150
  %152 = load ptr, ptr %148, align 8, !tbaa !131
  %153 = call ptr @create_artificial_label(i32 noundef %7) #20
  %154 = getelementptr inbounds %struct.tree_exp, ptr %142, i64 1, i32 0, i32 1
  store ptr %153, ptr %154, align 8, !tbaa !151
  %155 = call ptr @gimple_build_label(ptr noundef %153) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %155) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %152) #20
  call fastcc void @maybe_record_in_goto_queue(ptr noundef %0, ptr noundef %152) #21
  %156 = add nuw nsw i32 %141, 1
  %157 = icmp slt i32 %156, %92
  br i1 %157, label %140, label %158, !llvm.loop !400

158:                                              ; preds = %151, %90
  %159 = phi ptr [ %76, %90 ], [ %142, %151 ]
  %160 = icmp eq ptr %91, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  call void @pointer_map_destroy(ptr noundef nonnull %91) #20
  br label %162

162:                                              ; preds = %161, %158
  call fastcc void @replace_goto_queue(ptr noundef nonnull %1) #21
  %163 = getelementptr inbounds %struct.tree_exp, ptr %159, i64 0, i32 3
  store ptr null, ptr %163, align 8, !tbaa !151
  call void @sort_case_labels(ptr noundef %38) #20
  %164 = call ptr @gimple_build_switch_vec(ptr noundef %36, ptr noundef %159, ptr noundef %38) #20
  call fastcc void @gimple_set_location(ptr noundef %164, i32 noundef %19) #21
  call void @gimple_seq_add_stmt(ptr noundef nonnull %13, ptr noundef %164) #20
  %165 = load ptr, ptr %4, align 8, !tbaa !131
  call void @gimple_seq_add_seq(ptr noundef nonnull %13, ptr noundef %165) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !123 !PGOFuncName !401 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !131
  ret void
}

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lower_try_finally_dup_block(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !123 !PGOFuncName !402 {
  %3 = tail call ptr @copy_gimple_seq_and_replace_locals(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.leh_state, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !329
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !334
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi ptr [ %8, %7 ], [ null, %2 ]
  tail call fastcc void @collect_finally_tree_1(ptr noundef %3, ptr noundef %10) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_try_catch_is_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !123 !PGOFuncName !403 {
  %2 = tail call fastcc i32 @gimple_try_kind(ptr noundef %0) #21, !range !276
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 2945, ptr noundef nonnull @.str.1) #20
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i32, ptr %0, align 8
  %7 = lshr i32 %6, 18
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 1
  ret i8 %9
}

; Function Attrs: optsize
declare ptr @gimple_build_eh_must_not_throw(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_try(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_seq_alloc_with_stmt(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !404 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  store ptr null, ptr %2, align 8, !tbaa !131
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %0) #20
  %3 = load ptr, ptr %2, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_post_landing_pad(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !405 {
  %2 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !322
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @gen_eh_landing_pad(ptr noundef nonnull %0) #20
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %9 = tail call ptr @create_artificial_label(i32 noundef 0) #20
  %10 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %8, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !173
  %11 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %8, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !185
  %13 = getelementptr inbounds %struct.tree_label_decl, ptr %9, i64 0, i32 2
  store i32 %12, ptr %13, align 4, !tbaa !151
  %14 = load ptr, ptr %10, align 8, !tbaa !173
  %15 = tail call ptr @gimple_build_label(ptr noundef %14) #20
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull @eh_seq, ptr noundef %15) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_resx(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !123 !PGOFuncName !406 {
  %3 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !221
  %5 = tail call ptr @gimple_build_resx(i32 noundef %4) #20
  tail call void @gimple_seq_add_stmt(ptr noundef %0, ptr noundef %5) #20
  %6 = load ptr, ptr %1, align 8, !tbaa !325
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call fastcc void @record_stmt_eh_region(ptr noundef nonnull %6, ptr noundef %5) #21
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare ptr @copy_gimple_seq_and_replace_locals(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_artificial_label(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_resx(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_return_redirection(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #1 !prof !123 !PGOFuncName !407 {
  %5 = getelementptr inbounds %struct.goto_queue_node, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !368
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 729, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %4, %8
  %10 = load ptr, ptr %0, align 8, !tbaa !151
  %11 = tail call fastcc ptr @gimple_return_retval(ptr noundef %10) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 8, !tbaa !131
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store ptr %11, ptr %3, align 8, !tbaa !131
  br label %20

17:                                               ; preds = %13
  %18 = icmp eq ptr %14, %11
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %20

20:                                               ; preds = %19, %17, %16
  %21 = load ptr, ptr %0, align 8, !tbaa !151
  %22 = getelementptr inbounds %struct.goto_queue_node, ptr %0, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !389
  %23 = load i64, ptr %11, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 36
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load ptr, ptr %3, align 8, !tbaa !131
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store ptr %11, ptr %3, align 8, !tbaa !131
  br label %33

30:                                               ; preds = %26
  %31 = icmp eq ptr %27, %11
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 767, ptr noundef nonnull @.str.1) #20
  br label %33

33:                                               ; preds = %32, %30, %29
  %34 = load ptr, ptr %0, align 8, !tbaa !151
  store ptr %34, ptr %22, align 8, !tbaa !389
  br label %39

35:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 771, ptr noundef nonnull @.str.1) #20
  br label %39

36:                                               ; preds = %9
  %37 = load ptr, ptr %0, align 8, !tbaa !151
  %38 = getelementptr inbounds %struct.goto_queue_node, ptr %0, i64 0, i32 2
  store ptr %37, ptr %38, align 8, !tbaa !389
  br label %39

39:                                               ; preds = %33, %35, %36
  %40 = getelementptr inbounds %struct.goto_queue_node, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !408
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = tail call ptr @gimple_seq_alloc() #20
  store ptr %44, ptr %40, align 8, !tbaa !408
  br label %45

45:                                               ; preds = %43, %39
  %46 = icmp eq ptr %2, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  tail call void @gimple_seq_add_seq(ptr noundef nonnull %40, ptr noundef nonnull %2) #20
  br label %48

48:                                               ; preds = %47, %45
  %49 = tail call ptr @gimple_build_goto(ptr noundef %1) #20
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull %40, ptr noundef %49) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_goto_redirection(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #1 !prof !123 !PGOFuncName !409 {
  %5 = getelementptr inbounds %struct.goto_queue_node, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !368
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 795, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.goto_queue_node, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !408
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call ptr @gimple_seq_alloc() #20
  store ptr %14, ptr %10, align 8, !tbaa !408
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.leh_tf_state, ptr %3, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !358
  %18 = getelementptr inbounds %struct.goto_queue_node, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !366
  %20 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %17, i32 noundef %19) #21
  %21 = tail call ptr @gimple_build_goto(ptr noundef %20) #20
  %22 = getelementptr inbounds %struct.goto_queue_node, ptr %0, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !389
  %23 = icmp eq ptr %2, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  tail call void @gimple_seq_add_seq(ptr noundef nonnull %10, ptr noundef nonnull %2) #20
  br label %25

25:                                               ; preds = %24, %15
  %26 = tail call ptr @gimple_build_goto(ptr noundef %1) #20
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull %10, ptr noundef %26) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_goto_queue(ptr nocapture noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !410 {
  %2 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 7
  %3 = load i64, ptr %2, align 8, !tbaa !364
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !343
  tail call fastcc void @replace_goto_queue_stmt_list(ptr noundef %7, ptr noundef nonnull %0) #21
  %8 = load ptr, ptr @eh_seq, align 8, !tbaa !131
  tail call fastcc void @replace_goto_queue_stmt_list(ptr noundef %8, ptr noundef nonnull %0) #21
  br label %9

9:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_goto(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !411 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gimple_seq_alloc() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_goto_queue_stmt_list(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !412 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #21
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !139
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2, %6
  %7 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  call fastcc void @replace_goto_queue_1(ptr noundef %7, ptr noundef %1, ptr noundef nonnull %3) #21
  %8 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !139
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %6, label %10, !llvm.loop !413

10:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_goto_queue_1(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #1 !prof !123 !PGOFuncName !414 {
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !201
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %21 [
    i8 3, label %6
    i8 9, label %6
    i8 1, label %11
    i8 17, label %14
    i8 11, label %17
    i8 12, label %19
  ]

6:                                                ; preds = %3, %3
  %7 = tail call fastcc ptr @find_goto_replacement(ptr noundef %1, ptr %0) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @gimple_seq_copy(ptr noundef nonnull %7) #20
  tail call void @gsi_insert_seq_before(ptr noundef %2, ptr noundef %10, i32 noundef 1) #20
  tail call void @gsi_remove(ptr noundef %2, i8 noundef zeroext 0) #20
  br label %22

11:                                               ; preds = %3
  %12 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 2) #21
  tail call fastcc void @replace_goto_queue_cond_clause(ptr noundef %12, ptr noundef %1, ptr noundef %2) #21
  %13 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 3) #21
  tail call fastcc void @replace_goto_queue_cond_clause(ptr noundef %13, ptr noundef %1, ptr noundef %2) #21
  br label %21

14:                                               ; preds = %3
  %15 = tail call fastcc ptr @gimple_try_eval(ptr noundef %0) #21
  tail call fastcc void @replace_goto_queue_stmt_list(ptr noundef %15, ptr noundef %1) #21
  %16 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %0) #21
  tail call fastcc void @replace_goto_queue_stmt_list(ptr noundef %16, ptr noundef %1) #21
  br label %21

17:                                               ; preds = %3
  %18 = tail call fastcc ptr @gimple_catch_handler(ptr noundef %0) #21
  tail call fastcc void @replace_goto_queue_stmt_list(ptr noundef %18, ptr noundef %1) #21
  br label %21

19:                                               ; preds = %3
  %20 = tail call fastcc ptr @gimple_eh_filter_failure(ptr noundef %0) #21
  tail call fastcc void @replace_goto_queue_stmt_list(ptr noundef %20, ptr noundef %1) #21
  br label %21

21:                                               ; preds = %3, %6, %19, %17, %14, %11
  tail call fastcc void @gsi_next(ptr noundef %2) #21
  br label %22

22:                                               ; preds = %21, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_goto_replacement(ptr nocapture noundef %0, ptr %1) unnamed_addr #1 !prof !123 !PGOFuncName !415 {
  %3 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 7
  %4 = load i64, ptr %3, align 8, !tbaa !364
  %5 = icmp ult i64 %4, 20
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %64, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !341
  %11 = trunc i64 %4 to i32
  br label %16

12:                                               ; preds = %16
  %13 = add nuw i32 %18, 1
  %14 = zext i32 %13 to i64
  %15 = icmp ult i32 %13, %11
  br i1 %15, label %16, label %64, !llvm.loop !416

16:                                               ; preds = %8, %12
  %17 = phi i64 [ 0, %8 ], [ %14, %12 ]
  %18 = phi i32 [ 0, %8 ], [ %13, %12 ]
  %19 = getelementptr inbounds %struct.goto_queue_node, ptr %10, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !151
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %12

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.goto_queue_node, ptr %10, i64 %17, i32 1
  br label %61

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !342
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %54

28:                                               ; preds = %24
  %29 = tail call ptr @pointer_map_create() #20
  store ptr %29, ptr %25, align 8, !tbaa !342
  %30 = load i64, ptr %3, align 8, !tbaa !364
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 5
  br label %34

34:                                               ; preds = %32, %45
  %35 = phi i64 [ 0, %32 ], [ %49, %45 ]
  %36 = phi i32 [ 0, %32 ], [ %48, %45 ]
  %37 = load ptr, ptr %25, align 8, !tbaa !342
  %38 = load ptr, ptr %33, align 8, !tbaa !341
  %39 = getelementptr inbounds %struct.goto_queue_node, ptr %38, i64 %35
  %40 = load ptr, ptr %39, align 8, !tbaa !151
  %41 = tail call ptr @pointer_map_insert(ptr noundef %37, ptr noundef %40) #20
  %42 = load ptr, ptr %41, align 8, !tbaa !131
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 451, ptr noundef nonnull @.str.1) #20
  br label %45

45:                                               ; preds = %34, %44
  %46 = load ptr, ptr %33, align 8, !tbaa !341
  %47 = getelementptr inbounds %struct.goto_queue_node, ptr %46, i64 %35
  store ptr %47, ptr %41, align 8, !tbaa !131
  %48 = add i32 %36, 1
  %49 = zext i32 %48 to i64
  %50 = load i64, ptr %3, align 8, !tbaa !364
  %51 = icmp ugt i64 %50, %49
  br i1 %51, label %34, label %52, !llvm.loop !417

52:                                               ; preds = %45
  %53 = load ptr, ptr %25, align 8, !tbaa !342
  br label %54

54:                                               ; preds = %52, %28, %24
  %55 = phi ptr [ %53, %52 ], [ %29, %28 ], [ %26, %24 ]
  %56 = tail call ptr @pointer_map_contains(ptr noundef %55, ptr noundef %1) #20
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %56, align 8, !tbaa !131
  %60 = getelementptr inbounds %struct.goto_queue_node, ptr %59, i64 0, i32 1
  br label %61

61:                                               ; preds = %22, %58
  %62 = phi ptr [ %60, %58 ], [ %23, %22 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !408
  br label %64

64:                                               ; preds = %12, %61, %6, %54
  %65 = phi ptr [ null, %54 ], [ null, %6 ], [ %63, %61 ], [ null, %12 ]
  ret ptr %65
}

; Function Attrs: optsize
declare ptr @gimple_seq_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_goto_queue_cond_clause(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #1 !prof !123 !PGOFuncName !418 {
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  %5 = tail call fastcc i32 @gimple_location(ptr noundef %4) #21
  %6 = tail call fastcc ptr @find_goto_replacement(ptr noundef %1, ptr %0) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc zeroext i8 @gimple_seq_singleton_p(ptr noundef nonnull %6) #21, !range !139
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @gimple_seq_first_stmt(ptr noundef nonnull %6) #21
  %13 = tail call fastcc i32 @gimple_code(ptr noundef %12) #21, !range !201
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %12) #21
  store ptr %16, ptr %0, align 8, !tbaa !131
  br label %21

17:                                               ; preds = %11, %8
  %18 = tail call ptr @create_artificial_label(i32 noundef %5) #20
  store ptr %18, ptr %0, align 8, !tbaa !131
  %19 = tail call ptr @gimple_build_label(ptr noundef %18) #20
  tail call void @gsi_insert_after(ptr noundef %2, ptr noundef %19, i32 noundef 2) #20
  %20 = tail call ptr @gimple_seq_copy(ptr noundef nonnull %6) #20
  tail call void @gsi_insert_seq_after(ptr noundef %2, ptr noundef %20, i32 noundef 2) #20
  br label %21

21:                                               ; preds = %3, %17, %15
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_singleton_p(ptr noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !419 {
  %2 = tail call fastcc ptr @gimple_seq_first(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_seq_last(ptr noundef %0) #21
  %6 = icmp eq ptr %2, %5
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: optsize
declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !420 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !421
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare i32 @count_insns_seq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lower_try_finally_fallthru_label(ptr nocapture noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !422 {
  %2 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !340
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !334
  %7 = tail call fastcc i32 @gimple_location(ptr noundef %6) #21
  %8 = tail call ptr @create_artificial_label(i32 noundef %7) #20
  store ptr %8, ptr %2, align 8, !tbaa !340
  %9 = getelementptr inbounds %struct.leh_tf_state, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !336
  %11 = getelementptr inbounds %struct.leh_state, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !329
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr %12, align 8, !tbaa !334
  tail call fastcc void @record_in_finally_tree(ptr %8, ptr noundef %15) #21
  br label %16

16:                                               ; preds = %5, %14, %1
  %17 = phi ptr [ %3, %1 ], [ %8, %14 ], [ %8, %5 ]
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_last_stmt(ptr noundef readonly %0) unnamed_addr #6 !prof !123 !PGOFuncName !423 {
  %2 = tail call fastcc ptr @gimple_seq_last(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !268
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sort_case_labels(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_switch_vec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_eh_region_try(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_eh_dispatch(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !123 !PGOFuncName !424 {
  %3 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !221
  %5 = tail call ptr @gimple_build_eh_dispatch(i32 noundef %4) #20
  tail call void @gimple_seq_add_stmt(ptr noundef %0, ptr noundef %5) #20
  ret void
}

; Function Attrs: optsize
declare ptr @gen_eh_region_catch(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_catch_types(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !425 {
  %2 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @frob_into_branch_around(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !123 !PGOFuncName !426 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = tail call fastcc i32 @gimple_location(ptr noundef %0) #21
  %7 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %0) #21
  store ptr %7, ptr %4, align 8, !tbaa !131
  %8 = tail call fastcc ptr @gimple_try_eval(ptr noundef %0) #21
  store ptr %8, ptr %5, align 8, !tbaa !131
  %9 = icmp eq ptr %1, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call fastcc void @emit_post_landing_pad(ptr noundef nonnull %1) #21
  br label %11

11:                                               ; preds = %10, %3
  %12 = tail call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %7) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = icmp eq ptr %2, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = tail call ptr @create_artificial_label(i32 noundef %6) #20
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %2, %14 ], [ %17, %16 ]
  %20 = tail call ptr @gimple_build_goto(ptr noundef %19) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %20) #20
  %21 = load ptr, ptr %4, align 8, !tbaa !131
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi ptr [ %21, %18 ], [ %7, %11 ]
  %24 = phi ptr [ %19, %18 ], [ %2, %11 ]
  call void @gimple_seq_add_seq(ptr noundef nonnull @eh_seq, ptr noundef %23) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = call ptr @gimple_build_label(ptr noundef nonnull %24) #20
  call void @gimple_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %27) #20
  %28 = load ptr, ptr %5, align 8, !tbaa !131
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi ptr [ %28, %26 ], [ %8, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret ptr %30
}

; Function Attrs: optsize
declare ptr @gimple_build_eh_dispatch(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_eh_region_allowed(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_eh_filter_types(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !427 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gen_eh_region_must_not_throw(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_eh_must_not_throw_fndecl(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !428 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_mnt, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @remove_eh_landing_pad(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !123 !PGOFuncName !429 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !201
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1446, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !430 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !201
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #21
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #21, !range !206
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #21
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #20
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !151
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !131
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !131
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !431 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #21
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !432 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #21
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !151
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !433 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #21, !range !206
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #21, !range !201
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #21
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !434 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #7 !prof !123 !PGOFuncName !435 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !151
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @refactor_eh_r(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !436 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #21
  br label %3

3:                                                ; preds = %43, %1
  %4 = phi ptr [ null, %1 ], [ %44, %43 ]
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !139
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %4, null
  br i1 %8, label %45, label %28

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  %11 = icmp ne ptr %4, null
  %12 = icmp ne ptr %10, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %4) #21, !range !201
  %16 = icmp eq i32 %15, 17
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %10) #21, !range !201
  %19 = icmp eq i32 %18, 17
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = tail call fastcc i32 @gimple_try_kind(ptr noundef nonnull %4) #21, !range !276
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @gimple_try_kind(ptr noundef nonnull %10) #21, !range !276
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  tail call fastcc void @optimize_double_finally(ptr noundef nonnull %4, ptr noundef nonnull %10) #21
  br label %28

27:                                               ; preds = %9
  br i1 %11, label %28, label %40

28:                                               ; preds = %14, %17, %20, %23, %26, %7, %27
  %29 = phi ptr [ null, %7 ], [ %10, %27 ], [ %10, %26 ], [ %10, %23 ], [ %10, %20 ], [ %10, %17 ], [ %10, %14 ]
  %30 = phi i1 [ false, %7 ], [ %12, %27 ], [ true, %26 ], [ %12, %23 ], [ %12, %20 ], [ %12, %17 ], [ %12, %14 ]
  %31 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %4) #21, !range !201
  %32 = trunc i32 %31 to i8
  switch i8 %32, label %40 [
    i8 17, label %33
    i8 11, label %36
    i8 12, label %38
  ]

33:                                               ; preds = %28
  %34 = tail call fastcc ptr @gimple_try_eval(ptr noundef nonnull %4) #21
  tail call fastcc void @refactor_eh_r(ptr noundef %34) #21
  %35 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef nonnull %4) #21
  tail call fastcc void @refactor_eh_r(ptr noundef %35) #21
  br i1 %30, label %43, label %45

36:                                               ; preds = %28
  %37 = tail call fastcc ptr @gimple_catch_handler(ptr noundef nonnull %4) #21
  tail call fastcc void @refactor_eh_r(ptr noundef %37) #21
  br i1 %30, label %43, label %45

38:                                               ; preds = %28
  %39 = tail call fastcc ptr @gimple_eh_filter_failure(ptr noundef nonnull %4) #21
  tail call fastcc void @refactor_eh_r(ptr noundef %39) #21
  br i1 %30, label %43, label %45

40:                                               ; preds = %28, %27
  %41 = phi ptr [ %29, %28 ], [ %10, %27 ]
  %42 = phi i1 [ %30, %28 ], [ %12, %27 ]
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %36, %33, %40
  %44 = phi ptr [ %29, %33 ], [ %41, %40 ], [ %29, %36 ], [ %29, %38 ]
  call fastcc void @gsi_next(ptr noundef nonnull %2) #21
  br label %3

45:                                               ; preds = %7, %38, %36, %33, %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @optimize_double_finally(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !437 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %5 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %0) #21
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %5) #21
  %6 = tail call fastcc zeroext i8 @gsi_one_before_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !139
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %10 = tail call fastcc i32 @gimple_code(ptr noundef %9) #21, !range !201
  %11 = icmp eq i32 %10, 17
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @gimple_try_kind(ptr noundef %9) #21, !range !276
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %9) #21
  %17 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %1) #21
  %18 = tail call fastcc zeroext i8 @same_handler_p(ptr noundef %16, ptr noundef %17) #21, !range !139
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %21 = tail call fastcc ptr @gimple_try_eval(ptr noundef %9) #21
  tail call fastcc void @gimple_try_set_cleanup(ptr noundef %0, ptr noundef %21) #21
  tail call fastcc void @gimple_try_set_kind(ptr noundef %0) #21
  %22 = tail call ptr @copy_gimple_seq_and_replace_locals(ptr noundef %21) #20
  store ptr %22, ptr %4, align 8, !tbaa !131
  %23 = tail call fastcc ptr @gimple_try_eval(ptr noundef %1) #21
  call void @gimple_seq_add_seq(ptr noundef nonnull %4, ptr noundef %23) #20
  %24 = load ptr, ptr %4, align 8, !tbaa !131
  call fastcc void @gimple_try_set_eval(ptr noundef %1, ptr noundef %24) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %25

25:                                               ; preds = %15, %20, %8, %12, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gsi_one_before_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !123 !PGOFuncName !438 {
  %2 = load ptr, ptr %0, align 8, !tbaa !264
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !280
  %7 = icmp eq ptr %6, null
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @same_handler_p(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !439 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #21
  %4 = tail call fastcc zeroext i8 @gsi_one_before_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !139
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %50, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #21
  %8 = tail call fastcc zeroext i8 @gsi_one_before_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !139
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %50, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %12 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %7) #21, !range !139
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %50, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %11) #21, !range !139
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %50, label %17

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %7) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %50

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %11) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = tail call fastcc ptr @gimple_call_chain(ptr noundef %7) #21
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @gimple_call_chain(ptr noundef %11) #21
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @gimple_call_fn(ptr noundef %7) #21
  %31 = tail call fastcc ptr @gimple_call_fn(ptr noundef %11) #21
  %32 = tail call i32 @operand_equal_p(ptr noundef %30, ptr noundef %31, i32 noundef 0) #20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %29
  %35 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %7) #21
  %36 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %11) #21
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %50, label %44

40:                                               ; preds = %44
  %41 = add nuw i32 %45, 1
  %42 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %7) #21
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %50, !llvm.loop !440

44:                                               ; preds = %38, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %38 ]
  %46 = tail call fastcc ptr @gimple_call_arg(ptr noundef %7, i32 noundef %45) #21
  %47 = tail call fastcc ptr @gimple_call_arg(ptr noundef %11, i32 noundef %45) #21
  %48 = tail call i32 @operand_equal_p(ptr noundef %46, ptr noundef %47, i32 noundef 0) #20
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %40

50:                                               ; preds = %44, %40, %38, %10, %14, %17, %20, %23, %26, %29, %34, %6, %2
  %51 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 0, %34 ], [ 0, %29 ], [ 0, %26 ], [ 0, %23 ], [ 0, %20 ], [ 0, %17 ], [ 0, %14 ], [ 0, %10 ], [ 1, %38 ], [ 0, %44 ], [ 1, %40 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i8 %51
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_try_set_kind(ptr nocapture noundef %0) unnamed_addr #13 !prof !123 !PGOFuncName !441 {
  %2 = tail call fastcc i32 @gimple_try_kind(ptr noundef %0) #21, !range !276
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = or disjoint i32 %6, 65536
  store i32 %7, ptr %0, align 8
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_try_set_eval(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #12 !prof !123 !PGOFuncName !442 {
  %3 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !151
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_chain(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !443 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #21
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !444 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !445 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #21
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_resx(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !446 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !201
  %3 = icmp eq i32 %2, 14
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @lower_resx(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !123 !PGOFuncName !447 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  %8 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %1) #21
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call ptr @get_eh_region_from_lp_number(i32 noundef %8) #20
  br label %12

12:                                               ; preds = %3, %10
  %13 = phi ptr [ %11, %10 ], [ null, %3 ]
  %14 = tail call fastcc i32 @gimple_resx_region(ptr noundef %1) #21
  %15 = tail call ptr @get_eh_region_from_number(i32 noundef %14) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 509), align 8, !tbaa !131
  %19 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %18, i32 noundef 0) #20
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %19, i32 noundef 1) #20
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !448
  %22 = call fastcc i32 @VEC_edge_base_length(ptr noundef %21) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %140, label %24

24:                                               ; preds = %17, %24
  %25 = phi ptr [ %27, %24 ], [ %21, %17 ]
  %26 = call fastcc ptr @VEC_edge_base_index(ptr noundef %25, i32 noundef 0) #21
  call void @remove_edge(ptr noundef %26) #20
  %27 = load ptr, ptr %20, align 8, !tbaa !448
  %28 = call fastcc i32 @VEC_edge_base_length(ptr noundef %27) #21
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %140, label %24, !llvm.loop !449

30:                                               ; preds = %12
  %31 = icmp eq ptr %13, null
  br i1 %31, label %114, label %32

32:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %33 = icmp slt i32 %8, 0
  br i1 %33, label %34, label %68

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.eh_region_d, ptr %13, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !161
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2906, ptr noundef nonnull @.str.1) #20
  br label %39

39:                                               ; preds = %34, %38
  %40 = tail call ptr @pointer_map_contains(ptr noundef %2, ptr noundef nonnull %13) #20
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  %43 = tail call ptr @create_empty_bb(ptr noundef %0) #20
  %44 = tail call ptr @gimple_block_label(ptr noundef %43) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %43) #21
  %45 = getelementptr inbounds %struct.eh_region_d, ptr %13, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !151
  %47 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %46, i32 noundef 0) #20
  %48 = getelementptr inbounds %struct.eh_region_d, ptr %13, i64 0, i32 5, i32 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !151
  tail call fastcc void @gimple_set_location(ptr noundef %47, i32 noundef %49) #21
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef %47, i32 noundef 2) #20
  %50 = call ptr @pointer_map_insert(ptr noundef %2, ptr noundef nonnull %13) #20
  store ptr %44, ptr %50, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  br label %55

51:                                               ; preds = %39
  %52 = load ptr, ptr %40, align 8, !tbaa !131
  %53 = load ptr, ptr @cfun, align 8, !tbaa !131
  %54 = tail call ptr @label_to_block_fn(ptr noundef %53, ptr noundef %52) #20
  br label %55

55:                                               ; preds = %51, %42
  %56 = phi ptr [ %43, %42 ], [ %54, %51 ]
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !448
  %59 = call fastcc i32 @VEC_edge_base_length(ptr noundef %58) #21
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2931, ptr noundef nonnull @.str.1) #20
  br label %62

62:                                               ; preds = %55, %61
  %63 = call ptr @make_edge(ptr noundef nonnull %0, ptr noundef %56, i32 noundef 1) #20
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %65 = load i64, ptr %64, align 8, !tbaa !450
  %66 = getelementptr inbounds %struct.edge_def, ptr %63, i64 0, i32 9
  store i64 %65, ptr %66, align 8, !tbaa !451
  %67 = getelementptr inbounds %struct.edge_def, ptr %63, i64 0, i32 8
  store i32 10000, ptr %67, align 4, !tbaa !452
  br label %113

68:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #22
  %69 = getelementptr inbounds %struct.eh_region_d, ptr %13, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !221
  %71 = sext i32 %70 to i64
  %72 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %71) #20
  %73 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 554), align 16, !tbaa !131
  %74 = getelementptr inbounds %struct.eh_region_d, ptr %15, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !221
  %76 = sext i32 %75 to i64
  %77 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %76) #20
  %78 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %73, i32 noundef 2, ptr noundef %72, ptr noundef %77) #20
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %78, i32 noundef 1) #20
  %79 = call fastcc ptr @single_succ_edge(ptr noundef %0) #21
  store ptr %79, ptr %5, align 8, !tbaa !131
  %80 = getelementptr inbounds %struct.edge_def, ptr %79, i64 0, i32 7
  %81 = load i32, ptr %80, align 8, !tbaa !183
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %68
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2948, ptr noundef nonnull @.str.1) #20
  %85 = load i32, ptr %80, align 8, !tbaa !183
  br label %86

86:                                               ; preds = %68, %84
  %87 = phi i32 [ %81, %68 ], [ %85, %84 ]
  %88 = and i32 %87, -10
  %89 = or disjoint i32 %88, 1
  store i32 %89, ptr %80, align 8, !tbaa !183
  %90 = getelementptr inbounds %struct.edge_def, ptr %79, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !176
  %92 = call fastcc ptr @ei_start_1(ptr noundef %91) #21
  store i32 0, ptr %7, align 8, !tbaa.struct !180
  %93 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %92, ptr %93, align 8, !tbaa.struct !182
  %94 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %92, ptr noundef nonnull %5) #21, !range !139
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %86, %102
  %97 = load ptr, ptr %5, align 8, !tbaa !131
  %98 = getelementptr inbounds %struct.edge_def, ptr %97, i64 0, i32 7
  %99 = load i32, ptr %98, align 8, !tbaa !183
  %100 = and i32 %99, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  call fastcc void @ei_next(ptr noundef nonnull %7) #21
  %103 = load i32, ptr %7, align 8
  %104 = load ptr, ptr %93, align 8
  %105 = call fastcc zeroext i8 @ei_cond(i32 %103, ptr %104, ptr noundef nonnull %5) #21, !range !139
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %96, !llvm.loop !453

107:                                              ; preds = %102, %86
  %108 = load ptr, ptr %5, align 8, !tbaa !131
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call ptr @get_eh_landing_pad_from_number(i32 noundef %8) #20
  call void @remove_eh_landing_pad(ptr noundef %111) #20
  br label %112

112:                                              ; preds = %96, %110, %107
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #22
  br label %113

113:                                              ; preds = %112, %62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  br label %140

114:                                              ; preds = %30
  %115 = getelementptr inbounds %struct.eh_region_d, ptr %15, i64 0, i32 9
  %116 = load i8, ptr %115, align 8, !tbaa !454
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 551), align 8, !tbaa !131
  %120 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %119, i32 noundef 0) #20
  br label %133

121:                                              ; preds = %114
  %122 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 552), align 16, !tbaa !131
  %123 = getelementptr inbounds %struct.eh_region_d, ptr %15, i64 0, i32 3
  %124 = load i32, ptr %123, align 8, !tbaa !221
  %125 = sext i32 %124 to i64
  %126 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %125) #20
  %127 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %122, i32 noundef 1, ptr noundef %126) #20
  %128 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !131
  %129 = tail call ptr @create_tmp_var(ptr noundef %128, ptr noundef null) #20
  %130 = tail call fastcc ptr @make_ssa_name(ptr noundef %129, ptr noundef %127) #21
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %127, ptr noundef %130) #21
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %127, i32 noundef 1) #20
  %131 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 550), align 16, !tbaa !131
  %132 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %131, i32 noundef 1, ptr noundef %130) #20
  br label %133

133:                                              ; preds = %121, %118
  %134 = phi ptr [ %132, %121 ], [ %120, %118 ]
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %134, i32 noundef 1) #20
  %135 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !448
  %137 = call fastcc i32 @VEC_edge_base_length(ptr noundef %136) #21
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %133
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2995, ptr noundef nonnull @.str.1) #20
  br label %140

140:                                              ; preds = %24, %17, %139, %133, %113
  %141 = phi i8 [ 1, %113 ], [ 0, %133 ], [ 0, %139 ], [ 0, %17 ], [ 0, %24 ]
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 1) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret i8 %141
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_eh_region_from_lp_number(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_resx_region(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !455 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !151
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 !prof !123 !PGOFuncName !456 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #21
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #21
  store ptr %4, ptr %0, align 8, !tbaa !264
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !266
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !270
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !457 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !458
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !123 !PGOFuncName !460 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !131
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @create_empty_bb(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 !prof !123 !PGOFuncName !461 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #21
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #21
  store ptr %4, ptr %0, align 8, !tbaa !264
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !266
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !270
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !123 !PGOFuncName !462 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #21, !range !139
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !448
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #21
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !463 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !131
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #20
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !464 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #21
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !151
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !123 !PGOFuncName !465 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !466
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !151
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !467
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !123 !PGOFuncName !469 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !448
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #21
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @assign_filter_values() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @lower_eh_dispatch(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !123 !PGOFuncName !470 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %7 = tail call fastcc i32 @gimple_eh_dispatch_region(ptr noundef %1) #21
  %8 = tail call ptr @get_eh_region_from_number(i32 noundef %7) #20
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #21
  %9 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !161
  switch i32 %10, label %159 [
    i32 1, label %11
    i32 2, label %123
  ]

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %12 = tail call ptr @pointer_set_create() #20
  %13 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !151
  %15 = icmp eq ptr %14, null
  br i1 %15, label %63, label %16

16:                                               ; preds = %11, %59
  %17 = phi ptr [ %61, %59 ], [ %14, %11 ]
  %18 = phi i8 [ %60, %59 ], [ 0, %11 ]
  %19 = getelementptr inbounds %struct.eh_catch_d, ptr %17, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !163
  store ptr null, ptr %19, align 8, !tbaa !163
  %21 = getelementptr inbounds %struct.eh_catch_d, ptr %17, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !165
  %23 = icmp eq ptr %22, null
  br i1 %23, label %63, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.eh_catch_d, ptr %17, i64 0, i32 3
  br label %26

26:                                               ; preds = %24, %43
  %27 = phi ptr [ %52, %43 ], [ %25, %24 ]
  %28 = phi ptr [ %51, %43 ], [ %22, %24 ]
  %29 = phi i1 [ false, %43 ], [ true, %24 ]
  br label %30

30:                                               ; preds = %26, %38
  %31 = phi ptr [ %41, %38 ], [ %27, %26 ]
  %32 = phi ptr [ %40, %38 ], [ %28, %26 ]
  %33 = load ptr, ptr %31, align 8, !tbaa !151
  %34 = getelementptr inbounds %struct.tree_list, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !151
  %36 = tail call i32 @pointer_set_contains(ptr noundef %12, ptr noundef %35) #20
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !151
  %41 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 1
  %42 = icmp eq ptr %40, null
  br i1 %42, label %54, label %30, !llvm.loop !471

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.tree_list, ptr %33, i64 0, i32 2
  %45 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !131
  %46 = load ptr, ptr %44, align 8, !tbaa !151
  %47 = tail call ptr @build3_stat(i32 noundef 139, ptr noundef %45, ptr noundef %46, ptr noundef null, ptr noundef %20) #20
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %4, ptr noundef %47) #21
  %48 = load ptr, ptr %44, align 8, !tbaa !151
  %49 = tail call i32 @pointer_set_insert(ptr noundef %12, ptr noundef %48) #20
  %50 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !151
  %52 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 1
  %53 = icmp eq ptr %51, null
  br i1 %53, label %59, label %26, !llvm.loop !471

54:                                               ; preds = %38
  br i1 %29, label %55, label %59

55:                                               ; preds = %54
  %56 = load ptr, ptr @cfun, align 8, !tbaa !131
  %57 = tail call ptr @label_to_block_fn(ptr noundef %56, ptr noundef %20) #20
  %58 = tail call ptr @find_edge(ptr noundef %0, ptr noundef %57) #20
  tail call void @remove_edge(ptr noundef %58) #20
  br label %59

59:                                               ; preds = %43, %54, %55
  %60 = phi i8 [ %18, %54 ], [ 1, %55 ], [ %18, %43 ]
  %61 = load ptr, ptr %17, align 8, !tbaa !151
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %16, !llvm.loop !472

63:                                               ; preds = %59, %16, %11
  %64 = phi i8 [ 0, %11 ], [ %18, %16 ], [ %60, %59 ]
  %65 = phi ptr [ null, %11 ], [ %20, %16 ], [ null, %59 ]
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %67 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %66) #21
  store i32 0, ptr %5, align 8, !tbaa.struct !180
  %68 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %67, ptr %68, align 8, !tbaa.struct !182
  %69 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %67, ptr noundef nonnull %6) #21, !range !139
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %95, label %71

71:                                               ; preds = %63, %89
  %72 = phi ptr [ %90, %89 ], [ %65, %63 ]
  %73 = load ptr, ptr %6, align 8, !tbaa !131
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 7
  %75 = load i32, ptr %74, align 8, !tbaa !183
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %71
  %79 = icmp eq ptr %72, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !176
  %83 = tail call ptr @gimple_block_label(ptr noundef %82) #20
  %84 = load i32, ptr %74, align 8, !tbaa !183
  br label %85

85:                                               ; preds = %80, %78
  %86 = phi i32 [ %84, %80 ], [ %75, %78 ]
  %87 = phi ptr [ %83, %80 ], [ %72, %78 ]
  %88 = and i32 %86, -2
  store i32 %88, ptr %74, align 8, !tbaa !183
  br label %89

89:                                               ; preds = %71, %85
  %90 = phi ptr [ %87, %85 ], [ %72, %71 ]
  call fastcc void @ei_next(ptr noundef nonnull %5) #21
  %91 = load i32, ptr %5, align 8
  %92 = load ptr, ptr %68, align 8
  %93 = call fastcc zeroext i8 @ei_cond(i32 %91, ptr %92, ptr noundef nonnull %6) #21, !range !139
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %71, !llvm.loop !473

95:                                               ; preds = %89, %63
  %96 = phi ptr [ %65, %63 ], [ %90, %89 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3145, ptr noundef nonnull @.str.1) #20
  br label %99

99:                                               ; preds = %95, %98
  %100 = load ptr, ptr %4, align 8, !tbaa !131
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #21
  %104 = getelementptr inbounds %struct.edge_def, ptr %103, i64 0, i32 7
  %105 = load i32, ptr %104, align 8, !tbaa !183
  %106 = or i32 %105, 1
  store i32 %106, ptr %104, align 8, !tbaa !183
  br label %122

107:                                              ; preds = %99
  %108 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 553), align 8, !tbaa !131
  %109 = sext i32 %7 to i64
  %110 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %109) #20
  %111 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %108, i32 noundef 1, ptr noundef %110) #20
  %112 = getelementptr inbounds %struct.tree_common, ptr %108, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !151
  %114 = getelementptr inbounds %struct.tree_common, ptr %113, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !151
  %116 = tail call ptr @create_tmp_var(ptr noundef %115, ptr noundef null) #20
  %117 = tail call fastcc ptr @make_ssa_name(ptr noundef %116, ptr noundef %111) #21
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %111, ptr noundef %117) #21
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %111, i32 noundef 1) #20
  %118 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !131
  %119 = call ptr @build3_stat(i32 noundef 139, ptr noundef %118, ptr noundef null, ptr noundef null, ptr noundef %96) #20
  %120 = load ptr, ptr %4, align 8, !tbaa !131
  call void @sort_case_labels(ptr noundef %120) #20
  %121 = call ptr @gimple_build_switch_vec(ptr noundef %117, ptr noundef %119, ptr noundef %120) #20
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %121, i32 noundef 1) #20
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %4) #21
  br label %122

122:                                              ; preds = %107, %102
  call void @pointer_set_destroy(ptr noundef %12) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %160

123:                                              ; preds = %2
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !448
  %126 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %125, i32 noundef 0) #21
  %127 = getelementptr inbounds %struct.edge_def, ptr %126, i64 0, i32 7
  %128 = load i32, ptr %127, align 8, !tbaa !183
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  %131 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %125, i32 noundef 1) #21
  %132 = select i1 %130, ptr %126, ptr %131
  %133 = select i1 %130, ptr %131, ptr %126
  %134 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 553), align 8, !tbaa !131
  %135 = sext i32 %7 to i64
  %136 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %135) #20
  %137 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %134, i32 noundef 1, ptr noundef %136) #20
  %138 = getelementptr inbounds %struct.tree_common, ptr %134, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !151
  %140 = getelementptr inbounds %struct.tree_common, ptr %139, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !151
  %142 = tail call ptr @create_tmp_var(ptr noundef %141, ptr noundef null) #20
  %143 = tail call fastcc ptr @make_ssa_name(ptr noundef %142, ptr noundef %137) #21
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %137, ptr noundef %143) #21
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %137, i32 noundef 1) #20
  %144 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 5, i32 0, i32 1
  store ptr null, ptr %144, align 8, !tbaa !151
  %145 = getelementptr inbounds %struct.tree_common, ptr %143, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !151
  %147 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 5, i32 0, i32 2
  %148 = load i32, ptr %147, align 8, !tbaa !151
  %149 = sext i32 %148 to i64
  %150 = call ptr @build_int_cst(ptr noundef %146, i64 noundef %149) #20
  %151 = call ptr @gimple_build_cond(i32 noundef 101, ptr noundef %143, ptr noundef %150, ptr noundef null, ptr noundef null) #20
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %151, i32 noundef 1) #20
  %152 = getelementptr inbounds %struct.edge_def, ptr %132, i64 0, i32 7
  %153 = load i32, ptr %152, align 8, !tbaa !183
  %154 = or i32 %153, 1024
  store i32 %154, ptr %152, align 8, !tbaa !183
  %155 = getelementptr inbounds %struct.edge_def, ptr %133, i64 0, i32 7
  %156 = load i32, ptr %155, align 8, !tbaa !183
  %157 = and i32 %156, -2050
  %158 = or disjoint i32 %157, 2048
  store i32 %158, ptr %155, align 8, !tbaa !183
  br label %160

159:                                              ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3202, ptr noundef nonnull @.str.1) #20
  br label %160

160:                                              ; preds = %159, %123, %122
  %161 = phi i8 [ 0, %159 ], [ 0, %123 ], [ %64, %122 ]
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i8 %161
}

; Function Attrs: optsize
declare zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @pointer_set_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_unreachable_handlers() unnamed_addr #1 !prof !123 !PGOFuncName !474 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !131
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  %6 = getelementptr inbounds %struct.eh_status, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !220
  %8 = tail call fastcc i32 @VEC_eh_region_base_length(ptr noundef %7) #21
  %9 = tail call ptr @sbitmap_alloc(i32 noundef %8) #20
  %10 = load ptr, ptr @cfun, align 8, !tbaa !131
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  %12 = getelementptr inbounds %struct.eh_status, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = tail call fastcc i32 @VEC_eh_landing_pad_base_length(ptr noundef %13) #21
  %15 = tail call ptr @sbitmap_alloc(i32 noundef %14) #20
  tail call void @sbitmap_zero(ptr noundef %9) #20
  tail call void @sbitmap_zero(ptr noundef %15) #20
  %16 = load ptr, ptr @cfun, align 8, !tbaa !131
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !231
  %19 = load ptr, ptr %18, align 8, !tbaa !232
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !234
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !236
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %61, label %25

25:                                               ; preds = %0, %51
  %26 = phi ptr [ %54, %51 ], [ %21, %0 ]
  %27 = phi ptr [ %52, %51 ], [ undef, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %26) #21
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %26) #21
  %28 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !139
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %25, %47
  %31 = phi ptr [ %48, %47 ], [ %27, %25 ]
  %32 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %33 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %32) #21
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = sub nsw i32 0, %33
  tail call fastcc void @SET_BIT(ptr noundef %9, i32 noundef %36) #21
  br label %47

37:                                               ; preds = %30
  %38 = icmp eq i32 %33, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %37
  %40 = tail call fastcc zeroext i8 @gsi_one_before_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !139
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3294, ptr noundef nonnull @.str.1) #20
  br label %43

43:                                               ; preds = %39, %42
  %44 = tail call ptr @get_eh_region_from_lp_number(i32 noundef %33) #20
  %45 = getelementptr inbounds %struct.eh_region_d, ptr %44, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !221
  tail call fastcc void @SET_BIT(ptr noundef %9, i32 noundef %46) #21
  tail call fastcc void @SET_BIT(ptr noundef %15, i32 noundef %33) #21
  br label %47

47:                                               ; preds = %37, %43, %35
  %48 = phi ptr [ %31, %37 ], [ %44, %43 ], [ %31, %35 ]
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %49 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !139
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %30, label %51, !llvm.loop !475

51:                                               ; preds = %47, %25
  %52 = phi ptr [ %27, %25 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !234
  %55 = load ptr, ptr @cfun, align 8, !tbaa !131
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !231
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !236
  %60 = icmp eq ptr %54, %59
  br i1 %60, label %61, label %25, !llvm.loop !476

61:                                               ; preds = %51, %0
  %62 = phi ptr [ %16, %0 ], [ %55, %51 ]
  %63 = phi ptr [ undef, %0 ], [ %52, %51 ]
  store ptr %63, ptr %1, align 8, !tbaa !131
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %65 = icmp eq ptr %64, null
  br i1 %65, label %77, label %66

66:                                               ; preds = %61
  %67 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 39, i64 1, ptr nonnull %64)
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %69 = load ptr, ptr @cfun, align 8, !tbaa !131
  tail call void @dump_eh_tree(ptr noundef %68, ptr noundef %69) #20
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %71 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 19, i64 1, ptr %70)
  %72 = load ptr, ptr @dump_file, align 8, !tbaa !131
  tail call void @dump_sbitmap_file(ptr noundef %72, ptr noundef %9) #20
  %73 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %74 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 24, i64 1, ptr %73)
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !131
  tail call void @dump_sbitmap_file(ptr noundef %75, ptr noundef %15) #20
  %76 = load ptr, ptr @cfun, align 8, !tbaa !131
  br label %77

77:                                               ; preds = %66, %61
  %78 = phi ptr [ %76, %66 ], [ %62, %61 ]
  %79 = load ptr, ptr %78, align 8, !tbaa !141
  %80 = getelementptr inbounds %struct.eh_status, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !220
  %82 = call fastcc i32 @VEC_eh_region_base_iterate(ptr noundef %81, i32 noundef 1, ptr noundef nonnull %1) #21, !range !477
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %113, %77
  %85 = phi ptr [ %78, %77 ], [ %114, %113 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !141
  %87 = getelementptr inbounds %struct.eh_status, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !219
  %89 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %88, i32 noundef 1, ptr noundef nonnull %2) #21, !range !477
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %151, label %121

91:                                               ; preds = %77, %113
  %92 = phi ptr [ %114, %113 ], [ %78, %77 ]
  %93 = phi i32 [ %115, %113 ], [ 1, %77 ]
  %94 = load ptr, ptr %1, align 8, !tbaa !131
  %95 = icmp eq ptr %94, null
  br i1 %95, label %113, label %96

96:                                               ; preds = %91
  %97 = lshr i32 %93, 6
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 3, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !301
  %101 = and i32 %93, 63
  %102 = zext nneg i32 %101 to i64
  %103 = shl nuw i64 1, %102
  %104 = and i64 %100, %103
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %96
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %107, ptr noundef nonnull @.str.22, i32 noundef %93) #21
  br label %111

111:                                              ; preds = %109, %106
  tail call void @remove_eh_handler(ptr noundef nonnull %94) #20
  %112 = load ptr, ptr @cfun, align 8, !tbaa !131
  br label %113

113:                                              ; preds = %91, %96, %111
  %114 = phi ptr [ %92, %91 ], [ %92, %96 ], [ %112, %111 ]
  %115 = add nuw nsw i32 %93, 1
  %116 = load ptr, ptr %114, align 8, !tbaa !141
  %117 = getelementptr inbounds %struct.eh_status, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !220
  %119 = call fastcc i32 @VEC_eh_region_base_iterate(ptr noundef %118, i32 noundef %115, ptr noundef nonnull %1) #21, !range !477
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %84, label %91, !llvm.loop !478

121:                                              ; preds = %84, %143
  %122 = phi ptr [ %144, %143 ], [ %85, %84 ]
  %123 = phi i32 [ %145, %143 ], [ 1, %84 ]
  %124 = load ptr, ptr %2, align 8, !tbaa !131
  %125 = icmp eq ptr %124, null
  br i1 %125, label %143, label %126

126:                                              ; preds = %121
  %127 = lshr i32 %123, 6
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds %struct.simple_bitmap_def, ptr %15, i64 0, i32 3, i64 %128
  %130 = load i64, ptr %129, align 8, !tbaa !301
  %131 = and i32 %123, 63
  %132 = zext nneg i32 %131 to i64
  %133 = shl nuw i64 1, %132
  %134 = and i64 %130, %133
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %126
  %137 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %136
  %140 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %137, ptr noundef nonnull @.str.23, i32 noundef %123) #21
  br label %141

141:                                              ; preds = %139, %136
  tail call void @remove_eh_landing_pad(ptr noundef nonnull %124) #20
  %142 = load ptr, ptr @cfun, align 8, !tbaa !131
  br label %143

143:                                              ; preds = %121, %126, %141
  %144 = phi ptr [ %122, %121 ], [ %122, %126 ], [ %142, %141 ]
  %145 = add nuw nsw i32 %123, 1
  %146 = load ptr, ptr %144, align 8, !tbaa !141
  %147 = getelementptr inbounds %struct.eh_status, ptr %146, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !219
  %149 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %148, i32 noundef %145, ptr noundef nonnull %2) #21, !range !477
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %121, !llvm.loop !479

151:                                              ; preds = %143, %84
  %152 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %153 = icmp eq ptr %152, null
  br i1 %153, label %160, label %154

154:                                              ; preds = %151
  %155 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 40, i64 1, ptr nonnull %152)
  %156 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %157 = load ptr, ptr @cfun, align 8, !tbaa !131
  tail call void @dump_eh_tree(ptr noundef %156, ptr noundef %157) #20
  %158 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %159 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 2, i64 1, ptr %158)
  br label %160

160:                                              ; preds = %154, %151
  %161 = load ptr, ptr %9, align 8, !tbaa !480
  tail call void @free(ptr noundef %161) #21
  tail call void @free(ptr noundef %9) #21
  %162 = load ptr, ptr %15, align 8, !tbaa !480
  tail call void @free(ptr noundef %162) #21
  tail call void @free(ptr noundef %15) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @unsplit_all_eh() unnamed_addr #1 !prof !123 !PGOFuncName !482 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %2 = load ptr, ptr @cfun, align 8, !tbaa !131
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = getelementptr inbounds %struct.eh_status, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !219
  %6 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %5, i32 noundef 1, ptr noundef nonnull %1) #21, !range !477
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %0, %18
  %9 = phi ptr [ %19, %18 ], [ %2, %0 ]
  %10 = phi i32 [ %21, %18 ], [ 1, %0 ]
  %11 = phi i8 [ %20, %18 ], [ 0, %0 ]
  %12 = load ptr, ptr %1, align 8, !tbaa !131
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = tail call fastcc zeroext i8 @unsplit_eh(ptr noundef nonnull %12) #21
  %16 = or i8 %15, %11
  %17 = load ptr, ptr @cfun, align 8, !tbaa !131
  br label %18

18:                                               ; preds = %8, %14
  %19 = phi ptr [ %17, %14 ], [ %9, %8 ]
  %20 = phi i8 [ %16, %14 ], [ %11, %8 ]
  %21 = add nuw nsw i32 %10, 1
  %22 = load ptr, ptr %19, align 8, !tbaa !141
  %23 = getelementptr inbounds %struct.eh_status, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %24, i32 noundef %21, ptr noundef nonnull %1) #21, !range !477
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %8, !llvm.loop !483

27:                                               ; preds = %18, %0
  %28 = phi i8 [ 0, %0 ], [ %20, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cleanup_all_empty_eh() unnamed_addr #1 !prof !123 !PGOFuncName !484 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %2 = load ptr, ptr @cfun, align 8, !tbaa !131
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = getelementptr inbounds %struct.eh_status, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !219
  %6 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %5, i32 noundef 1, ptr noundef nonnull %1) #21, !range !477
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %0, %18
  %9 = phi ptr [ %19, %18 ], [ %2, %0 ]
  %10 = phi i32 [ %21, %18 ], [ 1, %0 ]
  %11 = phi i8 [ %20, %18 ], [ 0, %0 ]
  %12 = load ptr, ptr %1, align 8, !tbaa !131
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = tail call fastcc zeroext i8 @cleanup_empty_eh(ptr noundef nonnull %12) #21
  %16 = or i8 %15, %11
  %17 = load ptr, ptr @cfun, align 8, !tbaa !131
  br label %18

18:                                               ; preds = %8, %14
  %19 = phi ptr [ %17, %14 ], [ %9, %8 ]
  %20 = phi i8 [ %16, %14 ], [ %11, %8 ]
  %21 = add nuw nsw i32 %10, 1
  %22 = load ptr, ptr %19, align 8, !tbaa !141
  %23 = getelementptr inbounds %struct.eh_status, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %24, i32 noundef %21, ptr noundef nonnull %1) #21, !range !477
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %8, !llvm.loop !485

27:                                               ; preds = %18, %0
  %28 = phi i8 [ 0, %0 ], [ %20, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_unreachable_handlers_no_lp() unnamed_addr #1 !prof !123 !PGOFuncName !486 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %2 = load ptr, ptr @cfun, align 8, !tbaa !131
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = getelementptr inbounds %struct.eh_status, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !220
  %6 = call fastcc i32 @VEC_eh_region_base_iterate(ptr noundef %5, i32 noundef 1, ptr noundef nonnull %1) #21, !range !477
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %0, %28
  %9 = phi ptr [ %29, %28 ], [ %2, %0 ]
  %10 = phi i32 [ %30, %28 ], [ 1, %0 ]
  %11 = load ptr, ptr %1, align 8, !tbaa !131
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.eh_region_d, ptr %11, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !322
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.eh_region_d, ptr %11, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !161
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.22, i32 noundef %10) #21
  br label %26

26:                                               ; preds = %24, %21
  tail call void @remove_eh_handler(ptr noundef nonnull %11) #20
  %27 = load ptr, ptr @cfun, align 8, !tbaa !131
  br label %28

28:                                               ; preds = %8, %13, %17, %26
  %29 = phi ptr [ %9, %8 ], [ %9, %13 ], [ %9, %17 ], [ %27, %26 ]
  %30 = add nuw nsw i32 %10, 1
  %31 = load ptr, ptr %29, align 8, !tbaa !141
  %32 = getelementptr inbounds %struct.eh_status, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !220
  %34 = call fastcc i32 @VEC_eh_region_base_iterate(ptr noundef %33, i32 noundef %30, ptr noundef nonnull %1) #21, !range !477
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %8, !llvm.loop !487

36:                                               ; preds = %28, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_eh_region_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !488 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !489
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_eh_landing_pad_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !491 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !492
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 !prof !123 !PGOFuncName !494 {
  %3 = load ptr, ptr %0, align 8, !tbaa !480
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
  %15 = load i64, ptr %14, align 8, !tbaa !301
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !151
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !151
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !301
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !301
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: optsize
declare void @dump_eh_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @dump_sbitmap_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_eh_region_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !123 !PGOFuncName !495 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !489
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !131
  ret i32 %14
}

; Function Attrs: optsize
declare void @remove_eh_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_eh_landing_pad_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !123 !PGOFuncName !496 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !492
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !131
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @unsplit_eh(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !123 !PGOFuncName !497 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !131
  %5 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !173
  %7 = tail call ptr @label_to_block_fn(ptr noundef %4, ptr noundef %6) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %8 = load ptr, ptr %7, align 8, !tbaa !498
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #21
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %123

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !448
  %14 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %13) #21
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %123

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef 0) #21
  %18 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %13, i32 noundef 0) #21
  %19 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !183
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %123, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !183
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %123

28:                                               ; preds = %23
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %7) #21
  %29 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !139
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  %33 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %32) #21, !range !139
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  call fastcc void @gsi_next_nondebug(ptr noundef nonnull %2) #21
  br label %36

36:                                               ; preds = %35, %31, %28
  %37 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !139
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %123, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !176
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %41) #21
  %42 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !139
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 1
  br label %46

46:                                               ; preds = %44, %59
  %47 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  %48 = tail call fastcc i32 @gimple_code(ptr noundef %47) #21, !range !201
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = tail call fastcc ptr @gimple_label_label(ptr noundef %47) #21
  %52 = getelementptr inbounds %struct.tree_label_decl, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !151
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = tail call ptr @get_eh_region_from_lp_number(i32 noundef %53) #20
  %57 = load ptr, ptr %45, align 8, !tbaa !179
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %123

59:                                               ; preds = %50, %55
  call fastcc void @gsi_next(ptr noundef nonnull %2) #21
  %60 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !139
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %46, label %62, !llvm.loop !499

62:                                               ; preds = %59, %46, %39
  %63 = load ptr, ptr %17, align 8, !tbaa !178
  %64 = load ptr, ptr %40, align 8, !tbaa !176
  %65 = tail call ptr @find_edge(ptr noundef %63, ptr noundef %64) #20
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %123

67:                                               ; preds = %62
  %68 = tail call fastcc ptr @phi_nodes(ptr noundef nonnull %7) #21
  %69 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %68) #21, !range !139
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %102

71:                                               ; preds = %67
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %7) #20
  %72 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !139
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %71, %99
  %75 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  %76 = call fastcc ptr @gimple_phi_result(ptr noundef %75) #21
  %77 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %75, i64 noundef 0) #21
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #22
  call fastcc void @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %76) #21
  %78 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #21, !range !139
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %74, %89
  %81 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %3) #21
  %82 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #21, !range !139
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80, %84
  %85 = phi ptr [ %86, %84 ], [ %81, %80 ]
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %85, ptr noundef %77) #21
  %86 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %3) #21
  %87 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #21, !range !139
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %84, label %89, !llvm.loop !500

89:                                               ; preds = %84, %80
  call fastcc void @next_imm_use_stmt(ptr noundef nonnull %3) #21
  %90 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #21, !range !139
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %80, label %92, !llvm.loop !501

92:                                               ; preds = %89, %74
  %93 = load i64, ptr %76, align 8
  %94 = and i64 %93, 4194304
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i64, ptr %77, align 8
  %98 = or i64 %97, 4194304
  store i64 %98, ptr %77, align 8
  br label %99

99:                                               ; preds = %96, %92
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 1) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #22
  %100 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !139
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %74, label %102, !llvm.loop !502

102:                                              ; preds = %99, %71, %67
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %104 = icmp eq ptr %103, null
  br i1 %104, label %116, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr @dump_flags, align 4, !tbaa !181
  %107 = and i32 %106, 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 4
  %111 = load i32, ptr %110, align 8, !tbaa !185
  %112 = load ptr, ptr %40, align 8, !tbaa !176
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 9
  %114 = load i32, ptr %113, align 8, !tbaa !246
  %115 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %103, ptr noundef nonnull @.str.26, i32 noundef %111, i32 noundef %114) #21
  br label %116

116:                                              ; preds = %109, %105, %102
  %117 = load ptr, ptr %40, align 8, !tbaa !176
  call fastcc void @redirect_eh_edge_1(ptr noundef nonnull %17, ptr noundef %117, i8 noundef zeroext 0) #21
  %118 = load ptr, ptr %17, align 8, !tbaa !178
  call void @redirect_edge_pred(ptr noundef %18, ptr noundef %118) #20
  %119 = load <2 x i32>, ptr %19, align 8, !tbaa !181
  store <2 x i32> %119, ptr %24, align 8, !tbaa !181
  %120 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 9
  %121 = load i64, ptr %120, align 8, !tbaa !451
  %122 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 9
  store i64 %121, ptr %122, align 8, !tbaa !451
  call void @remove_edge(ptr noundef nonnull %17) #20
  br label %123

123:                                              ; preds = %55, %62, %36, %16, %23, %1, %11, %116
  %124 = phi i8 [ 1, %116 ], [ 0, %11 ], [ 0, %1 ], [ 0, %23 ], [ 0, %16 ], [ 0, %36 ], [ 0, %62 ], [ 0, %55 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret i8 %124
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #17 !prof !123 !PGOFuncName !503 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #21
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21, !range !139
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #21, !range !201
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #21
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21, !range !139
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !504

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !505 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !201
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next_nondebug(ptr nocapture noundef %0) unnamed_addr #17 !prof !123 !PGOFuncName !506 {
  br label %2

2:                                                ; preds = %5, %1
  tail call fastcc void @gsi_next(ptr noundef %0) #21
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21, !range !139
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21
  %7 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %6) #21, !range !139
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %2, !llvm.loop !507

9:                                                ; preds = %2, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !508 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !282
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !123 !PGOFuncName !509 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !466
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 510, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !151
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !510
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !511 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !512 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #21
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !513 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !514
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !517
  store ptr %6, ptr %0, align 8, !tbaa !518
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #21, !range !139
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #21
  br label %11

11:                                               ; preds = %2, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !519 {
  %2 = load ptr, ptr %0, align 8, !tbaa !518
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !514
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #11 !prof !123 !PGOFuncName !520 {
  %2 = load ptr, ptr %0, align 8, !tbaa !518
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !517
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !521
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !522 {
  %2 = load ptr, ptr %0, align 8, !tbaa !518
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #18 !prof !123 !PGOFuncName !523 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #21
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !524
  store ptr %1, ptr %4, align 8, !tbaa !131
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #11 !prof !123 !PGOFuncName !525 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !521
  store ptr %3, ptr %0, align 8, !tbaa !518
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #21, !range !139
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !517
  store ptr %8, ptr %2, align 8, !tbaa !521
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @next_imm_use_stmt(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !526 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !527
  store ptr %4, ptr %0, align 8, !tbaa !518
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #21, !range !139
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !528
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #21
  br label %12

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #21
  br label %12

12:                                               ; preds = %7, %10, %11
  ret void
}

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @redirect_edge_pred(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !529 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !151
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3103, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !123 !PGOFuncName !530 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !524
  %4 = load ptr, ptr %3, align 8, !tbaa !131
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !531 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !151
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #20
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #21, !range !201
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #21
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #21
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #21
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #21
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !llvm.loop !532

28:                                               ; preds = %2
  br i1 %8, label %45, label %29

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #21
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #21
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #21
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #21
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !llvm.loop !533

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #21
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #21
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #21
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !528
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #21
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 !prof !123 !PGOFuncName !534 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #21
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #21
  store i8 0, ptr %0, align 8, !tbaa !535
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 918, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #20
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !535
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !537
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #21
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !538
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !539
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #21
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !540 {
  %2 = load i8, ptr %0, align 8, !tbaa !535
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #18 !prof !123 !PGOFuncName !541 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !517
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #21
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #21
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !542 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !543
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !544
  store ptr %7, ptr %2, align 8, !tbaa !543
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !546
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !538
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !537
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !546
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #21
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !535
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !123 !PGOFuncName !547 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 771, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !539
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #6 !prof !123 !PGOFuncName !548 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !139
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !151
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !549
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
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #18 !prof !123 !PGOFuncName !550 {
  %2 = load ptr, ptr %0, align 8, !tbaa !551
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !517
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !517
  store ptr %2, ptr %6, align 8, !tbaa !551
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #18 !prof !123 !PGOFuncName !552 {
  store ptr %1, ptr %0, align 8, !tbaa !551
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !517
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !517
  store ptr %0, ptr %4, align 8, !tbaa !551
  store ptr %0, ptr %3, align 8, !tbaa !517
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #12 !prof !123 !PGOFuncName !553 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !535
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !554 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !151
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !555 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !123 !PGOFuncName !556 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 747, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !557
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #21
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !557
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !558
  store ptr %22, ptr %16, align 8, !tbaa !557
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !543
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #21
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !543
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #21
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !544
  store ptr %36, ptr %29, align 8, !tbaa !543
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !535
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !560 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !139
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !151
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !561 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !139
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !151
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !562 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !139
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !151
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !563 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !139
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !151
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !123 !PGOFuncName !564 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !201
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #18 !prof !123 !PGOFuncName !565 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !551
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #21
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @cleanup_empty_eh(ptr noundef %0) unnamed_addr #1 !prof !123 !PGOFuncName !566 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr @cfun, align 8, !tbaa !131
  %6 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !173
  %8 = tail call ptr @label_to_block_fn(ptr noundef %5, ptr noundef %7) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !448
  %11 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %10) #21
  switch i32 %11, label %144 [
    i32 0, label %14
    i32 1, label %12
  ]

12:                                               ; preds = %1
  %13 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %10, i32 noundef 0) #21
  br label %14

14:                                               ; preds = %1, %12
  %15 = phi ptr [ %13, %12 ], [ null, %1 ]
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %8) #21
  %16 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !139
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  %20 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %19) #21, !range !139
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  call fastcc void @gsi_next_nondebug(ptr noundef nonnull %2) #21
  br label %23

23:                                               ; preds = %22, %18, %14
  %24 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !139
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc zeroext i8 @cleanup_empty_eh_unsplit(ptr noundef nonnull %8, ptr noundef %15, ptr noundef nonnull %0) #21
  br label %144

28:                                               ; preds = %23
  %29 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  %30 = tail call fastcc zeroext i8 @is_gimple_resx(ptr noundef %29) #21, !range !139
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %144, label %32

32:                                               ; preds = %28
  %33 = tail call fastcc zeroext i8 @gsi_one_before_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !139
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3729, ptr noundef nonnull @.str.1) #20
  br label %36

36:                                               ; preds = %32, %35
  %37 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %8) #21
  store i32 0, ptr %3, align 8, !tbaa.struct !180
  %38 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %37, ptr %38, align 8, !tbaa.struct !182
  %39 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %37, ptr noundef nonnull %4) #21, !range !139
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %36, %41
  %42 = phi i8 [ %48, %41 ], [ 0, %36 ]
  %43 = load ptr, ptr %4, align 8, !tbaa !131
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !183
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i8 1, i8 %42
  call fastcc void @ei_next(ptr noundef nonnull %3) #21
  %49 = load i32, ptr %3, align 8
  %50 = load ptr, ptr %38, align 8
  %51 = call fastcc zeroext i8 @ei_cond(i32 %49, ptr %50, ptr noundef nonnull %4) #21, !range !139
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %41, !llvm.loop !567

53:                                               ; preds = %41
  %54 = icmp eq i8 %48, 0
  br label %55

55:                                               ; preds = %53, %36
  %56 = phi i1 [ true, %36 ], [ %54, %53 ]
  %57 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %29) #21
  %58 = tail call ptr @get_eh_region_from_lp_number(i32 noundef %57) #20
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %86

60:                                               ; preds = %55
  %61 = icmp eq ptr %15, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3748, ptr noundef nonnull @.str.1) #20
  br label %63

63:                                               ; preds = %60, %62
  store i32 0, ptr %3, align 8, !tbaa.struct !180
  store ptr %37, ptr %38, align 8, !tbaa.struct !182
  %64 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %37) #21
  %65 = icmp eq ptr %64, null
  br i1 %65, label %132, label %66

66:                                               ; preds = %63, %81
  %67 = phi ptr [ %82, %81 ], [ %37, %63 ]
  %68 = phi i32 [ %83, %81 ], [ 0, %63 ]
  %69 = phi ptr [ %84, %81 ], [ %64, %63 ]
  %70 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !183
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %66
  %75 = load ptr, ptr %69, align 8, !tbaa !178
  %76 = tail call ptr @last_stmt(ptr noundef %75) #20
  %77 = tail call zeroext i8 @remove_stmt_from_eh_lp(ptr noundef %76) #21, !range !139
  tail call void @remove_edge(ptr noundef nonnull %69) #20
  br label %81

78:                                               ; preds = %66
  call fastcc void @ei_next(ptr noundef nonnull %3) #21
  %79 = load i32, ptr %3, align 8
  %80 = load ptr, ptr %38, align 8
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi ptr [ %80, %78 ], [ %67, %74 ]
  %83 = phi i32 [ %79, %78 ], [ %68, %74 ]
  %84 = tail call fastcc ptr @ei_safe_edge(i32 %83, ptr %82) #21
  %85 = icmp eq ptr %84, null
  br i1 %85, label %132, label %66, !llvm.loop !568

86:                                               ; preds = %55
  %87 = getelementptr inbounds %struct.eh_region_d, ptr %58, i64 0, i32 4
  %88 = load i32, ptr %87, align 4, !tbaa !161
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %90, label %113

90:                                               ; preds = %86
  store i32 0, ptr %3, align 8, !tbaa.struct !180
  store ptr %37, ptr %38, align 8, !tbaa.struct !182
  %91 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %37) #21
  %92 = icmp eq ptr %91, null
  br i1 %92, label %132, label %93

93:                                               ; preds = %90, %108
  %94 = phi ptr [ %109, %108 ], [ %37, %90 ]
  %95 = phi i32 [ %110, %108 ], [ 0, %90 ]
  %96 = phi ptr [ %111, %108 ], [ %91, %90 ]
  %97 = getelementptr inbounds %struct.edge_def, ptr %96, i64 0, i32 7
  %98 = load i32, ptr %97, align 8, !tbaa !183
  %99 = and i32 %98, 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %93
  %102 = load ptr, ptr %96, align 8, !tbaa !178
  %103 = tail call ptr @last_stmt(ptr noundef %102) #20
  %104 = tail call zeroext i8 @remove_stmt_from_eh_lp(ptr noundef %103) #21, !range !139
  tail call void @add_stmt_to_eh_lp(ptr noundef %103, i32 noundef %57) #21
  tail call void @remove_edge(ptr noundef nonnull %96) #20
  br label %108

105:                                              ; preds = %93
  call fastcc void @ei_next(ptr noundef nonnull %3) #21
  %106 = load i32, ptr %3, align 8
  %107 = load ptr, ptr %38, align 8
  br label %108

108:                                              ; preds = %105, %101
  %109 = phi ptr [ %107, %105 ], [ %94, %101 ]
  %110 = phi i32 [ %106, %105 ], [ %95, %101 ]
  %111 = tail call fastcc ptr @ei_safe_edge(i32 %110, ptr %109) #21
  %112 = icmp eq ptr %111, null
  br i1 %112, label %132, label %93, !llvm.loop !569

113:                                              ; preds = %86
  %114 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !176
  %116 = tail call fastcc zeroext i8 @cleanup_empty_eh_merge_phis(ptr noundef %115, ptr noundef %8, ptr noundef %15, i8 noundef zeroext 1) #21
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %113
  br i1 %56, label %119, label %144

119:                                              ; preds = %118
  tail call fastcc void @cleanup_empty_eh_move_lp(ptr noundef %8, ptr noundef nonnull %15, ptr noundef %0, ptr noundef nonnull %58) #21
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %121 = icmp eq ptr %120, null
  br i1 %121, label %144, label %122

122:                                              ; preds = %119
  %123 = load i32, ptr @dump_flags, align 4, !tbaa !181
  %124 = and i32 %123, 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %144, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 4
  %128 = load i32, ptr %127, align 8, !tbaa !185
  %129 = getelementptr inbounds %struct.eh_region_d, ptr %58, i64 0, i32 3
  %130 = load i32, ptr %129, align 8, !tbaa !221
  %131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %120, ptr noundef nonnull @.str.28, i32 noundef %128, i32 noundef %130) #21
  br label %144

132:                                              ; preds = %108, %81, %90, %63, %113
  %133 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %134 = icmp eq ptr %133, null
  br i1 %134, label %143, label %135

135:                                              ; preds = %132
  %136 = load i32, ptr @dump_flags, align 4, !tbaa !181
  %137 = and i32 %136, 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 4
  %141 = load i32, ptr %140, align 8, !tbaa !185
  %142 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %133, ptr noundef nonnull @.str.29, i32 noundef %141) #21
  br label %143

143:                                              ; preds = %139, %135, %132
  tail call void @remove_eh_landing_pad(ptr noundef %0) #20
  br label %144

144:                                              ; preds = %118, %119, %122, %126, %28, %1, %143, %26
  %145 = phi i8 [ %27, %26 ], [ 1, %143 ], [ 0, %1 ], [ 0, %28 ], [ 1, %126 ], [ 1, %122 ], [ 1, %119 ], [ 0, %118 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret i8 %145
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @cleanup_empty_eh_unsplit(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !prof !123 !PGOFuncName !570 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3654, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %3, %6
  %8 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !176
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %9) #21
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21, !range !139
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %2, i64 0, i32 1
  br label %14

14:                                               ; preds = %12, %27
  %15 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21
  %16 = tail call fastcc i32 @gimple_code(ptr noundef %15) #21, !range !201
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_label_label(ptr noundef %15) #21
  %20 = getelementptr inbounds %struct.tree_label_decl, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !151
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = tail call ptr @get_eh_region_from_lp_number(i32 noundef %21) #20
  %25 = load ptr, ptr %13, align 8, !tbaa !179
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %18, %23
  call fastcc void @gsi_next(ptr noundef nonnull %4) #21
  %28 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21, !range !139
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %14, label %30, !llvm.loop !571

30:                                               ; preds = %27, %14, %7
  %31 = load ptr, ptr %8, align 8, !tbaa !176
  %32 = tail call fastcc zeroext i8 @cleanup_empty_eh_merge_phis(ptr noundef %31, ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #21
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr @dump_flags, align 4, !tbaa !181
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %2, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !185
  %44 = load ptr, ptr %8, align 8, !tbaa !176
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !246
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %35, ptr noundef nonnull @.str.30, i32 noundef %43, i32 noundef %46) #21
  br label %48

48:                                               ; preds = %23, %30, %34, %37, %41
  %49 = phi i8 [ 1, %41 ], [ 1, %37 ], [ 1, %34 ], [ 0, %30 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret i8 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !123 !PGOFuncName !572 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #21, !range !139
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @cleanup_empty_eh_merge_phis(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #1 !prof !123 !PGOFuncName !573 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.edge_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  %11 = tail call fastcc ptr @ei_start_1(ptr noundef %1) #21
  store i32 0, ptr %7, align 8, !tbaa.struct !180
  %12 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %11, ptr %12, align 8, !tbaa.struct !182
  %13 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %8) #21, !range !139
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %4, %15
  %16 = load ptr, ptr %8, align 8, !tbaa !131
  tail call void @redirect_edge_var_map_clear(ptr noundef %16) #20
  call fastcc void @ei_next(ptr noundef nonnull %7) #21
  %17 = load i32, ptr %7, align 8
  %18 = load ptr, ptr %12, align 8
  %19 = call fastcc zeroext i8 @ei_cond(i32 %17, ptr %18, ptr noundef nonnull %8) #21, !range !139
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %15, !llvm.loop !574

21:                                               ; preds = %15, %4
  %22 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %23 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %0) #20
  %24 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21, !range !139
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %92

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 6
  br label %28

28:                                               ; preds = %26, %89
  %29 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21
  %30 = call fastcc ptr @gimple_phi_result(ptr noundef %29) #21
  %31 = load i32, ptr %27, align 4, !tbaa !575
  %32 = zext i32 %31 to i64
  %33 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %29, i64 noundef %32) #21
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %1) #20
  %34 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #21, !range !139
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %28, %40
  %37 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #21
  %38 = call fastcc ptr @gimple_phi_result(ptr noundef %37) #21
  %39 = icmp eq ptr %38, %33
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  call fastcc void @gsi_next(ptr noundef nonnull %6) #21
  %41 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #21, !range !139
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %36, label %70, !llvm.loop !576

43:                                               ; preds = %36
  %44 = icmp eq ptr %37, null
  br i1 %44, label %70, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.tree_ssa_name, ptr %33, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !151
  %48 = call zeroext i8 @bitmap_set_bit(ptr noundef %22, i32 noundef %47) #20
  store i32 0, ptr %7, align 8, !tbaa.struct !180
  store ptr %11, ptr %12, align 8, !tbaa.struct !182
  %49 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %8) #21, !range !139
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %89, label %51

51:                                               ; preds = %45, %65
  %52 = load ptr, ptr %8, align 8, !tbaa !131
  %53 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 7
  %54 = load i32, ptr %53, align 8, !tbaa !183
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 6
  %59 = load i32, ptr %58, align 4, !tbaa !575
  %60 = zext i32 %59 to i64
  %61 = call fastcc ptr @gimple_phi_arg_def(ptr noundef nonnull %37, i64 noundef %60) #21
  %62 = load i32, ptr %58, align 4, !tbaa !575
  %63 = zext i32 %62 to i64
  %64 = call fastcc i32 @gimple_phi_arg_location(ptr noundef nonnull %37, i64 noundef %63) #21
  call void @redirect_edge_var_map_add(ptr noundef nonnull %52, ptr noundef %30, ptr noundef %61, i32 noundef %64) #20
  br label %65

65:                                               ; preds = %51, %57
  call fastcc void @ei_next(ptr noundef nonnull %7) #21
  %66 = load i32, ptr %7, align 8
  %67 = load ptr, ptr %12, align 8
  %68 = call fastcc zeroext i8 @ei_cond(i32 %66, ptr %67, ptr noundef nonnull %8) #21, !range !139
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %89, label %51, !llvm.loop !577

70:                                               ; preds = %40, %28, %43
  %71 = call zeroext i8 @is_gimple_reg(ptr noundef %30) #20
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !151
  %76 = call zeroext i8 @bitmap_set_bit(ptr noundef %23, i32 noundef %75) #20
  br label %89

77:                                               ; preds = %70
  %78 = load i32, ptr %27, align 4, !tbaa !575
  %79 = zext i32 %78 to i64
  %80 = call fastcc i32 @gimple_phi_arg_location(ptr noundef %29, i64 noundef %79) #21
  store i32 0, ptr %7, align 8, !tbaa.struct !180
  store ptr %11, ptr %12, align 8, !tbaa.struct !182
  %81 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %8) #21, !range !139
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %77, %83
  %84 = load ptr, ptr %8, align 8, !tbaa !131
  call void @redirect_edge_var_map_add(ptr noundef %84, ptr noundef %30, ptr noundef %33, i32 noundef %80) #20
  call fastcc void @ei_next(ptr noundef nonnull %7) #21
  %85 = load i32, ptr %7, align 8
  %86 = load ptr, ptr %12, align 8
  %87 = call fastcc zeroext i8 @ei_cond(i32 %85, ptr %86, ptr noundef nonnull %8) #21, !range !139
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %83, !llvm.loop !578

89:                                               ; preds = %65, %83, %45, %77, %73
  call fastcc void @gsi_next(ptr noundef nonnull %5) #21
  %90 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21, !range !139
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %28, label %92, !llvm.loop !579

92:                                               ; preds = %89, %21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #22
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %1) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !346
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #22
  %93 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #21, !range !139
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92, %102
  %96 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #21
  %97 = call fastcc ptr @gimple_phi_result(ptr noundef %96) #21
  %98 = getelementptr inbounds %struct.tree_ssa_name, ptr %97, i64 0, i32 3
  %99 = load i32, ptr %98, align 8, !tbaa !151
  %100 = call i32 @bitmap_bit_p(ptr noundef %22, i32 noundef %99) #20
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %140, label %102

102:                                              ; preds = %95
  call fastcc void @gsi_next(ptr noundef nonnull %6) #21
  %103 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #21, !range !139
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %95, label %105, !llvm.loop !580

105:                                              ; preds = %102, %92
  %106 = load ptr, ptr %23, align 8, !tbaa !581
  %107 = icmp eq ptr %106, null
  br i1 %107, label %123, label %108

108:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #22
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !346
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #22
  %109 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21, !range !139
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %108, %120
  %112 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21
  %113 = call fastcc ptr @gimple_phi_result(ptr noundef %112) #21
  %114 = getelementptr inbounds %struct.tree_ssa_name, ptr %113, i64 0, i32 3
  %115 = load i32, ptr %114, align 8, !tbaa !151
  %116 = call i32 @bitmap_bit_p(ptr noundef nonnull %23, i32 noundef %115) #20
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  call void @mark_virtual_phi_result_for_renaming(ptr noundef %112) #20
  call void @remove_phi_node(ptr noundef nonnull %5, i8 noundef zeroext 1) #20
  br label %120

119:                                              ; preds = %111
  call fastcc void @gsi_next(ptr noundef nonnull %5) #21
  br label %120

120:                                              ; preds = %119, %118
  %121 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21, !range !139
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %111, label %123, !llvm.loop !583

123:                                              ; preds = %120, %108, %105
  store i32 0, ptr %7, align 8, !tbaa.struct !180
  store ptr %11, ptr %12, align 8, !tbaa.struct !182
  %124 = call fastcc ptr @ei_safe_edge(i32 0, ptr %11) #21
  %125 = icmp eq ptr %124, null
  br i1 %125, label %139, label %126

126:                                              ; preds = %123, %134
  %127 = phi ptr [ %137, %134 ], [ %124, %123 ]
  %128 = getelementptr inbounds %struct.edge_def, ptr %127, i64 0, i32 7
  %129 = load i32, ptr %128, align 8, !tbaa !183
  %130 = and i32 %129, 8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  call fastcc void @redirect_eh_edge_1(ptr noundef nonnull %127, ptr noundef %0, i8 noundef zeroext %3) #21
  call void @redirect_edge_succ(ptr noundef nonnull %127, ptr noundef %0) #20
  call void @flush_pending_stmts(ptr noundef nonnull %127) #20
  br label %134

133:                                              ; preds = %126
  call fastcc void @ei_next(ptr noundef nonnull %7) #21
  br label %134

134:                                              ; preds = %133, %132
  %135 = load i32, ptr %7, align 8
  %136 = load ptr, ptr %12, align 8
  %137 = call fastcc ptr @ei_safe_edge(i32 %135, ptr %136) #21
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %126, !llvm.loop !584

139:                                              ; preds = %134, %123
  call void @bitmap_obstack_free(ptr noundef %22) #20
  call void @bitmap_obstack_free(ptr noundef nonnull %23) #20
  br label %150

140:                                              ; preds = %95
  store i32 0, ptr %7, align 8, !tbaa.struct !180
  store ptr %11, ptr %12, align 8, !tbaa.struct !182
  %141 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %8) #21, !range !139
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %140, %143
  %144 = load ptr, ptr %8, align 8, !tbaa !131
  call void @redirect_edge_var_map_clear(ptr noundef %144) #20
  call fastcc void @ei_next(ptr noundef nonnull %7) #21
  %145 = load i32, ptr %7, align 8
  %146 = load ptr, ptr %12, align 8
  %147 = call fastcc zeroext i8 @ei_cond(i32 %145, ptr %146, ptr noundef nonnull %8) #21, !range !139
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %143, !llvm.loop !585

149:                                              ; preds = %143, %140
  call void @bitmap_obstack_free(ptr noundef %22) #20
  call void @bitmap_obstack_free(ptr noundef %23) #20
  br label %150

150:                                              ; preds = %149, %139
  %151 = phi i8 [ 0, %149 ], [ 1, %139 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  ret i8 %151
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cleanup_empty_eh_move_lp(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 !prof !123 !PGOFuncName !586 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !179
  %8 = getelementptr inbounds %struct.eh_region_d, ptr %7, i64 0, i32 6
  br label %9

9:                                                ; preds = %9, %4
  %10 = phi ptr [ %8, %4 ], [ %11, %9 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %9, !llvm.loop !587

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 8, !tbaa !323
  store ptr %14, ptr %10, align 8, !tbaa !131
  store ptr %3, ptr %6, align 8, !tbaa !179
  %15 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !322
  store ptr %16, ptr %2, align 8, !tbaa !323
  store ptr %2, ptr %15, align 8, !tbaa !322
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %0) #21
  %17 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21
  tail call void @mark_virtual_ops_for_renaming(ptr noundef %17) #20
  call void @gsi_remove(ptr noundef nonnull %5, i8 noundef zeroext 1) #20
  %18 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !183
  %20 = and i32 %19, -10
  %21 = or disjoint i32 %20, 1
  store i32 %21, ptr %18, align 8, !tbaa !183
  %22 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  store i32 10000, ptr %22, align 4, !tbaa !452
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 !prof !123 !PGOFuncName !588 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #21
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !123 !PGOFuncName !589 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #21
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 !prof !123 !PGOFuncName !590 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 687, ptr noundef nonnull @.str.1) #20
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !131
  ret ptr %5
}

; Function Attrs: optsize
declare void @redirect_edge_var_map_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) unnamed_addr #1 !prof !123 !PGOFuncName !591 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #21
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !592
  ret i32 %6
}

; Function Attrs: optsize
declare void @redirect_edge_var_map_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mark_virtual_phi_result_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @flush_pending_stmts(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mark_virtual_ops_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!122}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121}
!35 = !{ptr @remove_stmt_from_eh_lp_fn, ptr @get_eh_throw_stmt_table, i64 1557465}
!36 = !{ptr @remove_stmt_from_eh_lp_fn, ptr @htab_find_slot, i64 1}
!37 = !{ptr @remove_stmt_from_eh_lp_fn, ptr @htab_clear_slot, i64 1}
!38 = !{ptr @remove_stmt_from_eh_lp, ptr @remove_stmt_from_eh_lp_fn, i64 443031}
!39 = !{ptr @lookup_stmt_eh_lp_fn, ptr @htab_find, i64 1}
!40 = !{ptr @lookup_stmt_eh_lp, ptr @lookup_stmt_eh_lp_fn, i64 184672}
!41 = !{ptr @lower_eh_constructs, ptr @gimple_body, i64 79}
!42 = !{ptr @lower_eh_constructs, ptr @htab_create, i64 39}
!43 = !{ptr @lower_eh_constructs, ptr @bitmap_obstack_alloc_stat, i64 39}
!44 = !{ptr @lower_eh_constructs, ptr @collect_finally_tree_1, i64 39}
!45 = !{ptr @lower_eh_constructs, ptr @lower_eh_constructs_1, i64 39}
!46 = !{ptr @lower_eh_constructs, ptr @gimple_seq_may_fallthru, i64 39}
!47 = !{ptr @lower_eh_constructs, ptr @fancy_abort, i64 2}
!48 = !{ptr @lower_eh_constructs, ptr @gimple_seq_add_seq, i64 39}
!49 = !{ptr @lower_eh_constructs, ptr @htab_delete, i64 39}
!50 = !{ptr @lower_eh_constructs, ptr @bitmap_obstack_free, i64 39}
!51 = !{ptr @lower_eh_constructs, ptr @function_needs_eh_personality, i64 39}
!52 = !{ptr @make_eh_edges, ptr @lookup_stmt_eh_lp, i64 61}
!53 = !{ptr @make_eh_edges, ptr @get_eh_landing_pad_from_number, i64 1}
!54 = !{ptr @make_eh_edges, ptr @gimple_bb, i64 1}
!55 = !{ptr @make_eh_edges, ptr @label_to_block_fn, i64 1}
!56 = !{ptr @make_eh_edges, ptr @make_edge, i64 1}
!57 = !{ptr @operation_could_trap_helper_p, ptr @integer_zerop, i64 1}
!58 = !{ptr @operation_could_trap_p, ptr @operation_could_trap_helper_p, i64 153253}
!59 = !{ptr @tree_could_trap_p, ptr @operation_could_trap_p, i64 153343}
!60 = !{ptr @tree_could_trap_p, ptr @tree_could_trap_p, i64 2}
!61 = !{ptr @tree_could_trap_p, ptr @get_callee_fndecl, i64 1}
!62 = !{ptr @stmt_could_throw_p, ptr @gimple_code, i64 1}
!63 = !{ptr @stmt_can_throw_external, ptr @stmt_could_throw_p, i64 207493}
!64 = !{ptr @stmt_can_throw_external, ptr @lookup_stmt_eh_lp, i64 1}
!65 = !{ptr @stmt_can_throw_internal, ptr @stmt_could_throw_p, i64 9497410}
!66 = !{ptr @stmt_can_throw_internal, ptr @lookup_stmt_eh_lp, i64 1}
!67 = !{ptr @maybe_clean_eh_stmt_fn, ptr @stmt_could_throw_p, i64 1114432}
!68 = !{ptr @maybe_clean_eh_stmt_fn, ptr @remove_stmt_from_eh_lp_fn, i64 1114431}
!69 = !{ptr @maybe_clean_eh_stmt, ptr @maybe_clean_eh_stmt_fn, i64 1114432}
!70 = !{ptr @maybe_clean_or_replace_eh_stmt, ptr @lookup_stmt_eh_lp, i64 98452}
!71 = !{ptr @maybe_clean_or_replace_eh_stmt, ptr @stmt_could_throw_p, i64 1}
!72 = !{ptr @maybe_duplicate_eh_stmt_fn, ptr @stmt_could_throw_p, i64 334}
!73 = !{ptr @maybe_duplicate_eh_stmt_fn, ptr @lookup_stmt_eh_lp_fn, i64 1}
!74 = !{ptr @maybe_duplicate_eh_stmt_fn, ptr @add_stmt_to_eh_lp_fn, i64 1}
!75 = !{ptr @maybe_duplicate_eh_stmt, ptr @stmt_could_throw_p, i64 87675}
!76 = !{ptr @maybe_duplicate_eh_stmt, ptr @lookup_stmt_eh_lp, i64 1}
!77 = !{ptr @maybe_duplicate_eh_stmt, ptr @add_stmt_to_eh_lp, i64 1}
!78 = !{ptr @collect_finally_tree_1, ptr @gsi_start, i64 40}
!79 = !{ptr @collect_finally_tree_1, ptr @gsi_end_p, i64 640070}
!80 = !{ptr @collect_finally_tree_1, ptr @gsi_stmt, i64 640030}
!81 = !{ptr @collect_finally_tree_1, ptr @collect_finally_tree, i64 640030}
!82 = !{ptr @collect_finally_tree_1, ptr @gsi_next, i64 640030}
!83 = !{ptr @lower_eh_constructs_1, ptr @gsi_start, i64 40}
!84 = !{ptr @lower_eh_constructs_1, ptr @gsi_end_p, i64 640070}
!85 = !{ptr @lower_eh_constructs_1, ptr @lower_eh_constructs_2, i64 640030}
!86 = !{ptr @gsi_start, ptr @gimple_seq_first, i64 80}
!87 = !{ptr @gsi_start, ptr @gimple_bb, i64 78}
!88 = !{ptr @collect_finally_tree, ptr @gimple_code, i64 656031}
!89 = !{ptr @collect_finally_tree, ptr @gimple_label_label, i64 210604}
!90 = !{ptr @collect_finally_tree, ptr @record_in_finally_tree, i64 210604}
!91 = !{ptr @collect_finally_tree, ptr @gimple_try_kind, i64 1}
!92 = !{ptr @collect_finally_tree, ptr @gimple_catch_handler, i64 1}
!93 = !{ptr @collect_finally_tree, ptr @collect_finally_tree_1, i64 2}
!94 = !{ptr @collect_finally_tree, ptr @gimple_eh_filter_failure, i64 1}
!95 = !{ptr @gimple_label_label, ptr @gimple_op, i64 210605}
!96 = !{ptr @record_in_finally_tree, ptr @xmalloc, i64 210605}
!97 = !{ptr @record_in_finally_tree, ptr @htab_find_slot, i64 210605}
!98 = !{ptr @record_in_finally_tree, ptr @fancy_abort, i64 1}
!99 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 279849}
!100 = !{ptr @gimple_op, ptr @gimple_ops, i64 279848}
!101 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 279849}
!102 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 279849}
!103 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!104 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 279849}
!105 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 279849}
!106 = !{ptr @lower_eh_constructs_2, ptr @gsi_stmt, i64 656031}
!107 = !{ptr @lower_eh_constructs_2, ptr @gimple_code, i64 656031}
!108 = !{ptr @lower_eh_constructs_2, ptr @gimple_call_fndecl, i64 69244}
!109 = !{ptr @lower_eh_constructs_2, ptr @gsi_remove, i64 2}
!110 = !{ptr @lower_eh_constructs_2, ptr @stmt_could_throw_p, i64 257842}
!111 = !{ptr @lower_eh_constructs_2, ptr @gimple_has_lhs, i64 1}
!112 = !{ptr @lower_eh_constructs_2, ptr @gimple_stmt_may_fallthru, i64 1}
!113 = !{ptr @lower_eh_constructs_2, ptr @record_stmt_eh_region, i64 1}
!114 = !{ptr @lower_eh_constructs_2, ptr @note_eh_region_may_contain_throw, i64 1}
!115 = !{ptr @lower_eh_constructs_2, ptr @maybe_record_in_goto_queue, i64 187546}
!116 = !{ptr @lower_eh_constructs_2, ptr @gimple_try_kind, i64 1}
!117 = !{ptr @lower_eh_constructs_2, ptr @gsi_insert_seq_before, i64 1}
!118 = !{ptr @lower_eh_constructs_2, ptr @gsi_next, i64 656029}
!119 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 69244}
!120 = !{ptr @maybe_record_in_goto_queue, ptr @gimple_code, i64 1}
!121 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 69244}
!122 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!123 = !{!"function_entry_count", i64 0}
!124 = !{!125, !126, i64 0}
!125 = !{!"throw_stmt_node", !126, i64 0, !129, i64 8}
!126 = !{!"any pointer", !127, i64 0}
!127 = !{!"omnipotent char", !128, i64 0}
!128 = !{!"Simple C/C++ TBAA"}
!129 = !{!"int", !127, i64 0}
!130 = !{!125, !129, i64 8}
!131 = !{!126, !126, i64 0}
!132 = !{!"function_entry_count", i64 579959}
!133 = !{!"tree-eh.c:struct_ptr_hash"}
!134 = !{!"function_entry_count", i64 321331}
!135 = !{!"tree-eh.c:struct_ptr_eq"}
!136 = !{!"function_entry_count", i64 1557463}
!137 = !{!"branch_weights", i32 1557464, i32 1}
!138 = !{!"function_entry_count", i64 443031}
!139 = !{i8 0, i8 2}
!140 = !{!"function_entry_count", i64 184673}
!141 = !{!142, !126, i64 0}
!142 = !{!"function", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40, !126, i64 48, !126, i64 56, !126, i64 64, !126, i64 72, !126, i64 80, !126, i64 88, !126, i64 96, !129, i64 104, !129, i64 108, !129, i64 112, !129, i64 116, !129, i64 120, !129, i64 124, !126, i64 128, !129, i64 136, !129, i64 137, !129, i64 138, !129, i64 138, !129, i64 138, !129, i64 138, !129, i64 138, !129, i64 138, !129, i64 138, !129, i64 139, !129, i64 139, !129, i64 139, !129, i64 139, !129, i64 139, !129, i64 139, !129, i64 139}
!143 = !{!144, !126, i64 24}
!144 = !{!"eh_status", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !127, i64 40}
!145 = !{!"branch_weights", i32 184674, i32 1}
!146 = !{!"branch_weights", i32 1, i32 184674}
!147 = !{!"function_entry_count", i64 40}
!148 = !{!"tree-eh.c:lower_eh_constructs"}
!149 = !{!"branch_weights", i32 1, i32 41}
!150 = !{!"branch_weights", i32 41, i32 1}
!151 = !{!127, !127, i64 0}
!152 = !{!153, !126, i64 656}
!153 = !{!"lang_hooks", !126, i64 0, !154, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40, !126, i64 48, !126, i64 56, !126, i64 64, !126, i64 72, !126, i64 80, !126, i64 88, !126, i64 96, !126, i64 104, !126, i64 112, !126, i64 120, !126, i64 128, !126, i64 136, !126, i64 144, !126, i64 152, !126, i64 160, !126, i64 168, !126, i64 176, !126, i64 184, !126, i64 192, !126, i64 200, !126, i64 208, !126, i64 216, !126, i64 224, !126, i64 232, !155, i64 240, !156, i64 248, !157, i64 256, !158, i64 272, !159, i64 432, !160, i64 560, !126, i64 584, !126, i64 592, !126, i64 600, !126, i64 608, !126, i64 616, !126, i64 624, !126, i64 632, !126, i64 640, !126, i64 648, !126, i64 656, !126, i64 664, !127, i64 672}
!154 = !{!"long", !127, i64 0}
!155 = !{!"lang_hooks_for_tree_inlining", !126, i64 0}
!156 = !{!"lang_hooks_for_callgraph", !126, i64 0}
!157 = !{!"lang_hooks_for_tree_dump", !126, i64 0, !126, i64 8}
!158 = !{!"lang_hooks_for_decls", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40, !126, i64 48, !126, i64 56, !126, i64 64, !126, i64 72, !126, i64 80, !126, i64 88, !126, i64 96, !126, i64 104, !126, i64 112, !126, i64 120, !126, i64 128, !126, i64 136, !126, i64 144, !126, i64 152}
!159 = !{!"lang_hooks_for_types", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40, !126, i64 48, !126, i64 56, !126, i64 64, !126, i64 72, !126, i64 80, !126, i64 88, !126, i64 96, !126, i64 104, !126, i64 112, !127, i64 120}
!160 = !{!"lang_hooks_for_lto", !126, i64 0, !126, i64 8, !126, i64 16}
!161 = !{!162, !129, i64 28}
!162 = !{!"eh_region_d", !126, i64 0, !126, i64 8, !126, i64 16, !129, i64 24, !129, i64 28, !127, i64 32, !126, i64 56, !126, i64 64, !126, i64 72, !127, i64 80}
!163 = !{!164, !126, i64 32}
!164 = !{!"eh_catch_d", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32}
!165 = !{!164, !126, i64 16}
!166 = distinct !{!166, !167}
!167 = !{!"llvm.loop.mustprogress"}
!168 = !{!"tree-eh.c:gimple_eh_dispatch_region"}
!169 = !{!"function_entry_count", i64 80}
!170 = !{!"tree-eh.c:gimple_bb"}
!171 = !{!"function_entry_count", i64 61}
!172 = !{!"branch_weights", i32 62, i32 1}
!173 = !{!174, !126, i64 16}
!174 = !{!"eh_landing_pad_d", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !129, i64 32}
!175 = !{!"tree-eh.c:redirect_eh_edge_1"}
!176 = !{!177, !126, i64 8}
!177 = !{!"edge_def", !126, i64 0, !126, i64 8, !127, i64 16, !126, i64 24, !126, i64 32, !129, i64 40, !129, i64 44, !129, i64 48, !129, i64 52, !154, i64 56}
!178 = !{!177, !126, i64 0}
!179 = !{!174, !126, i64 8}
!180 = !{i64 0, i64 4, !181, i64 8, i64 8, !131}
!181 = !{!129, !129, i64 0}
!182 = !{i64 0, i64 8, !131}
!183 = !{!177, !129, i64 48}
!184 = distinct !{!184, !167}
!185 = !{!174, !129, i64 32}
!186 = distinct !{!186, !167}
!187 = !{!"function_entry_count", i64 153298}
!188 = !{!"branch_weights", i32 5, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 40, i32 139, i32 1, i32 4, i32 1, i32 108397, i32 44719, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!189 = !{!"branch_weights", i32 1, i32 11}
!190 = !{!"function_entry_count", i64 153344}
!191 = !{!"branch_weights", i32 153345, i32 1}
!192 = !{!"branch_weights", i32 1354160899, i32 804357}
!193 = !{!"branch_weights", i32 1, i32 153345}
!194 = !{!"branch_weights", i32 153253, i32 93}
!195 = !{!"branch_weights", i32 -862336922, i32 22397, i32 22397, i32 22398}
!196 = !{!"branch_weights", i32 804357, i32 8836, i32 8742, i32 8649}
!197 = !{!"branch_weights", i32 1268092, i32 -1770805443}
!198 = !{!"branch_weights", i32 153345, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!199 = !{!"function_entry_count", i64 14035760}
!200 = !{!"branch_weights", i32 14035761, i32 1}
!201 = !{i32 0, i32 256}
!202 = !{!"function_entry_count", i64 2151609}
!203 = !{!"tree-eh.c:gimple_code"}
!204 = !{!"tree-eh.c:gimple_call_nothrow_p"}
!205 = !{!"tree-eh.c:stmt_could_throw_1_p"}
!206 = !{i32 0, i32 65536}
!207 = distinct !{!207, !167}
!208 = !{!"tree-eh.c:gimple_asm_volatile_p"}
!209 = !{!"function_entry_count", i64 207493}
!210 = !{!"branch_weights", i32 207494, i32 1}
!211 = !{!"function_entry_count", i64 9497410}
!212 = !{!"branch_weights", i32 9497411, i32 1}
!213 = !{!"function_entry_count", i64 1114432}
!214 = !{!"branch_weights", i32 1114433, i32 1}
!215 = !{!"function_entry_count", i64 98452}
!216 = !{!"branch_weights", i32 98453, i32 1}
!217 = !{!"function_entry_count", i64 334}
!218 = !{!"branch_weights", i32 335, i32 1}
!219 = !{!144, !126, i64 16}
!220 = !{!144, !126, i64 8}
!221 = !{!162, !129, i64 24}
!222 = !{!"tree-eh.c:VEC_eh_landing_pad_base_index"}
!223 = !{!"tree-eh.c:VEC_eh_region_base_index"}
!224 = !{!"function_entry_count", i64 87675}
!225 = !{!"branch_weights", i32 87676, i32 1}
!226 = !{!"tree-eh.c:gate_refactor_eh"}
!227 = !{!"tree-eh.c:refactor_eh"}
!228 = !{!"function_entry_count", i64 38}
!229 = !{!"tree-eh.c:gate_lower_resx"}
!230 = !{!"tree-eh.c:execute_lower_resx"}
!231 = !{!142, !126, i64 8}
!232 = !{!233, !126, i64 0}
!233 = !{!"control_flow_graph", !126, i64 0, !126, i64 8, !126, i64 16, !129, i64 24, !129, i64 28, !129, i64 32, !126, i64 40, !129, i64 48, !127, i64 52, !127, i64 60, !129, i64 68, !129, i64 72}
!234 = !{!235, !126, i64 56}
!235 = !{!"basic_block_def", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !127, i64 32, !126, i64 48, !126, i64 56, !127, i64 64, !154, i64 72, !129, i64 80, !129, i64 84, !129, i64 88, !129, i64 92, !129, i64 96}
!236 = !{!233, !126, i64 8}
!237 = distinct !{!237, !167}
!238 = !{!"tree-eh.c:gate_lower_eh_dispatch"}
!239 = !{!144, !126, i64 0}
!240 = !{!"tree-eh.c:execute_lower_eh_dispatch"}
!241 = distinct !{!241, !167}
!242 = !{!"function_entry_count", i64 78}
!243 = !{!"tree-eh.c:gate_cleanup_eh"}
!244 = !{!"branch_weights", i32 1, i32 79}
!245 = !{!"tree-eh.c:execute_cleanup_eh"}
!246 = !{!235, !129, i64 80}
!247 = distinct !{!247, !167}
!248 = !{!"tree-eh.c:ei_start_1"}
!249 = !{!"tree-eh.c:ei_cond"}
!250 = !{!"tree-eh.c:ei_next"}
!251 = !{!252, !129, i64 0}
!252 = !{!"", !129, i64 0, !126, i64 8}
!253 = !{!177, !126, i64 24}
!254 = distinct !{!254, !167}
!255 = distinct !{!255, !167}
!256 = distinct !{!256, !167}
!257 = !{!"tree-eh.c:collect_finally_tree_1"}
!258 = !{!"branch_weights", i32 163, i32 1}
!259 = !{!"branch_weights", i32 2623965, i32 163}
!260 = distinct !{!260, !167}
!261 = !{!"tree-eh.c:lower_eh_constructs_1"}
!262 = distinct !{!262, !167}
!263 = !{!"tree-eh.c:gsi_start"}
!264 = !{!265, !126, i64 0}
!265 = !{!"", !126, i64 0, !126, i64 8, !126, i64 16}
!266 = !{!265, !126, i64 8}
!267 = !{!"branch_weights", i32 1, i32 81}
!268 = !{!269, !126, i64 0}
!269 = !{!"gimple_seq_node_d", !126, i64 0, !126, i64 8, !126, i64 16}
!270 = !{!265, !126, i64 16}
!271 = !{!"function_entry_count", i64 1312142}
!272 = !{!"tree-eh.c:gsi_end_p"}
!273 = !{!"function_entry_count", i64 656031}
!274 = !{!"tree-eh.c:collect_finally_tree"}
!275 = !{!"branch_weights", i32 445427, i32 210606, i32 1, i32 1, i32 1}
!276 = !{i32 0, i32 4}
!277 = !{!"function_entry_count", i64 1312062}
!278 = !{!"tree-eh.c:gsi_stmt"}
!279 = !{!"tree-eh.c:gsi_next"}
!280 = !{!269, !126, i64 16}
!281 = !{!"tree-eh.c:gimple_seq_first"}
!282 = !{!283, !126, i64 0}
!283 = !{!"gimple_seq_d", !126, i64 0, !126, i64 8, !126, i64 16}
!284 = !{!"function_entry_count", i64 210605}
!285 = !{!"tree-eh.c:gimple_label_label"}
!286 = !{!"tree-eh.c:record_in_finally_tree"}
!287 = !{i64 0, i64 8, !131, i64 0, i64 8, !131, i64 0, i64 8, !131}
!288 = !{!289, !126, i64 8}
!289 = !{!"finally_tree_node", !127, i64 0, !126, i64 8}
!290 = !{!"branch_weights", i32 210606, i32 1}
!291 = !{!"tree-eh.c:gimple_try_kind"}
!292 = !{!"tree-eh.c:gimple_try_eval"}
!293 = !{!"tree-eh.c:gimple_try_cleanup"}
!294 = !{!"tree-eh.c:gimple_catch_handler"}
!295 = !{!"tree-eh.c:gimple_eh_filter_failure"}
!296 = !{!"function_entry_count", i64 279849}
!297 = !{!"tree-eh.c:gimple_op"}
!298 = !{!"branch_weights", i32 1, i32 279850}
!299 = !{!"tree-eh.c:gimple_has_ops"}
!300 = !{!"tree-eh.c:gimple_ops"}
!301 = !{!154, !154, i64 0}
!302 = !{!"tree-eh.c:gimple_statement_structure"}
!303 = !{!"tree-eh.c:gss_for_code"}
!304 = !{!"tree-eh.c:lower_eh_constructs_2"}
!305 = !{!"branch_weights", i32 210645, i32 69245, i32 188600, i32 143773, i32 43734, i32 41, i32 1}
!306 = !{!"branch_weights", i32 1, i32 69245}
!307 = !{!308, !126, i64 8}
!308 = !{!"leh_state", !126, i64 0, !126, i64 8, !126, i64 16}
!309 = !{!"branch_weights", i32 257844, i32 1}
!310 = !{!308, !126, i64 0}
!311 = !{!"function_entry_count", i64 69244}
!312 = !{!"tree-eh.c:gimple_call_fndecl"}
!313 = !{!"branch_weights", i32 69245, i32 1}
!314 = !{!"tree-eh.c:gimple_call_set_arg"}
!315 = !{!"tree-eh.c:gimple_call_lhs"}
!316 = !{!"tree-eh.c:gimple_has_lhs"}
!317 = !{!"tree-eh.c:gimple_set_location"}
!318 = !{!"tree-eh.c:gimple_location"}
!319 = !{!"tree-eh.c:gimple_set_block"}
!320 = !{!"tree-eh.c:gimple_block"}
!321 = !{!"tree-eh.c:record_stmt_eh_region"}
!322 = !{!162, !126, i64 56}
!323 = !{!174, !126, i64 0}
!324 = !{!"tree-eh.c:note_eh_region_may_contain_throw"}
!325 = !{!162, !126, i64 0}
!326 = distinct !{!326, !167}
!327 = !{!"function_entry_count", i64 187545}
!328 = !{!"tree-eh.c:maybe_record_in_goto_queue"}
!329 = !{!308, !126, i64 16}
!330 = !{!"branch_weights", i32 187546, i32 1}
!331 = !{!332, !127, i64 89}
!332 = !{!"leh_tf_state", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40, !154, i64 48, !154, i64 56, !126, i64 64, !126, i64 72, !126, i64 80, !127, i64 88, !127, i64 89, !127, i64 90}
!333 = !{!"tree-eh.c:lower_try_finally"}
!334 = !{!332, !126, i64 0}
!335 = !{!332, !126, i64 8}
!336 = !{!332, !126, i64 24}
!337 = !{!332, !127, i64 88}
!338 = !{!332, !127, i64 90}
!339 = !{!332, !126, i64 32}
!340 = !{!332, !126, i64 80}
!341 = !{!332, !126, i64 40}
!342 = !{!332, !126, i64 64}
!343 = !{!332, !126, i64 16}
!344 = !{!"tree-eh.c:gimple_seq_first_stmt"}
!345 = !{!"tree-eh.c:lower_catch"}
!346 = !{i64 0, i64 8, !131, i64 8, i64 8, !131, i64 16, i64 8, !131}
!347 = distinct !{!347, !167}
!348 = !{!"tree-eh.c:lower_eh_filter"}
!349 = !{!"tree-eh.c:lower_eh_must_not_throw"}
!350 = !{!"tree-eh.c:lower_cleanup"}
!351 = !{!"tree-eh.c:gimple_call_fn"}
!352 = !{!"tree-eh.c:gimple_set_op"}
!353 = !{!"tree-eh.c:gimple_num_ops"}
!354 = !{!"tree-eh.c:is_gimple_assign"}
!355 = !{!"tree-eh.c:is_gimple_call"}
!356 = !{!"tree-eh.c:gimple_op_ptr"}
!357 = !{!"tree-eh.c:record_in_goto_queue_label"}
!358 = !{!332, !126, i64 72}
!359 = distinct !{!359, !167}
!360 = !{!"tree-eh.c:gimple_cond_true_label"}
!361 = !{!"tree-eh.c:gimple_cond_false_label"}
!362 = !{!"tree-eh.c:gimple_goto_dest"}
!363 = !{!"tree-eh.c:record_in_goto_queue"}
!364 = !{!332, !154, i64 56}
!365 = !{!332, !154, i64 48}
!366 = !{!367, !129, i64 24}
!367 = !{!"goto_queue_node", !127, i64 0, !126, i64 8, !126, i64 16, !129, i64 24, !129, i64 28}
!368 = !{!367, !129, i64 28}
!369 = !{!"tree-eh.c:outside_finally_tree"}
!370 = distinct !{!370, !167}
!371 = !{!"tree-eh.c:VEC_tree_heap_alloc"}
!372 = !{!"tree-eh.c:VEC_tree_base_quick_push"}
!373 = !{!374, !129, i64 0}
!374 = !{!"VEC_tree_base", !129, i64 0, !129, i64 4, !127, i64 8}
!375 = !{!"tree-eh.c:VEC_tree_base_length"}
!376 = !{!"tree-eh.c:VEC_tree_base_index"}
!377 = !{!"tree-eh.c:VEC_tree_heap_safe_push"}
!378 = !{!"tree-eh.c:VEC_tree_heap_reserve"}
!379 = !{!"tree-eh.c:VEC_tree_base_space"}
!380 = !{!374, !129, i64 4}
!381 = !{!"tree-eh.c:eh_region_may_contain_throw"}
!382 = !{!"tree-eh.c:honor_protect_cleanup_actions"}
!383 = !{!"tree-eh.c:gimple_try_set_cleanup"}
!384 = !{!"tree-eh.c:lower_try_finally_nofallthru"}
!385 = distinct !{!385, !167}
!386 = !{!"tree-eh.c:lower_try_finally_onedest"}
!387 = distinct !{!387, !167}
!388 = distinct !{!388, !167}
!389 = !{!367, !126, i64 16}
!390 = !{!"tree-eh.c:decide_copy_try_finally"}
!391 = !{!"tree-eh.c:lower_try_finally_copy"}
!392 = !{!393, !126, i64 0}
!393 = !{!"labels_s", !126, i64 0, !126, i64 8}
!394 = distinct !{!394, !167}
!395 = !{!393, !126, i64 8}
!396 = distinct !{!396, !167}
!397 = distinct !{!397, !167}
!398 = !{!"tree-eh.c:lower_try_finally_switch"}
!399 = distinct !{!399, !167}
!400 = distinct !{!400, !167}
!401 = !{!"tree-eh.c:VEC_tree_heap_free"}
!402 = !{!"tree-eh.c:lower_try_finally_dup_block"}
!403 = !{!"tree-eh.c:gimple_try_catch_is_cleanup"}
!404 = !{!"tree-eh.c:gimple_seq_alloc_with_stmt"}
!405 = !{!"tree-eh.c:emit_post_landing_pad"}
!406 = !{!"tree-eh.c:emit_resx"}
!407 = !{!"tree-eh.c:do_return_redirection"}
!408 = !{!367, !126, i64 8}
!409 = !{!"tree-eh.c:do_goto_redirection"}
!410 = !{!"tree-eh.c:replace_goto_queue"}
!411 = !{!"tree-eh.c:gimple_return_retval"}
!412 = !{!"tree-eh.c:replace_goto_queue_stmt_list"}
!413 = distinct !{!413, !167}
!414 = !{!"tree-eh.c:replace_goto_queue_1"}
!415 = !{!"tree-eh.c:find_goto_replacement"}
!416 = distinct !{!416, !167}
!417 = distinct !{!417, !167}
!418 = !{!"tree-eh.c:replace_goto_queue_cond_clause"}
!419 = !{!"tree-eh.c:gimple_seq_singleton_p"}
!420 = !{!"tree-eh.c:gimple_seq_last"}
!421 = !{!283, !126, i64 8}
!422 = !{!"tree-eh.c:lower_try_finally_fallthru_label"}
!423 = !{!"tree-eh.c:gimple_seq_last_stmt"}
!424 = !{!"tree-eh.c:emit_eh_dispatch"}
!425 = !{!"tree-eh.c:gimple_catch_types"}
!426 = !{!"tree-eh.c:frob_into_branch_around"}
!427 = !{!"tree-eh.c:gimple_eh_filter_types"}
!428 = !{!"tree-eh.c:gimple_eh_must_not_throw_fndecl"}
!429 = !{!"tree-eh.c:gimple_expr_code"}
!430 = !{!"tree-eh.c:gimple_expr_type"}
!431 = !{!"tree-eh.c:gimple_assign_rhs2"}
!432 = !{!"tree-eh.c:gimple_call_return_type"}
!433 = !{!"tree-eh.c:gimple_assign_rhs_code"}
!434 = !{!"tree-eh.c:gimple_assign_rhs1"}
!435 = !{!"tree-eh.c:get_gimple_rhs_class"}
!436 = !{!"tree-eh.c:refactor_eh_r"}
!437 = !{!"tree-eh.c:optimize_double_finally"}
!438 = !{!"tree-eh.c:gsi_one_before_end_p"}
!439 = !{!"tree-eh.c:same_handler_p"}
!440 = distinct !{!440, !167}
!441 = !{!"tree-eh.c:gimple_try_set_kind"}
!442 = !{!"tree-eh.c:gimple_try_set_eval"}
!443 = !{!"tree-eh.c:gimple_call_chain"}
!444 = !{!"tree-eh.c:gimple_call_num_args"}
!445 = !{!"tree-eh.c:gimple_call_arg"}
!446 = !{!"tree-eh.c:is_gimple_resx"}
!447 = !{!"tree-eh.c:lower_resx"}
!448 = !{!235, !126, i64 8}
!449 = distinct !{!449, !167}
!450 = !{!235, !154, i64 72}
!451 = !{!177, !154, i64 56}
!452 = !{!177, !129, i64 52}
!453 = distinct !{!453, !167}
!454 = !{!162, !127, i64 80}
!455 = !{!"tree-eh.c:gimple_resx_region"}
!456 = !{!"tree-eh.c:gsi_last_bb"}
!457 = !{!"tree-eh.c:VEC_edge_base_length"}
!458 = !{!459, !129, i64 0}
!459 = !{!"VEC_edge_base", !129, i64 0, !129, i64 4, !127, i64 8}
!460 = !{!"tree-eh.c:VEC_edge_base_index"}
!461 = !{!"tree-eh.c:gsi_start_bb"}
!462 = !{!"tree-eh.c:single_succ_edge"}
!463 = !{!"tree-eh.c:make_ssa_name"}
!464 = !{!"tree-eh.c:gimple_call_set_lhs"}
!465 = !{!"tree-eh.c:bb_seq"}
!466 = !{!235, !129, i64 96}
!467 = !{!468, !126, i64 0}
!468 = !{!"gimple_bb_info", !126, i64 0, !126, i64 8}
!469 = !{!"tree-eh.c:single_succ_p"}
!470 = !{!"tree-eh.c:lower_eh_dispatch"}
!471 = distinct !{!471, !167}
!472 = distinct !{!472, !167}
!473 = distinct !{!473, !167}
!474 = !{!"tree-eh.c:remove_unreachable_handlers"}
!475 = distinct !{!475, !167}
!476 = distinct !{!476, !167}
!477 = !{i32 0, i32 2}
!478 = distinct !{!478, !167}
!479 = distinct !{!479, !167}
!480 = !{!481, !126, i64 0}
!481 = !{!"simple_bitmap_def", !126, i64 0, !129, i64 8, !129, i64 12, !127, i64 16}
!482 = !{!"tree-eh.c:unsplit_all_eh"}
!483 = distinct !{!483, !167}
!484 = !{!"tree-eh.c:cleanup_all_empty_eh"}
!485 = distinct !{!485, !167}
!486 = !{!"tree-eh.c:remove_unreachable_handlers_no_lp"}
!487 = distinct !{!487, !167}
!488 = !{!"tree-eh.c:VEC_eh_region_base_length"}
!489 = !{!490, !129, i64 0}
!490 = !{!"VEC_eh_region_base", !129, i64 0, !129, i64 4, !127, i64 8}
!491 = !{!"tree-eh.c:VEC_eh_landing_pad_base_length"}
!492 = !{!493, !129, i64 0}
!493 = !{!"VEC_eh_landing_pad_base", !129, i64 0, !129, i64 4, !127, i64 8}
!494 = !{!"tree-eh.c:SET_BIT"}
!495 = !{!"tree-eh.c:VEC_eh_region_base_iterate"}
!496 = !{!"tree-eh.c:VEC_eh_landing_pad_base_iterate"}
!497 = !{!"tree-eh.c:unsplit_eh"}
!498 = !{!235, !126, i64 0}
!499 = distinct !{!499, !167}
!500 = distinct !{!500, !167}
!501 = distinct !{!501, !167}
!502 = distinct !{!502, !167}
!503 = !{!"tree-eh.c:gsi_after_labels"}
!504 = distinct !{!504, !167}
!505 = !{!"tree-eh.c:is_gimple_debug"}
!506 = !{!"tree-eh.c:gsi_next_nondebug"}
!507 = distinct !{!507, !167}
!508 = !{!"tree-eh.c:gimple_seq_empty_p"}
!509 = !{!"tree-eh.c:phi_nodes"}
!510 = !{!468, !126, i64 8}
!511 = !{!"tree-eh.c:gimple_phi_result"}
!512 = !{!"tree-eh.c:gimple_phi_arg_def"}
!513 = !{!"tree-eh.c:first_imm_use_stmt"}
!514 = !{!515, !126, i64 8}
!515 = !{!"immediate_use_iterator_d", !126, i64 0, !126, i64 8, !516, i64 16, !126, i64 48}
!516 = !{!"ssa_use_operand_d", !126, i64 0, !126, i64 8, !127, i64 16, !126, i64 24}
!517 = !{!516, !126, i64 8}
!518 = !{!515, !126, i64 0}
!519 = !{!"tree-eh.c:end_imm_use_stmt_p"}
!520 = !{!"tree-eh.c:first_imm_use_on_stmt"}
!521 = !{!515, !126, i64 48}
!522 = !{!"tree-eh.c:end_imm_use_on_stmt_p"}
!523 = !{!"tree-eh.c:set_ssa_use_from_ptr"}
!524 = !{!516, !126, i64 24}
!525 = !{!"tree-eh.c:next_imm_use_on_stmt"}
!526 = !{!"tree-eh.c:next_imm_use_stmt"}
!527 = !{!515, !126, i64 24}
!528 = !{!515, !126, i64 16}
!529 = !{!"tree-eh.c:gimple_phi_arg"}
!530 = !{!"tree-eh.c:get_use_from_ptr"}
!531 = !{!"tree-eh.c:link_use_stmts_after"}
!532 = distinct !{!532, !167}
!533 = distinct !{!533, !167}
!534 = !{!"tree-eh.c:op_iter_init_phiuse"}
!535 = !{!536, !127, i64 0}
!536 = !{!"ssa_operand_iterator_d", !127, i64 0, !129, i64 4, !126, i64 8, !126, i64 16, !129, i64 24, !129, i64 28, !126, i64 32}
!537 = !{!536, !126, i64 32}
!538 = !{!536, !129, i64 28}
!539 = !{!536, !129, i64 4}
!540 = !{!"tree-eh.c:op_iter_done"}
!541 = !{!"tree-eh.c:move_use_after_head"}
!542 = !{!"tree-eh.c:op_iter_next_use"}
!543 = !{!536, !126, i64 16}
!544 = !{!545, !126, i64 0}
!545 = !{!"use_optype_d", !126, i64 0, !516, i64 8}
!546 = !{!536, !129, i64 24}
!547 = !{!"tree-eh.c:op_iter_init_use"}
!548 = !{!"tree-eh.c:gimple_vuse_op"}
!549 = !{!545, !126, i64 32}
!550 = !{!"tree-eh.c:delink_imm_use"}
!551 = !{!516, !126, i64 0}
!552 = !{!"tree-eh.c:link_imm_use_to_list"}
!553 = !{!"tree-eh.c:clear_and_done_ssa_iter"}
!554 = !{!"tree-eh.c:gimple_phi_num_args"}
!555 = !{!"tree-eh.c:gimple_phi_arg_imm_use_ptr"}
!556 = !{!"tree-eh.c:op_iter_init"}
!557 = !{!536, !126, i64 8}
!558 = !{!559, !126, i64 0}
!559 = !{!"def_optype_d", !126, i64 0, !126, i64 8}
!560 = !{!"tree-eh.c:gimple_def_ops"}
!561 = !{!"tree-eh.c:gimple_vdef"}
!562 = !{!"tree-eh.c:gimple_use_ops"}
!563 = !{!"tree-eh.c:gimple_vuse"}
!564 = !{!"tree-eh.c:gimple_has_mem_ops"}
!565 = !{!"tree-eh.c:link_imm_use"}
!566 = !{!"tree-eh.c:cleanup_empty_eh"}
!567 = distinct !{!567, !167}
!568 = distinct !{!568, !167}
!569 = distinct !{!569, !167}
!570 = !{!"tree-eh.c:cleanup_empty_eh_unsplit"}
!571 = distinct !{!571, !167}
!572 = !{!"tree-eh.c:ei_safe_edge"}
!573 = !{!"tree-eh.c:cleanup_empty_eh_merge_phis"}
!574 = distinct !{!574, !167}
!575 = !{!177, !129, i64 44}
!576 = distinct !{!576, !167}
!577 = distinct !{!577, !167}
!578 = distinct !{!578, !167}
!579 = distinct !{!579, !167}
!580 = distinct !{!580, !167}
!581 = !{!582, !126, i64 0}
!582 = !{!"bitmap_head_def", !126, i64 0, !126, i64 8, !129, i64 16, !126, i64 24}
!583 = distinct !{!583, !167}
!584 = distinct !{!584, !167}
!585 = distinct !{!585, !167}
!586 = !{!"tree-eh.c:cleanup_empty_eh_move_lp"}
!587 = distinct !{!587, !167}
!588 = !{!"tree-eh.c:ei_end_p"}
!589 = !{!"tree-eh.c:ei_edge"}
!590 = !{!"tree-eh.c:ei_container"}
!591 = !{!"tree-eh.c:gimple_phi_arg_location"}
!592 = !{!593, !129, i64 40}
!593 = !{!"phi_arg_d", !516, i64 0, !126, i64 32, !129, i64 40}
