; ModuleID = 'sel-sched-ir.c'
source_filename = "sel-sched-ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.succs_info = type { i16, ptr, ptr, ptr, i32, i32, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sched_deps_info_def = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct._sel_insn_data = type { %struct._expr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.deps, ptr, i32, i32, i32, i8 }
%struct._expr = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8 }
%struct.deps = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.bitmap_head_def, %struct.bitmap_head_def, i32, i8 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.sched_scan_info_def = type { ptr, ptr, ptr, ptr }
%struct.anon.3 = type { ptr, i32, ptr, ptr, [3 x i32] }
%struct.cfg_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.common_sched_info_def = type { ptr, ptr, ptr, ptr, i32 }
%struct.haifa_sched_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, i32 }
%struct._list_node = type { ptr, %union.anon }
%union.anon = type { %struct._fence }
%struct._fence = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i8 }
%struct._list_iterator = type { ptr, i8, i8 }
%struct.flist_tail_def = type { ptr, ptr }
%struct.succ_iterator = type { i8, ptr, ptr, %struct.edge_iterator, ptr, i16, i16, i32, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.loop_exit = type { ptr, ptr, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.VEC_sel_insn_data_def_base = type { i32, i32, [1 x %struct._sel_insn_data] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.sel_global_bb_info_def = type { ptr, i8 }
%struct.sel_region_bb_info_def = type { ptr, ptr, i32 }
%struct.VEC_sel_region_bb_info_def_base = type { i32, i32, [1 x %struct.sel_region_bb_info_def] }
%struct.VEC_sel_global_bb_info_def_base = type { i32, i32, [1 x %struct.sel_global_bb_info_def] }
%struct.expr_history_def_1 = type { i32, ptr, ptr, i32, i32 }
%struct.VEC_expr_history_def_base = type { i32, i32, [1 x %struct.expr_history_def_1] }
%struct.vinsn_def = type { ptr, %struct.idata_def, i32, i32, i32, i32, i8 }
%struct.idata_def = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.df_regular_ref = type { %struct.df_base_ref, ptr }
%struct.transformed_insns = type { ptr, ptr, i32, i32, i8 }
%struct._haifa_deps_insn_data = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.VEC_haifa_deps_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_deps_insn_data] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct._haifa_insn_data = type { i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.VEC_haifa_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_insn_data] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.deps_reg = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct._dep = type { ptr, ptr, i32, i32 }
%struct.region = type { i32, i32, i8 }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.loop_iterator = type { ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }

@sched_lists_pool = dso_local local_unnamed_addr global ptr null, align 8
@current_succs = dso_local local_unnamed_addr global %struct.succs_info zeroinitializer, align 8
@current_loop_nest = dso_local local_unnamed_addr global ptr null, align 8
@sel_global_bb_info = dso_local local_unnamed_addr global ptr null, align 8
@sel_region_bb_info = dso_local local_unnamed_addr global ptr null, align 8
@nop_pattern = dso_local local_unnamed_addr global ptr null, align 8
@exit_insn = dso_local local_unnamed_addr global ptr null, align 8
@preheader_removed = dso_local local_unnamed_addr global i8 0, align 1
@.str = private unnamed_addr constant [15 x i8] c"sel-sched-ir.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@advance_deps_context_sched_deps_info = internal global %struct.sched_deps_info_def { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @haifa_note_reg_set, ptr @haifa_note_reg_clobber, ptr @haifa_note_reg_use, ptr null, ptr null, i8 0 }, align 8
@sched_deps_info = external local_unnamed_addr global ptr, align 8
@flag_sel_sched_pipelining_outer_loops = external local_unnamed_addr global i32, align 4
@fences = external global ptr, align 8
@issue_rate = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"./sel-sched-ir.h\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@block_to_bb = external local_unnamed_addr global ptr, align 8
@after_recovery = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@pipelining_p = external local_unnamed_addr global i8, align 1
@dfa_state_size = external local_unnamed_addr global i64, align 8
@regset_pool.0 = internal unnamed_addr global ptr null, align 8
@regset_pool.1 = internal unnamed_addr global i32 0, align 8
@regset_pool.2 = internal unnamed_addr global i32 0, align 8
@regset_pool.3 = internal unnamed_addr global ptr null, align 8
@regset_pool.4 = internal unnamed_addr global i32 0, align 8
@regset_pool.5 = internal unnamed_addr global i32 0, align 8
@regset_pool.6 = internal unnamed_addr global i32 0, align 8
@reg_obstack = external global %struct.bitmap_obstack, align 8
@nop_pool.0 = internal unnamed_addr global ptr null, align 8
@nop_pool.1 = internal unnamed_addr global i32 0, align 8
@nop_pool.2 = internal unnamed_addr global i32 0, align 8
@s_i_d = dso_local local_unnamed_addr global ptr null, align 8
@sched_luids = external local_unnamed_addr global ptr, align 8
@nop_vinsn = internal unnamed_addr global ptr null, align 8
@insn_init_create_new_vinsn_p = internal unnamed_addr global i1 false, align 1
@_insn_init_ssid = internal global %struct._sel_insn_data zeroinitializer, align 8
@containing_rgn = external local_unnamed_addr global ptr, align 8
@rgn_bb_table = external local_unnamed_addr global ptr, align 8
@ebb_head = external local_unnamed_addr global ptr, align 8
@sched_max_luid = external local_unnamed_addr global i32, align 4
@init_insn_force_unique_p = internal unnamed_addr global i1 false, align 1
@df = external local_unnamed_addr global ptr, align 8
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@deps_init_id_data.0 = internal unnamed_addr global i32 0, align 8
@deps_init_id_data.1 = internal unnamed_addr global ptr null, align 8
@deps_init_id_data.2 = internal unnamed_addr global i8 0, align 8
@deps_init_id_data.3 = internal unnamed_addr global i1 false, align 8
@deps_init_id_sched_deps_info = internal global %struct.sched_deps_info_def zeroinitializer, align 8
@const_deps_init_id_sched_deps_info = internal unnamed_addr constant %struct.sched_deps_info_def { ptr null, ptr @deps_init_id_start_insn, ptr @deps_init_id_finish_insn, ptr @deps_init_id_start_lhs, ptr @deps_init_id_finish_lhs, ptr @deps_init_id_start_rhs, ptr @deps_init_id_finish_rhs, ptr @deps_init_id_note_reg_set, ptr @deps_init_id_note_reg_clobber, ptr @deps_init_id_note_reg_use, ptr null, ptr null, i8 0 }, align 8
@spec_info = external local_unnamed_addr global ptr, align 8
@h_d_i_d = external local_unnamed_addr global ptr, align 8
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@__const.sel_init_global_and_expr.ssi = private unnamed_addr constant %struct.sched_scan_info_def { ptr null, ptr @init_global_and_expr_for_bb, ptr @extend_insn_data, ptr @init_global_and_expr_for_insn }, align 8
@init_global_data.0 = internal unnamed_addr global ptr null, align 8
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@h_i_d = external local_unnamed_addr global ptr, align 8
@current_nr_blocks = external local_unnamed_addr global i32, align 4
@__const.sel_finish_global_and_expr.ssi = private unnamed_addr constant %struct.sched_scan_info_def { ptr null, ptr @finish_global_and_expr_for_bb, ptr null, ptr @finish_global_and_expr_insn }, align 8
@has_dependence_data = internal global %struct.anon.3 zeroinitializer, align 8
@has_dependence_sched_deps_info = internal global %struct.sched_deps_info_def zeroinitializer, align 8
@const_has_dependence_sched_deps_info = internal unnamed_addr constant %struct.sched_deps_info_def { ptr null, ptr @has_dependence_start_insn, ptr @has_dependence_finish_insn, ptr @has_dependence_start_lhs, ptr @has_dependence_finish_lhs, ptr @has_dependence_start_rhs, ptr @has_dependence_finish_rhs, ptr @has_dependence_note_reg_set, ptr @has_dependence_note_reg_clobber, ptr @has_dependence_note_reg_use, ptr @has_dependence_note_mem_dep, ptr @has_dependence_note_dep, i8 0 }, align 8
@tick_check_data.0 = internal unnamed_addr global ptr null, align 8
@tick_check_data.1 = internal unnamed_addr global i32 0, align 8
@tick_check_data.2 = internal unnamed_addr global i1 false, align 4
@tick_check_sched_deps_info = internal global %struct.sched_deps_info_def { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @haifa_note_reg_set, ptr @haifa_note_reg_clobber, ptr @haifa_note_reg_use, ptr @tick_check_note_mem_dep, ptr @tick_check_note_dep, i8 0 }, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@blocks_to_reschedule = external local_unnamed_addr global ptr, align 8
@rgn_table = external local_unnamed_addr global ptr, align 8
@nr_regions = external local_unnamed_addr global i32, align 4
@global_level = external local_unnamed_addr global i32, align 4
@__const.sel_init_bbs.ssi = private unnamed_addr constant %struct.sched_scan_info_def { ptr @extend_bb_info, ptr @init_bb, ptr null, ptr null }, align 8
@note_list = external local_unnamed_addr global ptr, align 8
@succs_info_pool.0 = internal unnamed_addr global ptr null, align 8
@succs_info_pool.1 = internal unnamed_addr global i32 0, align 8
@succs_info_pool.2 = internal unnamed_addr global i32 0, align 8
@succs_info_pool.3 = internal unnamed_addr global i32 0, align 8
@forced_ebb_heads = external local_unnamed_addr global ptr, align 8
@bb_note_pool = internal global ptr null, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"sel-sched-lists\00", align 1
@last_added_blocks = internal global ptr null, align 8
@rev_top_order_index = internal unnamed_addr global ptr null, align 8
@rev_top_order_index_len = internal unnamed_addr global i32 -1, align 4
@sched_split_block = external local_unnamed_addr global ptr, align 8
@orig_cfg_hooks = internal global %struct.cfg_hooks zeroinitializer, align 8
@sel_cfg_hooks = internal global %struct.cfg_hooks zeroinitializer, align 8
@sched_init_only_bb = external local_unnamed_addr global ptr, align 8
@sched_create_empty_bb = external local_unnamed_addr global ptr, align 8
@sel_common_sched_info = internal global %struct.common_sched_info_def zeroinitializer, align 8
@common_sched_info = external local_unnamed_addr global ptr, align 8
@sched_sel_haifa_sched_info = internal global %struct.haifa_sched_info { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sel_print_insn, ptr @contributes_to_priority, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, i32 48 }, align 8
@current_sched_info = external local_unnamed_addr global ptr, align 8
@bbs_in_loop_rgns = internal unnamed_addr global ptr null, align 8
@loop_nests = internal unnamed_addr global ptr null, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ilist_copy(ptr noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !36
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %9, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %10, %4 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct._list_node, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  call fastcc void @_xlist_add(ptr noundef %5, ptr noundef %8) #22
  %9 = load ptr, ptr %5, align 8, !tbaa !36
  %10 = load ptr, ptr %6, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %4, !llvm.loop !43

12:                                               ; preds = %4
  %13 = load ptr, ptr %2, align 8, !tbaa !36
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi ptr [ %13, %12 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_xlist_add(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !45 {
  tail call fastcc void @_list_add(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct._list_node, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_list_add(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !46 {
  %2 = tail call fastcc ptr @_list_alloc() #22
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  store ptr %3, ptr %2, align 8, !tbaa !41
  store ptr %2, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @_list_alloc() unnamed_addr #0 !prof !35 !PGOFuncName !47 {
  %1 = load ptr, ptr @sched_lists_pool, align 8, !tbaa !36
  %2 = tail call ptr @pool_alloc(ptr noundef %1) #23
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ilist_invert(ptr noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !36
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %8, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct._list_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  call fastcc void @_xlist_add(ptr noundef nonnull %2, ptr noundef %7) #22
  %8 = load ptr, ptr %5, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4, !llvm.loop !48

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !36
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi ptr [ %11, %10 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blist_add(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !35 {
  tail call fastcc void @_list_add(ptr noundef %0) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct._list_node, ptr %5, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct._list_node, ptr %5, i64 0, i32 1, i32 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct._list_node, ptr %5, i64 0, i32 1, i32 0, i32 2
  %9 = getelementptr inbounds %struct._list_node, ptr %5, i64 0, i32 1, i32 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %3, ptr %9, align 8, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blist_remove(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct._list_node, ptr %2, i64 0, i32 1, i32 0, i32 2
  tail call void @av_set_clear(ptr noundef nonnull %3) #22
  %4 = getelementptr inbounds %struct._list_node, ptr %2, i64 0, i32 1, i32 0, i32 4
  tail call void @av_set_clear(ptr noundef nonnull %4) #22
  %5 = getelementptr inbounds %struct._list_node, ptr %2, i64 0, i32 1, i32 0, i32 1
  tail call fastcc void @_list_clear(ptr noundef nonnull %5) #22
  tail call fastcc void @_list_remove(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @av_set_clear(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #22
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %5, ptr noundef nonnull %2) #22, !range !55
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1, %8
  call void @av_set_iter_remove(ptr noundef nonnull %3) #22
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #22
  %9 = load ptr, ptr %3, align 8, !tbaa !53
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %10, ptr noundef nonnull %2) #22, !range !55
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %8, !llvm.loop !56

13:                                               ; preds = %8, %1
  %14 = load ptr, ptr %0, align 8, !tbaa !36
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2260, ptr noundef nonnull @.str.1) #23
  br label %17

17:                                               ; preds = %13, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_list_clear(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !57 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1, %4
  tail call fastcc void @_list_remove(ptr noundef nonnull %0) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !36
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %4, !llvm.loop !58

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_list_remove(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !59 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  store ptr %3, ptr %0, align 8, !tbaa !36
  %4 = load ptr, ptr @sched_lists_pool, align 8, !tbaa !36
  tail call void @pool_free(ptr noundef %4, ptr noundef nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @flist_tail_init(ptr noundef %0) local_unnamed_addr #3 !prof !35 {
  store ptr null, ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct.flist_tail_def, ptr %0, i64 0, i32 1
  store ptr %0, ptr %2, align 8, !tbaa !62
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @flist_lookup(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #4 !prof !35 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %10, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct._list_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %4, !llvm.loop !63

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct._list_node, ptr %5, i64 0, i32 1
  br label %14

14:                                               ; preds = %9, %12, %2
  %15 = phi ptr [ null, %2 ], [ %13, %12 ], [ null, %9 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flist_clear(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1, %4
  tail call fastcc void @flist_remove(ptr noundef nonnull %0) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !36
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %4, !llvm.loop !64

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flist_remove(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !65 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct._list_node, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call fastcc void @fence_clear(ptr noundef nonnull %3) #22
  br label %7

7:                                                ; preds = %6, %1
  tail call fastcc void @_list_remove(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fence_clear(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !66 {
  %2 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 4
  tail call fastcc void @_list_clear(ptr noundef nonnull %8) #22
  %9 = icmp ne ptr %3, null
  %10 = icmp ne ptr %5, null
  %11 = select i1 %9, i1 %10, i1 false
  %12 = icmp ne ptr %7, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = icmp eq ptr %3, null
  %16 = icmp eq ptr %5, null
  %17 = select i1 %15, i1 %16, i1 false
  %18 = icmp eq ptr %7, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 579, ptr noundef nonnull @.str.1) #23
  br i1 %9, label %21, label %22

21:                                               ; preds = %1, %20
  tail call void @free(ptr noundef nonnull %3) #22
  br label %22

22:                                               ; preds = %21, %20
  br i1 %10, label %23, label %24

23:                                               ; preds = %22
  tail call fastcc void @delete_deps_context(ptr noundef nonnull %5) #22
  br label %24

24:                                               ; preds = %23, %22
  br i1 %12, label %25, label %26

25:                                               ; preds = %24
  tail call fastcc void @delete_target_context(ptr noundef nonnull %7) #22
  br label %26

26:                                               ; preds = %14, %25, %24
  %27 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 7
  tail call fastcc void @VEC_rtx_gc_free(ptr noundef nonnull %27) #22
  %28 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  tail call void @free(ptr noundef %29) #22
  store ptr null, ptr %28, align 8, !tbaa !72
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_deps_context(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !73 {
  tail call fastcc void @clear_deps_context(ptr noundef %0) #22
  tail call void @free(ptr noundef %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_target_context(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !74 {
  tail call fastcc void @clear_target_context(ptr noundef %0) #22
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 27), align 8, !tbaa !75
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void %2(ptr noundef %0) #23
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_free(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !88 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @ggc_free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_deps_context(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !89 {
  tail call void @free_deps(ptr noundef %0) #23
  ret void
}

; Function Attrs: optsize
declare void @free_deps(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_target_context(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !90 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 26), align 8, !tbaa !91
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void %2(ptr noundef %0) #23
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @def_list_add(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !35 {
  tail call fastcc void @_list_add(ptr noundef %0) #22
  %4 = load ptr, ptr %0, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct._list_node, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !92
  %6 = getelementptr inbounds %struct._list_node, ptr %4, i64 0, i32 1, i32 0, i32 1
  store i8 %2, ptr %6, align 8, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_target_context(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call fastcc ptr @alloc_target_context() #22
  tail call fastcc void @init_target_context(ptr noundef %2, i8 noundef zeroext %0) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_target_context() unnamed_addr #0 !prof !35 !PGOFuncName !95 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 23), align 8, !tbaa !96
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call ptr %1() #23
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi ptr [ %4, %3 ], [ inttoptr (i64 1 to ptr), %0 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_target_context(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !35 !PGOFuncName !97 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 24), align 8, !tbaa !98
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void %3(ptr noundef %0, i8 noundef zeroext %1) #23
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_target_context(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 25), align 8, !tbaa !99
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void %2(ptr noundef %0) #23
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reset_target_context(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !35 {
  tail call fastcc void @clear_target_context(ptr noundef %0) #22
  tail call fastcc void @init_target_context(ptr noundef %0, i8 noundef zeroext %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @advance_deps_context(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  store ptr @advance_deps_context_sched_deps_info, ptr @sched_deps_info, align 8, !tbaa !36
  tail call void @deps_analyze_insn(ptr noundef %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: optsize
declare void @deps_analyze_insn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @haifa_note_reg_set(i32 noundef) #2

; Function Attrs: optsize
declare void @haifa_note_reg_clobber(i32 noundef) #2

; Function Attrs: optsize
declare void @haifa_note_reg_use(i32 noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_fences(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.succ_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %4 = tail call i32 @get_max_uid() #23
  %5 = add nsw i32 %4, 1
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %3, ptr noundef nonnull %2, ptr noundef %0, i32 noundef 9) #22
  %6 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %0) #22
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = sext i32 %5 to i64
  br label %10

10:                                               ; preds = %8, %16
  %11 = phi i1 [ false, %8 ], [ true, %16 ]
  %12 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 610, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %10, %15
  %17 = load ptr, ptr %2, align 8, !tbaa !36
  %18 = tail call fastcc ptr @state_create() #22
  %19 = tail call fastcc ptr @create_deps_context() #22
  %20 = tail call ptr @create_target_context(i8 noundef zeroext 1) #22
  %21 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 4) #23
  %22 = load i32, ptr @issue_rate, align 4, !tbaa !100
  tail call fastcc void @flist_add(ptr noundef nonnull @fences, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef null, ptr noundef null, ptr noundef %21, i32 noundef %5, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef %22, i8 noundef zeroext 1, i8 noundef zeroext 0) #22
  call fastcc void @_succ_iter_next(ptr noundef nonnull %3) #22
  %23 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %0) #22
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %10, !llvm.loop !101

25:                                               ; preds = %16, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: optsize
declare i32 @get_max_uid() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_succ_iter_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.succ_iterator) align 8 %0, ptr nocapture noundef writeonly %1, ptr noundef readonly %2, i32 noundef %3) unnamed_addr #0 !prof !35 !PGOFuncName !102 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = load i32, ptr %2, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %13 [
    i16 8, label %14
    i16 7, label %14
    i16 9, label %14
    i16 10, label %14
    i16 13, label %9
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %11 = load i32, ptr %10, align 8, !tbaa !40
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %14, label %13

13:                                               ; preds = %4, %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1206, ptr noundef nonnull @.str.1) #23
  br label %14

14:                                               ; preds = %4, %4, %4, %4, %9, %13
  %15 = trunc i32 %3 to i16
  %16 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 5
  store i16 %15, ptr %16, align 8, !tbaa !103
  store ptr null, ptr %1, align 8, !tbaa !36
  %17 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store ptr %6, ptr %18, align 8, !tbaa !107
  %19 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 6
  store i16 0, ptr %19, align 2, !tbaa !108
  %20 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 7
  store i32 -1, ptr %20, align 4, !tbaa !109
  %21 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 8
  store ptr null, ptr %21, align 8, !tbaa !110
  %22 = load ptr, ptr @cfun, align 8, !tbaa !36
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !113
  %27 = icmp eq ptr %6, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !40
  %31 = getelementptr inbounds %struct.rtl_bb_info, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !115
  %33 = icmp eq ptr %32, %2
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  store i8 0, ptr %0, align 8, !tbaa !117
  %35 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %35, align 8, !tbaa !118
  %36 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3, i32 1
  store ptr null, ptr %36, align 8, !tbaa !119
  br label %42

37:                                               ; preds = %28, %14
  %38 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 1
  %40 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %39) #22
  store i32 0, ptr %38, align 8, !tbaa.struct !120
  %41 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3, i32 1
  store ptr %40, ptr %41, align 8, !tbaa.struct !121
  store i8 1, ptr %0, align 8, !tbaa !117
  br label %42

42:                                               ; preds = %37, %34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @_succ_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !35 !PGOFuncName !122 {
  %4 = alloca ptr, align 8
  %5 = load i8, ptr %0, align 8, !tbaa !117
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 7
  %10 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3, i32 1
  %13 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %8, align 8, !tbaa !110
  %16 = icmp eq ptr %15, null
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !36
  br i1 %16, label %42, label %30

17:                                               ; preds = %3
  %18 = load ptr, ptr %1, align 8, !tbaa !36
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %128

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 5
  %22 = load i16, ptr %21, align 8, !tbaa !103
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %128, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  store ptr %27, ptr %1, align 8, !tbaa !36
  %28 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 6
  store i16 1, ptr %28, align 2, !tbaa !108
  br label %128

29:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !36
  br label %30

30:                                               ; preds = %29, %7
  br label %31

31:                                               ; preds = %30, %38
  %32 = load ptr, ptr %8, align 8, !tbaa !110
  %33 = load i32, ptr %9, align 4, !tbaa !109
  %34 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %32, i32 noundef %33, ptr noundef nonnull %4) #22, !range !123
  %35 = add nsw i32 %33, 1
  store i32 %35, ptr %9, align 4, !tbaa !109
  %36 = load ptr, ptr %4, align 8, !tbaa !36
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = tail call fastcc zeroext i8 @_eligible_successor_edge_p(ptr noundef nonnull %36, ptr noundef nonnull %0) #22, !range !55
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %31, label %47, !llvm.loop !124

41:                                               ; preds = %31
  tail call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %8) #22
  br label %42

42:                                               ; preds = %41, %7
  %43 = load i32, ptr %10, align 8
  %44 = load ptr, ptr %12, align 8
  %45 = tail call fastcc zeroext i8 @ei_cond(i32 %43, ptr %44, ptr noundef nonnull %11) #22, !range !55
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %90, label %48

47:                                               ; preds = %38
  store ptr %36, ptr %11, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %96

48:                                               ; preds = %42, %85
  %49 = load ptr, ptr %11, align 8, !tbaa !125
  %50 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !126
  %52 = load i16, ptr %13, align 8, !tbaa !103
  %53 = and i16 %52, 8
  %54 = icmp ne i16 %53, 0
  %55 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %81

58:                                               ; preds = %48
  %59 = tail call zeroext i8 @in_current_region_p(ptr noundef %51) #22, !range !55
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr @block_to_bb, align 8, !tbaa !36
  %63 = load ptr, ptr %14, align 8, !tbaa !107
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !128
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %62, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !100
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !128
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, ptr %62, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !100
  %74 = icmp slt i32 %68, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %61, %58
  %76 = tail call fastcc ptr @get_all_loop_exits(ptr noundef %51) #22
  store ptr %76, ptr %8, align 8, !tbaa !110
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load ptr, ptr %11, align 8, !tbaa !125
  br label %81

80:                                               ; preds = %75
  store i32 0, ptr %9, align 4, !tbaa !109
  tail call fastcc void @ei_next(ptr noundef nonnull %10) #22
  br label %90

81:                                               ; preds = %78, %61, %48
  %82 = phi ptr [ %79, %78 ], [ %49, %61 ], [ %49, %48 ]
  %83 = tail call fastcc zeroext i8 @_eligible_successor_edge_p(ptr noundef %82, ptr noundef nonnull %0) #22, !range !55
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  tail call fastcc void @ei_next(ptr noundef nonnull %10) #22
  %86 = load i32, ptr %10, align 8
  %87 = load ptr, ptr %12, align 8
  %88 = tail call fastcc zeroext i8 @ei_cond(i32 %86, ptr %87, ptr noundef nonnull %11) #22, !range !55
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %48

90:                                               ; preds = %85, %81, %42, %80
  %91 = load ptr, ptr %8, align 8, !tbaa !110
  %92 = icmp eq ptr %91, null
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br i1 %92, label %93, label %29

93:                                               ; preds = %90
  %94 = load ptr, ptr %11, align 8, !tbaa !125
  %95 = icmp eq ptr %94, null
  br i1 %95, label %128, label %96

96:                                               ; preds = %47, %93
  %97 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !130
  %99 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !126
  %101 = load ptr, ptr @cfun, align 8, !tbaa !36
  %102 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !111
  %104 = getelementptr inbounds %struct.control_flow_graph, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !113
  %106 = icmp eq ptr %100, %105
  %107 = load ptr, ptr @after_recovery, align 8
  %108 = icmp eq ptr %100, %107
  %109 = select i1 %106, i1 true, i1 %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %96
  %111 = load ptr, ptr @exit_insn, align 8, !tbaa !36
  store ptr %111, ptr %1, align 8, !tbaa !36
  br label %128

112:                                              ; preds = %96
  %113 = tail call ptr @sel_bb_head(ptr noundef %100) #22
  store ptr %113, ptr %1, align 8, !tbaa !36
  %114 = load i16, ptr %13, align 8, !tbaa !103
  %115 = icmp eq i16 %114, 1
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = tail call ptr @bb_note(ptr noundef %100) #23
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 2
  %119 = load ptr, ptr %118, align 8, !tbaa !40
  %120 = icmp eq ptr %113, %119
  br i1 %120, label %122, label %121

121:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1331, ptr noundef nonnull @.str.1) #23
  br label %122

122:                                              ; preds = %112, %116, %121
  %123 = load ptr, ptr %1, align 8, !tbaa !36
  %124 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !40
  %126 = icmp eq ptr %125, %100
  br i1 %126, label %128, label %127

127:                                              ; preds = %122
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1332, ptr noundef nonnull @.str.1) #23
  br label %128

128:                                              ; preds = %93, %110, %122, %127, %17, %20, %25
  %129 = phi i8 [ 1, %25 ], [ 0, %20 ], [ 0, %17 ], [ 1, %127 ], [ 1, %122 ], [ 1, %110 ], [ 0, %93 ]
  ret i8 %129
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @_eligible_successor_edge_p(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !131 {
  %3 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 5
  %4 = load i16, ptr %3, align 8, !tbaa !103
  %5 = zext i16 %4 to i32
  %6 = load ptr, ptr %0, align 8, !tbaa !132
  %7 = tail call zeroext i8 @in_current_region_p(ptr noundef %6) #22, !range !55
  %8 = icmp eq i16 %4, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1363, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %2, %9
  %11 = icmp ne i8 %7, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = and i32 %5, 4
  %14 = icmp eq i32 %13, 0
  br label %22

15:                                               ; preds = %10
  %16 = and i32 %5, 12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1369, ptr noundef nonnull @.str.1) #23
  br label %19

19:                                               ; preds = %15, %18
  %20 = and i32 %5, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %106

22:                                               ; preds = %12, %19
  %23 = phi i1 [ %14, %12 ], [ true, %19 ]
  br label %24

24:                                               ; preds = %22, %54
  %25 = phi ptr [ %55, %54 ], [ %0, %22 ]
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !126
  br label %28

28:                                               ; preds = %24, %36
  %29 = phi ptr [ %41, %36 ], [ %27, %24 ]
  %30 = phi ptr [ %39, %36 ], [ %25, %24 ]
  %31 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %29) #22, !range !55
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = tail call fastcc zeroext i8 @sel_bb_empty_or_nop_p(ptr noundef %29) #22, !range !55
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !133
  %39 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %38, i32 noundef 0) #22
  %40 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !126
  %42 = tail call zeroext i8 @in_current_region_p(ptr noundef %41) #22, !range !55
  %43 = icmp eq i8 %42, 0
  %44 = and i1 %23, %43
  br i1 %44, label %56, label %28

45:                                               ; preds = %28
  %46 = tail call zeroext i8 @in_current_region_p(ptr noundef %29) #22, !range !55
  %47 = icmp eq i8 %46, 0
  %48 = and i1 %23, %47
  br i1 %48, label %106, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !133
  %52 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %51) #22
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %106, label %54

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %51, i32 noundef 0) #22
  br label %24

56:                                               ; preds = %33, %36
  %57 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 2
  store ptr %30, ptr %57, align 8, !tbaa !130
  %58 = tail call zeroext i8 @in_current_region_p(ptr noundef %29) #22, !range !55
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %101, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr @block_to_bb, align 8, !tbaa !36
  %62 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !107
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !128
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %61, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !100
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !128
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, ptr %61, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !100
  %74 = icmp slt i32 %68, %73
  %75 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 6
  store i16 1, ptr %75, align 2, !tbaa !108
  br i1 %74, label %76, label %83

76:                                               ; preds = %60
  %77 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4
  %78 = icmp ne i32 %77, 0
  %79 = select i1 %11, i1 true, i1 %78
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1431, ptr noundef nonnull @.str.1) #23
  br label %81

81:                                               ; preds = %76, %80
  %82 = trunc i16 %4 to i8
  br label %98

83:                                               ; preds = %60
  %84 = load i8, ptr @pipelining_p, align 1, !tbaa !40
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %0, align 8, !tbaa !132
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !134
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !134
  %92 = icmp eq ptr %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = trunc i16 %4 to i8
  br label %98

95:                                               ; preds = %86, %83
  store i16 2, ptr %75, align 2, !tbaa !108
  %96 = trunc i16 %4 to i8
  %97 = lshr i8 %96, 1
  br label %98

98:                                               ; preds = %95, %93, %81
  %99 = phi i8 [ %82, %81 ], [ %94, %93 ], [ %97, %95 ]
  %100 = and i8 %99, 1
  br label %106

101:                                              ; preds = %56
  %102 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 6
  store i16 4, ptr %102, align 2, !tbaa !108
  %103 = trunc i16 %4 to i8
  %104 = lshr i8 %103, 2
  %105 = and i8 %104, 1
  br label %106

106:                                              ; preds = %49, %45, %19, %101, %98
  %107 = phi i8 [ %100, %98 ], [ %105, %101 ], [ 0, %19 ], [ 0, %45 ], [ 0, %49 ]
  ret i8 %107
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flist_add(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i8 noundef zeroext %13, i8 noundef zeroext %14) unnamed_addr #0 !prof !35 !PGOFuncName !135 {
  tail call fastcc void @_list_add(ptr noundef %0) #22
  %16 = load ptr, ptr %0, align 8, !tbaa !36
  %17 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1
  store ptr %1, ptr %17, align 8, !tbaa !136
  %18 = icmp eq ptr %2, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 275, ptr noundef nonnull @.str.1) #23
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 1
  store ptr %2, ptr %21, align 8, !tbaa !67
  %22 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 2
  store i32 %10, ptr %22, align 8, !tbaa !137
  %23 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 3
  store i32 %11, ptr %23, align 4, !tbaa !138
  %24 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 13
  %25 = load i8, ptr %24, align 8
  %26 = shl i8 %13, 2
  %27 = and i8 %26, 4
  %28 = and i8 %25, -13
  %29 = shl i8 %14, 3
  %30 = and i8 %29, 8
  %31 = or disjoint i8 %30, %27
  %32 = or disjoint i8 %31, %28
  store i8 %32, ptr %24, align 8
  %33 = icmp eq ptr %3, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 283, ptr noundef nonnull @.str.1) #23
  br label %35

35:                                               ; preds = %20, %34
  %36 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 5
  store ptr %3, ptr %36, align 8, !tbaa !70
  %37 = icmp ne ptr %4, null
  %38 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 23), align 8
  %39 = icmp eq ptr %38, null
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 286, ptr noundef nonnull @.str.1) #23
  br label %42

42:                                               ; preds = %35, %41
  %43 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 6
  store ptr %4, ptr %43, align 8, !tbaa !71
  %44 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 10
  store ptr %5, ptr %44, align 8, !tbaa !139
  %45 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 11
  store i32 %12, ptr %45, align 8, !tbaa !140
  %46 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 7
  store ptr %6, ptr %46, align 8, !tbaa !141
  %47 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 8
  store ptr %7, ptr %47, align 8, !tbaa !72
  %48 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 9
  store i32 %8, ptr %48, align 8, !tbaa !142
  %49 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 12
  store ptr %9, ptr %49, align 8, !tbaa !143
  tail call fastcc void @init_fence_for_scheduling(ptr noundef nonnull %17) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @state_create() unnamed_addr #0 !prof !35 !PGOFuncName !144 {
  %1 = tail call fastcc ptr @state_alloc() #22
  tail call void @state_reset(ptr noundef %1) #23
  tail call void @advance_state(ptr noundef %1) #23
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_deps_context() unnamed_addr #0 !prof !35 !PGOFuncName !145 {
  %1 = tail call fastcc ptr @alloc_deps_context() #22
  tail call void @init_deps(ptr noundef %1, i8 noundef zeroext 0) #23
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_succ_iter_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !146 {
  %2 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !125
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1345, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %1, %5, %9
  %11 = load i8, ptr %0, align 8, !tbaa !117
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !125
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !110
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3
  tail call fastcc void @ei_next(ptr noundef nonnull %22) #22
  br label %23

23:                                               ; preds = %21, %17, %13, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 !prof !35 !PGOFuncName !147 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !35 !PGOFuncName !148 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !149
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !36
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #9 !prof !35 !PGOFuncName !151 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !35 !PGOFuncName !152 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #22, !range !55
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #22
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !36
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @in_current_region_p(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !35 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !128
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @containing_rgn, align 8, !tbaa !36
  %7 = zext nneg i32 %3 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !100
  %10 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !36
  %11 = load ptr, ptr @ebb_head, align 8, !tbaa !36
  %12 = load i32, ptr %11, align 4, !tbaa !100
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !100
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %6, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !100
  %19 = icmp eq i32 %9, %18
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %1, %5
  %22 = phi i8 [ %20, %5 ], [ 0, %1 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_all_loop_exits(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !153 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %5 = tail call fastcc zeroext i8 @sel_bb_empty_or_nop_p(ptr noundef %0) #22, !range !55
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1, %16
  %8 = phi ptr [ %12, %16 ], [ %0, %1 ]
  %9 = tail call zeroext i8 @in_current_region_p(ptr noundef %8) #22, !range !55
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @single_succ(ptr noundef %8) #22
  %13 = tail call zeroext i8 @in_current_region_p(ptr noundef %12) #22, !range !55
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1127, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %11, %15
  %17 = tail call fastcc zeroext i8 @sel_bb_empty_or_nop_p(ptr noundef %12) #22, !range !55
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %7, !llvm.loop !154

19:                                               ; preds = %7, %16, %1
  %20 = phi ptr [ %0, %1 ], [ %12, %16 ], [ %8, %7 ]
  %21 = tail call fastcc zeroext i8 @inner_loop_header_p(ptr noundef %20) #22, !range !55
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %81, label %23

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !134
  %26 = load ptr, ptr @current_loop_nest, align 8
  %27 = icmp ne ptr %25, null
  %28 = icmp ne ptr %25, %26
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %36

30:                                               ; preds = %23, %30
  %31 = phi ptr [ %32, %30 ], [ %25, %23 ]
  %32 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %31) #22
  %33 = icmp ne ptr %32, null
  %34 = icmp ne ptr %32, %26
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %30, label %37, !llvm.loop !155

36:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1144, ptr noundef nonnull @.str.1) #23
  br label %37

37:                                               ; preds = %30, %36
  %38 = phi ptr [ null, %36 ], [ %31, %30 ]
  %39 = tail call fastcc ptr @get_loop_exit_edges_unique_dests(ptr noundef %38) #22
  store ptr %39, ptr %2, align 8, !tbaa !36
  %40 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %39, i32 noundef 0, ptr noundef nonnull %3) #22, !range !123
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %79, label %42

42:                                               ; preds = %37, %73
  %43 = phi ptr [ %74, %73 ], [ %39, %37 ]
  %44 = phi i32 [ %76, %73 ], [ 0, %37 ]
  %45 = load ptr, ptr %3, align 8, !tbaa !36
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !126
  %48 = tail call zeroext i8 @in_current_region_p(ptr noundef %47) #22, !range !55
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = tail call fastcc zeroext i8 @inner_loop_header_p(ptr noundef %47) #22, !range !55
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %46, align 8, !tbaa !126
  br label %55

55:                                               ; preds = %53, %42
  %56 = phi ptr [ %54, %53 ], [ %47, %42 ]
  %57 = tail call fastcc ptr @get_all_loop_exits(ptr noundef %56) #22
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %60 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef nonnull %57, i32 noundef 0, ptr noundef nonnull %4) #22, !range !123
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %59, %62
  %63 = phi i32 [ %65, %62 ], [ 0, %59 ]
  %64 = load ptr, ptr %4, align 8, !tbaa !36
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %2, ptr noundef %64) #22
  %65 = add nuw nsw i32 %63, 1
  %66 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef nonnull %57, i32 noundef %65, ptr noundef nonnull %4) #22, !range !123
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %62, !llvm.loop !156

68:                                               ; preds = %62
  %69 = load ptr, ptr %2, align 8
  br label %70

70:                                               ; preds = %68, %59
  %71 = phi ptr [ %69, %68 ], [ %43, %59 ]
  tail call fastcc void @VEC_edge_base_ordered_remove(ptr noundef %71, i32 noundef %44) #22
  %72 = add nsw i32 %44, -1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %73

73:                                               ; preds = %70, %55, %50
  %74 = phi ptr [ %43, %50 ], [ %71, %70 ], [ %43, %55 ]
  %75 = phi i32 [ %44, %50 ], [ %72, %70 ], [ %44, %55 ]
  %76 = add nsw i32 %75, 1
  %77 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %74, i32 noundef %76, ptr noundef nonnull %3) #22, !range !123
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %42, !llvm.loop !157

79:                                               ; preds = %73, %37
  %80 = phi ptr [ %39, %37 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %81

81:                                               ; preds = %79, %19
  %82 = phi ptr [ %80, %79 ], [ null, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %82
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !158 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #22
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #22
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !159
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !159
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sel_bb_head(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !113
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load ptr, ptr @exit_insn, align 8, !tbaa !36
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4322, ptr noundef nonnull @.str.1) #23
  %12 = load ptr, ptr @exit_insn, align 8, !tbaa !36
  br label %22

13:                                               ; preds = %1
  %14 = tail call ptr @bb_note(ptr noundef %0) #23
  %15 = tail call ptr @next_nonnote_insn(ptr noundef %14) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !40
  %20 = icmp eq ptr %19, %0
  %21 = select i1 %20, ptr %15, ptr null
  br label %22

22:                                               ; preds = %11, %8, %13, %17
  %23 = phi ptr [ %21, %17 ], [ null, %13 ], [ %9, %8 ], [ %12, %11 ]
  ret ptr %23
}

; Function Attrs: optsize
declare ptr @bb_note(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !35 !PGOFuncName !160 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #22
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #22
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !35 !PGOFuncName !161 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #22
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #22
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !162 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !149
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !163 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.1) #23
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !36
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !35 !PGOFuncName !164 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sel_bb_empty_or_nop_p(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !165 {
  %2 = tail call ptr @sel_bb_head(ptr noundef %0) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = load ptr, ptr @nop_pattern, align 8, !tbaa !36
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = load ptr, ptr @cfun, align 8, !tbaa !36
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !111
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !113
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = tail call ptr @sel_bb_end(ptr noundef %0) #22
  %18 = icmp eq ptr %2, %17
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %16, %9, %4, %1
  %21 = phi i8 [ 1, %1 ], [ 0, %4 ], [ 0, %9 ], [ %19, %16 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !166 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #22
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !126
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @inner_loop_header_p(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !167 {
  %2 = load ptr, ptr @current_loop_nest, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %28, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !134
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.loop, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %2, ptr noundef nonnull %0) #23
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %13) #22
  %24 = load ptr, ptr @current_loop_nest, align 8, !tbaa !36
  %25 = tail call fastcc i32 @loop_depth(ptr noundef %24) #22
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1052, ptr noundef nonnull @.str.1) #23
  br label %28

28:                                               ; preds = %15, %19, %27, %22, %11, %4, %1
  %29 = phi i8 [ 0, %1 ], [ 0, %4 ], [ 0, %11 ], [ 1, %22 ], [ 1, %27 ], [ 0, %19 ], [ 0, %15 ]
  ret i8 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !35 !PGOFuncName !172 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #22
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_loop_exit_edges_unique_dests(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !174 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !175
  %6 = load ptr, ptr @cfun, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !113
  %11 = icmp eq ptr %5, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !176
  %15 = load i32, ptr %14, align 8, !tbaa !177
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1067, ptr noundef nonnull @.str.1) #23
  br label %19

19:                                               ; preds = %12, %18
  %20 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 18
  %21 = load ptr, ptr %20, align 8, !tbaa !179
  %22 = getelementptr inbounds %struct.loop_exit, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !180
  %24 = load ptr, ptr %23, align 8, !tbaa !182
  %25 = icmp eq ptr %24, null
  br i1 %25, label %53, label %26

26:                                               ; preds = %19, %46
  %27 = phi ptr [ %49, %46 ], [ %24, %19 ]
  %28 = phi ptr [ %48, %46 ], [ %23, %19 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %29 = load ptr, ptr %2, align 8
  %30 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %29, i32 noundef 0, ptr noundef nonnull %3) #22, !range !123
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !126
  br label %39

35:                                               ; preds = %39
  %36 = add nuw nsw i32 %40, 1
  %37 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %29, i32 noundef %36, ptr noundef nonnull %3) #22, !range !123
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39, !llvm.loop !183

39:                                               ; preds = %32, %35
  %40 = phi i32 [ 0, %32 ], [ %36, %35 ]
  %41 = load ptr, ptr %3, align 8, !tbaa !36
  %42 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !126
  %44 = icmp eq ptr %43, %34
  br i1 %44, label %46, label %35

45:                                               ; preds = %35, %26
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %27) #22
  br label %46

46:                                               ; preds = %39, %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  %47 = getelementptr inbounds %struct.loop_exit, ptr %28, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !180
  %49 = load ptr, ptr %48, align 8, !tbaa !182
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %26, !llvm.loop !184

51:                                               ; preds = %46
  %52 = load ptr, ptr %2, align 8, !tbaa !36
  br label %53

53:                                               ; preds = %51, %19
  %54 = phi ptr [ %52, %51 ], [ null, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !185 {
  tail call fastcc void @VEC_edge_heap_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_ordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 !prof !35 !PGOFuncName !186 {
  %3 = load i32, ptr %0, align 8, !tbaa !149
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = add i32 %3, -1
  store i32 %7, ptr %0, align 8, !tbaa !149
  %8 = sub i32 %7, %1
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %6, i64 %10, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sel_bb_end(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %0) #22, !range !55
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4353, ptr noundef nonnull @.str.1) #23
  br label %12

12:                                               ; preds = %4, %11
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  br label %17

17:                                               ; preds = %1, %12
  %18 = phi ptr [ %16, %12 ], [ null, %1 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !187 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #22, !range !55
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #22
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !35 !PGOFuncName !188 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #22
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !35 !PGOFuncName !189 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #22
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !190 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !191
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !35 !PGOFuncName !193 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !194 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !36
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !35 !PGOFuncName !195 {
  %3 = load i32, ptr %0, align 8, !tbaa !149
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !149
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !196 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !197
  %6 = load i32, ptr %0, align 8, !tbaa !149
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sel_bb_empty_p(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call ptr @sel_bb_head(ptr noundef %0) #22
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @init_fence_for_scheduling(ptr nocapture noundef %0) unnamed_addr #8 !prof !35 !PGOFuncName !198 {
  %2 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 4
  store ptr null, ptr %2, align 8, !tbaa !199
  %3 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 13
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, -4
  store i8 %5, ptr %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @state_alloc() unnamed_addr #0 !prof !35 !PGOFuncName !200 {
  %1 = load i64, ptr @dfa_state_size, align 8, !tbaa !201
  %2 = tail call ptr @xmalloc(i64 noundef %1) #23
  ret ptr %2
}

; Function Attrs: optsize
declare void @state_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @advance_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_deps_context() unnamed_addr #0 !prof !35 !PGOFuncName !202 {
  %1 = tail call ptr @xmalloc(i64 noundef 184) #23
  ret ptr %1
}

; Function Attrs: optsize
declare void @init_deps(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @move_fence_to_fences(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !60
  %5 = load ptr, ptr %3, align 8, !tbaa !40
  %6 = tail call ptr @flist_lookup(ptr noundef %4, ptr noundef %5) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !139
  %17 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !141
  %19 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  %21 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !142
  %23 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !143
  %25 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !137
  %27 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 11
  %28 = load i32, ptr %27, align 8, !tbaa !140
  %29 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 13
  %30 = load i8, ptr %29, align 8
  %31 = lshr i8 %30, 3
  %32 = and i8 %31, 1
  tail call fastcc void @merge_fences(ptr noundef nonnull %6, ptr noundef %5, ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef %16, ptr noundef %18, ptr noundef %20, i32 noundef %22, ptr noundef %24, i32 noundef %26, i32 noundef %28, i8 noundef zeroext %32) #22
  br label %40

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.flist_tail_def, ptr %1, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  tail call fastcc void @_list_add(ptr noundef %35) #22
  %36 = load ptr, ptr %35, align 8, !tbaa !36
  store ptr %36, ptr %34, align 8, !tbaa !62
  %37 = getelementptr inbounds %struct._list_node, ptr %36, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %37, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 104, i1 false), !tbaa.struct !203
  %38 = load ptr, ptr %35, align 8, !tbaa !36
  %39 = getelementptr inbounds %struct._list_node, ptr %38, i64 0, i32 1
  tail call fastcc void @init_fence_for_scheduling(ptr noundef nonnull %39) #22
  br label %40

40:                                               ; preds = %33, %8
  store ptr null, ptr %3, align 8, !tbaa !136
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_fences(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef readnone %9, i32 noundef %10, i32 noundef %11, i8 noundef zeroext %12) unnamed_addr #0 !prof !35 !PGOFuncName !204 {
  %14 = alloca ptr, align 8
  %15 = alloca %struct.succ_iterator, align 8
  %16 = alloca ptr, align 8
  store ptr %6, ptr %14, align 8, !tbaa !36
  %17 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !139
  %19 = load ptr, ptr %0, align 8, !tbaa !136
  %20 = tail call zeroext i8 @sel_bb_head_p(ptr noundef %19) #22, !range !55
  %21 = icmp eq i8 %20, 0
  %22 = icmp ne ptr %9, null
  %23 = or i1 %22, %21
  br i1 %23, label %28, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !143
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 646, ptr noundef nonnull @.str.1) #23
  br label %29

29:                                               ; preds = %24, %28
  %30 = icmp eq ptr %5, null
  %31 = icmp eq ptr %18, null
  %32 = select i1 %30, i1 true, i1 %31
  %33 = icmp eq ptr %18, %5
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !67
  tail call void @state_reset(ptr noundef %37) #23
  tail call fastcc void @state_free(ptr noundef %2) #22
  %38 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !70
  tail call fastcc void @reset_deps_context(ptr noundef %39) #22
  tail call fastcc void @delete_deps_context(ptr noundef %3) #22
  %40 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !71
  tail call void @reset_target_context(ptr noundef %41, i8 noundef zeroext 1) #22
  tail call fastcc void @delete_target_context(ptr noundef %4) #22
  %42 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !137
  %44 = icmp slt i32 %43, %10
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 %10, ptr %42, align 8, !tbaa !137
  br label %46

46:                                               ; preds = %45, %35
  store ptr null, ptr %17, align 8, !tbaa !139
  %47 = load i32, ptr @issue_rate, align 4, !tbaa !100
  %48 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 11
  store i32 %47, ptr %48, align 8, !tbaa !140
  call fastcc void @VEC_rtx_gc_free(ptr noundef nonnull %14) #22
  tail call void @free(ptr noundef %7) #22
  %49 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !141
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef nonnull %50) #22
  tail call fastcc void @VEC_rtx_base_block_remove(ptr noundef nonnull %50, i32 noundef %53) #22
  br label %54

54:                                               ; preds = %52, %46
  %55 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !72
  %57 = icmp eq ptr %56, null
  br i1 %57, label %189, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !142
  %61 = sext i32 %60 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %56, i8 0, i64 %61, i1 false)
  br label %189

62:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  %63 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !40
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !205
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 688, ptr noundef nonnull @.str.1) #23
  %69 = load ptr, ptr %63, align 8, !tbaa !40
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !205
  br label %72

72:                                               ; preds = %62, %68
  %73 = phi ptr [ %66, %62 ], [ %71, %68 ]
  %74 = tail call ptr @find_fallthru_edge(ptr noundef %73) #23
  %75 = icmp eq ptr %74, null
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %74, align 8, !tbaa !132
  %78 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !40
  %80 = icmp eq ptr %77, %79
  br i1 %80, label %92, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !40
  %84 = icmp eq ptr %77, %83
  br i1 %84, label %106, label %85

85:                                               ; preds = %81, %72
  %86 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !67
  tail call void @state_reset(ptr noundef %87) #23
  tail call fastcc void @state_free(ptr noundef %2) #22
  %88 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !71
  tail call void @reset_target_context(ptr noundef %89, i8 noundef zeroext 1) #22
  tail call fastcc void @delete_target_context(ptr noundef %4) #22
  store ptr null, ptr %17, align 8, !tbaa !139
  %90 = load i32, ptr @issue_rate, align 4, !tbaa !100
  %91 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 11
  store i32 %90, ptr %91, align 8, !tbaa !140
  br label %113

92:                                               ; preds = %76
  %93 = load ptr, ptr %63, align 8, !tbaa !40
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %93, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !205
  %96 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !40
  %98 = icmp eq ptr %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 711, ptr noundef nonnull @.str.1) #23
  br label %100

100:                                              ; preds = %92, %99
  %101 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !67
  tail call fastcc void @state_free(ptr noundef %102) #22
  store ptr %2, ptr %101, align 8, !tbaa !67
  %103 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 6
  %104 = load ptr, ptr %103, align 8, !tbaa !71
  tail call fastcc void @delete_target_context(ptr noundef %104) #22
  store ptr %4, ptr %103, align 8, !tbaa !71
  store ptr %5, ptr %17, align 8, !tbaa !139
  %105 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 11
  store i32 %11, ptr %105, align 8, !tbaa !140
  br label %113

106:                                              ; preds = %81
  tail call fastcc void @state_free(ptr noundef %2) #22
  tail call fastcc void @delete_target_context(ptr noundef %4) #22
  %107 = load ptr, ptr %63, align 8, !tbaa !40
  %108 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !205
  %110 = load ptr, ptr %78, align 8, !tbaa !40
  %111 = icmp eq ptr %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 729, ptr noundef nonnull @.str.1) #23
  br label %113

113:                                              ; preds = %112, %106, %100, %85
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %15, ptr noundef nonnull %16, ptr noundef nonnull %18, i32 noundef 9) #22
  %114 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %18) #22
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.succ_iterator, ptr %15, i64 0, i32 1
  br label %118

118:                                              ; preds = %116, %127
  %119 = phi ptr [ null, %116 ], [ %128, %127 ]
  %120 = load ptr, ptr %16, align 8, !tbaa !36
  %121 = icmp eq ptr %120, %1
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = icmp eq ptr %119, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %122
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 739, ptr noundef nonnull @.str.1) #23
  br label %125

125:                                              ; preds = %122, %124
  %126 = load ptr, ptr %117, align 8, !tbaa !125
  br label %127

127:                                              ; preds = %118, %125
  %128 = phi ptr [ %126, %125 ], [ %119, %118 ]
  call fastcc void @_succ_iter_next(ptr noundef nonnull %15) #22
  %129 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef %18) #22
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %118, !llvm.loop !206

131:                                              ; preds = %127, %113
  %132 = phi ptr [ null, %113 ], [ %128, %127 ]
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %15, ptr noundef nonnull %16, ptr noundef %5, i32 noundef 9) #22
  %133 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef %5) #22
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %154, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.succ_iterator, ptr %15, i64 0, i32 1
  br label %137

137:                                              ; preds = %135, %146
  %138 = phi ptr [ null, %135 ], [ %147, %146 ]
  %139 = load ptr, ptr %16, align 8, !tbaa !36
  %140 = icmp eq ptr %139, %1
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = icmp eq ptr %138, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %141
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 750, ptr noundef nonnull @.str.1) #23
  br label %144

144:                                              ; preds = %141, %143
  %145 = load ptr, ptr %136, align 8, !tbaa !125
  br label %146

146:                                              ; preds = %137, %144
  %147 = phi ptr [ %145, %144 ], [ %138, %137 ]
  call fastcc void @_succ_iter_next(ptr noundef nonnull %15) #22
  %148 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef %5) #22
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %137, !llvm.loop !207

150:                                              ; preds = %146
  %151 = icmp eq ptr %132, null
  %152 = icmp eq ptr %147, null
  %153 = select i1 %151, i1 true, i1 %152
  br i1 %153, label %154, label %173

154:                                              ; preds = %131, %150
  %155 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 5
  %156 = load ptr, ptr %155, align 8, !tbaa !70
  tail call fastcc void @reset_deps_context(ptr noundef %156) #22
  tail call fastcc void @delete_deps_context(ptr noundef %3) #22
  call fastcc void @VEC_rtx_gc_free(ptr noundef nonnull %14) #22
  tail call void @free(ptr noundef %7) #22
  %157 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %158 = load i32, ptr %157, align 8, !tbaa !137
  %159 = tail call i32 @llvm.smax.i32(i32 %158, i32 %10)
  store i32 %159, ptr %157, align 8, !tbaa !137
  %160 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 7
  %161 = load ptr, ptr %160, align 8, !tbaa !141
  %162 = icmp eq ptr %161, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %154
  %164 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef nonnull %161) #22
  tail call fastcc void @VEC_rtx_base_block_remove(ptr noundef nonnull %161, i32 noundef %164) #22
  br label %165

165:                                              ; preds = %163, %154
  %166 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 8
  %167 = load ptr, ptr %166, align 8, !tbaa !72
  %168 = icmp eq ptr %167, null
  br i1 %168, label %188, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 9
  %171 = load i32, ptr %170, align 8, !tbaa !142
  %172 = sext i32 %171 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %167, i8 0, i64 %172, i1 false)
  br label %188

173:                                              ; preds = %150
  %174 = getelementptr inbounds %struct.edge_def, ptr %147, i64 0, i32 8
  %175 = load i32, ptr %174, align 4, !tbaa !208
  %176 = getelementptr inbounds %struct.edge_def, ptr %132, i64 0, i32 8
  %177 = load i32, ptr %176, align 4, !tbaa !208
  %178 = icmp sgt i32 %175, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 5
  %181 = load ptr, ptr %180, align 8, !tbaa !70
  tail call fastcc void @delete_deps_context(ptr noundef %181) #22
  store ptr %3, ptr %180, align 8, !tbaa !70
  %182 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 7
  tail call fastcc void @VEC_rtx_gc_free(ptr noundef nonnull %182) #22
  store ptr %6, ptr %182, align 8, !tbaa !141
  %183 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 8
  %184 = load ptr, ptr %183, align 8, !tbaa !72
  tail call void @free(ptr noundef %184) #22
  store ptr %7, ptr %183, align 8, !tbaa !72
  %185 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 9
  store i32 %8, ptr %185, align 8, !tbaa !142
  %186 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  store i32 %10, ptr %186, align 8, !tbaa !137
  br label %188

187:                                              ; preds = %173
  tail call fastcc void @delete_deps_context(ptr noundef %3) #22
  call fastcc void @VEC_rtx_gc_free(ptr noundef nonnull %14) #22
  tail call void @free(ptr noundef %7) #22
  br label %188

188:                                              ; preds = %179, %187, %165, %169
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #21
  br label %189

189:                                              ; preds = %54, %58, %188
  %190 = icmp eq i8 %12, 0
  %191 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 13
  %192 = load i8, ptr %191, align 8
  %193 = or i8 %192, 8
  %194 = select i1 %190, i8 %192, i8 %193
  %195 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 3
  store i32 0, ptr %195, align 4, !tbaa !138
  %196 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 13
  %197 = or i8 %194, 4
  store i8 %197, ptr %196, align 8
  %198 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 12
  store ptr null, ptr %198, align 8, !tbaa !143
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sel_bb_head_p(ptr noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = tail call ptr @sel_bb_head(ptr noundef %3) #22
  %5 = icmp eq ptr %4, %0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @state_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !35 !PGOFuncName !209 {
  tail call void @free(ptr noundef %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reset_deps_context(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !210 {
  tail call fastcc void @clear_deps_context(ptr noundef %0) #22
  tail call void @init_deps(ptr noundef %0, i8 noundef zeroext 0) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_base_block_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 !prof !35 !PGOFuncName !211 {
  %3 = load i32, ptr %0, align 8, !tbaa !212
  %4 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2
  %5 = sub i32 %3, %1
  store i32 %5, ptr %0, align 8, !tbaa !212
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = zext i32 %5 to i64
  %9 = shl nuw nsw i64 %8, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %7, i64 %9, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_length(ptr noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !214 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !212
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: optsize
declare ptr @find_fallthru_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_clean_fence_to_fences(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !35 {
  %4 = tail call i32 @get_max_uid() #23
  %5 = add nsw i32 %4, 1
  %6 = tail call fastcc ptr @state_create() #22
  %7 = tail call fastcc ptr @create_deps_context() #22
  %8 = tail call ptr @create_target_context(i8 noundef zeroext 1) #22
  %9 = sext i32 %5 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 4) #23
  %11 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !137
  %13 = add nsw i32 %12, 1
  %14 = load i32, ptr @issue_rate, align 4, !tbaa !100
  %15 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 13
  %16 = load i8, ptr %15, align 8
  %17 = lshr i8 %16, 3
  %18 = and i8 %17, 1
  tail call fastcc void @add_to_fences(ptr noundef %0, ptr noundef %1, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef null, ptr noundef %10, i32 noundef %5, ptr noundef null, i32 noundef %13, i32 noundef 0, i32 noundef %14, i8 noundef zeroext 1, i8 noundef zeroext %18) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_fences(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i8 noundef zeroext %13, i8 noundef zeroext %14) unnamed_addr #0 !prof !35 !PGOFuncName !215 {
  %16 = load ptr, ptr %0, align 8, !tbaa !60
  %17 = tail call ptr @flist_lookup(ptr noundef %16, ptr noundef %1) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.flist_tail_def, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  tail call fastcc void @flist_add(ptr noundef %21, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i8 noundef zeroext %13, i8 noundef zeroext %14) #22
  %22 = load ptr, ptr %20, align 8, !tbaa !62
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  store ptr %23, ptr %20, align 8, !tbaa !62
  br label %25

24:                                               ; preds = %15
  tail call fastcc void @merge_fences(ptr noundef nonnull %17, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %12, i8 noundef zeroext %14) #22
  br label %25

25:                                               ; preds = %24, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_dirty_fence_to_fences(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !35 {
  %4 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !142
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call ptr @xmalloc(i64 noundef %7) #23
  %9 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = load i32, ptr %4, align 8, !tbaa !142
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %10, i64 %13, i1 false)
  %14 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = tail call fastcc ptr @state_create_copy(ptr noundef %15) #22
  %17 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = tail call fastcc ptr @create_copy_of_deps_context(ptr noundef %18) #22
  %20 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = tail call fastcc ptr @create_copy_of_target_context(ptr noundef %21) #22
  %23 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !139
  %25 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !141
  %27 = tail call fastcc ptr @VEC_rtx_gc_copy(ptr noundef %26) #22
  %28 = load i32, ptr %4, align 8, !tbaa !142
  %29 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 12
  %30 = load ptr, ptr %29, align 8, !tbaa !143
  %31 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !137
  %33 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !138
  %35 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 11
  %36 = load i32, ptr %35, align 8, !tbaa !140
  %37 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 13
  %38 = load i8, ptr %37, align 8
  %39 = lshr i8 %38, 2
  %40 = and i8 %39, 1
  %41 = lshr i8 %38, 3
  %42 = and i8 %41, 1
  tail call fastcc void @add_to_fences(ptr noundef %0, ptr noundef %1, ptr noundef %16, ptr noundef %19, ptr noundef %22, ptr noundef %24, ptr noundef %27, ptr noundef %8, i32 noundef %28, ptr noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i8 noundef zeroext %40, i8 noundef zeroext %42) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @state_create_copy(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !216 {
  %2 = tail call fastcc ptr @state_alloc() #22
  tail call fastcc void @state_copy(ptr noundef %2, ptr noundef %0) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_copy_of_deps_context(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !217 {
  %2 = tail call fastcc ptr @alloc_deps_context() #22
  tail call fastcc void @copy_deps_context(ptr noundef %2, ptr noundef %0) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_copy_of_target_context(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !218 {
  %2 = tail call fastcc ptr @alloc_target_context() #22
  tail call fastcc void @copy_target_context(ptr noundef %2, ptr noundef %0) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_rtx_gc_copy(ptr noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !219 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !212
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %4) #23
  store i32 %4, ptr %8, align 8, !tbaa !220
  %9 = getelementptr inbounds %struct.VEC_rtx_base, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2
  %11 = shl nuw nsw i64 %7, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %9, ptr nonnull align 8 %10, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %1, %6, %3
  %13 = phi ptr [ %8, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @state_copy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !prof !35 !PGOFuncName !222 {
  %3 = load i64, ptr @dfa_state_size, align 8, !tbaa !201
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %3, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_deps_context(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !223 {
  tail call void @init_deps(ptr noundef %0, i8 noundef zeroext 0) #23
  tail call void @deps_join(ptr noundef %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: optsize
declare void @deps_join(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_target_context(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !224 {
  %3 = tail call ptr @create_target_context(i8 noundef zeroext 0) #22
  tail call void @set_target_context(ptr noundef %1) #22
  tail call fastcc void @init_target_context(ptr noundef %0, i8 noundef zeroext 0) #22
  tail call void @set_target_context(ptr noundef %3) #22
  tail call fastcc void @delete_target_context(ptr noundef %3) #22
  ret void
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_regset_from_pool() local_unnamed_addr #0 !prof !35 {
  %1 = load i32, ptr @regset_pool.1, align 8, !tbaa !225
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @regset_pool.0, align 8, !tbaa !227
  %5 = add nsw i32 %1, -1
  store i32 %5, ptr @regset_pool.1, align 8, !tbaa !225
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  br label %28

9:                                                ; preds = %0
  %10 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #23
  %11 = load i32, ptr @regset_pool.4, align 8, !tbaa !228
  %12 = load i32, ptr @regset_pool.5, align 8, !tbaa !229
  %13 = icmp eq i32 %11, %12
  %14 = load ptr, ptr @regset_pool.3, align 8, !tbaa !230
  br i1 %13, label %15, label %22

15:                                               ; preds = %9
  %16 = shl nsw i32 %11, 1
  %17 = or disjoint i32 %16, 1
  store i32 %17, ptr @regset_pool.5, align 8, !tbaa !229
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr @xrealloc(ptr noundef %14, i64 noundef %19) #23
  store ptr %20, ptr @regset_pool.3, align 8, !tbaa !230
  %21 = load i32, ptr @regset_pool.4, align 8, !tbaa !228
  br label %22

22:                                               ; preds = %15, %9
  %23 = phi i32 [ %21, %15 ], [ %11, %9 ]
  %24 = phi ptr [ %20, %15 ], [ %14, %9 ]
  %25 = add nsw i32 %23, 1
  store i32 %25, ptr @regset_pool.4, align 8, !tbaa !228
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  store ptr %10, ptr %27, align 8, !tbaa !36
  br label %28

28:                                               ; preds = %22, %3
  %29 = phi ptr [ %8, %3 ], [ %10, %22 ]
  %30 = load i32, ptr @regset_pool.6, align 8, !tbaa !231
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr @regset_pool.6, align 8, !tbaa !231
  ret ptr %29
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_clear_regset_from_pool() local_unnamed_addr #0 !prof !35 {
  %1 = tail call ptr @get_regset_from_pool() #22
  tail call void @bitmap_clear(ptr noundef %1) #23
  ret ptr %1
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @return_regset_to_pool(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load i32, ptr @regset_pool.6, align 8, !tbaa !231
  %3 = add nsw i32 %2, -1
  store i32 %3, ptr @regset_pool.6, align 8, !tbaa !231
  %4 = load i32, ptr @regset_pool.1, align 8, !tbaa !225
  %5 = load i32, ptr @regset_pool.2, align 8, !tbaa !232
  %6 = icmp eq i32 %4, %5
  %7 = load ptr, ptr @regset_pool.0, align 8, !tbaa !227
  br i1 %6, label %8, label %15

8:                                                ; preds = %1
  %9 = shl nsw i32 %4, 1
  %10 = or disjoint i32 %9, 1
  store i32 %10, ptr @regset_pool.2, align 8, !tbaa !232
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 3
  %13 = tail call ptr @xrealloc(ptr noundef %7, i64 noundef %12) #23
  store ptr %13, ptr @regset_pool.0, align 8, !tbaa !227
  %14 = load i32, ptr @regset_pool.1, align 8, !tbaa !225
  br label %15

15:                                               ; preds = %8, %1
  %16 = phi i32 [ %14, %8 ], [ %4, %1 ]
  %17 = phi ptr [ %13, %8 ], [ %7, %1 ]
  %18 = add nsw i32 %16, 1
  store i32 %18, ptr @regset_pool.1, align 8, !tbaa !225
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  store ptr %0, ptr %20, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_regset_pool() local_unnamed_addr #0 !prof !35 {
  %1 = load i32, ptr @regset_pool.6, align 8, !tbaa !231
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1003, ptr noundef nonnull @.str.1) #23
  br label %4

4:                                                ; preds = %0, %3
  %5 = load i32, ptr @regset_pool.1, align 8, !tbaa !225
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @regset_pool.0, align 8, !tbaa !227
  br i1 %6, label %20, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %15, %8 ], [ %7, %4 ]
  %10 = phi i32 [ %16, %8 ], [ %5, %4 ]
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr @regset_pool.1, align 8, !tbaa !225
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !36
  tail call void @bitmap_obstack_free(ptr noundef %14) #23
  %15 = load ptr, ptr @regset_pool.0, align 8, !tbaa !227
  %16 = load i32, ptr @regset_pool.1, align 8, !tbaa !225
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  store ptr null, ptr %18, align 8, !tbaa !36
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %8, !llvm.loop !233

20:                                               ; preds = %8, %4
  %21 = phi ptr [ %7, %4 ], [ %15, %8 ]
  tail call void @free(ptr noundef %21) #22
  store ptr null, ptr @regset_pool.0, align 8, !tbaa !227
  store i32 0, ptr @regset_pool.2, align 8, !tbaa !232
  %22 = load ptr, ptr @regset_pool.3, align 8, !tbaa !230
  tail call void @free(ptr noundef %22) #22
  store ptr null, ptr @regset_pool.3, align 8, !tbaa !230
  store i32 0, ptr @regset_pool.4, align 8, !tbaa !228
  store i32 0, ptr @regset_pool.5, align 8, !tbaa !229
  store i32 0, ptr @regset_pool.6, align 8, !tbaa !231
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_nop_from_pool(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load i32, ptr @nop_pool.1, align 8, !tbaa !234
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @nop_pool.0, align 8, !tbaa !236
  %6 = add nsw i32 %2, -1
  store i32 %6, ptr @nop_pool.1, align 8, !tbaa !234
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %5, i64 %7
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 2, %4 ], [ 3, %1 ]
  %11 = phi ptr [ %8, %4 ], [ @nop_pattern, %1 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = tail call ptr @emit_insn_before(ptr noundef %12, ptr noundef %0) #23
  %14 = load ptr, ptr @s_i_d, align 8
  %15 = load ptr, ptr @sched_luids, align 8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !40
  %18 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %17) #22
  %19 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %14, i32 noundef %18) #22
  %20 = load ptr, ptr @nop_vinsn, align 8, !tbaa !36
  %21 = getelementptr inbounds %struct._sel_insn_data, ptr %19, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !237
  tail call fastcc void @set_insn_init(ptr noundef nonnull %19, ptr noundef %20, i32 noundef %22) #22
  tail call fastcc void @sel_init_new_insn(ptr noundef %13, i32 noundef %10) #22
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_insn_init(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !35 !PGOFuncName !242 {
  tail call void @copy_expr_onside(ptr noundef nonnull @_insn_init_ssid, ptr noundef %0) #22
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store i1 false, ptr @insn_init_create_new_vinsn_p, align 1
  tail call void @change_vinsn_in_expr(ptr noundef nonnull @_insn_init_ssid, ptr noundef nonnull %1) #22
  br label %7

6:                                                ; preds = %3
  store i1 true, ptr @insn_init_create_new_vinsn_p, align 1
  br label %7

7:                                                ; preds = %6, %5
  store i32 %2, ptr getelementptr inbounds (%struct._sel_insn_data, ptr @_insn_init_ssid, i64 0, i32 2), align 4, !tbaa !237
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_sel_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #7 !prof !35 !PGOFuncName !243 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !35 !PGOFuncName !244 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !100
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_init_new_insn(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !245 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = tail call fastcc zeroext i8 @insn_is_the_only_one_in_bb_p(ptr noundef nonnull %0) #22, !range !55
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  tail call void @extend_bb_info() #22
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  tail call fastcc void @create_initial_data_sets(ptr noundef %20) #22
  br label %21

21:                                               ; preds = %2, %18, %15, %11, %7
  %22 = and i32 %1, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @sched_init_luids(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %0) #23
  br label %25

25:                                               ; preds = %24, %21
  %26 = and i32 %1, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @extend_insn_data() #22
  tail call fastcc void @init_insn_data(ptr noundef nonnull %0) #22
  tail call void @clear_expr(ptr noundef nonnull @_insn_init_ssid) #22
  br label %29

29:                                               ; preds = %28, %25
  %30 = and i32 %1, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @extend_insn_data() #22
  tail call fastcc void @init_simplejump_data(ptr noundef nonnull %0) #22
  br label %33

33:                                               ; preds = %32, %29
  %34 = load ptr, ptr @containing_rgn, align 8, !tbaa !36
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !40
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !128
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %34, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !100
  %42 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !36
  %43 = load ptr, ptr @ebb_head, align 8, !tbaa !36
  %44 = load i32, ptr %43, align 4, !tbaa !100
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %42, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !100
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %34, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !100
  %51 = icmp eq i32 %41, %50
  br i1 %51, label %53, label %52

52:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4083, ptr noundef nonnull @.str.1) #23
  br label %53

53:                                               ; preds = %33, %52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_expr_onside(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = load ptr, ptr %1, align 8, !tbaa !246
  %4 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !247
  %6 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !248
  %8 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !249
  %10 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !250
  %12 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !251
  %14 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 8
  %15 = load i32, ptr %14, align 4, !tbaa !252
  %16 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 11
  %17 = load i8, ptr %16, align 8, !tbaa !253
  %18 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 12
  %19 = load i8, ptr %18, align 1
  %20 = lshr i8 %19, 1
  %21 = and i8 %20, 1
  %22 = lshr i8 %19, 2
  %23 = and i8 %22, 1
  %24 = and i8 %19, 1
  %25 = lshr i8 %19, 3
  %26 = and i8 %25, 1
  tail call fastcc void @init_expr(ptr noundef %0, ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef 0, i32 noundef %13, i32 noundef %15, i32 noundef 0, ptr noundef null, i8 noundef zeroext %17, i8 noundef zeroext %21, i8 noundef zeroext %23, i8 noundef zeroext %24, i8 noundef zeroext %26) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @change_vinsn_in_expr(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !246
  tail call void @vinsn_detach(ptr noundef %3) #22
  store ptr %1, ptr %0, align 8, !tbaa !246
  tail call void @vinsn_attach(ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @insn_is_the_only_one_in_bb_p(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !254 {
  %2 = tail call zeroext i8 @sel_bb_head_p(ptr noundef %0) #22, !range !55
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @sel_bb_end_p(ptr noundef %0) #22, !range !55
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i8 [ 0, %1 ], [ %5, %4 ]
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @extend_bb_info() #0 !prof !35 !PGOFuncName !255 {
  tail call void @sel_extend_global_bb_info() #22
  tail call fastcc void @extend_region_bb_info() #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_initial_data_sets(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !256 {
  %2 = load ptr, ptr @sel_global_bb_info, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !128
  %5 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %2, i32 noundef %4) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !257
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %5, i64 0, i32 1
  store i8 0, ptr %9, align 8, !tbaa !259
  br label %15

10:                                               ; preds = %1
  %11 = tail call ptr @get_regset_from_pool() #22
  %12 = load ptr, ptr @sel_global_bb_info, align 8
  %13 = load i32, ptr %3, align 8, !tbaa !128
  %14 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %12, i32 noundef %13) #22
  store ptr %11, ptr %14, align 8, !tbaa !257
  br label %15

15:                                               ; preds = %10, %8
  tail call fastcc void @invalidate_av_set(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: optsize
declare void @sched_init_luids(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @extend_insn_data() #0 !prof !35 !PGOFuncName !260 {
  tail call void @sched_extend_target() #23
  tail call void @sched_deps_init(i8 noundef zeroext 0) #23
  %1 = load i32, ptr @sched_max_luid, align 4, !tbaa !100
  %2 = add nsw i32 %1, 1
  %3 = load ptr, ptr @s_i_d, align 8
  %4 = tail call fastcc i32 @VEC_sel_insn_data_def_base_length(ptr noundef %3) #22
  %5 = sub i32 %2, %4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %0
  %8 = tail call fastcc i32 @VEC_sel_insn_data_def_base_space(ptr noundef %3, i32 noundef %5) #22, !range !123
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = icmp sgt i32 %1, 2049
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = add nuw nsw i32 %1, 1024
  br label %17

14:                                               ; preds = %10
  %15 = mul nsw i32 %1, 3
  %16 = sdiv i32 %15, 2
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i32 [ %13, %12 ], [ %16, %14 ]
  tail call fastcc void @VEC_sel_insn_data_def_heap_safe_grow_cleared(i32 noundef %18) #22
  br label %19

19:                                               ; preds = %17, %7, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_insn_data(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !261 {
  %2 = load i8, ptr getelementptr inbounds (%struct._sel_insn_data, ptr @_insn_init_ssid, i64 0, i32 13), align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct._sel_insn_data, ptr @_insn_init_ssid, i64 0, i32 9), align 8
  %4 = icmp eq ptr %3, null
  %5 = and i8 %2, 6
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i1 %4, i1 false
  %8 = load i32, ptr getelementptr inbounds (%struct._sel_insn_data, ptr @_insn_init_ssid, i64 0, i32 10), align 8
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4026, ptr noundef nonnull @.str.1) #23
  br label %12

12:                                               ; preds = %1, %11
  %13 = load i32, ptr %0, align 8
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -7
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load ptr, ptr @sched_luids, align 8
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !40
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %18, i32 noundef %20) #22
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %12, %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4027, ptr noundef nonnull @.str.1) #23
  %24 = load ptr, ptr @sched_luids, align 8
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !40
  br label %27

27:                                               ; preds = %17, %23
  %28 = phi i32 [ %20, %17 ], [ %26, %23 ]
  %29 = phi ptr [ %18, %17 ], [ %24, %23 ]
  %30 = load ptr, ptr @s_i_d, align 8
  %31 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %29, i32 noundef %28) #22
  %32 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %30, i32 noundef %31) #22
  tail call void @copy_expr(ptr noundef nonnull %32, ptr noundef nonnull @_insn_init_ssid) #22
  %33 = load i32, ptr getelementptr inbounds (%struct._sel_insn_data, ptr @_insn_init_ssid, i64 0, i32 2), align 4, !tbaa !237
  tail call fastcc void @prepare_insn_expr(ptr noundef nonnull %0, i32 noundef %33) #22
  %34 = load i1, ptr @insn_init_create_new_vinsn_p, align 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i1, ptr @init_insn_force_unique_p, align 1
  %37 = zext i1 %36 to i8
  %38 = tail call fastcc ptr @vinsn_create(ptr noundef nonnull %0, i8 noundef zeroext %37) #22
  tail call void @change_vinsn_in_expr(ptr noundef nonnull %32, ptr noundef %38) #22
  br label %39

39:                                               ; preds = %35, %27
  %40 = tail call fastcc zeroext i8 @first_time_insn_init(ptr noundef nonnull %0) #22, !range !55
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call fastcc void @init_first_time_insn_data(ptr noundef nonnull %0) #22
  br label %43

43:                                               ; preds = %42, %39
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clear_expr(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !246
  tail call void @vinsn_detach(ptr noundef %2) #22
  store ptr null, ptr %0, align 8, !tbaa !246
  %3 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 10
  tail call fastcc void @free_history_vect(ptr noundef nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_simplejump_data(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !262 {
  %2 = load ptr, ptr @s_i_d, align 8
  %3 = load ptr, ptr @sched_luids, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !40
  %6 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %3, i32 noundef %5) #22
  %7 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %2, i32 noundef %6) #22
  %8 = tail call fastcc ptr @vinsn_create(ptr noundef %0, i8 noundef zeroext 0) #22
  tail call fastcc void @init_expr(ptr noundef nonnull %7, ptr noundef %8, i32 noundef 0, i32 noundef 10000, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #22
  %9 = tail call fastcc i32 @get_seqno_of_a_pred(ptr noundef %0) #22
  %10 = load ptr, ptr @s_i_d, align 8
  %11 = load ptr, ptr @sched_luids, align 8
  %12 = load i32, ptr %4, align 8, !tbaa !40
  %13 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %11, i32 noundef %12) #22
  %14 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %10, i32 noundef %13) #22
  %15 = getelementptr inbounds %struct._sel_insn_data, ptr %14, i64 0, i32 2
  store i32 %9, ptr %15, align 4, !tbaa !237
  tail call fastcc void @init_first_time_insn_data(ptr noundef %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sel_bb_end_p(ptr noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = tail call ptr @sel_bb_end(ptr noundef %3) #22
  %5 = icmp eq ptr %4, %0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_extend_global_bb_info() local_unnamed_addr #0 !prof !35 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !36
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !263
  tail call fastcc void @VEC_sel_global_bb_info_def_heap_safe_grow_cleared(i32 noundef %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extend_region_bb_info() unnamed_addr #0 !prof !35 !PGOFuncName !264 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !36
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !263
  tail call fastcc void @VEC_sel_region_bb_info_def_heap_safe_grow_cleared(i32 noundef %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sel_region_bb_info_def_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !265 {
  %2 = load ptr, ptr @sel_region_bb_info, align 8, !tbaa !36
  %3 = tail call fastcc i32 @VEC_sel_region_bb_info_def_base_length(ptr noundef %2) #22
  tail call fastcc void @VEC_sel_region_bb_info_def_heap_safe_grow(i32 noundef %0) #22
  %4 = load ptr, ptr @sel_region_bb_info, align 8, !tbaa !36
  %5 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_address(ptr noundef %4) #22
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_sel_region_bb_info_def_base_length(ptr noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !266 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !267
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sel_region_bb_info_def_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !269 {
  %2 = load ptr, ptr @sel_region_bb_info, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !267
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_sel_region_bb_info_def_heap_reserve_exact(i32 noundef %8) #22
  %9 = load ptr, ptr @sel_region_bb_info, align 8, !tbaa !36, !nonnull !270, !noundef !270
  store i32 %0, ptr %9, align 8, !tbaa !267
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_sel_region_bb_info_def_base_address(ptr noundef readnone %0) unnamed_addr #7 !prof !35 !PGOFuncName !271 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_sel_region_bb_info_def_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sel_region_bb_info_def_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !272 {
  %2 = load ptr, ptr @sel_region_bb_info, align 8, !tbaa !36
  %3 = tail call fastcc i32 @VEC_sel_region_bb_info_def_base_space(ptr noundef %2, i32 noundef %0) #22, !range !123
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 24) #23
  store ptr %6, ptr @sel_region_bb_info, align 8, !tbaa !36
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_sel_region_bb_info_def_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !35 !PGOFuncName !273 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_sel_region_bb_info_def_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !274
  %7 = load i32, ptr %0, align 8, !tbaa !267
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #7 !prof !35 !PGOFuncName !275 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_global_bb_info_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @invalidate_av_set(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !276 {
  %2 = load ptr, ptr @sel_region_bb_info, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !128
  %5 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %2, i32 noundef %4) #22
  %6 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !277
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !279
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4156, ptr noundef nonnull @.str.1) #23
  %14 = load ptr, ptr @sel_region_bb_info, align 8
  %15 = load i32, ptr %3, align 8, !tbaa !128
  %16 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %14, i32 noundef %15) #22
  br label %17

17:                                               ; preds = %9, %13
  %18 = phi ptr [ %5, %9 ], [ %16, %13 ]
  %19 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %18, i64 0, i32 2
  store i32 -1, ptr %19, align 8, !tbaa !277
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #7 !prof !35 !PGOFuncName !280 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_region_bb_info_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @sched_extend_target() local_unnamed_addr #2

; Function Attrs: optsize
declare void @sched_deps_init(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_sel_insn_data_def_base_length(ptr noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !281 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !282
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_sel_insn_data_def_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !35 !PGOFuncName !284 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_sel_insn_data_def_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !285
  %7 = load i32, ptr %0, align 8, !tbaa !282
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sel_insn_data_def_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !286 {
  %2 = load ptr, ptr @s_i_d, align 8, !tbaa !36
  %3 = tail call fastcc i32 @VEC_sel_insn_data_def_base_length(ptr noundef %2) #22
  tail call fastcc void @VEC_sel_insn_data_def_heap_safe_grow(i32 noundef %0) #22
  %4 = load ptr, ptr @s_i_d, align 8, !tbaa !36
  %5 = tail call fastcc ptr @VEC_sel_insn_data_def_base_address(ptr noundef %4) #22
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct._sel_insn_data, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 320
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sel_insn_data_def_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !287 {
  %2 = load ptr, ptr @s_i_d, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !282
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_sel_insn_data_def_heap_reserve_exact(i32 noundef %8) #22
  %9 = load ptr, ptr @s_i_d, align 8, !tbaa !36, !nonnull !270, !noundef !270
  store i32 %0, ptr %9, align 8, !tbaa !282
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_sel_insn_data_def_base_address(ptr noundef readnone %0) unnamed_addr #7 !prof !35 !PGOFuncName !288 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_sel_insn_data_def_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sel_insn_data_def_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !289 {
  %2 = load ptr, ptr @s_i_d, align 8, !tbaa !36
  %3 = tail call fastcc i32 @VEC_sel_insn_data_def_base_space(ptr noundef %2, i32 noundef %0) #22, !range !123
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 320) #23
  store ptr %6, ptr @s_i_d, align 8, !tbaa !36
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_expr(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !290
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %8 = tail call fastcc ptr @VEC_expr_history_def_heap_copy(ptr noundef nonnull %5) #22
  %9 = call fastcc i32 @VEC_expr_history_def_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %3) #22, !range !123
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %7, %11
  %12 = phi i32 [ %18, %11 ], [ 0, %7 ]
  %13 = load ptr, ptr %3, align 8, !tbaa !36
  %14 = getelementptr inbounds %struct.expr_history_def_1, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !291
  tail call void @vinsn_attach(ptr noundef %15) #22
  %16 = getelementptr inbounds %struct.expr_history_def_1, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !293
  tail call void @vinsn_attach(ptr noundef %17) #22
  %18 = add i32 %12, 1
  %19 = call fastcc i32 @VEC_expr_history_def_base_iterate(ptr noundef %8, i32 noundef %18, ptr noundef nonnull %3) #22, !range !123
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %11, !llvm.loop !294

21:                                               ; preds = %11, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %22

22:                                               ; preds = %21, %2
  %23 = phi ptr [ %8, %21 ], [ null, %2 ]
  %24 = load ptr, ptr %1, align 8, !tbaa !246
  %25 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !247
  %27 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !248
  %29 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !249
  %31 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !250
  %33 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !295
  %35 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !251
  %37 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 8
  %38 = load i32, ptr %37, align 4, !tbaa !252
  %39 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !296
  %41 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 11
  %42 = load i8, ptr %41, align 8, !tbaa !253
  %43 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 12
  %44 = load i8, ptr %43, align 1
  %45 = lshr i8 %44, 1
  %46 = and i8 %45, 1
  %47 = lshr i8 %44, 2
  %48 = and i8 %47, 1
  %49 = and i8 %44, 1
  %50 = lshr i8 %44, 3
  %51 = and i8 %50, 1
  tail call fastcc void @init_expr(ptr noundef %0, ptr noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, ptr noundef %23, i8 noundef zeroext %42, i8 noundef zeroext %46, i8 noundef zeroext %48, i8 noundef zeroext %49, i8 noundef zeroext %51) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_insn_expr(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !297 {
  %3 = load ptr, ptr @s_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %6) #22
  %8 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %7) #22
  %9 = getelementptr inbounds %struct._sel_insn_data, ptr %8, i64 0, i32 2
  store i32 %1, ptr %9, align 4, !tbaa !237
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !128
  %14 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 6
  store i32 %13, ptr %14, align 4, !tbaa !295
  %15 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 1
  store i32 0, ptr %15, align 8, !tbaa !247
  %16 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 9
  store i32 0, ptr %16, align 8, !tbaa !296
  %17 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 12
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, -7
  store i8 %19, ptr %17, align 1
  %20 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 11
  store i8 1, ptr %20, align 8, !tbaa !253
  %21 = load i32, ptr %5, align 8, !tbaa !40
  %22 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %21) #22
  %23 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %22) #22
  %24 = getelementptr inbounds %struct._sel_insn_data, ptr %23, i64 0, i32 13
  %25 = load i8, ptr %24, align 4
  %26 = and i8 %25, -2
  store i8 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !251
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = tail call i32 @ds_get_max_dep_weak(i32 noundef %28) #23
  store i32 %31, ptr %27, align 8, !tbaa !251
  br label %32

32:                                               ; preds = %30, %2
  %33 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 10
  tail call fastcc void @free_history_vect(ptr noundef nonnull %33) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @vinsn_create(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !35 !PGOFuncName !298 {
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 80) #23
  tail call fastcc void @vinsn_init(ptr noundef %3, ptr noundef %0, i8 noundef zeroext %1) #22
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @first_time_insn_init(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !35 !PGOFuncName !299 {
  %2 = load ptr, ptr @s_i_d, align 8
  %3 = load ptr, ptr @sched_luids, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !40
  %6 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %3, i32 noundef %5) #22
  %7 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %2, i32 noundef %6) #22
  %8 = getelementptr inbounds %struct._sel_insn_data, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !300
  %10 = icmp eq ptr %9, null
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_first_time_insn_data(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !301 {
  %2 = tail call fastcc zeroext i8 @first_time_insn_init(ptr noundef %0) #22, !range !55
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2756, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call ptr @get_regset_from_pool() #22
  %7 = load ptr, ptr @s_i_d, align 8
  %8 = load ptr, ptr @sched_luids, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !40
  %11 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %8, i32 noundef %10) #22
  %12 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %7, i32 noundef %11) #22
  %13 = getelementptr inbounds %struct._sel_insn_data, ptr %12, i64 0, i32 3
  store ptr %6, ptr %13, align 8, !tbaa !300
  %14 = load i32, ptr %9, align 8, !tbaa !40
  %15 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %8, i32 noundef %14) #22
  %16 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %7, i32 noundef %15) #22
  %17 = getelementptr inbounds %struct._sel_insn_data, ptr %16, i64 0, i32 13
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, -2
  store i8 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !40
  %22 = load ptr, ptr @nop_pattern, align 8, !tbaa !36
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %50, label %24

24:                                               ; preds = %5
  %25 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  %26 = load ptr, ptr @s_i_d, align 8
  %27 = load ptr, ptr @sched_luids, align 8
  %28 = load i32, ptr %9, align 8, !tbaa !40
  %29 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %27, i32 noundef %28) #22
  %30 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %26, i32 noundef %29) #22
  %31 = getelementptr inbounds %struct._sel_insn_data, ptr %30, i64 0, i32 4
  store ptr %25, ptr %31, align 8, !tbaa !302
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  %33 = load ptr, ptr @s_i_d, align 8
  %34 = load ptr, ptr @sched_luids, align 8
  %35 = load i32, ptr %9, align 8, !tbaa !40
  %36 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %34, i32 noundef %35) #22
  %37 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %33, i32 noundef %36) #22
  %38 = getelementptr inbounds %struct._sel_insn_data, ptr %37, i64 0, i32 5
  store ptr %32, ptr %38, align 8, !tbaa !303
  %39 = tail call ptr @htab_create(i64 noundef 16, ptr noundef nonnull @hash_transformed_insns, ptr noundef nonnull @eq_transformed_insns, ptr noundef nonnull @free_transformed_insns) #23
  %40 = load ptr, ptr @s_i_d, align 8
  %41 = load ptr, ptr @sched_luids, align 8
  %42 = load i32, ptr %9, align 8, !tbaa !40
  %43 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %41, i32 noundef %42) #22
  %44 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %40, i32 noundef %43) #22
  %45 = getelementptr inbounds %struct._sel_insn_data, ptr %44, i64 0, i32 7
  store ptr %39, ptr %45, align 8, !tbaa !304
  %46 = load i32, ptr %9, align 8, !tbaa !40
  %47 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %41, i32 noundef %46) #22
  %48 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %40, i32 noundef %47) #22
  %49 = getelementptr inbounds %struct._sel_insn_data, ptr %48, i64 0, i32 8
  tail call void @init_deps(ptr noundef nonnull %49, i8 noundef zeroext 1) #23
  br label %50

50:                                               ; preds = %24, %5
  ret void
}

; Function Attrs: optsize
declare i32 @ds_get_max_dep_weak(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_history_vect(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !305 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = call fastcc i32 @VEC_expr_history_def_base_iterate(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %2) #22, !range !123
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %15, %8 ], [ 0, %5 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !36
  %11 = getelementptr inbounds %struct.expr_history_def_1, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !291
  tail call void @vinsn_detach(ptr noundef %12) #22
  %13 = getelementptr inbounds %struct.expr_history_def_1, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !293
  tail call void @vinsn_detach(ptr noundef %14) #22
  %15 = add i32 %9, 1
  %16 = load ptr, ptr %0, align 8, !tbaa !36
  %17 = call fastcc i32 @VEC_expr_history_def_base_iterate(ptr noundef %16, i32 noundef %15, ptr noundef nonnull %2) #22, !range !123
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %8, !llvm.loop !306

19:                                               ; preds = %8, %5
  tail call fastcc void @VEC_expr_history_def_heap_free(ptr noundef nonnull %0) #22
  store ptr null, ptr %0, align 8, !tbaa !36
  br label %20

20:                                               ; preds = %1, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_expr_history_def_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !35 !PGOFuncName !307 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !308
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_expr_history_def_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !36
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vinsn_detach(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !310
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1273, ptr noundef nonnull @.str.1) #23
  %6 = load i32, ptr %2, align 8, !tbaa !310
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %3, %1 ], [ %6, %5 ]
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %2, align 8, !tbaa !310
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call fastcc void @vinsn_delete(ptr noundef nonnull %0) #22
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_expr_history_def_heap_free(ptr nocapture noundef %0) unnamed_addr #9 !prof !35 !PGOFuncName !313 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vinsn_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !35 !PGOFuncName !314 {
  store ptr %1, ptr %0, align 8, !tbaa !315
  %4 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 4
  store i32 0, ptr %4, align 8, !tbaa !310
  %5 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 5
  store i32 -1, ptr %5, align 4, !tbaa !316
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !40
  %8 = load ptr, ptr @df, align 8, !tbaa !36
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 11
  %10 = load i32, ptr %9, align 8, !tbaa !317
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !320
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  tail call fastcc void @init_id_from_df(ptr noundef nonnull %20, ptr noundef nonnull %1, i8 noundef zeroext %2) #22
  br label %23

21:                                               ; preds = %3, %12
  %22 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  tail call fastcc void @deps_init_id(ptr noundef nonnull %22, ptr noundef nonnull %1, i8 noundef zeroext %2) #22
  br label %23

23:                                               ; preds = %21, %19
  %24 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 35), align 8, !tbaa !321
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr null, ptr @hash_with_unspec_callback
  %27 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !322
  %29 = icmp eq i32 %28, 23
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !323
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = tail call i32 @hash_rtx_cb(ptr noundef nonnull %32, i32 noundef %35, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, ptr noundef %26) #23
  %37 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 2
  store i32 %36, ptr %37, align 8, !tbaa !324
  %38 = load ptr, ptr %0, align 8, !tbaa !315
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !40
  %41 = tail call i32 @hash_rtx_cb(ptr noundef %40, i32 noundef 0, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, ptr noundef %26) #23
  br label %48

42:                                               ; preds = %23
  %43 = load ptr, ptr %0, align 8, !tbaa !315
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !40
  %46 = tail call i32 @hash_rtx_cb(ptr noundef %45, i32 noundef 0, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, ptr noundef %26) #23
  %47 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 2
  store i32 %46, ptr %47, align 8, !tbaa !324
  br label %48

48:                                               ; preds = %42, %30
  %49 = phi i32 [ %41, %30 ], [ %46, %42 ]
  %50 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 3
  store i32 %49, ptr %50, align 4
  %51 = tail call i32 @haifa_classify_insn(ptr noundef nonnull %1) #23
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 33), align 8, !tbaa !325
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = tail call i32 %54(ptr noundef nonnull %1) #23
  %58 = and i32 %57, 258048
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56, %48
  br label %61

61:                                               ; preds = %53, %56, %60
  %62 = phi i8 [ 0, %60 ], [ 1, %56 ], [ 1, %53 ]
  %63 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 6
  store i8 %62, ptr %63, align 8, !tbaa !326
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_id_from_df(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !35 !PGOFuncName !327 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !40
  %6 = load ptr, ptr @df, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !317
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !320
  %13 = sext i32 %5 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !36
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3, %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2666, ptr noundef nonnull @.str.1) #23
  br label %18

18:                                               ; preds = %10, %17
  tail call fastcc void @setup_id_for_insn(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #22
  tail call fastcc void @setup_id_lhs_rhs(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #22
  %19 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = load ptr, ptr @nop_pattern, align 8, !tbaa !36
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call fastcc void @maybe_downgrade_id_to_use(ptr noundef %0, ptr noundef nonnull %1) #22
  tail call fastcc void @setup_id_reg_sets(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %24

24:                                               ; preds = %18, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @deps_init_id(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !35 !PGOFuncName !328 {
  %4 = alloca %struct.deps, align 8
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %4) #21
  store i32 3, ptr @deps_init_id_data.0, align 8, !tbaa !329
  store ptr %0, ptr @deps_init_id_data.1, align 8, !tbaa !331
  store i8 %2, ptr @deps_init_id_data.2, align 8, !tbaa !332
  store i1 false, ptr @deps_init_id_data.3, align 8
  call void @init_deps(ptr noundef nonnull %4, i8 noundef zeroext 0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) @deps_init_id_sched_deps_info, ptr noundef nonnull align 8 dereferenceable(104) @const_deps_init_id_sched_deps_info, i64 104, i1 false)
  %5 = load ptr, ptr @spec_info, align 8, !tbaa !36
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  store i8 4, ptr getelementptr inbounds (%struct.sched_deps_info_def, ptr @deps_init_id_sched_deps_info, i64 0, i32 12), align 8
  br label %8

8:                                                ; preds = %7, %3
  store ptr @deps_init_id_sched_deps_info, ptr @sched_deps_info, align 8, !tbaa !36
  call void @deps_analyze_insn(ptr noundef nonnull %4, ptr noundef %1) #23
  call void @free_deps(ptr noundef nonnull %4) #23
  store ptr null, ptr @deps_init_id_data.1, align 8, !tbaa !331
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @hash_with_unspec_callback(ptr noundef %0, i32 %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 !prof !35 !PGOFuncName !333 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 18
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 35), align 8
  %9 = icmp ne ptr %8, null
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = tail call zeroext i8 %8(ptr noundef nonnull %0) #23
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !36
  store ptr %18, ptr %2, align 8, !tbaa !36
  store i32 0, ptr %3, align 4, !tbaa !100
  br label %19

19:                                               ; preds = %4, %11, %14
  %20 = phi i32 [ 1, %14 ], [ 0, %11 ], [ 0, %4 ]
  ret i32 %20
}

; Function Attrs: optsize
declare i32 @hash_rtx_cb(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @haifa_classify_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_id_for_insn(ptr nocapture noundef writeonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !35 !PGOFuncName !334 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp ne i32 %5, 8
  %7 = icmp ne i8 %2, 0
  %8 = or i1 %7, %6
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = trunc i32 %4 to i16
  switch i16 %10, label %17 [
    i16 9, label %11
    i16 7, label %15
  ]

11:                                               ; preds = %9
  %12 = tail call i32 @simplejump_p(ptr noundef nonnull %1) #23
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 9, i32 36
  br label %17

15:                                               ; preds = %9
  %16 = select i1 %7, i32 8, i32 24
  br label %17

17:                                               ; preds = %11, %9, %3, %15
  %18 = phi i32 [ %16, %15 ], [ 23, %3 ], [ %5, %9 ], [ %14, %11 ]
  store i32 %18, ptr %0, align 8, !tbaa !335
  %19 = tail call ptr @get_clear_regset_from_pool() #22
  %20 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !336
  %21 = tail call ptr @get_clear_regset_from_pool() #22
  %22 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 5
  store ptr %21, ptr %22, align 8, !tbaa !337
  %23 = tail call ptr @get_clear_regset_from_pool() #22
  %24 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 4
  store ptr %23, ptr %24, align 8, !tbaa !338
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @setup_id_lhs_rhs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #14 !prof !35 !PGOFuncName !339 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 8
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = load i32, ptr %5, align 8
  %11 = and i32 %10, 65535
  %12 = icmp ne i32 %11, 23
  %13 = icmp ne i8 %2, 0
  %14 = or i1 %13, %12
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %17 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !340
  %20 = load ptr, ptr %16, align 8, !tbaa !40
  %21 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !341
  br label %24

22:                                               ; preds = %9, %3
  %23 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  br label %24

24:                                               ; preds = %22, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_downgrade_id_to_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !35 !PGOFuncName !342 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !341
  %7 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !340
  %9 = load i32, ptr %0, align 8, !tbaa !335
  %10 = icmp eq i32 %9, 23
  br i1 %10, label %11, label %58

11:                                               ; preds = %2
  %12 = icmp eq ptr %6, null
  br i1 %12, label %57, label %13

13:                                               ; preds = %11
  %14 = tail call fastcc zeroext i8 @lhs_and_rhs_separable_p(ptr noundef nonnull %6, ptr noundef %8) #22, !range !55
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %57, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @df, align 8, !tbaa !36
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !320
  %20 = zext i32 %4 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !36
  %23 = getelementptr inbounds %struct.df_insn_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !343
  %25 = load ptr, ptr %24, align 8, !tbaa !36
  %26 = icmp eq ptr %25, null
  br i1 %26, label %58, label %31

27:                                               ; preds = %52
  %28 = getelementptr inbounds ptr, ptr %33, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !36
  %30 = icmp eq ptr %29, null
  br i1 %30, label %58, label %31, !llvm.loop !345

31:                                               ; preds = %16, %27
  %32 = phi ptr [ %29, %27 ], [ %25, %16 ]
  %33 = phi ptr [ %28, %27 ], [ %24, %16 ]
  %34 = getelementptr inbounds %struct.df_base_ref, ptr %32, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !40
  %36 = load ptr, ptr %35, align 8, !tbaa !346
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %31
  %39 = load i32, ptr %32, align 8
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %52, label %41

41:                                               ; preds = %38
  %42 = and i32 %39, 254
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.df_regular_ref, ptr %32, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !40
  br label %47

47:                                               ; preds = %41, %44
  %48 = phi ptr [ %46, %44 ], [ null, %41 ]
  %49 = load ptr, ptr %7, align 8, !tbaa !340
  %50 = tail call i32 @loc_mentioned_in_p(ptr noundef %48, ptr noundef %49) #23
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47, %38, %31
  %53 = getelementptr inbounds %struct.df_base_ref, ptr %32, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !40
  %55 = and i32 %54, -8
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %57, label %27

57:                                               ; preds = %52, %47, %11, %13
  store i32 24, ptr %0, align 8, !tbaa !335
  br label %58

58:                                               ; preds = %27, %57, %16, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_id_reg_sets(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !35 !PGOFuncName !347 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = tail call ptr @get_clear_regset_from_pool() #22
  %6 = load ptr, ptr @df, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !320
  %9 = zext i32 %4 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  %12 = getelementptr inbounds %struct.df_insn_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !343
  %14 = load ptr, ptr %13, align 8, !tbaa !36
  %15 = icmp eq ptr %14, null
  br i1 %15, label %58, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 4
  %18 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 3
  br label %19

19:                                               ; preds = %16, %48
  %20 = phi ptr [ %14, %16 ], [ %50, %48 ]
  %21 = phi ptr [ %13, %16 ], [ %49, %48 ]
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %20, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !40
  %24 = load i32, ptr %20, align 8
  %25 = and i32 %24, -2139095040
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = and i32 %24, 4194304
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load ptr, ptr %18, align 8, !tbaa !336
  %32 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %31, i32 noundef %23) #23
  %33 = and i32 %23, -8
  %34 = icmp eq i32 %33, 8
  br i1 %34, label %35, label %40

35:                                               ; preds = %30, %19
  %36 = phi ptr [ %17, %19 ], [ %18, %30 ]
  %37 = phi i32 [ %23, %19 ], [ 8, %30 ]
  %38 = load ptr, ptr %36, align 8, !tbaa !36
  %39 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %38, i32 noundef %37) #23
  br label %40

40:                                               ; preds = %35, %27, %30
  %41 = load i32, ptr %20, align 8
  %42 = and i32 %41, 65536
  %43 = icmp ne i32 %42, 0
  %44 = icmp eq i32 %23, 7
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %23) #23
  br label %48

48:                                               ; preds = %40, %46
  %49 = getelementptr inbounds ptr, ptr %21, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !36
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %19, !llvm.loop !348

52:                                               ; preds = %48
  %53 = load ptr, ptr @df, align 8, !tbaa !36
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 10
  %55 = load ptr, ptr %54, align 8, !tbaa !320
  %56 = getelementptr inbounds ptr, ptr %55, i64 %9
  %57 = load ptr, ptr %56, align 8, !tbaa !36
  br label %58

58:                                               ; preds = %52, %2
  %59 = phi ptr [ %57, %52 ], [ %11, %2 ]
  %60 = getelementptr inbounds %struct.df_insn_info, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !349
  %62 = load ptr, ptr %61, align 8, !tbaa !36
  %63 = icmp eq ptr %62, null
  br i1 %63, label %91, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 5
  br label %66

66:                                               ; preds = %64, %87
  %67 = phi ptr [ %62, %64 ], [ %89, %87 ]
  %68 = phi ptr [ %61, %64 ], [ %88, %87 ]
  %69 = getelementptr inbounds %struct.df_base_ref, ptr %67, i64 0, i32 6
  %70 = load i32, ptr %69, align 8, !tbaa !40
  %71 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %70) #23
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %66
  %74 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %5, i32 noundef %70) #23
  br label %87

75:                                               ; preds = %66
  %76 = load i32, ptr %67, align 8
  %77 = and i32 %76, 536870912
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load ptr, ptr %65, align 8, !tbaa !337
  %81 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %80, i32 noundef %70) #23
  %82 = and i32 %70, -8
  %83 = icmp eq i32 %82, 8
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load ptr, ptr %65, align 8, !tbaa !337
  %86 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %85, i32 noundef 8) #23
  br label %87

87:                                               ; preds = %75, %84, %79, %73
  %88 = getelementptr inbounds ptr, ptr %68, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !36
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %66, !llvm.loop !350

91:                                               ; preds = %87, %58
  tail call void @return_regset_to_pool(ptr noundef %5) #22
  ret void
}

; Function Attrs: optsize
declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @lhs_and_rhs_separable_p(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #11 !prof !35 !PGOFuncName !351 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8
  %6 = freeze i32 %5
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !100
  switch i32 %12, label %13 [
    i32 9, label %18
    i32 1, label %18
    i32 0, label %18
  ]

13:                                               ; preds = %9
  %14 = load i32, ptr %0, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %13, %9, %9, %9, %4, %2
  %19 = phi i8 [ 0, %2 ], [ 0, %9 ], [ %17, %13 ], [ 0, %4 ], [ 0, %9 ], [ 0, %9 ]
  ret i8 %19
}

; Function Attrs: optsize
declare i32 @loc_mentioned_in_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deps_init_id_start_insn(ptr noundef %0) #0 !prof !35 !PGOFuncName !352 {
  %2 = load i32, ptr @deps_init_id_data.0, align 8, !tbaa !329
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2391, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !331
  %7 = load i8, ptr @deps_init_id_data.2, align 8, !tbaa !332
  tail call fastcc void @setup_id_for_insn(ptr noundef %6, ptr noundef %0, i8 noundef zeroext %7) #22
  store i32 0, ptr @deps_init_id_data.0, align 8, !tbaa !329
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deps_init_id_finish_insn() #0 !prof !35 !PGOFuncName !353 {
  %1 = load i32, ptr @deps_init_id_data.0, align 8, !tbaa !329
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2489, ptr noundef nonnull @.str.1) #23
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !331
  %6 = load i32, ptr %5, align 8, !tbaa !335
  %7 = icmp eq i32 %6, 23
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.idata_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !341
  %11 = getelementptr inbounds %struct.idata_def, ptr %5, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !340
  %13 = icmp eq ptr %10, null
  %14 = icmp eq ptr %12, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %8
  %17 = tail call fastcc zeroext i8 @lhs_and_rhs_separable_p(ptr noundef nonnull %10, ptr noundef nonnull %12) #22, !range !55
  %18 = icmp eq i8 %17, 0
  %19 = load i1, ptr @deps_init_id_data.3, align 8
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %8, %16
  %22 = icmp ne ptr %12, null
  %23 = xor i1 %13, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2504, ptr noundef nonnull @.str.1) #23
  %25 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !331
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi ptr [ %5, %21 ], [ %25, %24 ]
  store i32 24, ptr %27, align 8, !tbaa !335
  br label %28

28:                                               ; preds = %26, %16, %4
  store i32 3, ptr @deps_init_id_data.0, align 8, !tbaa !329
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deps_init_id_start_lhs(ptr noundef %0) #0 !prof !35 !PGOFuncName !354 {
  %2 = load i32, ptr @deps_init_id_data.0, align 8, !tbaa !329
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2402, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !331
  %7 = getelementptr inbounds %struct.idata_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !341
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2403, ptr noundef nonnull @.str.1) #23
  %11 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !331
  br label %12

12:                                               ; preds = %5, %10
  %13 = phi ptr [ %6, %5 ], [ %11, %10 ]
  %14 = load i32, ptr %13, align 8, !tbaa !335
  %15 = icmp eq i32 %14, 23
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.idata_def, ptr %13, i64 0, i32 1
  store ptr %0, ptr %17, align 8, !tbaa !341
  store i32 1, ptr @deps_init_id_data.0, align 8, !tbaa !329
  br label %18

18:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @deps_init_id_finish_lhs() #15 !prof !35 !PGOFuncName !355 {
  store i32 0, ptr @deps_init_id_data.0, align 8, !tbaa !329
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deps_init_id_start_rhs(ptr noundef %0) #0 !prof !35 !PGOFuncName !356 {
  %2 = load i32, ptr @deps_init_id_data.0, align 8, !tbaa !329
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2466, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !331
  %7 = getelementptr inbounds %struct.idata_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !341
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.idata_def, ptr %6, i64 0, i32 2
  store ptr %0, ptr %11, align 8, !tbaa !340
  store i32 2, ptr @deps_init_id_data.0, align 8, !tbaa !329
  br label %12

12:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deps_init_id_finish_rhs() #0 !prof !35 !PGOFuncName !357 {
  %1 = load i32, ptr @deps_init_id_data.0, align 8
  %2 = and i32 %1, -3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2481, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %0, %4
  store i32 0, ptr @deps_init_id_data.0, align 8, !tbaa !329
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deps_init_id_note_reg_set(i32 noundef %0) #0 !prof !35 !PGOFuncName !358 {
  tail call void @haifa_note_reg_set(i32 noundef %0) #23
  %2 = load i32, ptr @deps_init_id_data.0, align 8, !tbaa !329
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i1 true, ptr @deps_init_id_data.3, align 8
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !331
  %7 = load i32, ptr %6, align 8, !tbaa !335
  %8 = icmp eq i32 %7, 36
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.idata_def, ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !336
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %0) #23
  br label %13

13:                                               ; preds = %9, %5
  %14 = and i32 %0, -8
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i1 true, ptr @deps_init_id_data.3, align 8
  br label %17

17:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deps_init_id_note_reg_clobber(i32 noundef %0) #0 !prof !35 !PGOFuncName !359 {
  tail call void @haifa_note_reg_clobber(i32 noundef %0) #23
  %2 = load i32, ptr @deps_init_id_data.0, align 8, !tbaa !329
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i1 true, ptr @deps_init_id_data.3, align 8
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !331
  %7 = load i32, ptr %6, align 8, !tbaa !335
  %8 = icmp eq i32 %7, 36
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.idata_def, ptr %6, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !338
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %0) #23
  br label %13

13:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deps_init_id_note_reg_use(i32 noundef %0) #0 !prof !35 !PGOFuncName !360 {
  tail call void @haifa_note_reg_use(i32 noundef %0) #23
  %2 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !331
  %3 = load i32, ptr %2, align 8, !tbaa !335
  %4 = icmp eq i32 %3, 36
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.idata_def, ptr %2, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !337
  %8 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef %0) #23
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @hash_transformed_insns(ptr nocapture noundef readonly %0) #10 !prof !35 !PGOFuncName !361 {
  %2 = load ptr, ptr %0, align 8, !tbaa !362
  %3 = getelementptr inbounds %struct.vinsn_def, ptr %2, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !364
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @eq_transformed_insns(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !35 !PGOFuncName !365 {
  %3 = load ptr, ptr %0, align 8, !tbaa !362
  %4 = load ptr, ptr %3, align 8, !tbaa !315
  %5 = load ptr, ptr %1, align 8, !tbaa !362
  %6 = load ptr, ptr %5, align 8, !tbaa !315
  %7 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !40
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  %17 = tail call i32 @rtx_equal_p(ptr noundef %14, ptr noundef %16) #23
  br label %18

18:                                               ; preds = %2, %12
  %19 = phi i32 [ %17, %12 ], [ 1, %2 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_transformed_insns(ptr nocapture noundef %0) #0 !prof !35 !PGOFuncName !366 {
  %2 = load ptr, ptr %0, align 8, !tbaa !362
  tail call void @vinsn_detach(ptr noundef %2) #22
  %3 = getelementptr inbounds %struct.transformed_insns, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !367
  tail call void @vinsn_detach(ptr noundef %4) #22
  tail call void @free(ptr noundef %0) #22
  ret void
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_expr(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, i8 noundef zeroext %11, i8 noundef zeroext %12, i8 noundef zeroext %13, i8 noundef zeroext %14, i8 noundef zeroext %15) unnamed_addr #0 !prof !35 !PGOFuncName !368 {
  tail call void @vinsn_attach(ptr noundef %1) #22
  store ptr %1, ptr %0, align 8, !tbaa !246
  %17 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 1
  store i32 %2, ptr %17, align 8, !tbaa !247
  %18 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 2
  store i32 %3, ptr %18, align 4, !tbaa !248
  %19 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 3
  store i32 %4, ptr %19, align 8, !tbaa !249
  %20 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 4
  store i32 0, ptr %20, align 4, !tbaa !369
  %21 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 5
  store i32 %5, ptr %21, align 8, !tbaa !250
  %22 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 6
  store i32 %6, ptr %22, align 4, !tbaa !295
  %23 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 9
  store i32 %9, ptr %23, align 8, !tbaa !296
  %24 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  store i32 %7, ptr %24, align 8, !tbaa !251
  %25 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 8
  store i32 %8, ptr %25, align 4, !tbaa !252
  %26 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 10
  store ptr %10, ptr %26, align 8
  %27 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 %11, ptr %27, align 8, !tbaa !253
  %28 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 12
  %29 = load i8, ptr %28, align 1
  %30 = shl i8 %12, 1
  %31 = and i8 %30, 2
  %32 = and i8 %29, -16
  %33 = shl i8 %13, 2
  %34 = and i8 %33, 4
  %35 = and i8 %14, 1
  %36 = shl i8 %15, 3
  %37 = and i8 %36, 8
  %38 = or disjoint i8 %34, %31
  %39 = or disjoint i8 %38, %35
  %40 = or disjoint i8 %39, %37
  %41 = or disjoint i8 %40, %32
  store i8 %41, ptr %28, align 1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_seqno_of_a_pred(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !370 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.succ_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = load ptr, ptr @s_i_d, align 8
  %7 = load ptr, ptr @sched_luids, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !40
  %10 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %7, i32 noundef %9) #22
  %11 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %6, i32 noundef %10) #22
  %12 = load ptr, ptr %11, align 8, !tbaa !371
  %13 = getelementptr inbounds %struct.vinsn_def, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !322
  %15 = icmp eq i32 %14, 36
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3812, ptr noundef nonnull @.str.1) #23
  br label %17

17:                                               ; preds = %1, %16
  %18 = tail call zeroext i8 @sel_bb_head_p(ptr noundef nonnull %0) #22, !range !55
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load ptr, ptr @s_i_d, align 8
  %22 = load ptr, ptr @sched_luids, align 8
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !40
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !40
  %27 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %22, i32 noundef %26) #22
  %28 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %21, i32 noundef %27) #22
  %29 = getelementptr inbounds %struct._sel_insn_data, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !237
  br label %87

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !40
  %34 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %33) #22, !range !55
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %71, label %36

36:                                               ; preds = %31
  %37 = tail call fastcc ptr @single_pred(ptr noundef %33) #22
  %38 = tail call zeroext i8 @in_current_region_p(ptr noundef %37) #22, !range !55
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %32, align 8, !tbaa !40
  br label %71

42:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %43 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !100
  %44 = icmp ne i32 %43, 0
  %45 = load ptr, ptr @current_loop_nest, align 8
  %46 = icmp ne ptr %45, null
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3831, ptr noundef nonnull @.str.1) #23
  br label %49

49:                                               ; preds = %42, %48
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %3, ptr noundef nonnull %2, ptr noundef nonnull %0, i32 noundef 9) #22
  %50 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %0) #22
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  call fastcc void @_succ_iter_next(ptr noundef nonnull %3) #22
  %53 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %0) #22
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55, !llvm.loop !372

55:                                               ; preds = %52, %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3835, ptr noundef nonnull @.str.1) #23
  call fastcc void @_succ_iter_next(ptr noundef nonnull %3) #22
  %56 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %0) #22
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %55, !llvm.loop !372

58:                                               ; preds = %55, %52, %49
  %59 = load ptr, ptr %2, align 8, !tbaa !36
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3839, ptr noundef nonnull @.str.1) #23
  br label %62

62:                                               ; preds = %58, %61
  %63 = load ptr, ptr @s_i_d, align 8
  %64 = load ptr, ptr @sched_luids, align 8
  %65 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !40
  %67 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %64, i32 noundef %66) #22
  %68 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %63, i32 noundef %67) #22
  %69 = getelementptr inbounds %struct._sel_insn_data, ptr %68, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !237
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  br label %87

71:                                               ; preds = %40, %31
  %72 = phi ptr [ %41, %40 ], [ %33, %31 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call fastcc void @cfg_preds(ptr noundef %72, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %73 = load i32, ptr %5, align 4, !tbaa !100
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3848, ptr noundef nonnull @.str.1) #23
  br label %76

76:                                               ; preds = %71, %75
  %77 = load ptr, ptr @s_i_d, align 8
  %78 = load ptr, ptr @sched_luids, align 8
  %79 = load ptr, ptr %4, align 8, !tbaa !36
  %80 = load ptr, ptr %79, align 8, !tbaa !36
  %81 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !40
  %83 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %78, i32 noundef %82) #22
  %84 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %77, i32 noundef %83) #22
  %85 = getelementptr inbounds %struct._sel_insn_data, ptr %84, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !237
  tail call void @free(ptr noundef %79) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %87

87:                                               ; preds = %62, %76, %20
  %88 = phi i32 [ %30, %20 ], [ %86, %76 ], [ %70, %62 ]
  ret i32 %88
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vinsn_attach(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !315
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1219, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !310
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !310
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !35 !PGOFuncName !373 {
  %2 = load ptr, ptr %0, align 8, !tbaa !374
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !375 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #22
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cfg_preds(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !35 !PGOFuncName !376 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !tbaa !100
  store ptr null, ptr %1, align 8, !tbaa !36
  store i32 0, ptr %2, align 4, !tbaa !100
  call fastcc void @cfg_preds_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !377 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #22, !range !55
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 655, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !374
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #22
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cfg_preds_1(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !35 !PGOFuncName !378 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  %7 = load ptr, ptr @block_to_bb, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !128
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %7, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !100
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4579, ptr noundef nonnull @.str.1) #23
  br label %15

15:                                               ; preds = %4, %14
  %16 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #22
  store i32 0, ptr %6, align 8, !tbaa.struct !120
  %17 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %16, ptr %17, align 8, !tbaa.struct !121
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %16, ptr noundef nonnull %5) #22, !range !55
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %57, label %20

20:                                               ; preds = %15, %52
  %21 = load ptr, ptr %5, align 8, !tbaa !36
  %22 = load ptr, ptr %21, align 8, !tbaa !132
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !40
  %25 = getelementptr inbounds %struct.rtl_bb_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !115
  %27 = tail call zeroext i8 @in_current_region_p(ptr noundef %22) #22, !range !55
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4587, ptr noundef nonnull @.str.1) #23
  br label %30

30:                                               ; preds = %20, %29
  %31 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef nonnull %22) #22, !range !55
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call fastcc void @cfg_preds_1(ptr noundef nonnull %22, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  br label %52

34:                                               ; preds = %30
  %35 = load i32, ptr %2, align 4, !tbaa !100
  %36 = load i32, ptr %3, align 4, !tbaa !100
  %37 = icmp eq i32 %35, %36
  %38 = load ptr, ptr %1, align 8, !tbaa !36
  br i1 %37, label %39, label %46

39:                                               ; preds = %34
  %40 = shl nsw i32 %35, 1
  %41 = or disjoint i32 %40, 1
  store i32 %41, ptr %3, align 4, !tbaa !100
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 3
  %44 = tail call ptr @xrealloc(ptr noundef %38, i64 noundef %43) #23
  store ptr %44, ptr %1, align 8, !tbaa !36
  %45 = load i32, ptr %2, align 4, !tbaa !100
  br label %46

46:                                               ; preds = %39, %34
  %47 = phi i32 [ %45, %39 ], [ %35, %34 ]
  %48 = phi ptr [ %44, %39 ], [ %38, %34 ]
  %49 = add nsw i32 %47, 1
  store i32 %49, ptr %2, align 4, !tbaa !100
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %48, i64 %50
  store ptr %26, ptr %51, align 8, !tbaa !36
  br label %52

52:                                               ; preds = %46, %33
  call fastcc void @ei_next(ptr noundef nonnull %6) #22
  %53 = load i32, ptr %6, align 8
  %54 = load ptr, ptr %17, align 8
  %55 = call fastcc zeroext i8 @ei_cond(i32 %53, ptr %54, ptr noundef nonnull %5) #22, !range !55
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %20, !llvm.loop !379

57:                                               ; preds = %52, %15
  %58 = load i32, ptr %2, align 4, !tbaa !100
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4600, ptr noundef nonnull @.str.1) #23
  br label %61

61:                                               ; preds = %57, %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @return_nop_to_pool(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !35 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1062, ptr noundef nonnull @.str.1) #23
  br label %11

11:                                               ; preds = %6, %10
  %12 = tail call zeroext i8 @sel_remove_insn(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext %1) #22, !range !55
  %13 = load i32, ptr @nop_pool.1, align 8, !tbaa !234
  %14 = load i32, ptr @nop_pool.2, align 8, !tbaa !380
  %15 = icmp eq i32 %13, %14
  %16 = load ptr, ptr @nop_pool.0, align 8, !tbaa !236
  br i1 %15, label %17, label %24

17:                                               ; preds = %11
  %18 = shl nsw i32 %13, 1
  %19 = or disjoint i32 %18, 1
  store i32 %19, ptr @nop_pool.2, align 8, !tbaa !380
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr @xrealloc(ptr noundef %16, i64 noundef %21) #23
  store ptr %22, ptr @nop_pool.0, align 8, !tbaa !236
  %23 = load i32, ptr @nop_pool.1, align 8, !tbaa !234
  br label %24

24:                                               ; preds = %17, %11
  %25 = phi i32 [ %23, %17 ], [ %13, %11 ]
  %26 = phi ptr [ %22, %17 ], [ %16, %11 ]
  %27 = add nsw i32 %25, 1
  store i32 %27, ptr @nop_pool.1, align 8, !tbaa !234
  %28 = sext i32 %25 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  store ptr %0, ptr %29, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @sel_remove_insn(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !35 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._list_iterator, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3736, ptr noundef nonnull @.str.1) #23
  br label %17

17:                                               ; preds = %12, %16
  %18 = load i32, ptr %0, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 7
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load ptr, ptr @sel_region_bb_info, align 8
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !128
  %25 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %22, i32 noundef %24) #22
  %26 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !277
  %28 = load i32, ptr @global_level, align 4, !tbaa !100
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  %31 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %25, i64 0, i32 1
  call fastcc void @_list_iter_start(ptr noundef nonnull %5, ptr noundef nonnull %31, i8 noundef zeroext 1) #22
  %32 = load ptr, ptr %5, align 8, !tbaa !53
  %33 = load ptr, ptr %32, align 8, !tbaa !36
  %34 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %33, ptr noundef nonnull %4) #22, !range !55
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %30, %42
  %37 = load ptr, ptr %4, align 8, !tbaa !36
  %38 = load ptr, ptr %37, align 8, !tbaa !246
  %39 = load ptr, ptr %38, align 8, !tbaa !315
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  call void @av_set_iter_remove(ptr noundef nonnull %5) #22
  br label %47

42:                                               ; preds = %36
  call fastcc void @_list_iter_next(ptr noundef nonnull %5) #22
  %43 = load ptr, ptr %5, align 8, !tbaa !53
  %44 = load ptr, ptr %43, align 8, !tbaa !36
  %45 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %44, ptr noundef nonnull %4) #22, !range !55
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %36, !llvm.loop !381

47:                                               ; preds = %42, %30, %41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %48

48:                                               ; preds = %47, %21, %17
  %49 = icmp eq i8 %1, 0
  br i1 %49, label %76, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr %9, align 8, !tbaa !40
  %52 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !40
  %54 = load ptr, ptr %7, align 8, !tbaa !40
  %55 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %53, ptr %55, align 8, !tbaa !40
  %56 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %51, ptr %56, align 8, !tbaa !40
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !40
  %59 = load ptr, ptr %58, align 8, !tbaa !382
  %60 = icmp eq ptr %59, %0
  br i1 %60, label %61, label %70

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !40
  %64 = icmp eq ptr %63, %54
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3764, ptr noundef nonnull @.str.1) #23
  %66 = load ptr, ptr %57, align 8, !tbaa !40
  br label %67

67:                                               ; preds = %61, %65
  %68 = phi ptr [ %58, %61 ], [ %66, %65 ]
  store ptr %51, ptr %68, align 8, !tbaa !382
  %69 = load ptr, ptr %57, align 8, !tbaa !40
  br label %70

70:                                               ; preds = %67, %50
  %71 = phi ptr [ %69, %67 ], [ %58, %50 ]
  %72 = getelementptr inbounds %struct.rtl_bb_info, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !115
  %74 = icmp eq ptr %73, %0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  store ptr %51, ptr %72, align 8, !tbaa !115
  br label %82

76:                                               ; preds = %48
  tail call void @remove_insn(ptr noundef nonnull %0) #23
  %77 = load ptr, ptr @s_i_d, align 8
  %78 = load ptr, ptr @sched_luids, align 8
  %79 = load i32, ptr %6, align 8, !tbaa !40
  %80 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %78, i32 noundef %79) #22
  %81 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %77, i32 noundef %80) #22
  tail call void @clear_expr(ptr noundef nonnull %81) #22
  br label %82

82:                                               ; preds = %70, %75, %76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %83 = tail call zeroext i8 @tidy_control_flow(ptr noundef %8, i8 noundef zeroext %2) #22, !range !55
  ret i8 %83
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @free_nop_pool() local_unnamed_addr #9 !prof !35 {
  store i32 0, ptr @nop_pool.1, align 8, !tbaa !234
  store i32 0, ptr @nop_pool.2, align 8, !tbaa !380
  %1 = load ptr, ptr @nop_pool.0, align 8, !tbaa !236
  tail call void @free(ptr noundef %1) #22
  store ptr null, ptr @nop_pool.0, align 8, !tbaa !236
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @vinsn_copy(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !35 {
  %3 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !322
  %5 = add i32 %4, -25
  %6 = icmp ult i32 %5, -2
  %7 = zext i1 %6 to i8
  %8 = load ptr, ptr %0, align 8, !tbaa !315
  %9 = tail call ptr @create_copy_of_insn_rtx(ptr noundef %8) #22
  %10 = tail call ptr @create_vinsn_from_insn_rtx(ptr noundef %9, i8 noundef zeroext %7) #22
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void @vinsn_detach(ptr noundef nonnull %0) #22
  tail call void @vinsn_attach(ptr noundef %10) #22
  br label %13

13:                                               ; preds = %12, %2
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_copy_of_insn_rtx(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %9 [
    i16 7, label %4
    i16 8, label %10
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = tail call ptr @copy_rtx(ptr noundef %6) #23
  %8 = tail call ptr @create_insn_rtx_from_pattern(ptr noundef %7, ptr noundef nonnull %0) #22
  br label %15

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5563, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %1, %9
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = tail call ptr @copy_rtx(ptr noundef %12) #23
  %14 = tail call ptr @create_insn_rtx_from_pattern(ptr noundef %13, ptr noundef null) #22
  br label %15

15:                                               ; preds = %10, %4
  %16 = phi ptr [ %8, %4 ], [ %14, %10 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_vinsn_from_insn_rtx(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !35 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2, %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5547, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %7, %11, %15
  %17 = tail call fastcc ptr @vinsn_create(ptr noundef nonnull %0, i8 noundef zeroext %1) #22
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vinsn_delete(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !383 {
  %2 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !310
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1259, ptr noundef nonnull @.str.1) #23
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !384
  tail call void @return_regset_to_pool(ptr noundef %8) #22
  %9 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !385
  tail call void @return_regset_to_pool(ptr noundef %10) #22
  %11 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !386
  tail call void @return_regset_to_pool(ptr noundef %12) #22
  tail call void @free(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @vinsn_cond_branch_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !322
  %4 = add i32 %3, -23
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !315
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = getelementptr inbounds %struct.rtl_bb_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = icmp eq ptr %13, %7
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %7) #23
  br label %17

17:                                               ; preds = %1, %6, %15
  %18 = phi i8 [ %16, %15 ], [ 0, %1 ], [ 0, %6 ]
  ret i8 %18
}

; Function Attrs: optsize
declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @sel_vinsn_cost(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !316
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !315
  %7 = tail call fastcc i32 @sel_insn_rtx_cost(ptr noundef %6) #22
  store i32 %7, ptr %2, align 4, !tbaa !316
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ %3, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sel_insn_rtx_cost(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !387 {
  %2 = tail call fastcc i32 @recog_memoized(ptr noundef %0) #22
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @insn_default_latency(ptr noundef %0) #23
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi i32 [ %6, %4 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !388 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !40
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #23
  store i32 %8, ptr %2, align 8, !tbaa !40
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @insn_default_latency(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sel_gen_insn_from_rtx_after(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !35 {
  %5 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 11
  %6 = load i8, ptr %5, align 8, !tbaa !253
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1344, ptr noundef nonnull @.str.1) #23
  br label %9

9:                                                ; preds = %4, %8
  %10 = tail call ptr @emit_insn_after(ptr noundef %0, ptr noundef %3) #23
  tail call fastcc void @set_insn_init(ptr noundef nonnull %1, ptr noundef null, i32 noundef %2) #22
  tail call fastcc void @sel_init_new_insn(ptr noundef %10, i32 noundef 3) #22
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sel_gen_recovery_insn_from_rtx_after(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !35 {
  %5 = load i1, ptr @init_insn_force_unique_p, align 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1364, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %4, %6
  store i1 true, ptr @init_insn_force_unique_p, align 1
  %8 = tail call ptr @sel_gen_insn_from_rtx_after(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #22
  %9 = load ptr, ptr @h_d_i_d, align 8
  %10 = load ptr, ptr @sched_luids, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !40
  %13 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %10, i32 noundef %12) #22
  %14 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %9, i32 noundef %13) #22
  %15 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %14, i64 0, i32 7
  %16 = load i8, ptr %15, align 8
  %17 = or i8 %16, 1
  store i8 %17, ptr %15, align 8
  store i1 false, ptr @init_insn_force_unique_p, align 1
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #7 !prof !35 !PGOFuncName !389 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @sel_gen_insn_from_expr_after(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !35 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !246
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ %7, %6 ], [ %1, %4 ]
  tail call fastcc void @set_insn_init(ptr noundef %0, ptr noundef %9, i32 noundef %2) #22
  %10 = load ptr, ptr @_insn_init_ssid, align 8, !tbaa !246
  %11 = load ptr, ptr %10, align 8, !tbaa !315
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  tail call void @add_insn_after(ptr noundef %11, ptr noundef %3, ptr noundef %14) #23
  %15 = load ptr, ptr @sched_luids, align 8
  %16 = load i32, ptr %12, align 8, !tbaa !40
  %17 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %16) #22
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 3, i32 2
  tail call fastcc void @sel_init_new_insn(ptr noundef %11, i32 noundef %19) #22
  ret ptr %11
}

; Function Attrs: optsize
declare void @add_insn_after(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sel_move_insn(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !35 {
  %4 = load ptr, ptr %0, align 8, !tbaa !246
  %5 = load ptr, ptr %4, align 8, !tbaa !315
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = load ptr, ptr @s_i_d, align 8
  %11 = load ptr, ptr @sched_luids, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !40
  %14 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %11, i32 noundef %13) #22
  %15 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %10, i32 noundef %14) #22
  %16 = load ptr, ptr %15, align 8, !tbaa !371
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1408, ptr noundef nonnull @.str.1) #23
  br label %19

19:                                               ; preds = %3, %18
  %20 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %2, ptr %20, align 8, !tbaa !40
  %21 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %9, ptr %21, align 8, !tbaa !40
  store ptr %5, ptr %8, align 8, !tbaa !40
  %22 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %5, ptr %22, align 8, !tbaa !40
  tail call void @df_insn_change_bb(ptr noundef nonnull %5, ptr noundef %7) #23
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !40
  %25 = getelementptr inbounds %struct.rtl_bb_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !115
  %27 = icmp eq ptr %26, %2
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store ptr %5, ptr %25, align 8, !tbaa !115
  br label %29

29:                                               ; preds = %28, %19
  tail call fastcc void @prepare_insn_expr(ptr noundef nonnull %5, i32 noundef %1) #22
  ret ptr %5
}

; Function Attrs: optsize
declare void @df_insn_change_bb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @find_in_history_vect(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !35 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !40
  %10 = call fastcc zeroext i8 @find_in_history_vect_1(ptr noundef %0, i32 noundef %9, ptr noundef %2, i8 noundef zeroext 0, ptr noundef nonnull %5) #22
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4, !tbaa !100
  br label %38

14:                                               ; preds = %4
  %15 = load ptr, ptr @s_i_d, align 8
  %16 = load ptr, ptr @sched_luids, align 8
  %17 = load i32, ptr %8, align 8, !tbaa !40
  %18 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %16, i32 noundef %17) #22
  %19 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %15, i32 noundef %18) #22
  %20 = getelementptr inbounds %struct._sel_insn_data, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !390
  %22 = icmp ne ptr %21, null
  %23 = icmp ne i8 %3, 0
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %38

25:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %7, ptr noundef nonnull %21, ptr noundef nonnull %6) #22
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %6) #22, !range !55
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %33, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %38

29:                                               ; preds = %25, %33
  %30 = load i32, ptr %6, align 4, !tbaa !100
  %31 = call fastcc zeroext i8 @find_in_history_vect_1(ptr noundef %0, i32 noundef %30, ptr noundef %2, i8 noundef zeroext 0, ptr noundef nonnull %5) #22
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  call fastcc void @bmp_iter_next(ptr noundef nonnull %7, ptr noundef nonnull %6) #22
  %34 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %6) #22, !range !55
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %28, label %29, !llvm.loop !391

36:                                               ; preds = %29
  %37 = load i32, ptr %5, align 4, !tbaa !100
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %38

38:                                               ; preds = %14, %28, %36, %12
  %39 = phi i32 [ %13, %12 ], [ %37, %36 ], [ -1, %28 ], [ -1, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @find_in_history_vect_1(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !prof !35 !PGOFuncName !392 {
  %6 = tail call fastcc i32 @VEC_expr_history_def_base_length(ptr noundef %0) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @VEC_expr_history_def_base_address(ptr noundef %0) #22
  %10 = icmp eq i8 %3, 0
  %11 = tail call i32 @llvm.smax.i32(i32 %6, i32 0)
  %12 = zext nneg i32 %11 to i64
  br label %13

13:                                               ; preds = %28, %8
  %14 = phi i64 [ %30, %28 ], [ 0, %8 ]
  %15 = icmp eq i64 %14, %12
  br i1 %15, label %33, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.expr_history_def_1, ptr %9, i64 %14
  %18 = load i32, ptr %17, align 8, !tbaa !393
  %19 = getelementptr inbounds %struct.expr_history_def_1, ptr %9, i64 %14, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !293
  %21 = icmp eq i32 %18, %1
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  br i1 %10, label %26, label %23

23:                                               ; preds = %22
  %24 = tail call zeroext i8 @vinsn_equal_p(ptr noundef %20, ptr noundef %2) #22
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %23
  %27 = trunc i64 %14 to i32
  br label %33

28:                                               ; preds = %23, %16
  %29 = icmp ugt i32 %18, %1
  %30 = add nuw nsw i64 %14, 1
  br i1 %29, label %31, label %13

31:                                               ; preds = %28
  %32 = trunc i64 %14 to i32
  br label %33

33:                                               ; preds = %13, %31, %5, %26
  %34 = phi i32 [ %27, %26 ], [ 0, %5 ], [ %32, %31 ], [ %11, %13 ]
  %35 = phi i8 [ 1, %26 ], [ 0, %5 ], [ 0, %31 ], [ 0, %13 ]
  store i32 %34, ptr %4, align 4, !tbaa !100
  ret i8 %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #14 !prof !35 !PGOFuncName !394 {
  %4 = load ptr, ptr %1, align 8, !tbaa !395
  store ptr %4, ptr %0, align 8, !tbaa !396
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !398
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !396
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !399
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !401
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !201
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !402
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !100
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #16 !prof !35 !PGOFuncName !403 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !402
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !100
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !404

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !100
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !100
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !401
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !396
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !401
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !201
  store i64 %35, ptr %3, align 8, !tbaa !402
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !100
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !100
  %40 = load i32, ptr %23, align 8, !tbaa !401
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !401
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !405

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !406
  store ptr %44, ptr %0, align 8, !tbaa !396
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !399
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !100
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !402
  store i32 %16, ptr %1, align 4, !tbaa !100
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !35 !PGOFuncName !407 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !402
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !402
  %6 = load i32, ptr %1, align 4, !tbaa !100
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_expr_history_def_base_length(ptr noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !408 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !308
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_expr_history_def_base_address(ptr noundef readnone %0) unnamed_addr #7 !prof !35 !PGOFuncName !409 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_expr_history_def_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @vinsn_equal_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %46, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !322
  %7 = getelementptr inbounds %struct.vinsn_def, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !322
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %46

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !324
  %13 = getelementptr inbounds %struct.vinsn_def, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !324
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %10
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 35), align 8, !tbaa !321
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr null, ptr @skip_unspecs_callback
  %20 = icmp eq i32 %6, 23
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !323
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1583, ptr noundef nonnull @.str.1) #23
  br label %26

26:                                               ; preds = %21, %25
  %27 = getelementptr inbounds %struct.vinsn_def, ptr %1, i64 0, i32 1, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !323
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1584, ptr noundef nonnull @.str.1) #23
  br label %36

31:                                               ; preds = %16
  %32 = load ptr, ptr %0, align 8, !tbaa !315
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 1
  %34 = load ptr, ptr %1, align 8, !tbaa !315
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1
  br label %36

36:                                               ; preds = %31, %30
  %37 = phi ptr [ %27, %30 ], [ %35, %31 ]
  %38 = phi ptr [ %22, %30 ], [ %33, %31 ]
  %39 = load ptr, ptr %37, align 8, !tbaa !40
  br label %40

40:                                               ; preds = %36, %26
  %41 = phi ptr [ %28, %26 ], [ %39, %36 ]
  %42 = phi ptr [ %22, %26 ], [ %38, %36 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !40
  %44 = tail call i32 @rtx_equal_p_cb(ptr noundef %43, ptr noundef %41, ptr noundef %19) #23
  %45 = trunc i32 %44 to i8
  br label %46

46:                                               ; preds = %40, %10, %4, %2
  %47 = phi i8 [ 1, %2 ], [ 0, %4 ], [ 0, %10 ], [ %45, %40 ]
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @insert_in_history_vect(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !35 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.expr_history_def_1, align 8
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %10 = load ptr, ptr %0, align 8, !tbaa !36
  store ptr %10, ptr %7, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #21
  %11 = call fastcc zeroext i8 @find_in_history_vect_1(ptr noundef %10, i32 noundef %1, ptr noundef %4, i8 noundef zeroext 1, ptr noundef nonnull %9) #22
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %6
  %14 = load i32, ptr %9, align 4, !tbaa !100
  %15 = tail call fastcc ptr @VEC_expr_history_def_base_index(ptr noundef %10, i32 noundef %14) #22
  %16 = getelementptr inbounds %struct.expr_history_def_1, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !410
  %18 = icmp eq i32 %17, %5
  br i1 %18, label %28, label %19

19:                                               ; preds = %13
  %20 = tail call i32 @ds_max_merge(i32 noundef %17, i32 noundef %5) #23
  store i32 %20, ptr %16, align 8, !tbaa !410
  br label %28

21:                                               ; preds = %6
  store i32 %1, ptr %8, align 8, !tbaa !393
  %22 = getelementptr inbounds %struct.expr_history_def_1, ptr %8, i64 0, i32 1
  store ptr %3, ptr %22, align 8, !tbaa !291
  %23 = getelementptr inbounds %struct.expr_history_def_1, ptr %8, i64 0, i32 2
  store ptr %4, ptr %23, align 8, !tbaa !293
  %24 = getelementptr inbounds %struct.expr_history_def_1, ptr %8, i64 0, i32 3
  store i32 %5, ptr %24, align 8, !tbaa !410
  %25 = getelementptr inbounds %struct.expr_history_def_1, ptr %8, i64 0, i32 4
  store i32 %2, ptr %25, align 4, !tbaa !411
  tail call void @vinsn_attach(ptr noundef %3) #22
  tail call void @vinsn_attach(ptr noundef %4) #22
  %26 = load i32, ptr %9, align 4, !tbaa !100
  call fastcc void @VEC_expr_history_def_heap_safe_insert(ptr noundef nonnull %7, i32 noundef %26, ptr noundef nonnull %8) #22
  %27 = load ptr, ptr %7, align 8, !tbaa !36
  store ptr %27, ptr %0, align 8, !tbaa !36
  br label %28

28:                                               ; preds = %13, %19, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_expr_history_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #7 !prof !35 !PGOFuncName !412 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_expr_history_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @ds_max_merge(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_expr_history_def_heap_safe_insert(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !35 !PGOFuncName !413 {
  tail call fastcc void @VEC_expr_history_def_heap_reserve(ptr noundef %0) #22
  %4 = load ptr, ptr %0, align 8, !tbaa !36
  tail call fastcc void @VEC_expr_history_def_base_quick_insert(ptr noundef %4, i32 noundef %1, ptr noundef %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_expr_history_def_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !414 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = tail call fastcc i32 @VEC_expr_history_def_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 32) #23
  store ptr %6, ptr %0, align 8, !tbaa !36
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_expr_history_def_base_quick_insert(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #8 !prof !35 !PGOFuncName !415 {
  %4 = load i32, ptr %0, align 8, !tbaa !308
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %struct.VEC_expr_history_def_base, ptr %0, i64 0, i32 2, i64 %5
  %7 = getelementptr inbounds %struct.expr_history_def_1, ptr %6, i64 1
  %8 = add i32 %4, 1
  store i32 %8, ptr %0, align 8, !tbaa !308
  %9 = sub i32 %4, %1
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %6, i64 %11, i1 false)
  %12 = icmp eq ptr %2, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !416
  br label %14

14:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_expr_history_def_base_space(ptr noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !417 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_expr_history_def_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !418
  %6 = load i32, ptr %0, align 8, !tbaa !308
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @skip_unspecs_callback(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 !prof !35 !PGOFuncName !419 {
  %5 = load ptr, ptr %0, align 8, !tbaa !36
  %6 = load ptr, ptr %1, align 8, !tbaa !36
  %7 = load i32, ptr %5, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 18
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 35), align 8, !tbaa !321
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = tail call zeroext i8 %11(ptr noundef nonnull %5) #23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13, %10
  %17 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = getelementptr inbounds %struct.rtvec_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  store ptr %20, ptr %2, align 8, !tbaa !36
  br label %36

21:                                               ; preds = %13, %4
  %22 = load i32, ptr %6, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 18
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 35), align 8, !tbaa !321
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = tail call zeroext i8 %26(ptr noundef nonnull %6) #23
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28, %25
  store ptr %5, ptr %2, align 8, !tbaa !36
  %32 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !40
  %34 = getelementptr inbounds %struct.rtvec_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !36
  br label %36

36:                                               ; preds = %16, %31
  %37 = phi ptr [ %35, %31 ], [ %6, %16 ]
  store ptr %37, ptr %3, align 8, !tbaa !36
  br label %38

38:                                               ; preds = %36, %21, %28
  %39 = phi i32 [ 0, %28 ], [ 0, %21 ], [ 1, %36 ]
  ret i32 %39
}

; Function Attrs: optsize
declare i32 @rtx_equal_p_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_expr_history_def_heap_copy(ptr noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !420 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !308
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %4, i64 noundef 8, i64 noundef 32) #23
  store i32 %4, ptr %8, align 8, !tbaa !421
  %9 = getelementptr inbounds %struct.VEC_expr_history_def_base, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.VEC_expr_history_def_base, ptr %0, i64 0, i32 2
  %11 = shl nuw nsw i64 %7, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %9, ptr nonnull align 8 %10, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %1, %6, %3
  %13 = phi ptr [ %8, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @merge_expr_data(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !35 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !247
  %7 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !247
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 %8, ptr %5, align 8, !tbaa !247
  br label %11

11:                                               ; preds = %10, %3
  %12 = icmp eq ptr %2, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !248
  %16 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !248
  %18 = add nsw i32 %17, %15
  store i32 %18, ptr %16, align 4, !tbaa !248
  br label %25

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !248
  %22 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !248
  %24 = tail call i32 @llvm.smax.i32(i32 %21, i32 %23)
  store i32 %24, ptr %20, align 4, !tbaa !248
  br label %25

25:                                               ; preds = %19, %13
  %26 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !249
  %28 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !249
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 %29, ptr %26, align 8, !tbaa !249
  br label %32

32:                                               ; preds = %31, %25
  %33 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !250
  %35 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !250
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 %36, ptr %33, align 8, !tbaa !250
  br label %39

39:                                               ; preds = %38, %32
  %40 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 6
  %41 = load i32, ptr %40, align 4, !tbaa !295
  %42 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !295
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 0, ptr %40, align 4, !tbaa !295
  br label %46

46:                                               ; preds = %45, %39
  %47 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !296
  %49 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !296
  %51 = tail call i32 @llvm.smin.i32(i32 %48, i32 %50)
  store i32 %51, ptr %47, align 8, !tbaa !296
  %52 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !290
  %54 = call fastcc i32 @VEC_expr_history_def_base_iterate(ptr noundef %53, i32 noundef 0, ptr noundef nonnull %4) #22, !range !123
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 10
  br label %58

58:                                               ; preds = %56, %58
  %59 = phi i32 [ 0, %56 ], [ %70, %58 ]
  %60 = load ptr, ptr %4, align 8, !tbaa !36
  %61 = load i32, ptr %60, align 8, !tbaa !393
  %62 = getelementptr inbounds %struct.expr_history_def_1, ptr %60, i64 0, i32 4
  %63 = load i32, ptr %62, align 4, !tbaa !411
  %64 = getelementptr inbounds %struct.expr_history_def_1, ptr %60, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !291
  %66 = getelementptr inbounds %struct.expr_history_def_1, ptr %60, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !293
  %68 = getelementptr inbounds %struct.expr_history_def_1, ptr %60, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !410
  tail call void @insert_in_history_vect(ptr noundef nonnull %57, i32 noundef %61, i32 noundef %63, ptr noundef %65, ptr noundef %67, i32 noundef %69) #22
  %70 = add nuw nsw i32 %59, 1
  %71 = load ptr, ptr %52, align 8, !tbaa !290
  %72 = call fastcc i32 @VEC_expr_history_def_base_iterate(ptr noundef %71, i32 noundef %70, ptr noundef nonnull %4) #22, !range !123
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %58, !llvm.loop !423

74:                                               ; preds = %58, %46
  %75 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 12
  %76 = load i8, ptr %75, align 1
  %77 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 12
  %78 = load i8, ptr %77, align 1
  %79 = and i8 %76, 2
  %80 = or i8 %79, %78
  store i8 %80, ptr %77, align 1
  %81 = load i8, ptr %75, align 1
  %82 = or i8 %81, %78
  %83 = and i8 %82, 4
  %84 = and i8 %80, -5
  %85 = or disjoint i8 %83, %84
  store i8 %85, ptr %77, align 1
  %86 = load i8, ptr %75, align 1
  %87 = or i8 %86, %78
  %88 = and i8 %87, 8
  %89 = and i8 %85, -9
  %90 = or disjoint i8 %89, %88
  store i8 %90, ptr %77, align 1
  tail call fastcc void @update_target_availability(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #22
  tail call fastcc void @update_speculative_bits(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @update_target_availability(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) unnamed_addr #8 !prof !35 !PGOFuncName !424 {
  %4 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  %5 = load i8, ptr %4, align 8, !tbaa !253
  %6 = icmp slt i8 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 11
  %9 = load i8, ptr %8, align 8, !tbaa !253
  %10 = icmp slt i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %2, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !295
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !295
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %25, label %23

21:                                               ; preds = %11
  %22 = and i8 %9, %5
  br label %23

23:                                               ; preds = %13, %17, %3, %7, %21
  %24 = phi i8 [ %22, %21 ], [ -1, %7 ], [ -1, %3 ], [ -1, %17 ], [ -1, %13 ]
  store i8 %24, ptr %4, align 8, !tbaa !253
  br label %25

25:                                               ; preds = %23, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_speculative_bits(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 !prof !35 !PGOFuncName !425 {
  %4 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !251
  %6 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !251
  %8 = tail call i32 @ds_max_merge(i32 noundef %5, i32 noundef %7) #23
  store i32 %8, ptr %4, align 8, !tbaa !251
  %9 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !252
  %11 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 8
  %12 = load i32, ptr %11, align 4, !tbaa !252
  %13 = or i32 %12, %10
  store i32 %13, ptr %11, align 4, !tbaa !252
  %14 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 12
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 12
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %15, 1
  %19 = or i8 %18, %17
  store i8 %19, ptr %16, align 1
  %20 = or i32 %7, %5
  %21 = and i32 %20, 16777215
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %3
  %24 = tail call i32 @ds_get_speculation_types(i32 noundef %5) #23
  %25 = tail call i32 @ds_get_speculation_types(i32 noundef %7) #23
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %51, label %27

27:                                               ; preds = %23
  %28 = and i32 %24, 16777215
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %25, 16777215
  %31 = icmp eq i32 %30, 0
  %32 = or i1 %29, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load i32, ptr %4, align 8, !tbaa !251
  %35 = tail call i32 @speculate_expr(ptr noundef nonnull %0, i32 noundef %34) #22, !range !426
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1770, ptr noundef nonnull @.str.1) #23
  br label %38

38:                                               ; preds = %37, %33, %27
  %39 = icmp eq ptr %2, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %38
  %41 = load i32, ptr %4, align 8, !tbaa !251
  %42 = or i32 %25, %24
  %43 = and i32 %42, 16777215
  %44 = xor i32 %43, 16777215
  %45 = and i32 %44, %41
  %46 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 10
  %47 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !40
  %49 = load ptr, ptr %1, align 8, !tbaa !246
  %50 = load ptr, ptr %0, align 8, !tbaa !246
  tail call void @insert_in_history_vect(ptr noundef nonnull %46, i32 noundef %48, i32 noundef 1, ptr noundef %49, ptr noundef %50, i32 noundef %45) #22
  br label %51

51:                                               ; preds = %38, %40, %3, %23
  ret void
}

; Function Attrs: optsize
declare i32 @ds_get_speculation_types(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @speculate_expr(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = and i32 %1, 16777215
  %5 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !251
  %7 = tail call i32 @ds_full_merge(i32 noundef %6, i32 noundef %4, ptr noundef null, ptr noundef null) #23
  %8 = load ptr, ptr %0, align 8, !tbaa !246
  %9 = load ptr, ptr %8, align 8, !tbaa !315
  %10 = call i32 @sched_speculate_insn(ptr noundef %9, i32 noundef %7, ptr noundef nonnull %3) #23
  switch i32 %10, label %29 [
    i32 0, label %11
    i32 1, label %14
    i32 -1, label %30
  ]

11:                                               ; preds = %2
  store i32 %7, ptr %5, align 8, !tbaa !251
  %12 = icmp ne i32 %6, %7
  %13 = zext i1 %12 to i32
  br label %30

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8, !tbaa !36
  %16 = call ptr @create_insn_rtx_from_pattern(ptr noundef %15, ptr noundef null) #22
  %17 = call ptr @create_vinsn_from_insn_rtx(ptr noundef %16, i8 noundef zeroext 0) #22
  call void @change_vinsn_in_expr(ptr noundef nonnull %0, ptr noundef %17) #22
  store i32 %7, ptr %5, align 8, !tbaa !251
  %18 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 12
  %19 = load i8, ptr %18, align 1
  %20 = or i8 %19, 1
  store i8 %20, ptr %18, align 1
  %21 = load ptr, ptr %0, align 8, !tbaa !246
  %22 = getelementptr inbounds %struct.vinsn_def, ptr %21, i64 0, i32 1, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !385
  %24 = call i32 @expr_dest_regno(ptr noundef nonnull %0) #22
  %25 = call i32 @bitmap_bit_p(ptr noundef %23, i32 noundef %24) #23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 0, ptr %28, align 8, !tbaa !253
  br label %30

29:                                               ; preds = %2
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1981, ptr noundef nonnull @.str.1) #23
  br label %30

30:                                               ; preds = %2, %27, %14, %29, %11
  %31 = phi i32 [ -1, %29 ], [ %13, %11 ], [ 2, %27 ], [ 1, %14 ], [ %10, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @merge_expr(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !35 {
  %4 = load ptr, ptr %0, align 8, !tbaa !246
  %5 = load ptr, ptr %1, align 8, !tbaa !246
  %6 = tail call zeroext i8 @vinsn_equal_p(ptr noundef %4, ptr noundef %5) #22
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1848, ptr noundef nonnull @.str.1) #23
  br label %9

9:                                                ; preds = %3, %8
  %10 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !251
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !251
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %1, align 8, !tbaa !246
  tail call void @change_vinsn_in_expr(ptr noundef nonnull %0, ptr noundef %18) #22
  br label %19

19:                                               ; preds = %17, %13, %9
  tail call void @merge_expr_data(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #22
  %20 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !248
  %22 = icmp slt i32 %21, 10001
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1858, ptr noundef nonnull @.str.1) #23
  br label %24

24:                                               ; preds = %19, %23
  ret void
}

; Function Attrs: optsize
declare i32 @ds_full_merge(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @sched_speculate_insn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_insn_rtx_from_pattern(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5516, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %2, %7
  tail call void @start_sequence() #23
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = tail call ptr @emit_insn(ptr noundef nonnull %0) #23
  br label %24

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call ptr @emit_debug_insn(ptr noundef nonnull %0) #23
  br label %24

18:                                               ; preds = %12
  %19 = tail call ptr @emit_jump_insn(ptr noundef nonnull %0) #23
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %1, ptr %20, align 8, !tbaa !40
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !40
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !40
  br label %24

24:                                               ; preds = %16, %18, %10
  %25 = phi ptr [ %11, %10 ], [ %17, %16 ], [ %19, %18 ]
  tail call void @end_sequence() #23
  tail call void @sched_init_luids(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #23
  tail call void @sched_extend_target() #23
  tail call void @sched_deps_init(i8 noundef zeroext 0) #23
  %26 = tail call fastcc i32 @recog_memoized(ptr noundef %25) #22
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @expr_dest_regno(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call ptr @expr_dest_reg(ptr noundef %0) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2004, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call fastcc i32 @rhs_regno(ptr noundef %2) #22
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @expr_dest_reg(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !246
  %3 = getelementptr inbounds %struct.vinsn_def, ptr %2, i64 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !427
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %4, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 37
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %1
  br label %11

11:                                               ; preds = %6, %10
  %12 = phi ptr [ null, %10 ], [ %4, %6 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !428 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !40
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_unavailable_targets(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !35 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._list_iterator, align 8
  store ptr %0, ptr %4, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %6, ptr noundef nonnull %4, i8 noundef zeroext 0) #22
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %8, ptr noundef nonnull %5) #22, !range !55
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %3, %17
  %12 = load ptr, ptr %5, align 8, !tbaa !36
  %13 = load ptr, ptr %12, align 8, !tbaa !246
  %14 = call ptr @av_set_lookup(ptr noundef %1, ptr noundef %13) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  call fastcc void @set_unavailable_target_for_expr(ptr noundef nonnull %12, ptr noundef %2) #22
  br label %17

17:                                               ; preds = %11, %16
  call fastcc void @_list_iter_next(ptr noundef nonnull %6) #22
  %18 = load ptr, ptr %6, align 8, !tbaa !53
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %19, ptr noundef nonnull %5) #22, !range !55
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %11, !llvm.loop !429

22:                                               ; preds = %17, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_list_iter_start(ptr nocapture noundef writeonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #3 !prof !35 !PGOFuncName !430 {
  store ptr %1, ptr %0, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 1
  store i8 %2, ptr %4, align 8, !tbaa !431
  %5 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 2
  store i8 0, ptr %5, align 1, !tbaa !432
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef zeroext i8 @_list_iter_cond_expr(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 !prof !35 !PGOFuncName !433 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  store ptr %5, ptr %1, align 8, !tbaa !36
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i8 [ 1, %4 ], [ 0, %2 ]
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @av_set_lookup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._list_iterator, align 8
  store ptr %0, ptr %3, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %5, ptr noundef nonnull %3, i8 noundef zeroext 0) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %7, ptr noundef nonnull %4) #22, !range !55
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2, %15
  %11 = load ptr, ptr %4, align 8, !tbaa !36
  %12 = load ptr, ptr %11, align 8, !tbaa !246
  %13 = call zeroext i8 @vinsn_equal_p(ptr noundef %12, ptr noundef %1) #22
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  call fastcc void @_list_iter_next(ptr noundef nonnull %5) #22
  %16 = load ptr, ptr %5, align 8, !tbaa !53
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  %18 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %17, ptr noundef nonnull %4) #22, !range !55
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %10, !llvm.loop !434

20:                                               ; preds = %15, %10, %2
  %21 = phi ptr [ null, %2 ], [ %11, %10 ], [ null, %15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_unavailable_target_for_expr(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !435 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !246
  %6 = getelementptr inbounds %struct.vinsn_def, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !322
  %8 = icmp eq i32 %7, 23
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.vinsn_def, ptr %5, i64 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !427
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %61

15:                                               ; preds = %9
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #22
  %17 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %16) #23
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %61, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8, !tbaa !246
  %21 = getelementptr inbounds %struct.vinsn_def, ptr %20, i64 0, i32 1, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !385
  %23 = getelementptr inbounds %struct.vinsn_def, ptr %20, i64 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !427
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef %24) #22
  %26 = tail call i32 @bitmap_bit_p(ptr noundef %22, i32 noundef %25) #23
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  br i1 %27, label %30, label %29

29:                                               ; preds = %19
  store i8 -1, ptr %28, align 8, !tbaa !253
  br label %61

30:                                               ; preds = %19
  store i8 0, ptr %28, align 8, !tbaa !253
  br label %61

31:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  %32 = getelementptr inbounds %struct.vinsn_def, ptr %5, i64 0, i32 1, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !384
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %33, ptr noundef nonnull %3) #22
  %34 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !55
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31, %42
  %37 = load i32, ptr %3, align 4, !tbaa !100
  %38 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %37) #23
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 0, ptr %41, align 8, !tbaa !253
  br label %45

42:                                               ; preds = %36
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #22
  %43 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !55
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %36, !llvm.loop !436

45:                                               ; preds = %42, %31, %40
  %46 = load ptr, ptr %0, align 8, !tbaa !246
  %47 = getelementptr inbounds %struct.vinsn_def, ptr %46, i64 0, i32 1, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !386
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %48, ptr noundef nonnull %3) #22
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !55
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %45, %57
  %52 = load i32, ptr %3, align 4, !tbaa !100
  %53 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %52) #23
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 0, ptr %56, align 8, !tbaa !253
  br label %60

57:                                               ; preds = %51
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #22
  %58 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !55
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %51, !llvm.loop !437

60:                                               ; preds = %57, %45, %55
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  br label %61

61:                                               ; preds = %9, %15, %30, %29, %60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_list_iter_next(ptr nocapture noundef %0) unnamed_addr #14 !prof !35 !PGOFuncName !438 {
  %2 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !432
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !53
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  store ptr %7, ptr %0, align 8, !tbaa !53
  br label %9

8:                                                ; preds = %1
  store i8 0, ptr %2, align 1, !tbaa !432
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @av_set_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = load ptr, ptr %1, align 8, !tbaa !246
  %4 = load ptr, ptr %3, align 8, !tbaa !315
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = load ptr, ptr @nop_pattern, align 8, !tbaa !36
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2040, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %2, %9
  %11 = tail call fastcc ptr @av_set_add_element(ptr noundef %0) #22
  %12 = getelementptr inbounds %struct._list_node, ptr %11, i64 0, i32 1
  tail call void @copy_expr(ptr noundef nonnull %12, ptr noundef nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @av_set_add_element(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !439 {
  tail call fastcc void @_list_add(ptr noundef %0) #22
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @av_set_iter_remove(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct._list_node, ptr %3, i64 0, i32 1
  tail call void @clear_expr(ptr noundef nonnull %4) #22
  tail call fastcc void @_list_iter_remove(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_list_iter_remove(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !440 {
  %2 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !432
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !431
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 448, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %5, %9
  %11 = load ptr, ptr %0, align 8, !tbaa !53
  tail call fastcc void @_list_remove(ptr noundef %11) #22
  store i8 1, ptr %2, align 1, !tbaa !432
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @merge_with_other_exprs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !35 {
  %4 = load ptr, ptr %0, align 8, !tbaa !36
  %5 = tail call fastcc ptr @av_set_lookup_other_equiv_expr(ptr noundef %4, ptr noundef %2) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._expr, ptr %5, i64 0, i32 11
  store i8 -1, ptr %8, align 8, !tbaa !253
  %9 = getelementptr inbounds %struct._expr, ptr %5, i64 0, i32 2
  store i32 0, ptr %9, align 4, !tbaa !248
  tail call void @merge_expr(ptr noundef nonnull %5, ptr noundef %2, ptr noundef null) #22
  store i32 10000, ptr %9, align 4, !tbaa !248
  tail call void @av_set_iter_remove(ptr noundef %1) #22
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %5, %7 ], [ %2, %3 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @av_set_lookup_other_equiv_expr(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 !prof !35 !PGOFuncName !441 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._list_iterator, align 8
  store ptr %0, ptr %3, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %5, ptr noundef nonnull %3, i8 noundef zeroext 0) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %7, ptr noundef nonnull %4) #22, !range !55
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %2, %18
  %11 = load ptr, ptr %4, align 8, !tbaa !36
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 8, !tbaa !246
  %15 = load ptr, ptr %1, align 8, !tbaa !246
  %16 = call zeroext i8 @vinsn_equal_p(ptr noundef %14, ptr noundef %15) #22
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13, %10
  call fastcc void @_list_iter_next(ptr noundef nonnull %5) #22
  %19 = load ptr, ptr %5, align 8, !tbaa !53
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  %21 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %20, ptr noundef nonnull %4) #22, !range !55
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %10, !llvm.loop !442

23:                                               ; preds = %18, %13, %2
  %24 = phi ptr [ null, %2 ], [ %11, %13 ], [ null, %18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @av_set_is_in_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = tail call ptr @av_set_lookup(ptr noundef %0, ptr noundef %1) #22
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @av_set_copy(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct._list_iterator, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !36
  call fastcc void @_list_iter_start(ptr noundef nonnull %4, ptr noundef nonnull %2, i8 noundef zeroext 0) #22
  %6 = load ptr, ptr %4, align 8, !tbaa !53
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %7, ptr noundef nonnull %3) #22, !range !55
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1, %10
  %11 = load ptr, ptr %3, align 8, !tbaa !36
  call void @av_set_add(ptr noundef nonnull %5, ptr noundef %11) #22
  call fastcc void @_list_iter_next(ptr noundef nonnull %4) #22
  %12 = load ptr, ptr %4, align 8, !tbaa !53
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  %14 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %13, ptr noundef nonnull %3) #22, !range !55
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %10, !llvm.loop !443

16:                                               ; preds = %10
  %17 = load ptr, ptr %5, align 8, !tbaa !36
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @av_set_union_and_clear(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !35 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 1) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %7, ptr noundef nonnull %4) #22, !range !55
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %3, %17
  %11 = load ptr, ptr %1, align 8, !tbaa !36
  %12 = load ptr, ptr %4, align 8, !tbaa !36
  %13 = load ptr, ptr %12, align 8, !tbaa !246
  %14 = tail call ptr @av_set_lookup(ptr noundef %11, ptr noundef %13) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @merge_expr(ptr noundef nonnull %14, ptr noundef nonnull %12, ptr noundef %2) #22
  call void @av_set_iter_remove(ptr noundef nonnull %5) #22
  br label %17

17:                                               ; preds = %16, %10
  call fastcc void @_list_iter_next(ptr noundef nonnull %5) #22
  %18 = load ptr, ptr %5, align 8, !tbaa !53
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %19, ptr noundef nonnull %4) #22, !range !55
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %10, !llvm.loop !444

22:                                               ; preds = %17, %3
  %23 = phi ptr [ %6, %3 ], [ %18, %17 ]
  tail call fastcc void @join_distinct_sets(ptr noundef nonnull %23, ptr noundef %1) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @join_distinct_sets(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !445 {
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2167, ptr noundef nonnull @.str.1) #23
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr %1, align 8, !tbaa !36
  store ptr %7, ptr %0, align 8, !tbaa !36
  store ptr null, ptr %1, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @av_set_union_and_live(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !35 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct._list_iterator, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  store ptr null, ptr %8, align 8, !tbaa !36
  call fastcc void @_list_iter_start(ptr noundef nonnull %7, ptr noundef %0, i8 noundef zeroext 1) #22
  %9 = load ptr, ptr %7, align 8, !tbaa !53
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %10, ptr noundef nonnull %6) #22, !range !55
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %58, label %13

13:                                               ; preds = %5, %53
  %14 = load ptr, ptr %6, align 8, !tbaa !36
  %15 = load ptr, ptr %14, align 8, !tbaa !246
  %16 = tail call fastcc ptr @av_set_lookup_and_remove(ptr noundef %1, ptr noundef %15) #22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %52, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 8, !tbaa !246
  %20 = getelementptr inbounds %struct.vinsn_def, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !322
  %22 = icmp eq i32 %21, 23
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.vinsn_def, ptr %19, i64 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !427
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = tail call i32 @expr_dest_regno(ptr noundef nonnull %14) #22
  br label %31

31:                                               ; preds = %23, %29
  %32 = phi i32 [ %30, %29 ], [ -1, %23 ]
  %33 = load ptr, ptr %16, align 8, !tbaa !246
  %34 = getelementptr inbounds %struct.vinsn_def, ptr %33, i64 0, i32 1, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !427
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = tail call i32 @expr_dest_regno(ptr noundef nonnull %16) #22
  br label %41

41:                                               ; preds = %31, %39
  %42 = phi i32 [ %40, %39 ], [ -1, %31 ]
  %43 = icmp eq i32 %32, %42
  br i1 %43, label %51, label %49

44:                                               ; preds = %18
  %45 = load ptr, ptr %19, align 8, !tbaa !315
  %46 = load ptr, ptr %16, align 8, !tbaa !246
  %47 = load ptr, ptr %46, align 8, !tbaa !315
  %48 = icmp eq ptr %45, %47
  br i1 %48, label %51, label %49

49:                                               ; preds = %44, %41
  %50 = getelementptr inbounds %struct._expr, ptr %16, i64 0, i32 11
  store i8 -1, ptr %50, align 8, !tbaa !253
  br label %51

51:                                               ; preds = %49, %41, %44
  tail call void @merge_expr(ptr noundef nonnull %16, ptr noundef nonnull %14, ptr noundef %4) #22
  call fastcc void @av_set_add_nocopy(ptr noundef nonnull %8, ptr noundef nonnull %16) #22
  call void @av_set_iter_remove(ptr noundef nonnull %7) #22
  br label %53

52:                                               ; preds = %13
  tail call fastcc void @set_unavailable_target_for_expr(ptr noundef nonnull %14, ptr noundef %3) #22
  br label %53

53:                                               ; preds = %52, %51
  call fastcc void @_list_iter_next(ptr noundef nonnull %7) #22
  %54 = load ptr, ptr %7, align 8, !tbaa !53
  %55 = load ptr, ptr %54, align 8, !tbaa !36
  %56 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %55, ptr noundef nonnull %6) #22, !range !55
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %13, !llvm.loop !446

58:                                               ; preds = %53, %5
  %59 = phi ptr [ %9, %5 ], [ %54, %53 ]
  call fastcc void @_list_iter_start(ptr noundef nonnull %7, ptr noundef %1, i8 noundef zeroext 0) #22
  %60 = load ptr, ptr %7, align 8, !tbaa !53
  %61 = load ptr, ptr %60, align 8, !tbaa !36
  %62 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %61, ptr noundef nonnull %6) #22, !range !55
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %58, %64
  %65 = load ptr, ptr %6, align 8, !tbaa !36
  tail call fastcc void @set_unavailable_target_for_expr(ptr noundef %65, ptr noundef %2) #22
  call fastcc void @_list_iter_next(ptr noundef nonnull %7) #22
  %66 = load ptr, ptr %7, align 8, !tbaa !53
  %67 = load ptr, ptr %66, align 8, !tbaa !36
  %68 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %67, ptr noundef nonnull %6) #22, !range !55
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %64, !llvm.loop !447

70:                                               ; preds = %64, %58
  %71 = phi ptr [ %60, %58 ], [ %66, %64 ]
  call fastcc void @join_distinct_sets(ptr noundef nonnull %71, ptr noundef nonnull %8) #22
  tail call fastcc void @join_distinct_sets(ptr noundef nonnull %59, ptr noundef %1) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @av_set_lookup_and_remove(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !448 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 1) #22
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %6, ptr noundef nonnull %3) #22, !range !55
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2, %15
  %10 = load ptr, ptr %3, align 8, !tbaa !36
  %11 = load ptr, ptr %10, align 8, !tbaa !246
  %12 = tail call zeroext i8 @vinsn_equal_p(ptr noundef %11, ptr noundef %1) #22
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  call fastcc void @_list_iter_remove_nofree(ptr noundef nonnull %4) #22
  br label %20

15:                                               ; preds = %9
  call fastcc void @_list_iter_next(ptr noundef nonnull %4) #22
  %16 = load ptr, ptr %4, align 8, !tbaa !53
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  %18 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %17, ptr noundef nonnull %3) #22, !range !55
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !449

20:                                               ; preds = %15, %2, %14
  %21 = phi ptr [ %10, %14 ], [ null, %2 ], [ null, %15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @av_set_add_nocopy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !35 !PGOFuncName !450 {
  %3 = tail call fastcc ptr @av_set_add_element(ptr noundef %0) #22
  %4 = getelementptr inbounds %struct._list_node, ptr %3, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !451
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_list_iter_remove_nofree(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !452 {
  %2 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !432
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !431
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 456, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %5, %9
  %11 = load ptr, ptr %0, align 8, !tbaa !53
  tail call fastcc void @_list_remove_nofree(ptr noundef %11) #22
  store i8 1, ptr %2, align 1, !tbaa !432
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_list_remove_nofree(ptr nocapture noundef %0) unnamed_addr #14 !prof !35 !PGOFuncName !453 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  store ptr %3, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @av_set_leave_one_nonspec(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #22
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %5, ptr noundef nonnull %2) #22, !range !55
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1, %17
  %9 = phi i8 [ %18, %17 ], [ 0, %1 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !36
  %11 = getelementptr inbounds %struct._expr, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !251
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = icmp eq i8 %9, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  call void @av_set_iter_remove(ptr noundef nonnull %3) #22
  br label %17

17:                                               ; preds = %14, %8, %16
  %18 = phi i8 [ %9, %8 ], [ 1, %16 ], [ 1, %14 ]
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #22
  %19 = load ptr, ptr %3, align 8, !tbaa !53
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  %21 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %20, ptr noundef nonnull %2) #22, !range !55
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %8, !llvm.loop !454

23:                                               ; preds = %17, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @av_set_element(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._list_iterator, align 8
  store ptr %0, ptr %3, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %5, ptr noundef nonnull %3, i8 noundef zeroext 0) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %7, ptr noundef nonnull %4) #22, !range !55
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %2, %15
  %11 = phi i32 [ %16, %15 ], [ %1, %2 ]
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 8, !tbaa !36
  br label %22

15:                                               ; preds = %10
  %16 = add nsw i32 %11, -1
  call fastcc void @_list_iter_next(ptr noundef nonnull %5) #22
  %17 = load ptr, ptr %5, align 8, !tbaa !53
  %18 = load ptr, ptr %17, align 8, !tbaa !36
  %19 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %18, ptr noundef nonnull %4) #22, !range !55
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %10, !llvm.loop !455

21:                                               ; preds = %15, %2
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2296, ptr noundef nonnull @.str.1) #23
  br label %22

22:                                               ; preds = %21, %13
  %23 = phi ptr [ %14, %13 ], [ null, %21 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @av_set_substract_cond_branches(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca %struct._list_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 1) #22
  %4 = load ptr, ptr %2, align 8, !tbaa !53
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %5, ptr noundef nonnull %3) #22, !range !55
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %3, align 8, !tbaa !36
  %10 = load ptr, ptr %9, align 8, !tbaa !246
  %11 = tail call zeroext i8 @vinsn_cond_branch_p(ptr noundef %10) #22
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  call void @av_set_iter_remove(ptr noundef nonnull %2) #22
  br label %14

14:                                               ; preds = %8, %13
  call fastcc void @_list_iter_next(ptr noundef nonnull %2) #22
  %15 = load ptr, ptr %2, align 8, !tbaa !53
  %16 = load ptr, ptr %15, align 8, !tbaa !36
  %17 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %16, ptr noundef nonnull %3) #22, !range !55
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !llvm.loop !456

19:                                               ; preds = %14, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @av_set_split_usefulness(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #17 !prof !35 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._list_iterator, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 0) #22
  %7 = load ptr, ptr %5, align 8, !tbaa !53
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %8, ptr noundef nonnull %6) #22, !range !55
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, 0
  br label %13

13:                                               ; preds = %11, %20
  %14 = load ptr, ptr %6, align 8, !tbaa !36
  br i1 %12, label %20, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct._expr, ptr %14, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !248
  %18 = mul nsw i32 %17, %1
  %19 = sdiv i32 %18, %2
  br label %20

20:                                               ; preds = %13, %15
  %21 = phi i32 [ %19, %15 ], [ 0, %13 ]
  %22 = getelementptr inbounds %struct._expr, ptr %14, i64 0, i32 2
  store i32 %21, ptr %22, align 4, !tbaa !248
  call fastcc void @_list_iter_next(ptr noundef nonnull %5) #22
  %23 = load ptr, ptr %5, align 8, !tbaa !53
  %24 = load ptr, ptr %23, align 8, !tbaa !36
  %25 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %24, ptr noundef nonnull %6) #22, !range !55
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %13, !llvm.loop !457

27:                                               ; preds = %20, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @av_set_intersect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = alloca %struct._list_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #22
  %5 = load ptr, ptr %3, align 8, !tbaa !53
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %6, ptr noundef nonnull %4) #22, !range !55
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2, %15
  %10 = load ptr, ptr %4, align 8, !tbaa !36
  %11 = load ptr, ptr %10, align 8, !tbaa !246
  %12 = tail call ptr @av_set_lookup(ptr noundef %1, ptr noundef %11) #22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  call void @av_set_iter_remove(ptr noundef nonnull %3) #22
  br label %15

15:                                               ; preds = %9, %14
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #22
  %16 = load ptr, ptr %3, align 8, !tbaa !53
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  %18 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %17, ptr noundef nonnull %4) #22, !range !55
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !458

20:                                               ; preds = %15, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_data_for_scheduled_insn(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call fastcc zeroext i8 @first_time_insn_init(ptr noundef %0) #22, !range !55
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2778, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @s_i_d, align 8
  %7 = load ptr, ptr @sched_luids, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !40
  %10 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %7, i32 noundef %9) #22
  %11 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %6, i32 noundef %10) #22
  %12 = getelementptr inbounds %struct._sel_insn_data, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !302
  %14 = icmp eq ptr %13, null
  br i1 %14, label %73, label %15

15:                                               ; preds = %5
  tail call void @bitmap_obstack_free(ptr noundef nonnull %13) #23
  %16 = load ptr, ptr @s_i_d, align 8
  %17 = load ptr, ptr @sched_luids, align 8
  %18 = load i32, ptr %8, align 8, !tbaa !40
  %19 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %17, i32 noundef %18) #22
  %20 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %16, i32 noundef %19) #22
  %21 = getelementptr inbounds %struct._sel_insn_data, ptr %20, i64 0, i32 4
  store ptr null, ptr %21, align 8, !tbaa !302
  %22 = load i32, ptr %8, align 8, !tbaa !40
  %23 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %17, i32 noundef %22) #22
  %24 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %16, i32 noundef %23) #22
  %25 = getelementptr inbounds %struct._sel_insn_data, ptr %24, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !303
  tail call void @bitmap_obstack_free(ptr noundef %26) #23
  %27 = load ptr, ptr @s_i_d, align 8
  %28 = load ptr, ptr @sched_luids, align 8
  %29 = load i32, ptr %8, align 8, !tbaa !40
  %30 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %28, i32 noundef %29) #22
  %31 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %27, i32 noundef %30) #22
  %32 = getelementptr inbounds %struct._sel_insn_data, ptr %31, i64 0, i32 5
  store ptr null, ptr %32, align 8, !tbaa !303
  %33 = load i32, ptr %8, align 8, !tbaa !40
  %34 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %28, i32 noundef %33) #22
  %35 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %27, i32 noundef %34) #22
  %36 = getelementptr inbounds %struct._sel_insn_data, ptr %35, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !304
  tail call void @htab_delete(ptr noundef %37) #23
  %38 = load ptr, ptr @s_i_d, align 8
  %39 = load ptr, ptr @sched_luids, align 8
  %40 = load i32, ptr %8, align 8, !tbaa !40
  %41 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %40) #22
  %42 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %38, i32 noundef %41) #22
  %43 = getelementptr inbounds %struct._sel_insn_data, ptr %42, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !390
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %15
  tail call void @bitmap_obstack_free(ptr noundef nonnull %44) #23
  %47 = load ptr, ptr @s_i_d, align 8
  %48 = load ptr, ptr @sched_luids, align 8
  %49 = load i32, ptr %8, align 8, !tbaa !40
  %50 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %48, i32 noundef %49) #22
  %51 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %47, i32 noundef %50) #22
  %52 = getelementptr inbounds %struct._sel_insn_data, ptr %51, i64 0, i32 6
  store ptr null, ptr %52, align 8, !tbaa !390
  %53 = load i32, ptr %8, align 8, !tbaa !40
  br label %54

54:                                               ; preds = %46, %15
  %55 = phi i32 [ %53, %46 ], [ %40, %15 ]
  %56 = phi ptr [ %48, %46 ], [ %39, %15 ]
  %57 = phi ptr [ %47, %46 ], [ %38, %15 ]
  %58 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %56, i32 noundef %55) #22
  %59 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %57, i32 noundef %58) #22
  %60 = getelementptr inbounds %struct._sel_insn_data, ptr %59, i64 0, i32 8
  tail call void @free_deps(ptr noundef nonnull %60) #23
  %61 = load ptr, ptr @s_i_d, align 8
  %62 = load ptr, ptr @sched_luids, align 8
  %63 = load i32, ptr %8, align 8, !tbaa !40
  %64 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %62, i32 noundef %63) #22
  %65 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %61, i32 noundef %64) #22
  %66 = getelementptr inbounds %struct._sel_insn_data, ptr %65, i64 0, i32 4
  store ptr null, ptr %66, align 8, !tbaa !302
  %67 = load i32, ptr %8, align 8, !tbaa !40
  %68 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %62, i32 noundef %67) #22
  %69 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %61, i32 noundef %68) #22
  %70 = getelementptr inbounds %struct._sel_insn_data, ptr %69, i64 0, i32 8, i32 18
  %71 = load i8, ptr %70, align 4
  %72 = and i8 %71, -2
  store i8 %72, ptr %70, align 4
  br label %73

73:                                               ; preds = %5, %54
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_init_global_and_expr(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca %struct.sched_scan_info_def, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @__const.sel_init_global_and_expr.ssi, i64 32, i1 false)
  call void @sched_scan(ptr noundef nonnull %2, ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @init_global_and_expr_for_bb(ptr noundef %0) #0 !prof !35 !PGOFuncName !459 {
  %2 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %0) #22, !range !55
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call fastcc void @invalidate_av_set(ptr noundef %0) #22
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @init_global_and_expr_for_insn(ptr noundef %0) #0 !prof !35 !PGOFuncName !460 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %9 [
    i16 12, label %118
    i16 13, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  store ptr null, ptr @init_global_data.0, align 8, !tbaa !461
  br label %118

9:                                                ; preds = %1
  %10 = and i32 %2, 65535
  %11 = add nsw i32 %10, -7
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %15, label %13

13:                                               ; preds = %4, %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2843, ptr noundef nonnull @.str.1) #23
  %14 = load i32, ptr %0, align 8
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi i32 [ %2, %9 ], [ %14, %13 ]
  %17 = and i32 %16, 268435456
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @init_global_data.0, align 8, !tbaa !461
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @s_i_d, align 8
  %24 = load ptr, ptr @sched_luids, align 8
  %25 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !40
  %27 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %24, i32 noundef %26) #22
  %28 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %23, i32 noundef %27) #22
  %29 = getelementptr inbounds %struct._sel_insn_data, ptr %28, i64 0, i32 9
  store ptr %0, ptr %29, align 8, !tbaa !463
  br label %30

30:                                               ; preds = %15, %19, %22
  %31 = phi ptr [ %0, %22 ], [ %0, %19 ], [ null, %15 ]
  store ptr %31, ptr @init_global_data.0, align 8, !tbaa !461
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !40
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 16
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load ptr, ptr @sched_luids, align 8
  br label %44

40:                                               ; preds = %30
  %41 = tail call i32 @asm_noperands(ptr noundef nonnull %34) #23
  %42 = icmp sgt i32 %41, -1
  %43 = load ptr, ptr @sched_luids, align 8
  br i1 %42, label %44, label %53

44:                                               ; preds = %38, %40
  %45 = phi ptr [ %39, %38 ], [ %43, %40 ]
  %46 = load ptr, ptr @s_i_d, align 8
  %47 = load i32, ptr %32, align 8, !tbaa !40
  %48 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %45, i32 noundef %47) #22
  %49 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %46, i32 noundef %48) #22
  %50 = getelementptr inbounds %struct._sel_insn_data, ptr %49, i64 0, i32 13
  %51 = load i8, ptr %50, align 4
  %52 = or i8 %51, 2
  store i8 %52, ptr %50, align 4
  br label %53

53:                                               ; preds = %40, %44
  %54 = phi ptr [ %45, %44 ], [ %43, %40 ]
  %55 = load ptr, ptr @h_d_i_d, align 8
  %56 = load i32, ptr %32, align 8, !tbaa !40
  %57 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %54, i32 noundef %56) #22
  %58 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %55, i32 noundef %57) #22
  %59 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %58, i64 0, i32 7
  %60 = load i8, ptr %59, align 8
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %53
  %64 = load ptr, ptr @s_i_d, align 8
  %65 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %64, i32 noundef %57) #22
  %66 = getelementptr inbounds %struct._sel_insn_data, ptr %65, i64 0, i32 13
  %67 = load i8, ptr %66, align 4
  %68 = and i8 %67, 2
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %63
  %71 = load i32, ptr %0, align 8
  %72 = and i32 %71, 268435456
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = tail call i32 @prologue_epilogue_contains(ptr noundef nonnull %0) #23
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !100
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %0) #23
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80, %77
  %84 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %0) #23
  %85 = icmp ne i8 %84, 0
  %86 = zext i1 %85 to i8
  br label %87

87:                                               ; preds = %83, %53, %63, %70, %74, %80
  %88 = phi i8 [ 1, %80 ], [ 1, %74 ], [ 1, %70 ], [ 1, %63 ], [ 1, %53 ], [ %86, %83 ]
  %89 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 33), align 8, !tbaa !325
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = tail call i32 %89(ptr noundef nonnull %0) #23
  %93 = tail call i32 @ds_get_max_dep_weak(i32 noundef %92) #23
  br label %94

94:                                               ; preds = %87, %91
  %95 = phi i32 [ %93, %91 ], [ 0, %87 ]
  %96 = load ptr, ptr @s_i_d, align 8
  %97 = load ptr, ptr @sched_luids, align 8
  %98 = load i32, ptr %32, align 8, !tbaa !40
  %99 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %97, i32 noundef %98) #22
  %100 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %96, i32 noundef %99) #22
  %101 = tail call fastcc ptr @vinsn_create(ptr noundef nonnull %0, i8 noundef zeroext %88) #22
  %102 = load ptr, ptr @h_i_d, align 8
  %103 = load i32, ptr %32, align 8, !tbaa !40
  %104 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %102, i32 noundef %103) #22
  %105 = getelementptr inbounds %struct._haifa_insn_data, ptr %104, i64 0, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !464
  %107 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !40
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 9
  %110 = load i32, ptr %109, align 8, !tbaa !128
  %111 = load ptr, ptr @h_d_i_d, align 8
  %112 = load ptr, ptr @sched_luids, align 8
  %113 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %112, i32 noundef %103) #22
  %114 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %111, i32 noundef %113) #22
  %115 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %114, i64 0, i32 7
  %116 = load i8, ptr %115, align 8
  %117 = and i8 %116, 1
  tail call fastcc void @init_expr(ptr noundef nonnull %100, ptr noundef %101, i32 noundef 0, i32 noundef 10000, i32 noundef %106, i32 noundef 0, i32 noundef %110, i32 noundef %95, i32 noundef 0, i32 noundef 0, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %117) #22
  tail call fastcc void @init_first_time_insn_data(ptr noundef nonnull %0) #22
  br label %118

118:                                              ; preds = %1, %94, %8
  ret void
}

; Function Attrs: optsize
declare void @sched_scan(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @prologue_epilogue_contains(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_haifa_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #7 !prof !35 !PGOFuncName !466 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_finish_global_and_expr() local_unnamed_addr #0 !prof !35 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.sched_scan_info_def, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  %3 = load i32, ptr @current_nr_blocks, align 4, !tbaa !100
  %4 = tail call fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %3) #22
  store ptr %4, ptr %1, align 8, !tbaa !36
  %5 = load i32, ptr @current_nr_blocks, align 4, !tbaa !100
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %0, %7
  %8 = phi i64 [ %22, %7 ], [ 0, %0 ]
  %9 = load ptr, ptr @cfun, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !111
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !467
  %14 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !36
  %15 = load ptr, ptr @ebb_head, align 8, !tbaa !36
  %16 = getelementptr inbounds i32, ptr %15, i64 %8
  %17 = load i32, ptr %16, align 4, !tbaa !100
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %14, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !100
  %21 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %13, i32 noundef %20) #22
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %4, ptr noundef %21) #22
  %22 = add nuw nsw i64 %8, 1
  %23 = load i32, ptr @current_nr_blocks, align 4, !tbaa !100
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %7, label %26, !llvm.loop !468

26:                                               ; preds = %7, %0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @__const.sel_finish_global_and_expr.ssi, i64 32, i1 false)
  call void @sched_scan(ptr noundef nonnull %2, ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %1) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  call fastcc void @finish_insns() #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !469 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !35 !PGOFuncName !470 {
  %3 = load i32, ptr %0, align 8, !tbaa !471
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !471
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !35 !PGOFuncName !473 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @finish_global_and_expr_for_bb(ptr nocapture noundef readonly %0) #0 !prof !35 !PGOFuncName !474 {
  %2 = load ptr, ptr @sel_region_bb_info, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !128
  %5 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %2, i32 noundef %4) #22
  %6 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %5, i64 0, i32 1
  tail call void @av_set_clear(ptr noundef nonnull %6) #22
  %7 = load ptr, ptr @sel_region_bb_info, align 8
  %8 = load i32, ptr %3, align 8, !tbaa !128
  %9 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %7, i32 noundef %8) #22
  %10 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %9, i64 0, i32 2
  store i32 0, ptr %10, align 8, !tbaa !277
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @finish_global_and_expr_insn(ptr nocapture noundef readonly %0) #0 !prof !35 !PGOFuncName !475 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %8 [
    i16 12, label %36
    i16 13, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %36, label %12

8:                                                ; preds = %1
  %9 = and i32 %2, 65535
  %10 = add nsw i32 %9, -7
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %13, label %12

12:                                               ; preds = %4, %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2929, ptr noundef nonnull @.str.1) #23
  br label %13

13:                                               ; preds = %8, %12
  %14 = load ptr, ptr @sched_luids, align 8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !40
  %17 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %14, i32 noundef %16) #22
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  tail call fastcc void @free_first_time_insn_data(ptr noundef nonnull %0) #22
  %20 = load ptr, ptr @s_i_d, align 8
  %21 = load ptr, ptr @sched_luids, align 8
  %22 = load i32, ptr %15, align 8, !tbaa !40
  %23 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %21, i32 noundef %22) #22
  %24 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %20, i32 noundef %23) #22
  %25 = getelementptr inbounds %struct._sel_insn_data, ptr %24, i64 0, i32 1
  store i32 0, ptr %25, align 8, !tbaa !476
  %26 = load ptr, ptr @h_d_i_d, align 8
  %27 = load i32, ptr %15, align 8, !tbaa !40
  %28 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %21, i32 noundef %27) #22
  %29 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %26, i32 noundef %28) #22
  %30 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %29, i64 0, i32 7
  %31 = load i8, ptr %30, align 8
  %32 = and i8 %31, -2
  store i8 %32, ptr %30, align 8
  %33 = load i32, ptr %15, align 8, !tbaa !40
  %34 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %21, i32 noundef %33) #22
  %35 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %20, i32 noundef %34) #22
  tail call void @clear_expr(ptr noundef nonnull %35) #22
  br label %36

36:                                               ; preds = %1, %4, %19, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #9 !prof !35 !PGOFuncName !477 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_insns() unnamed_addr #0 !prof !35 !PGOFuncName !478 {
  %1 = load ptr, ptr @s_i_d, align 8
  %2 = tail call fastcc i32 @VEC_sel_insn_data_def_base_length(ptr noundef %1) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %36, label %4

4:                                                ; preds = %0, %31
  %5 = phi ptr [ %33, %31 ], [ %1, %0 ]
  %6 = phi i32 [ %32, %31 ], [ 0, %0 ]
  %7 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %5, i32 noundef %6) #22
  %8 = getelementptr inbounds %struct._sel_insn_data, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !300
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @return_regset_to_pool(ptr noundef nonnull %9) #22
  br label %12

12:                                               ; preds = %11, %4
  %13 = getelementptr inbounds %struct._sel_insn_data, ptr %7, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !302
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  tail call void @bitmap_obstack_free(ptr noundef nonnull %14) #23
  store ptr null, ptr %13, align 8, !tbaa !302
  %17 = getelementptr inbounds %struct._sel_insn_data, ptr %7, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !303
  tail call void @bitmap_obstack_free(ptr noundef %18) #23
  store ptr null, ptr %17, align 8, !tbaa !303
  %19 = getelementptr inbounds %struct._sel_insn_data, ptr %7, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !304
  tail call void @htab_delete(ptr noundef %20) #23
  %21 = getelementptr inbounds %struct._sel_insn_data, ptr %7, i64 0, i32 8
  tail call void @free_deps(ptr noundef nonnull %21) #23
  br label %22

22:                                               ; preds = %16, %12
  %23 = load ptr, ptr %7, align 8, !tbaa !371
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  tail call void @clear_expr(ptr noundef nonnull %7) #22
  %26 = load ptr, ptr @h_d_i_d, align 8
  %27 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %26, i32 noundef %6) #22
  %28 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %27, i64 0, i32 7
  %29 = load i8, ptr %28, align 8
  %30 = and i8 %29, -2
  store i8 %30, ptr %28, align 8
  br label %31

31:                                               ; preds = %25, %22
  %32 = add nuw i32 %6, 1
  %33 = load ptr, ptr @s_i_d, align 8
  %34 = tail call fastcc i32 @VEC_sel_insn_data_def_base_length(ptr noundef %33) #22
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %4, label %36, !llvm.loop !479

36:                                               ; preds = %31, %0
  tail call fastcc void @VEC_sel_insn_data_def_heap_free() #22
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_first_time_insn_data(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !480 {
  %2 = tail call fastcc zeroext i8 @first_time_insn_init(ptr noundef %0) #22, !range !55
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2803, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  tail call void @free_data_for_scheduled_insn(ptr noundef %0) #22
  %6 = load ptr, ptr @s_i_d, align 8
  %7 = load ptr, ptr @sched_luids, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !40
  %10 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %7, i32 noundef %9) #22
  %11 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %6, i32 noundef %10) #22
  %12 = getelementptr inbounds %struct._sel_insn_data, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !300
  tail call void @return_regset_to_pool(ptr noundef %13) #22
  %14 = load ptr, ptr @s_i_d, align 8
  %15 = load ptr, ptr @sched_luids, align 8
  %16 = load i32, ptr %8, align 8, !tbaa !40
  %17 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %16) #22
  %18 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %14, i32 noundef %17) #22
  %19 = getelementptr inbounds %struct._sel_insn_data, ptr %18, i64 0, i32 3
  store ptr null, ptr %19, align 8, !tbaa !300
  %20 = load i32, ptr %8, align 8, !tbaa !40
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %20) #22
  %22 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %14, i32 noundef %21) #22
  %23 = getelementptr inbounds %struct._sel_insn_data, ptr %22, i64 0, i32 13
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, -2
  store i8 %25, ptr %23, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_sel_insn_data_def_heap_free() unnamed_addr #9 !prof !35 !PGOFuncName !481 {
  %1 = load ptr, ptr @s_i_d, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #22
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @s_i_d, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_mark_hard_insn(ptr noundef readnone %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @has_dependence_data, align 8, !tbaa !482
  %3 = icmp ne ptr %2, null
  %4 = load ptr, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 2), align 8
  %5 = icmp ne ptr %4, null
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !484
  %9 = load ptr, ptr %8, align 8, !tbaa !315
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3173, ptr noundef nonnull @.str.1) #23
  br label %12

12:                                               ; preds = %7, %11
  %13 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !485
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3174, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %12, %15
  br label %17

17:                                               ; preds = %16, %17
  %18 = phi i64 [ %22, %17 ], [ 0, %16 ]
  %19 = getelementptr inbounds %struct.anon.3, ptr @has_dependence_data, i64 0, i32 4, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !100
  %21 = and i32 %20, -16777216
  store i32 %21, ptr %19, align 4, !tbaa !100
  %22 = add nuw nsw i64 %18, 1
  %23 = icmp eq i64 %22, 3
  br i1 %23, label %24, label %17, !llvm.loop !486

24:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @sel_clear_has_dependence() local_unnamed_addr #15 !prof !35 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 4, i64 0), i8 0, i64 12, i1 false), !tbaa !100
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @has_dependence_p(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !35 {
  %4 = load ptr, ptr @s_i_d, align 8
  %5 = load ptr, ptr @sched_luids, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !40
  %8 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %5, i32 noundef %7) #22
  %9 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %4, i32 noundef %8) #22
  %10 = load ptr, ptr %9, align 8, !tbaa !371
  %11 = getelementptr inbounds %struct.vinsn_def, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !322
  %13 = icmp eq i32 %12, 36
  br i1 %13, label %59, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct._sel_insn_data, ptr %9, i64 0, i32 8
  %16 = getelementptr inbounds %struct._sel_insn_data, ptr %9, i64 0, i32 8, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !487
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @init_deps_reg_last(ptr noundef nonnull %15) #23
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds %struct._sel_insn_data, ptr %9, i64 0, i32 8, i32 18
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  store ptr null, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 2), align 8, !tbaa !488
  tail call void @advance_deps_context(ptr noundef nonnull %15, ptr noundef nonnull %1) #22
  %26 = load i8, ptr %21, align 4
  %27 = or i8 %26, 1
  store i8 %27, ptr %21, align 4
  br label %28

28:                                               ; preds = %25, %20
  store i32 3, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !485
  store ptr %1, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 2), align 8, !tbaa !488
  %29 = load ptr, ptr %0, align 8, !tbaa !246
  store ptr %29, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !484
  store ptr %15, ptr @has_dependence_data, align 8, !tbaa !482
  tail call void @sel_clear_has_dependence() #22
  tail call fastcc void @setup_has_dependence_sched_deps_info() #22
  %30 = load ptr, ptr %0, align 8, !tbaa !246
  %31 = load ptr, ptr %30, align 8, !tbaa !315
  tail call void @deps_analyze_insn(ptr noundef nonnull %15, ptr noundef %31) #23
  store ptr null, ptr @has_dependence_data, align 8, !tbaa !482
  %32 = getelementptr inbounds %struct._sel_insn_data, ptr %9, i64 0, i32 8, i32 17
  %33 = load i32, ptr %32, align 8, !tbaa !489
  switch i32 %33, label %37 [
    i32 2, label %35
    i32 1, label %34
  ]

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %28, %34
  %36 = phi i32 [ 67108864, %34 ], [ 16777216, %28 ]
  store i32 %36, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 4), align 8, !tbaa !100
  br label %37

37:                                               ; preds = %35, %28
  %38 = load ptr, ptr %0, align 8, !tbaa !246
  %39 = getelementptr inbounds %struct.vinsn_def, ptr %38, i64 0, i32 1, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !427
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %40, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 43
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef nonnull %1) #22, !range !55
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 67108864, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 4), align 8, !tbaa !100
  br label %50

50:                                               ; preds = %49, %46, %42, %37
  store ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 4), ptr %2, align 8, !tbaa !36
  br label %51

51:                                               ; preds = %50, %51
  %52 = phi i64 [ 0, %50 ], [ %57, %51 ]
  %53 = phi i32 [ 0, %50 ], [ %56, %51 ]
  %54 = getelementptr inbounds %struct.anon.3, ptr @has_dependence_data, i64 0, i32 4, i64 %52
  %55 = load i32, ptr %54, align 4, !tbaa !100
  %56 = tail call i32 @ds_full_merge(i32 noundef %53, i32 noundef %55, ptr noundef null, ptr noundef null) #23
  %57 = add nuw nsw i64 %52, 1
  %58 = icmp eq i64 %57, 3
  br i1 %58, label %59, label %51, !llvm.loop !490

59:                                               ; preds = %51, %3
  %60 = phi i32 [ 0, %3 ], [ %56, %51 ]
  ret i32 %60
}

; Function Attrs: optsize
declare void @init_deps_reg_last(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @setup_has_dependence_sched_deps_info() unnamed_addr #18 !prof !35 !PGOFuncName !491 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) @has_dependence_sched_deps_info, ptr noundef nonnull align 8 dereferenceable(104) @const_has_dependence_sched_deps_info, i64 104, i1 false)
  %1 = load ptr, ptr @spec_info, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  store i8 4, ptr getelementptr inbounds (%struct.sched_deps_info_def, ptr @has_dependence_sched_deps_info, i64 0, i32 12), align 8
  br label %4

4:                                                ; preds = %3, %0
  store ptr @has_dependence_sched_deps_info, ptr @sched_deps_info, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @sel_insn_is_speculation_check(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !35 {
  %2 = load ptr, ptr @s_i_d, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @sched_luids, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !40
  %8 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %5, i32 noundef %7) #22
  %9 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef nonnull %2, i32 noundef %8) #22
  %10 = getelementptr inbounds %struct._sel_insn_data, ptr %9, i64 0, i32 12
  %11 = load i32, ptr %10, align 8, !tbaa !492
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %4, %1
  %15 = phi i8 [ 0, %1 ], [ %13, %4 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_start_insn(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !493 {
  %2 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !485
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3006, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  store i32 0, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !485
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_finish_insn() #0 !prof !35 !PGOFuncName !494 {
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !485
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3015, ptr noundef nonnull @.str.1) #23
  br label %4

4:                                                ; preds = %0, %3
  store i32 3, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !485
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_start_lhs(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !495 {
  %2 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !485
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3024, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !484
  %7 = getelementptr inbounds %struct.vinsn_def, ptr %6, i64 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !427
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store i32 1, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !485
  br label %11

11:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @has_dependence_finish_lhs() #15 !prof !35 !PGOFuncName !496 {
  store i32 0, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !485
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_start_rhs(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !497 {
  %2 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !485
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3041, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !484
  %7 = getelementptr inbounds %struct.vinsn_def, ptr %6, i64 0, i32 1, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !323
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store i32 2, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !485
  br label %11

11:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_finish_rhs() #0 !prof !35 !PGOFuncName !498 {
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8
  %2 = and i32 %1, -3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3052, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %0, %4
  store i32 0, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !485
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_note_reg_set(i32 noundef %0) #0 !prof !35 !PGOFuncName !499 {
  %2 = load ptr, ptr @has_dependence_data, align 8, !tbaa !482
  %3 = getelementptr inbounds %struct.deps, ptr %2, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !487
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.deps_reg, ptr %4, i64 %5
  %7 = load ptr, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 2), align 8, !tbaa !488
  %8 = load ptr, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !484
  %9 = load ptr, ptr %8, align 8, !tbaa !315
  %10 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %7, ptr noundef %9) #23
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !485
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.anon.3, ptr @has_dependence_data, i64 0, i32 4, i64 %14
  %16 = getelementptr inbounds %struct.deps_reg, ptr %4, i64 %5, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !500
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.deps_reg, ptr %4, i64 %5, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !502
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %12
  %24 = load i32, ptr %15, align 4, !tbaa !100
  %25 = and i32 %24, -50331648
  %26 = or disjoint i32 %25, 33554432
  store i32 %26, ptr %15, align 4, !tbaa !100
  br label %27

27:                                               ; preds = %23, %19
  %28 = load ptr, ptr %6, align 8, !tbaa !503
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %15, align 4, !tbaa !100
  %32 = and i32 %31, -83886080
  %33 = or disjoint i32 %32, 67108864
  store i32 %33, ptr %15, align 4, !tbaa !100
  br label %34

34:                                               ; preds = %27, %30, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_note_reg_clobber(i32 noundef %0) #0 !prof !35 !PGOFuncName !504 {
  %2 = load ptr, ptr @has_dependence_data, align 8, !tbaa !482
  %3 = getelementptr inbounds %struct.deps, ptr %2, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !487
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.deps_reg, ptr %4, i64 %5
  %7 = load ptr, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 2), align 8, !tbaa !488
  %8 = load ptr, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !484
  %9 = load ptr, ptr %8, align 8, !tbaa !315
  %10 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %7, ptr noundef %9) #23
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !485
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.anon.3, ptr @has_dependence_data, i64 0, i32 4, i64 %14
  %16 = getelementptr inbounds %struct.deps_reg, ptr %4, i64 %5, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !500
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load i32, ptr %15, align 4, !tbaa !100
  %21 = and i32 %20, -50331648
  %22 = or disjoint i32 %21, 33554432
  store i32 %22, ptr %15, align 4, !tbaa !100
  br label %23

23:                                               ; preds = %19, %12
  %24 = load ptr, ptr %6, align 8, !tbaa !503
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %15, align 4, !tbaa !100
  %28 = and i32 %27, -83886080
  %29 = or disjoint i32 %28, 67108864
  store i32 %29, ptr %15, align 4, !tbaa !100
  br label %30

30:                                               ; preds = %23, %26, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_note_reg_use(i32 noundef %0) #0 !prof !35 !PGOFuncName !505 {
  %2 = load ptr, ptr @has_dependence_data, align 8, !tbaa !482
  %3 = getelementptr inbounds %struct.deps, ptr %2, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !487
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.deps_reg, ptr %4, i64 %5
  %7 = load ptr, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 2), align 8, !tbaa !488
  %8 = load ptr, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !484
  %9 = load ptr, ptr %8, align 8, !tbaa !315
  %10 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %7, ptr noundef %9) #23
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %1
  %13 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !485
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.anon.3, ptr @has_dependence_data, i64 0, i32 4, i64 %14
  %16 = getelementptr inbounds %struct.deps_reg, ptr %4, i64 %5, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !500
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load i32, ptr %15, align 4, !tbaa !100
  %21 = and i32 %20, -33554432
  %22 = or disjoint i32 %21, 16777216
  store i32 %22, ptr %15, align 4, !tbaa !100
  br label %23

23:                                               ; preds = %19, %12
  %24 = getelementptr inbounds %struct.deps_reg, ptr %4, i64 %5, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !502
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %15, align 4, !tbaa !100
  %29 = and i32 %28, -83886080
  %30 = or disjoint i32 %29, 67108864
  store i32 %30, ptr %15, align 4, !tbaa !100
  br label %31

31:                                               ; preds = %27, %23
  %32 = load ptr, ptr %6, align 8, !tbaa !503
  %33 = icmp eq ptr %32, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @s_i_d, align 8
  %36 = load ptr, ptr @sched_luids, align 8
  %37 = load ptr, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 2), align 8, !tbaa !488
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !40
  %40 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %36, i32 noundef %39) #22
  %41 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %35, i32 noundef %40) #22
  %42 = getelementptr inbounds %struct._sel_insn_data, ptr %41, i64 0, i32 12
  %43 = load i32, ptr %42, align 8, !tbaa !492
  %44 = tail call i32 @ds_get_max_dep_weak(i32 noundef %43) #23
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %34
  %47 = load i32, ptr %15, align 4, !tbaa !100
  %48 = tail call i32 @ds_full_merge(i32 noundef %47, i32 noundef %44, ptr noundef null, ptr noundef null) #23
  store i32 %48, ptr %15, align 4, !tbaa !100
  br label %49

49:                                               ; preds = %31, %46, %34, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_note_mem_dep(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, i32 noundef %3) #0 !prof !35 !PGOFuncName !506 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 2), align 8, !tbaa !488
  %6 = load ptr, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !484
  %7 = load ptr, ptr %6, align 8, !tbaa !315
  %8 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %5, ptr noundef %7) #23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !485
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.anon.3, ptr @has_dependence_data, i64 0, i32 4, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !100
  %15 = tail call i32 @ds_full_merge(i32 noundef %3, i32 noundef %14, ptr noundef %1, ptr noundef %0) #23
  store i32 %15, ptr %13, align 4, !tbaa !100
  br label %16

16:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_note_dep(ptr nocapture readnone %0, i32 noundef %1) #0 !prof !35 !PGOFuncName !507 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 2), align 8, !tbaa !488
  %4 = load ptr, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !484
  %5 = load ptr, ptr %4, align 8, !tbaa !315
  %6 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %3, ptr noundef %5) #23
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !485
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.anon.3, ptr @has_dependence_data, i64 0, i32 4, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !100
  %13 = tail call i32 @ds_full_merge(i32 noundef %1, i32 noundef %12, ptr noundef null, ptr noundef null) #23
  store i32 %13, ptr %11, align 4, !tbaa !100
  br label %14

14:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @tick_check_p(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !35 {
  store ptr %0, ptr @tick_check_data.0, align 8, !tbaa !508
  store i32 0, ptr @tick_check_data.1, align 8, !tbaa !510
  store i1 false, ptr @tick_check_data.2, align 4
  store ptr @tick_check_sched_deps_info, ptr @sched_deps_info, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 18
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3409, ptr noundef nonnull @.str.1) #23
  %9 = load i8, ptr %4, align 4
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi i8 [ %5, %3 ], [ %9, %8 ]
  %12 = or i8 %11, 1
  store i8 %12, ptr %4, align 4
  %13 = load ptr, ptr %0, align 8, !tbaa !246
  %14 = load ptr, ptr %13, align 8, !tbaa !315
  tail call void @deps_analyze_insn(ptr noundef nonnull %1, ptr noundef %14) #23
  %15 = load i8, ptr %4, align 4
  %16 = and i8 %15, -2
  store i8 %16, ptr %4, align 4
  %17 = load i32, ptr @tick_check_data.1, align 8, !tbaa !510
  %18 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !137
  %20 = sub nsw i32 %17, %19
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 0)
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tick_check_note_mem_dep(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !prof !35 !PGOFuncName !511 {
  %5 = tail call i32 @ds_to_dt(i32 noundef %3) #23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 @estimate_dep_weak(ptr noundef %0, ptr noundef %1) #23
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %4 ]
  tail call fastcc void @tick_check_dep_with_dw(ptr noundef %2, i32 noundef %3, i32 noundef %10) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tick_check_note_dep(ptr noundef %0, i32 noundef %1) #0 !prof !35 !PGOFuncName !512 {
  tail call fastcc void @tick_check_dep_with_dw(ptr noundef %0, i32 noundef %1, i32 noundef 0) #22
  ret void
}

; Function Attrs: optsize
declare i32 @ds_to_dt(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @estimate_dep_weak(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tick_check_dep_with_dw(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !35 !PGOFuncName !513 {
  %4 = alloca %struct._dep, align 8
  %5 = load ptr, ptr @tick_check_data.0, align 8, !tbaa !508
  %6 = load ptr, ptr %5, align 8, !tbaa !246
  %7 = load ptr, ptr %6, align 8, !tbaa !315
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %61, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = icmp eq ptr %12, null
  br i1 %13, label %61, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  %17 = icmp eq ptr %16, null
  br i1 %17, label %61, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @s_i_d, align 8
  %20 = load ptr, ptr @sched_luids, align 8
  %21 = load i32, ptr %10, align 8, !tbaa !40
  %22 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %20, i32 noundef %21) #22
  %23 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %19, i32 noundef %22) #22
  %24 = getelementptr inbounds %struct._expr, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !514
  %26 = getelementptr inbounds %struct._expr, ptr %5, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !250
  %28 = sub nsw i32 %25, %27
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %61, label %30

30:                                               ; preds = %18
  %31 = tail call i32 @ds_to_dt(i32 noundef %1) #23
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i1 true, ptr @tick_check_data.2, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load ptr, ptr @s_i_d, align 8
  %36 = load ptr, ptr @sched_luids, align 8
  %37 = load i32, ptr %10, align 8, !tbaa !40
  %38 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %36, i32 noundef %37) #22
  %39 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %35, i32 noundef %38) #22
  %40 = getelementptr inbounds %struct._sel_insn_data, ptr %39, i64 0, i32 10
  %41 = load i32, ptr %40, align 8, !tbaa !515
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3338, ptr noundef nonnull @.str.1) #23
  br label %44

44:                                               ; preds = %34, %43
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call void @init_dep(ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef %7, i32 noundef %31) #23
  %45 = load ptr, ptr @s_i_d, align 8
  %46 = load ptr, ptr @sched_luids, align 8
  %47 = load i32, ptr %10, align 8, !tbaa !40
  %48 = call fastcc i32 @VEC_int_base_index(ptr noundef %46, i32 noundef %47) #22
  %49 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %45, i32 noundef %48) #22
  %50 = getelementptr inbounds %struct._sel_insn_data, ptr %49, i64 0, i32 10
  %51 = load i32, ptr %50, align 8, !tbaa !515
  %52 = call i32 @dep_cost_1(ptr noundef nonnull %4, i32 noundef %2) #23
  %53 = add nsw i32 %52, %51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %54 = load i32, ptr @tick_check_data.1, align 8, !tbaa !510
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = icmp ne i32 %31, 0
  %58 = load i1, ptr @tick_check_data.2, align 4
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i32 %53, ptr @tick_check_data.1, align 8, !tbaa !510
  br label %61

61:                                               ; preds = %18, %14, %9, %3, %44, %60, %56
  ret void
}

; Function Attrs: optsize
declare void @init_dep(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @dep_cost_1(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @lhs_of_insn_equals_to_dest_p(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = load ptr, ptr @s_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %6) #22
  %8 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %7) #22
  %9 = load ptr, ptr %8, align 8, !tbaa !371
  %10 = getelementptr inbounds %struct.vinsn_def, ptr %9, i64 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !427
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %1, null
  %14 = or i1 %13, %12
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = tail call i32 @rtx_equal_p(ptr noundef nonnull %11, ptr noundef nonnull %1) #23
  %17 = trunc i32 %16 to i8
  br label %18

18:                                               ; preds = %2, %15
  %19 = phi i8 [ %17, %15 ], [ 0, %2 ]
  ret i8 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @insn_sid(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct._sel_insn_data) align 8 %0, ptr nocapture noundef readonly %1) local_unnamed_addr #19 !prof !35 {
  %3 = load ptr, ptr @s_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %6) #22
  %8 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %7) #22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %8, i64 320, i1 false), !tbaa.struct !516
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @get_dest_and_mode(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 !prof !35 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3458, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %3, %7
  %9 = load i32, ptr %5, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 23
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3459, ptr noundef nonnull @.str.1) #23
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  store ptr %15, ptr %1, align 8, !tbaa !36
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3463, ptr noundef nonnull @.str.1) #23
  %18 = load ptr, ptr %1, align 8, !tbaa !36
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %15, %13 ], [ %18, %17 ]
  %21 = load i32, ptr %20, align 8
  %22 = trunc i32 %21 to i16
  switch i16 %22, label %23 [
    i16 43, label %24
    i16 37, label %24
  ]

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3464, ptr noundef nonnull @.str.1) #23
  br label %24

24:                                               ; preds = %19, %19, %23
  %25 = icmp eq ptr %2, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %1, align 8, !tbaa !36
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  store i32 %30, ptr %2, align 4, !tbaa !100
  br label %31

31:                                               ; preds = %26, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @bookkeeping_can_be_created_if_moved_through_p(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.succ_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %3, ptr noundef nonnull %2, ptr noundef %0, i32 noundef 1) #22
  %4 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %0) #22
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %10
  %7 = load ptr, ptr %2, align 8, !tbaa !36
  %8 = tail call zeroext i8 @sel_num_cfg_preds_gt_1(ptr noundef %7) #22, !range !55
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  call fastcc void @_succ_iter_next(ptr noundef nonnull %3) #22
  %11 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %0) #22
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %6, !llvm.loop !517

13:                                               ; preds = %6, %10, %1
  %14 = phi i8 [ 0, %1 ], [ 0, %10 ], [ 1, %6 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @sel_num_cfg_preds_gt_1(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call zeroext i8 @sel_bb_head_p(ptr noundef %0) #22, !range !55
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @block_to_bb, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !128
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %5, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !100
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %4, %26
  %15 = phi ptr [ %29, %26 ], [ %7, %4 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !374
  %17 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %16) #22
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %32, label %19

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %16, i32 noundef 0) #22
  %21 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !126
  %23 = icmp eq ptr %22, %15
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4632, ptr noundef nonnull @.str.1) #23
  %25 = load ptr, ptr %15, align 8, !tbaa !374
  br label %26

26:                                               ; preds = %19, %24
  %27 = phi ptr [ %16, %19 ], [ %25, %24 ]
  %28 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %27, i32 noundef 0) #22
  %29 = load ptr, ptr %28, align 8, !tbaa !132
  %30 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %29) #22, !range !55
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %14

32:                                               ; preds = %26, %14, %1, %4
  %33 = phi i8 [ 0, %4 ], [ 0, %1 ], [ 0, %26 ], [ 1, %14 ]
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @tidy_control_flow(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !35 {
  %3 = tail call fastcc zeroext i8 @maybe_tidy_empty_bb(ptr noundef %0, i8 noundef zeroext 0) #22, !range !55
  %4 = icmp eq i8 %3, 0
  %5 = icmp ne i8 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %172

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !518
  %14 = tail call zeroext i8 @jump_leads_only_to_bb_p(ptr noundef %11, ptr noundef %13) #22, !range !55
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr @s_i_d, align 8
  %18 = load ptr, ptr @sched_luids, align 8
  %19 = load ptr, ptr %8, align 8, !tbaa !40
  %20 = getelementptr inbounds %struct.rtl_bb_info, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !40
  %24 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %18, i32 noundef %23) #22
  %25 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %17, i32 noundef %24) #22
  %26 = getelementptr inbounds %struct._expr, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !514
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %16
  %30 = load ptr, ptr @fences, align 8, !tbaa !36
  %31 = tail call ptr @flist_lookup(ptr noundef %30, ptr noundef nonnull %21) #22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = tail call zeroext i8 @sel_remove_insn(ptr noundef nonnull %21, i8 noundef zeroext 0, i8 noundef zeroext 0) #22, !range !55
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %172

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !133
  %39 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %38, i32 noundef 0) #22
  tail call void @tidy_fallthru_edge(ptr noundef %39) #23
  br label %40

40:                                               ; preds = %36, %29, %16, %7
  %41 = tail call ptr @sel_bb_head(ptr noundef nonnull %0) #22
  %42 = tail call ptr @sel_bb_end(ptr noundef nonnull %0) #22
  %43 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !100
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %82, label %45

45:                                               ; preds = %40
  %46 = icmp eq ptr %41, %42
  br i1 %46, label %63, label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %41, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 7
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !40
  %54 = icmp eq ptr %53, %42
  br i1 %54, label %86, label %55

55:                                               ; preds = %51, %59
  %56 = phi ptr [ %61, %59 ], [ %53, %51 ]
  %57 = load i32, ptr %56, align 8
  %58 = trunc i32 %57 to i16
  switch i16 %58, label %63 [
    i16 7, label %59
    i16 13, label %59
  ]

59:                                               ; preds = %55, %55
  %60 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !40
  %62 = icmp eq ptr %61, %42
  br i1 %62, label %86, label %55

63:                                               ; preds = %55, %47, %45
  %64 = phi ptr [ %41, %47 ], [ %41, %45 ], [ %56, %55 ]
  %65 = icmp eq ptr %64, %42
  br i1 %65, label %86, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %42, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 7
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !40
  %73 = icmp eq ptr %64, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %70, %78
  %75 = phi ptr [ %80, %78 ], [ %72, %70 ]
  %76 = load i32, ptr %75, align 8
  %77 = trunc i32 %76 to i16
  switch i16 %77, label %82 [
    i16 7, label %78
    i16 13, label %78
  ]

78:                                               ; preds = %74, %74
  %79 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !40
  %81 = icmp eq ptr %64, %80
  br i1 %81, label %86, label %74

82:                                               ; preds = %74, %66, %40
  %83 = phi ptr [ %64, %66 ], [ %41, %40 ], [ %64, %74 ]
  %84 = phi ptr [ %42, %66 ], [ %42, %40 ], [ %75, %74 ]
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %86, label %172

86:                                               ; preds = %59, %78, %51, %70, %63, %82
  %87 = phi ptr [ %83, %82 ], [ %64, %70 ], [ %42, %63 ], [ %42, %51 ], [ %64, %78 ], [ %42, %59 ]
  %88 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %0) #22, !range !55
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %172

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !40
  %93 = load ptr, ptr @nop_pattern, align 8, !tbaa !36
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %172

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !133
  %98 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %97) #22
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %172

100:                                              ; preds = %95
  %101 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %97, i32 noundef 0) #22
  %102 = getelementptr inbounds %struct.edge_def, ptr %101, i64 0, i32 7
  %103 = load i32, ptr %102, align 8, !tbaa !519
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %172, label %106

106:                                              ; preds = %100
  %107 = tail call fastcc ptr @single_succ(ptr noundef nonnull %0) #22
  %108 = load ptr, ptr @cfun, align 8, !tbaa !36
  %109 = getelementptr inbounds %struct.function, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !111
  %111 = getelementptr inbounds %struct.control_flow_graph, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !113
  %113 = icmp eq ptr %107, %112
  br i1 %113, label %172, label %114

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !205
  %117 = tail call zeroext i8 @in_current_region_p(ptr noundef %116) #22, !range !55
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %172, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !40
  %122 = getelementptr inbounds %struct.rtl_bb_info, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !115
  %124 = load ptr, ptr %12, align 8, !tbaa !518
  %125 = tail call zeroext i8 @jump_leads_only_to_bb_p(ptr noundef %123, ptr noundef %124) #22, !range !55
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %172, label %127

127:                                              ; preds = %119
  %128 = load ptr, ptr @s_i_d, align 8
  %129 = load ptr, ptr @sched_luids, align 8
  %130 = load ptr, ptr %115, align 8, !tbaa !205
  %131 = getelementptr inbounds %struct.basic_block_def, ptr %130, i64 0, i32 7
  %132 = load ptr, ptr %131, align 8, !tbaa !40
  %133 = getelementptr inbounds %struct.rtl_bb_info, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !115
  %135 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %136 = load i32, ptr %135, align 8, !tbaa !40
  %137 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %129, i32 noundef %136) #22
  %138 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %128, i32 noundef %137) #22
  %139 = getelementptr inbounds %struct._expr, ptr %138, i64 0, i32 5
  %140 = load i32, ptr %139, align 8, !tbaa !514
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %172

142:                                              ; preds = %127
  %143 = load ptr, ptr @fences, align 8, !tbaa !36
  %144 = tail call ptr @flist_lookup(ptr noundef %143, ptr noundef nonnull %134) #22
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %172

146:                                              ; preds = %142
  tail call void @clear_expr(ptr noundef nonnull %138) #22
  %147 = load ptr, ptr %115, align 8, !tbaa !205
  %148 = getelementptr inbounds %struct.basic_block_def, ptr %147, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !133
  %150 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %149, i32 noundef 0) #22
  %151 = tail call zeroext i8 @sel_redirect_edge_and_branch(ptr noundef %150, ptr noundef nonnull %0) #22, !range !55
  %152 = load ptr, ptr %115, align 8, !tbaa !205
  %153 = getelementptr inbounds %struct.basic_block_def, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !133
  %155 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %154, i32 noundef 0) #22
  %156 = getelementptr inbounds %struct.edge_def, ptr %155, i64 0, i32 7
  %157 = load i32, ptr %156, align 8, !tbaa !519
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %146
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3696, ptr noundef nonnull @.str.1) #23
  %161 = load ptr, ptr %115, align 8, !tbaa !205
  br label %162

162:                                              ; preds = %146, %160
  %163 = phi ptr [ %152, %146 ], [ %161, %160 ]
  %164 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %163) #22, !range !55
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr %115, align 8, !tbaa !205
  %168 = tail call fastcc zeroext i8 @maybe_tidy_empty_bb(ptr noundef %167, i8 noundef zeroext %151) #22, !range !55
  br label %172

169:                                              ; preds = %162
  %170 = icmp eq i8 %151, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %169
  tail call fastcc void @sel_recompute_toporder() #22
  br label %172

172:                                              ; preds = %82, %86, %90, %95, %100, %106, %114, %119, %127, %142, %169, %171, %166, %33, %2
  %173 = phi i8 [ %3, %2 ], [ 1, %33 ], [ 0, %86 ], [ 0, %142 ], [ 0, %127 ], [ 0, %119 ], [ 0, %114 ], [ 0, %106 ], [ 0, %100 ], [ 0, %95 ], [ 0, %90 ], [ 0, %82 ], [ %168, %166 ], [ 0, %171 ], [ 0, %169 ]
  ret i8 %173
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @maybe_tidy_empty_bb(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !35 !PGOFuncName !520 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %5 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %0) #22, !range !55
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %106, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #22, !range !55
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @single_succ(ptr noundef %0) #22
  %12 = load ptr, ptr @cfun, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !111
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %11, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %10
  %19 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #22, !range !55
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %106, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #22
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !519
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %106, label %27

27:                                               ; preds = %21, %10, %7
  %28 = load ptr, ptr %0, align 8, !tbaa !374
  %29 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %28) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %106, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !133
  %34 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %33) #22
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %106, label %36

36:                                               ; preds = %31
  %37 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #22
  store i32 0, ptr %4, align 8, !tbaa.struct !120
  %38 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %37, ptr %38, align 8, !tbaa.struct !121
  %39 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %37, ptr noundef nonnull %3) #22, !range !55
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %36, %47
  %42 = load ptr, ptr %3, align 8, !tbaa !36
  %43 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !519
  %45 = and i32 %44, 14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %106

47:                                               ; preds = %41
  call fastcc void @ei_next(ptr noundef nonnull %4) #22
  %48 = load i32, ptr %4, align 8
  %49 = load ptr, ptr %38, align 8
  %50 = call fastcc zeroext i8 @ei_cond(i32 %48, ptr %49, ptr noundef nonnull %3) #22, !range !55
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %41, !llvm.loop !521

52:                                               ; preds = %47, %36
  tail call void @free_data_sets(ptr noundef nonnull %0) #22
  %53 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #22, !range !55
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !205
  %58 = tail call zeroext i8 @can_merge_blocks_p(ptr noundef %57, ptr noundef nonnull %0) #23
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3577, ptr noundef nonnull @.str.1) #23
  br label %61

61:                                               ; preds = %55, %60
  %62 = load ptr, ptr %56, align 8, !tbaa !205
  tail call void @sel_merge_blocks(ptr noundef %62, ptr noundef nonnull %0) #22
  br label %106

63:                                               ; preds = %52
  %64 = tail call fastcc ptr @single_succ(ptr noundef nonnull %0) #22
  store i32 0, ptr %4, align 8, !tbaa.struct !120
  store ptr %37, ptr %38, align 8, !tbaa.struct !121
  %65 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %37, ptr noundef nonnull %3) #22, !range !55
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %63, %81
  %68 = phi i8 [ %83, %81 ], [ %1, %63 ]
  br label %69

69:                                               ; preds = %67, %76
  %70 = load ptr, ptr %3, align 8, !tbaa !36
  %71 = load ptr, ptr %70, align 8, !tbaa !132
  %72 = getelementptr inbounds %struct.edge_def, ptr %70, i64 0, i32 7
  %73 = load i32, ptr %72, align 8, !tbaa !519
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %69
  call fastcc void @ei_next(ptr noundef nonnull %4) #22
  %77 = load i32, ptr %4, align 8
  %78 = load ptr, ptr %38, align 8
  %79 = call fastcc zeroext i8 @ei_cond(i32 %77, ptr %78, ptr noundef nonnull %3) #22, !range !55
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %86, label %69, !llvm.loop !522

81:                                               ; preds = %69
  %82 = tail call zeroext i8 @sel_redirect_edge_and_branch(ptr noundef nonnull %70, ptr noundef %64) #22, !range !55
  %83 = or i8 %82, %68
  store i32 0, ptr %4, align 8, !tbaa.struct !120
  store ptr %37, ptr %38, align 8, !tbaa.struct !121
  %84 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %37, ptr noundef nonnull %3) #22, !range !55
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %67, !llvm.loop !523

86:                                               ; preds = %81, %76, %63
  %87 = phi i8 [ %1, %63 ], [ %68, %76 ], [ %83, %81 ]
  %88 = phi ptr [ null, %63 ], [ %71, %76 ], [ %71, %81 ]
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !205
  %91 = tail call zeroext i8 @can_merge_blocks_p(ptr noundef %90, ptr noundef nonnull %0) #23
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %86
  %94 = load ptr, ptr %89, align 8, !tbaa !205
  tail call void @sel_merge_blocks(ptr noundef %94, ptr noundef nonnull %0) #22
  br label %103

95:                                               ; preds = %86
  %96 = icmp eq ptr %88, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3611, ptr noundef nonnull @.str.1) #23
  br label %98

98:                                               ; preds = %95, %97
  %99 = tail call zeroext i8 @in_current_region_p(ptr noundef %88) #22, !range !55
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  tail call fastcc void @move_bb_info(ptr noundef %88, ptr noundef nonnull %0) #22
  br label %102

102:                                              ; preds = %101, %98
  tail call fastcc void @remove_empty_bb(ptr noundef nonnull %0, i8 noundef zeroext 1) #22
  br label %103

103:                                              ; preds = %102, %93
  %104 = icmp eq i8 %87, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %103
  tail call fastcc void @sel_recompute_toporder() #22
  br label %106

106:                                              ; preds = %41, %103, %105, %2, %18, %21, %27, %31, %61
  %107 = phi i8 [ 1, %61 ], [ 0, %31 ], [ 0, %27 ], [ 0, %21 ], [ 0, %18 ], [ 0, %2 ], [ 1, %105 ], [ 1, %103 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %107
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @jump_leads_only_to_bb_p(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 !prof !35 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = tail call i32 @onlyjump_p(ptr noundef %0) #23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @any_uncondjump_p(ptr noundef nonnull %0) #23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !133
  %13 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %12) #22
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %12, i32 noundef 0) #22
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !519
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !126
  %24 = icmp eq ptr %23, %1
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %21, %10, %15, %2, %7
  %27 = phi i8 [ 0, %7 ], [ 0, %2 ], [ 0, %15 ], [ 0, %10 ], [ %25, %21 ]
  ret i8 %27
}

; Function Attrs: optsize
declare void @tidy_fallthru_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sel_redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = load i8, ptr @pipelining_p, align 1, !tbaa !40
  %4 = icmp ne i8 %3, 0
  %5 = load ptr, ptr @current_loop_nest, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = tail call ptr @loop_latch_edge(ptr noundef nonnull %5) #23
  %10 = icmp ne ptr %9, %0
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ true, %2 ], [ %10, %8 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !132
  %14 = tail call i32 @get_max_uid() #23
  %15 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %0, ptr noundef %1) #23
  %16 = icmp ne ptr %15, null
  %17 = load ptr, ptr @last_added_blocks, align 8
  %18 = icmp eq ptr %17, null
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5453, ptr noundef nonnull @.str.1) #23
  br label %21

21:                                               ; preds = %11, %20
  br i1 %12, label %28, label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr @current_loop_nest, align 8, !tbaa !36
  %24 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 2
  store ptr %1, ptr %24, align 8, !tbaa !168
  %25 = tail call ptr @loop_latch_edge(ptr noundef %23) #23
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5459, ptr noundef nonnull @.str.1) #23
  br label %28

28:                                               ; preds = %27, %22, %21
  %29 = load ptr, ptr @containing_rgn, align 8, !tbaa !36
  %30 = load ptr, ptr %0, align 8, !tbaa !132
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !128
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %29, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !100
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !128
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %29, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !100
  %41 = icmp eq i32 %35, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %28
  %43 = load ptr, ptr @block_to_bb, align 8, !tbaa !36
  %44 = getelementptr inbounds i32, ptr %43, i64 %33
  %45 = load i32, ptr %44, align 4, !tbaa !100
  %46 = getelementptr inbounds i32, ptr %43, i64 %38
  %47 = load i32, ptr %46, align 4, !tbaa !100
  %48 = icmp sgt i32 %45, %47
  %49 = zext i1 %48 to i8
  br label %50

50:                                               ; preds = %42, %28
  %51 = phi i8 [ 0, %28 ], [ %49, %42 ]
  %52 = tail call fastcc ptr @find_new_jump(ptr noundef %13, ptr noundef null, i32 noundef %14) #22
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call fastcc void @sel_init_new_insn(ptr noundef nonnull %52, i32 noundef 5) #22
  br label %55

55:                                               ; preds = %54, %50
  ret i8 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_recompute_toporder() unnamed_addr #0 !prof !35 !PGOFuncName !524 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !36
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !525
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 2
  %8 = alloca i8, i64 %7, align 16
  %9 = call i32 @post_order_compute(ptr noundef nonnull %8, i8 noundef zeroext 0, i8 noundef zeroext 0) #23
  %10 = load ptr, ptr @containing_rgn, align 8, !tbaa !36
  %11 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !36
  %12 = load ptr, ptr @ebb_head, align 8, !tbaa !36
  %13 = load i32, ptr %12, align 4, !tbaa !100
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %11, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !100
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %10, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !100
  %20 = icmp sgt i32 %9, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %0
  %22 = load ptr, ptr @block_to_bb, align 8
  %23 = zext nneg i32 %9 to i64
  br label %24

24:                                               ; preds = %21, %43
  %25 = phi i64 [ %23, %21 ], [ %27, %43 ]
  %26 = phi i32 [ 0, %21 ], [ %44, %43 ]
  %27 = add nsw i64 %25, -1
  %28 = getelementptr inbounds i32, ptr %8, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !100
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %10, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !100
  %33 = icmp eq i32 %32, %19
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = getelementptr inbounds i32, ptr %22, i64 %30
  store i32 %26, ptr %35, align 4, !tbaa !100
  %36 = load i32, ptr %28, align 4, !tbaa !100
  %37 = sext i32 %26 to i64
  %38 = getelementptr inbounds i32, ptr %12, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !100
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %11, i64 %40
  store i32 %36, ptr %41, align 4, !tbaa !100
  %42 = add nsw i32 %26, 1
  br label %43

43:                                               ; preds = %24, %34
  %44 = phi i32 [ %42, %34 ], [ %26, %24 ]
  %45 = icmp ugt i64 %25, 1
  br i1 %45, label %24, label %46, !llvm.loop !526

46:                                               ; preds = %43, %0
  %47 = phi i32 [ 0, %0 ], [ %44, %43 ]
  %48 = load ptr, ptr @rgn_table, align 8, !tbaa !36
  %49 = sext i32 %19 to i64
  %50 = getelementptr inbounds %struct.region, ptr %48, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !527
  %52 = icmp eq i32 %47, %51
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3542, ptr noundef nonnull @.str.1) #23
  br label %54

54:                                               ; preds = %46, %53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_data_sets(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  tail call fastcc void @free_lv_set(ptr noundef %0) #22
  tail call fastcc void @free_av_set(ptr noundef %0) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @can_merge_blocks_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_merge_blocks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  tail call void @sel_remove_empty_bb(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0) #22
  tail call void @merge_blocks(ptr noundef %0, ptr noundef %1) #23
  tail call fastcc void @change_loops_latches(ptr noundef %1, ptr noundef %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_bb_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !35 !PGOFuncName !529 {
  %3 = tail call zeroext i8 @in_current_region_p(ptr noundef %0) #22, !range !55
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5042, ptr noundef nonnull @.str.1) #23
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr @sel_region_bb_info, align 8
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !128
  %10 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %7, i32 noundef %9) #22
  %11 = load ptr, ptr %10, align 8, !tbaa !530
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !128
  %14 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %7, i32 noundef %13) #22
  tail call void @concat_note_lists(ptr noundef %11, ptr noundef nonnull %14) #23
  %15 = load ptr, ptr @sel_region_bb_info, align 8
  %16 = load i32, ptr %8, align 8, !tbaa !128
  %17 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %15, i32 noundef %16) #22
  store ptr null, ptr %17, align 8, !tbaa !530
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_empty_bb(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !35 !PGOFuncName !531 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = load ptr, ptr %4, align 8, !tbaa !382
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %5, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5102, ptr noundef nonnull @.str.1) #23
  br label %14

14:                                               ; preds = %2, %9, %13
  %15 = icmp eq i8 %1, 0
  br i1 %15, label %85, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !374
  %18 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %17) #22
  switch i32 %18, label %24 [
    i32 0, label %19
    i32 1, label %26
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !133
  %22 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %21) #22
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %85, label %44

24:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5117, ptr noundef nonnull @.str.1) #23
  %25 = load ptr, ptr %0, align 8, !tbaa !374
  br label %26

26:                                               ; preds = %16, %24
  %27 = phi ptr [ %17, %16 ], [ %25, %24 ]
  %28 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %27, i32 noundef 0) #22
  %29 = load ptr, ptr %28, align 8, !tbaa !132
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !205
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.edge_def, ptr %28, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !519
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5121, ptr noundef nonnull @.str.1) #23
  %39 = load ptr, ptr %30, align 8, !tbaa !205
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %29, %33 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !133
  br label %44

44:                                               ; preds = %19, %40
  %45 = phi ptr [ %43, %40 ], [ %21, %19 ]
  %46 = phi ptr [ %41, %40 ], [ null, %19 ]
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %48 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %45) #22
  switch i32 %48, label %49 [
    i32 0, label %55
    i32 1, label %50
  ]

49:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5132, ptr noundef nonnull @.str.1) #23
  br label %50

50:                                               ; preds = %44, %49
  %51 = load ptr, ptr %47, align 8, !tbaa !133
  %52 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %51, i32 noundef 0) #22
  %53 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !126
  br label %55

55:                                               ; preds = %44, %50
  %56 = phi ptr [ %54, %50 ], [ null, %44 ]
  %57 = load ptr, ptr %0, align 8, !tbaa !374
  %58 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %57) #22
  %59 = icmp ne i32 %58, 0
  %60 = icmp ne ptr %56, null
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %57, i32 noundef 0) #22
  %64 = getelementptr inbounds %struct.edge_def, ptr %63, i64 0, i32 7
  %65 = load i32, ptr %64, align 8, !tbaa !519
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = tail call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %63, ptr noundef nonnull %56) #23
  br label %72

70:                                               ; preds = %62
  %71 = tail call zeroext i8 @sel_redirect_edge_and_branch(ptr noundef nonnull %63, ptr noundef nonnull %56) #22, !range !55
  br label %72

72:                                               ; preds = %68, %70, %55
  %73 = load ptr, ptr %47, align 8, !tbaa !133
  %74 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %73) #22
  %75 = icmp ne i32 %74, 0
  %76 = icmp ne ptr %46, null
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %73, i32 noundef 0) #22
  %80 = getelementptr inbounds %struct.edge_def, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !126
  %82 = tail call ptr @find_edge(ptr noundef nonnull %46, ptr noundef %81) #23
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  tail call void @redirect_edge_pred(ptr noundef nonnull %79, ptr noundef nonnull %46) #23
  br label %85

85:                                               ; preds = %72, %84, %78, %19, %14
  tail call fastcc void @sel_remove_bb(ptr noundef nonnull %0, i8 noundef zeroext %1) #22
  ret void
}

; Function Attrs: optsize
declare void @concat_note_lists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @redirect_edge_succ_nodup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @redirect_edge_pred(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_remove_bb(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !35 !PGOFuncName !532 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @sel_region_bb_info, align 8
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !128
  %8 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %5, i32 noundef %7) #22
  %9 = load ptr, ptr %8, align 8, !tbaa !530
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5026, ptr noundef nonnull @.str.1) #23
  br label %12

12:                                               ; preds = %4, %11
  tail call fastcc void @remove_bb_from_region(ptr noundef %0) #22
  tail call fastcc void @return_bb_to_pool(ptr noundef %0) #22
  %13 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !36
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !128
  %16 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %13, i32 noundef %15) #23
  %17 = icmp eq i8 %1, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call fastcc void @delete_and_free_basic_block(ptr noundef nonnull %0) #22
  br label %19

19:                                               ; preds = %18, %12
  %20 = load ptr, ptr @containing_rgn, align 8, !tbaa !36
  %21 = load i32, ptr %14, align 8, !tbaa !128
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %20, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !100
  tail call void @rgn_setup_region(i32 noundef %24) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_bb_from_region(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !533 {
  %2 = load ptr, ptr @containing_rgn, align 8, !tbaa !36
  %3 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !36
  %4 = load ptr, ptr @ebb_head, align 8, !tbaa !36
  %5 = load i32, ptr %4, align 4, !tbaa !100
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !100
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !100
  %12 = load ptr, ptr @block_to_bb, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !128
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %12, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !100
  %18 = load ptr, ptr @rgn_table, align 8, !tbaa !36
  %19 = sext i32 %11 to i64
  %20 = getelementptr inbounds %struct.region, ptr %18, i64 %19, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !534
  %22 = add nsw i32 %21, %17
  %23 = getelementptr inbounds %struct.region, ptr %18, i64 %19, i32 2
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, 2
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = sext i32 %17 to i64
  %29 = getelementptr inbounds i32, ptr %4, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !100
  %31 = icmp eq i32 %30, %22
  br i1 %31, label %35, label %32

32:                                               ; preds = %27, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4954, ptr noundef nonnull @.str.1) #23
  %33 = load ptr, ptr @rgn_table, align 8, !tbaa !36
  %34 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !36
  br label %35

35:                                               ; preds = %27, %32
  %36 = phi ptr [ %3, %27 ], [ %34, %32 ]
  %37 = phi ptr [ %18, %27 ], [ %33, %32 ]
  %38 = add nsw i32 %11, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.region, ptr %37, i64 %39, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !534
  %42 = icmp sgt i32 %41, %22
  br i1 %42, label %45, label %43

43:                                               ; preds = %35
  %44 = sext i32 %22 to i64
  br label %59

45:                                               ; preds = %35
  %46 = load ptr, ptr @block_to_bb, align 8, !tbaa !36
  %47 = sext i32 %41 to i64
  %48 = sext i32 %22 to i64
  br label %49

49:                                               ; preds = %45, %49
  %50 = phi i64 [ %47, %45 ], [ %51, %49 ]
  %51 = add nsw i64 %50, -1
  %52 = getelementptr inbounds i32, ptr %36, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !100
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %46, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !100
  %57 = add nsw i32 %56, -1
  store i32 %57, ptr %55, align 4, !tbaa !100
  %58 = icmp sgt i64 %51, %48
  br i1 %58, label %49, label %59, !llvm.loop !535

59:                                               ; preds = %49, %43
  %60 = phi i64 [ %44, %43 ], [ %48, %49 ]
  %61 = getelementptr inbounds i32, ptr %36, i64 %60
  %62 = getelementptr inbounds i32, ptr %61, i64 1
  %63 = load i32, ptr @nr_regions, align 4, !tbaa !100
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.region, ptr %37, i64 %64, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !534
  %67 = sub nsw i32 %66, %22
  %68 = sext i32 %67 to i64
  %69 = shl nsw i64 %68, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %61, ptr nonnull align 4 %62, i64 %69, i1 false)
  %70 = load ptr, ptr @rgn_table, align 8, !tbaa !36
  %71 = getelementptr inbounds %struct.region, ptr %70, i64 %19
  %72 = load i32, ptr %71, align 4, !tbaa !527
  %73 = add nsw i32 %72, -1
  store i32 %73, ptr %71, align 4, !tbaa !527
  %74 = load i32, ptr @nr_regions, align 4, !tbaa !100
  %75 = icmp slt i32 %11, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %59, %76
  %77 = phi i64 [ %78, %76 ], [ %19, %59 ]
  %78 = add nsw i64 %77, 1
  %79 = getelementptr inbounds %struct.region, ptr %70, i64 %78, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !534
  %81 = add nsw i32 %80, -1
  store i32 %81, ptr %79, align 4, !tbaa !534
  %82 = load i32, ptr @nr_regions, align 4, !tbaa !100
  %83 = sext i32 %82 to i64
  %84 = icmp slt i64 %78, %83
  br i1 %84, label %76, label %85, !llvm.loop !536

85:                                               ; preds = %76, %59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @return_bb_to_pool(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !537 {
  %2 = tail call ptr @bb_note(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !538
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4755, ptr noundef nonnull @.str.1) #23
  br label %11

11:                                               ; preds = %6, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_and_free_basic_block(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !539 {
  %2 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %0) #22, !range !55
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4890, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @sel_global_bb_info, align 8
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !128
  %9 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %6, i32 noundef %8) #22
  %10 = load ptr, ptr %9, align 8, !tbaa !257
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  tail call fastcc void @free_lv_set(ptr noundef nonnull %0) #22
  %13 = load i32, ptr %7, align 8, !tbaa !128
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi i32 [ %13, %12 ], [ %8, %5 ]
  %16 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !36
  %17 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %16, i32 noundef %15) #23
  %18 = load ptr, ptr @sel_global_bb_info, align 8
  %19 = load i32, ptr %7, align 8, !tbaa !128
  %20 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %18, i32 noundef %19) #22
  %21 = load ptr, ptr %20, align 8, !tbaa !257
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %20, i64 0, i32 1
  %25 = load i8, ptr %24, align 8, !tbaa !259
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load ptr, ptr @sel_region_bb_info, align 8
  %29 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %28, i32 noundef %19) #22
  %30 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !277
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %29, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !279
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %27, %23, %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4903, ptr noundef nonnull @.str.1) #23
  br label %38

38:                                               ; preds = %33, %37
  tail call void @delete_basic_block(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: optsize
declare void @rgn_setup_region(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_lv_set(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !540 {
  %2 = load ptr, ptr @sel_global_bb_info, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !128
  %5 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %2, i32 noundef %4) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !257
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4128, ptr noundef nonnull @.str.1) #23
  %9 = load ptr, ptr @sel_global_bb_info, align 8
  %10 = load i32, ptr %3, align 8, !tbaa !128
  %11 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %9, i32 noundef %10) #22
  br label %12

12:                                               ; preds = %1, %8
  %13 = phi ptr [ %5, %1 ], [ %11, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !257
  tail call void @return_regset_to_pool(ptr noundef %14) #22
  %15 = load ptr, ptr @sel_global_bb_info, align 8
  %16 = load i32, ptr %3, align 8, !tbaa !128
  %17 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %15, i32 noundef %16) #22
  store ptr null, ptr %17, align 8, !tbaa !257
  %18 = load ptr, ptr @sel_global_bb_info, align 8
  %19 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %18, i32 noundef %16) #22
  %20 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %19, i64 0, i32 1
  store i8 0, ptr %20, align 8, !tbaa !259
  ret void
}

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @post_order_compute(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @purge_empty_blocks() local_unnamed_addr #0 !prof !35 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !36
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !467
  %6 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !36
  %7 = load ptr, ptr @ebb_head, align 8, !tbaa !36
  %8 = load i32, ptr %7, align 4, !tbaa !100
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !100
  %12 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %5, i32 noundef %11) #22
  %13 = tail call zeroext i8 @sel_is_loop_preheader_p(ptr noundef %12) #22
  %14 = icmp ne i8 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load i32, ptr @current_nr_blocks, align 4, !tbaa !100
  %17 = icmp sgt i32 %16, %15
  br i1 %17, label %18, label %40

18:                                               ; preds = %0, %18
  %19 = phi i32 [ %37, %18 ], [ %15, %0 ]
  %20 = load ptr, ptr @cfun, align 8, !tbaa !36
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !111
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !467
  %25 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !36
  %26 = load ptr, ptr @ebb_head, align 8, !tbaa !36
  %27 = zext nneg i32 %19 to i64
  %28 = getelementptr inbounds i32, ptr %26, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !100
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %25, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !100
  %33 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %24, i32 noundef %32) #22
  %34 = tail call fastcc zeroext i8 @maybe_tidy_empty_bb(ptr noundef %33, i8 noundef zeroext 0) #22, !range !55
  %35 = xor i8 %34, 1
  %36 = zext nneg i8 %35 to i32
  %37 = add nuw nsw i32 %19, %36
  %38 = load i32, ptr @current_nr_blocks, align 4, !tbaa !100
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %18, label %40

40:                                               ; preds = %18, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @sel_is_loop_preheader_p(ptr noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @current_loop_nest, align 8, !tbaa !36
  %3 = icmp ne ptr %2, null
  %4 = load i8, ptr @preheader_removed, align 1
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %45

7:                                                ; preds = %1
  %8 = load ptr, ptr @block_to_bb, align 8, !tbaa !36
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !128
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !100
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.loop, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = tail call zeroext i8 @in_current_region_p(ptr noundef %17) #22, !range !55
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !128
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %8, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !100
  %26 = icmp slt i32 %13, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6087, ptr noundef nonnull @.str.1) #23
  %28 = load ptr, ptr @current_loop_nest, align 8, !tbaa !36
  br label %29

29:                                               ; preds = %27, %20, %15
  %30 = phi ptr [ %28, %27 ], [ %2, %20 ], [ %2, %15 ]
  %31 = tail call fastcc ptr @loop_outer(ptr noundef %30) #22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %29, %42
  %34 = phi ptr [ %43, %42 ], [ %31, %29 ]
  %35 = tail call zeroext i8 @considered_for_pipelining_p(ptr noundef nonnull %34) #22, !range !55
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.loop, ptr %34, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !175
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6095, ptr noundef nonnull @.str.1) #23
  br label %42

42:                                               ; preds = %33, %37, %41
  %43 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %34) #22
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %33, !llvm.loop !541

45:                                               ; preds = %42, %29, %7, %1
  %46 = phi i8 [ 0, %1 ], [ 1, %7 ], [ 0, %29 ], [ 0, %42 ]
  ret i8 %46
}

; Function Attrs: optsize
declare void @remove_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_seqno_by_preds(ptr noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = load ptr, ptr %7, align 8, !tbaa !382
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %29, label %10

10:                                               ; preds = %1, %25
  %11 = phi ptr [ %27, %25 ], [ %0, %1 ]
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -7
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load ptr, ptr @s_i_d, align 8
  %18 = load ptr, ptr @sched_luids, align 8
  %19 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !40
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %18, i32 noundef %20) #22
  %22 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %17, i32 noundef %21) #22
  %23 = getelementptr inbounds %struct._sel_insn_data, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !237
  br label %51

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = icmp eq ptr %27, %8
  br i1 %28, label %29, label %10, !llvm.loop !542

29:                                               ; preds = %25, %1
  call fastcc void @cfg_preds(ptr noundef %5, ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %30 = load i32, ptr %3, align 4, !tbaa !100
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load ptr, ptr @s_i_d, align 8
  %34 = load ptr, ptr @sched_luids, align 8
  %35 = load ptr, ptr %2, align 8, !tbaa !36
  %36 = zext nneg i32 %30 to i64
  br label %37

37:                                               ; preds = %32, %37
  %38 = phi i64 [ 0, %32 ], [ %49, %37 ]
  %39 = phi i32 [ -1, %32 ], [ %48, %37 ]
  %40 = getelementptr inbounds ptr, ptr %35, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !36
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !40
  %44 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %34, i32 noundef %43) #22
  %45 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %33, i32 noundef %44) #22
  %46 = getelementptr inbounds %struct._sel_insn_data, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !237
  %48 = tail call i32 @llvm.smax.i32(i32 %39, i32 %47)
  %49 = add nuw nsw i64 %38, 1
  %50 = icmp eq i64 %49, %36
  br i1 %50, label %51, label %37, !llvm.loop !543

51:                                               ; preds = %37, %29, %16
  %52 = phi i32 [ %24, %16 ], [ -1, %29 ], [ %48, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sel_global_bb_info_def_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !544 {
  %2 = load ptr, ptr @sel_global_bb_info, align 8, !tbaa !36
  %3 = tail call fastcc i32 @VEC_sel_global_bb_info_def_base_length(ptr noundef %2) #22
  tail call fastcc void @VEC_sel_global_bb_info_def_heap_safe_grow(i32 noundef %0) #22
  %4 = load ptr, ptr @sel_global_bb_info, align 8, !tbaa !36
  %5 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_address(ptr noundef %4) #22
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_sel_global_bb_info_def_base_length(ptr noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !545 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !546
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sel_global_bb_info_def_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !548 {
  %2 = load ptr, ptr @sel_global_bb_info, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !546
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_sel_global_bb_info_def_heap_reserve_exact(i32 noundef %8) #22
  %9 = load ptr, ptr @sel_global_bb_info, align 8, !tbaa !36, !nonnull !270, !noundef !270
  store i32 %0, ptr %9, align 8, !tbaa !546
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_sel_global_bb_info_def_base_address(ptr noundef readnone %0) unnamed_addr #7 !prof !35 !PGOFuncName !549 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_sel_global_bb_info_def_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sel_global_bb_info_def_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !550 {
  %2 = load ptr, ptr @sel_global_bb_info, align 8, !tbaa !36
  %3 = tail call fastcc i32 @VEC_sel_global_bb_info_def_base_space(ptr noundef %2, i32 noundef %0) #22, !range !123
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 16) #23
  store ptr %6, ptr @sel_global_bb_info, align 8, !tbaa !36
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_sel_global_bb_info_def_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !35 !PGOFuncName !551 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_sel_global_bb_info_def_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !552
  %7 = load i32, ptr %0, align 8, !tbaa !546
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @sel_finish_global_bb_info() local_unnamed_addr #9 !prof !35 {
  tail call fastcc void @VEC_sel_global_bb_info_def_heap_free() #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_sel_global_bb_info_def_heap_free() unnamed_addr #9 !prof !35 !PGOFuncName !553 {
  %1 = load ptr, ptr @sel_global_bb_info, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #22
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @sel_global_bb_info, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_lv_sets() local_unnamed_addr #0 !prof !35 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !36
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = load ptr, ptr %3, align 8, !tbaa !554
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !518
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !113
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %0, %10
  %11 = phi ptr [ %13, %10 ], [ %6, %0 ]
  tail call fastcc void @init_lv_set(ptr noundef %11) #22
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !518
  %14 = load ptr, ptr @cfun, align 8, !tbaa !36
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !111
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %20, label %10, !llvm.loop !555

20:                                               ; preds = %10, %0
  %21 = phi ptr [ %6, %0 ], [ %13, %10 ]
  tail call fastcc void @init_lv_set(ptr noundef %21) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_lv_set(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !556 {
  %2 = load ptr, ptr @sel_global_bb_info, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !128
  %5 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %2, i32 noundef %4) #22
  %6 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %5, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !259
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4093, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %1, %9
  %11 = tail call ptr @get_regset_from_pool() #22
  %12 = load ptr, ptr @sel_global_bb_info, align 8
  %13 = load i32, ptr %3, align 8, !tbaa !128
  %14 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %12, i32 noundef %13) #22
  store ptr %11, ptr %14, align 8, !tbaa !257
  %15 = load ptr, ptr @sel_global_bb_info, align 8
  %16 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %15, i32 noundef %13) #22
  %17 = load ptr, ptr %16, align 8, !tbaa !257
  %18 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %13) #22
  %19 = getelementptr inbounds %struct.df_lr_bb_info, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !557
  tail call void @bitmap_copy(ptr noundef %17, ptr noundef %20) #23
  %21 = load ptr, ptr @sel_global_bb_info, align 8
  %22 = load i32, ptr %3, align 8, !tbaa !128
  %23 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %21, i32 noundef %22) #22
  %24 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %23, i64 0, i32 1
  store i8 1, ptr %24, align 8, !tbaa !259
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #10 !prof !35 !PGOFuncName !559 {
  %2 = load ptr, ptr @df, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !560
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !562
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_lv_sets() local_unnamed_addr #0 !prof !35 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !36
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  tail call fastcc void @free_lv_set(ptr noundef %5) #22
  %6 = load ptr, ptr @cfun, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  %9 = load ptr, ptr %8, align 8, !tbaa !554
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !518
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !113
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %39, label %15

15:                                               ; preds = %0
  %16 = load ptr, ptr @sel_global_bb_info, align 8
  br label %17

17:                                               ; preds = %15, %29
  %18 = phi ptr [ %30, %29 ], [ %6, %15 ]
  %19 = phi ptr [ %31, %29 ], [ %16, %15 ]
  %20 = phi ptr [ %33, %29 ], [ %11, %15 ]
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !128
  %23 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %19, i32 noundef %22) #22
  %24 = load ptr, ptr %23, align 8, !tbaa !257
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  tail call fastcc void @free_lv_set(ptr noundef nonnull %20) #22
  %27 = load ptr, ptr @sel_global_bb_info, align 8
  %28 = load ptr, ptr @cfun, align 8, !tbaa !36
  br label %29

29:                                               ; preds = %17, %26
  %30 = phi ptr [ %18, %17 ], [ %28, %26 ]
  %31 = phi ptr [ %19, %17 ], [ %27, %26 ]
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !518
  %34 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !111
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !113
  %38 = icmp eq ptr %33, %37
  br i1 %38, label %39, label %17, !llvm.loop !563

39:                                               ; preds = %29, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_av_set(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !564 {
  %2 = load ptr, ptr @sel_region_bb_info, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !128
  %5 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %2, i32 noundef %4) #22
  %6 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %5, i64 0, i32 1
  tail call void @av_set_clear(ptr noundef nonnull %6) #22
  %7 = load ptr, ptr @sel_region_bb_info, align 8
  %8 = load i32, ptr %3, align 8, !tbaa !128
  %9 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %7, i32 noundef %8) #22
  %10 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %9, i64 0, i32 2
  store i32 0, ptr %10, align 8, !tbaa !277
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @exchange_data_sets(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #19 !prof !35 {
  tail call fastcc void @exchange_lv_sets(ptr noundef %0, ptr noundef %1) #22
  tail call fastcc void @exchange_av_sets(ptr noundef %0, ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @exchange_lv_sets(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #19 !prof !35 !PGOFuncName !565 {
  %3 = load ptr, ptr @sel_global_bb_info, align 8
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !128
  %6 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %3, i32 noundef %5) #22
  %7 = load ptr, ptr %6, align 8, !tbaa !257
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !128
  %10 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %3, i32 noundef %9) #22
  %11 = load ptr, ptr %10, align 8, !tbaa !257
  store ptr %11, ptr %6, align 8, !tbaa !257
  %12 = load ptr, ptr @sel_global_bb_info, align 8
  %13 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %12, i32 noundef %9) #22
  store ptr %7, ptr %13, align 8, !tbaa !257
  %14 = load ptr, ptr @sel_global_bb_info, align 8
  %15 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %14, i32 noundef %5) #22
  %16 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %15, i64 0, i32 1
  %17 = load i8, ptr %16, align 8, !tbaa !259
  %18 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %14, i32 noundef %9) #22
  %19 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %18, i64 0, i32 1
  %20 = load i8, ptr %19, align 8, !tbaa !259
  store i8 %20, ptr %16, align 8, !tbaa !259
  store i8 %17, ptr %19, align 8, !tbaa !259
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @exchange_av_sets(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #19 !prof !35 !PGOFuncName !566 {
  %3 = load ptr, ptr @sel_region_bb_info, align 8
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !128
  %6 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %3, i32 noundef %5) #22
  %7 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !279
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !128
  %11 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %3, i32 noundef %10) #22
  %12 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !279
  store ptr %13, ptr %7, align 8, !tbaa !279
  store ptr %8, ptr %12, align 8, !tbaa !279
  %14 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %6, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !277
  %16 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %11, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !277
  store i32 %17, ptr %14, align 8, !tbaa !277
  store i32 %15, ptr %16, align 8, !tbaa !277
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_data_sets(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = load ptr, ptr @sel_global_bb_info, align 8
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !128
  %6 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %3, i32 noundef %5) #22
  %7 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %6, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !259
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load ptr, ptr @sel_region_bb_info, align 8
  %12 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %11, i32 noundef %5) #22
  %13 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !277
  %15 = load i32, ptr @global_level, align 4, !tbaa !100
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %10, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4239, ptr noundef nonnull @.str.1) #23
  %18 = load ptr, ptr @sel_region_bb_info, align 8
  %19 = load i32, ptr %4, align 8, !tbaa !128
  %20 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %18, i32 noundef %19) #22
  br label %21

21:                                               ; preds = %10, %17
  %22 = phi ptr [ %12, %10 ], [ %20, %17 ]
  %23 = phi i32 [ %5, %10 ], [ %19, %17 ]
  %24 = phi ptr [ %11, %10 ], [ %18, %17 ]
  %25 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !279
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4240, ptr noundef nonnull @.str.1) #23
  %29 = load ptr, ptr @sel_region_bb_info, align 8
  %30 = load i32, ptr %4, align 8, !tbaa !128
  %31 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %29, i32 noundef %30) #22
  br label %32

32:                                               ; preds = %21, %28
  %33 = phi ptr [ %22, %21 ], [ %31, %28 ]
  %34 = phi i32 [ %23, %21 ], [ %30, %28 ]
  %35 = phi ptr [ %24, %21 ], [ %29, %28 ]
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !128
  %38 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %35, i32 noundef %37) #22
  %39 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !277
  %41 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %33, i64 0, i32 2
  store i32 %40, ptr %41, align 8, !tbaa !277
  %42 = load ptr, ptr @sel_global_bb_info, align 8
  %43 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %42, i32 noundef %37) #22
  %44 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %43, i64 0, i32 1
  %45 = load i8, ptr %44, align 8, !tbaa !259
  %46 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %42, i32 noundef %34) #22
  %47 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %46, i64 0, i32 1
  store i8 %45, ptr %47, align 8, !tbaa !259
  %48 = load i32, ptr @global_level, align 4, !tbaa !100
  %49 = icmp eq i32 %40, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %38, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !279
  %53 = tail call ptr @av_set_copy(ptr noundef %52) #22
  %54 = load ptr, ptr @sel_region_bb_info, align 8
  %55 = load i32, ptr %4, align 8, !tbaa !128
  %56 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %54, i32 noundef %55) #22
  %57 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %56, i64 0, i32 1
  store ptr %53, ptr %57, align 8, !tbaa !279
  %58 = load ptr, ptr @sel_global_bb_info, align 8
  %59 = load i32, ptr %36, align 8, !tbaa !128
  %60 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %58, i32 noundef %59) #22
  br label %61

61:                                               ; preds = %50, %32
  %62 = phi ptr [ %60, %50 ], [ %43, %32 ]
  %63 = phi i32 [ %55, %50 ], [ %34, %32 ]
  %64 = phi ptr [ %58, %50 ], [ %42, %32 ]
  %65 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %62, i64 0, i32 1
  %66 = load i8, ptr %65, align 8, !tbaa !259
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %61
  %69 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %64, i32 noundef %63) #22
  %70 = load ptr, ptr %69, align 8, !tbaa !257
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4251, ptr noundef nonnull @.str.1) #23
  %73 = load ptr, ptr @sel_global_bb_info, align 8
  %74 = load i32, ptr %4, align 8, !tbaa !128
  %75 = load i32, ptr %36, align 8, !tbaa !128
  %76 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %73, i32 noundef %74) #22
  %77 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %73, i32 noundef %75) #22
  br label %78

78:                                               ; preds = %68, %72
  %79 = phi ptr [ %62, %68 ], [ %77, %72 ]
  %80 = phi ptr [ %69, %68 ], [ %76, %72 ]
  %81 = load ptr, ptr %80, align 8, !tbaa !257
  %82 = load ptr, ptr %79, align 8, !tbaa !257
  tail call void @bitmap_copy(ptr noundef %81, ptr noundef %82) #23
  br label %83

83:                                               ; preds = %78, %61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_av_set(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @get_av_level(ptr noundef %0) #22
  %3 = load i32, ptr @global_level, align 4, !tbaa !100
  %4 = icmp eq i32 %2, %3
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4262, ptr noundef nonnull @.str.1) #23
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call zeroext i8 @sel_bb_head_p(ptr noundef %0) #22, !range !55
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @sel_region_bb_info, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !128
  %15 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %10, i32 noundef %14) #22
  %16 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !279
  br label %18

18:                                               ; preds = %6, %9
  %19 = phi ptr [ %17, %9 ], [ null, %6 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_av_level(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4278, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call zeroext i8 @sel_bb_head_p(ptr noundef nonnull %0) #22, !range !55
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @sel_region_bb_info, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !128
  %16 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %11, i32 noundef %15) #22
  %17 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %16, i64 0, i32 2
  br label %26

18:                                               ; preds = %7
  %19 = load ptr, ptr @s_i_d, align 8
  %20 = load ptr, ptr @sched_luids, align 8
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !40
  %23 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %20, i32 noundef %22) #22
  %24 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %19, i32 noundef %23) #22
  %25 = getelementptr inbounds %struct._sel_insn_data, ptr %24, i64 0, i32 1
  br label %26

26:                                               ; preds = %18, %10
  %27 = phi ptr [ %17, %10 ], [ %25, %18 ]
  %28 = load i32, ptr %27, align 8, !tbaa !100
  ret i32 %28
}

; Function Attrs: optsize
declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fallthru_bb_of_jump(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = tail call i32 @any_uncondjump_p(ptr noundef nonnull %0) #23
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = tail call fastcc ptr @single_succ(ptr noundef %10) #22
  br label %34

12:                                               ; preds = %5
  %13 = tail call i32 @any_condjump_p(ptr noundef nonnull %0) #23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %17) #22, !range !55
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !133
  %23 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %22, i32 noundef 0) #22
  %24 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !519
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %22, i32 noundef 1) #22
  br label %30

30:                                               ; preds = %20, %28
  %31 = phi ptr [ %29, %28 ], [ %23, %20 ]
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !126
  br label %34

34:                                               ; preds = %15, %12, %1, %30, %8
  %35 = phi ptr [ %11, %8 ], [ %33, %30 ], [ null, %1 ], [ null, %12 ], [ null, %15 ]
  ret ptr %35
}

; Function Attrs: optsize
declare i32 @any_uncondjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_init_bbs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = alloca %struct.sched_scan_info_def, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) @__const.sel_init_bbs.ssi, i64 32, i1 false)
  call void @sched_scan(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @init_bb(ptr noundef %0) #0 !prof !35 !PGOFuncName !567 {
  %2 = tail call ptr @bb_note(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  tail call void @remove_notes(ptr noundef %2, ptr noundef %6) #23
  %7 = load ptr, ptr @note_list, align 8, !tbaa !36
  %8 = load ptr, ptr @sel_region_bb_info, align 8
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !128
  %11 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %8, i32 noundef %10) #22
  store ptr %7, ptr %11, align 8, !tbaa !530
  ret void
}

; Function Attrs: optsize
declare void @remove_notes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_finish_bbs() local_unnamed_addr #0 !prof !35 {
  tail call fastcc void @sel_restore_notes() #22
  %1 = load ptr, ptr @current_loop_nest, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call fastcc void @sel_remove_loop_preheader() #22
  br label %4

4:                                                ; preds = %3, %0
  tail call fastcc void @finish_region_bb_info() #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_restore_notes() unnamed_addr #0 !prof !35 !PGOFuncName !568 {
  %1 = load i32, ptr @current_nr_blocks, align 4, !tbaa !100
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %69

3:                                                ; preds = %0, %65
  %4 = phi i64 [ %18, %65 ], [ 0, %0 ]
  %5 = load ptr, ptr @cfun, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !467
  %10 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !36
  %11 = load ptr, ptr @ebb_head, align 8, !tbaa !36
  %12 = getelementptr inbounds i32, ptr %11, i64 %4
  %13 = load i32, ptr %12, align 4, !tbaa !100
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %10, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !100
  %17 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %9, i32 noundef %16) #22
  %18 = add nuw nsw i64 %4, 1
  %19 = getelementptr inbounds i32, ptr %11, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !100
  %21 = sext i32 %20 to i64
  %22 = getelementptr i32, ptr %10, i64 %21
  %23 = getelementptr i32, ptr %22, i64 -1
  %24 = load i32, ptr %23, align 4, !tbaa !100
  %25 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %9, i32 noundef %24) #22
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !518
  br label %28

28:                                               ; preds = %61, %3
  %29 = phi ptr [ %17, %3 ], [ %63, %61 ]
  %30 = load ptr, ptr @sel_region_bb_info, align 8
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !128
  %33 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %30, i32 noundef %32) #22
  %34 = load ptr, ptr %33, align 8, !tbaa !530
  store ptr %34, ptr @note_list, align 8, !tbaa !36
  %35 = tail call ptr @restore_other_notes(ptr noundef null, ptr noundef %29) #23
  %36 = load ptr, ptr @sel_region_bb_info, align 8
  %37 = load i32, ptr %31, align 8, !tbaa !128
  %38 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %36, i32 noundef %37) #22
  store ptr null, ptr %38, align 8, !tbaa !530
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !40
  %41 = load ptr, ptr %40, align 8, !tbaa !40
  %42 = icmp eq ptr %41, null
  br i1 %42, label %61, label %43

43:                                               ; preds = %28, %57
  %44 = phi ptr [ %59, %57 ], [ %41, %28 ]
  %45 = load ptr, ptr %39, align 8, !tbaa !40
  %46 = getelementptr inbounds %struct.rtl_bb_info, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !115
  %48 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %49 = load ptr, ptr %48, align 8, !tbaa !40
  %50 = icmp eq ptr %44, %49
  br i1 %50, label %61, label %51

51:                                               ; preds = %43
  %52 = load i32, ptr %44, align 8
  %53 = and i32 %52, 65535
  %54 = add nsw i32 %53, -11
  %55 = icmp ult i32 %54, -3
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  tail call void @reemit_notes(ptr noundef nonnull %44) #23
  br label %57

57:                                               ; preds = %51, %56
  %58 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 2
  %59 = load ptr, ptr %58, align 8, !tbaa !40
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %43, !llvm.loop !569

61:                                               ; preds = %43, %57, %28
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !518
  %64 = icmp eq ptr %63, %27
  br i1 %64, label %65, label %28, !llvm.loop !570

65:                                               ; preds = %61
  %66 = load i32, ptr @current_nr_blocks, align 4, !tbaa !100
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %18, %67
  br i1 %68, label %3, label %69, !llvm.loop !571

69:                                               ; preds = %65, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_remove_loop_preheader() unnamed_addr #0 !prof !35 !PGOFuncName !572 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @containing_rgn, align 8, !tbaa !36
  %4 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !36
  %5 = load ptr, ptr @ebb_head, align 8, !tbaa !36
  %6 = load i32, ptr %5, align 4, !tbaa !100
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %4, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !100
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %3, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %13 = load ptr, ptr @current_loop_nest, align 8, !tbaa !36
  %14 = tail call fastcc ptr @loop_outer(ptr noundef %13) #22
  %15 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !573
  %17 = icmp eq ptr %16, inttoptr (i64 1 to ptr)
  %18 = select i1 %17, ptr null, ptr %16
  store ptr %18, ptr %2, align 8, !tbaa !36
  %19 = icmp eq ptr %13, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6137, ptr noundef nonnull @.str.1) #23
  br label %21

21:                                               ; preds = %0, %20
  %22 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %18) #22
  %23 = sext i32 %12 to i64
  %24 = load ptr, ptr @rgn_table, align 8, !tbaa !36
  %25 = getelementptr inbounds %struct.region, ptr %24, i64 %23
  %26 = load i32, ptr %25, align 4, !tbaa !527
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %21, %54
  %29 = phi i64 [ %56, %54 ], [ 0, %21 ]
  %30 = phi i8 [ %55, %54 ], [ 1, %21 ]
  %31 = load ptr, ptr @cfun, align 8, !tbaa !36
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !111
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !467
  %36 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !36
  %37 = load ptr, ptr @ebb_head, align 8, !tbaa !36
  %38 = getelementptr inbounds i32, ptr %37, i64 %29
  %39 = load i32, ptr %38, align 4, !tbaa !100
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %36, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !100
  %43 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %35, i32 noundef %42) #22
  %44 = tail call zeroext i8 @sel_is_loop_preheader_p(ptr noundef %43) #22
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %28
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %2, ptr noundef %43) #22
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !40
  %49 = getelementptr inbounds %struct.rtl_bb_info, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !115
  %51 = tail call ptr @bb_note(ptr noundef %43) #23
  %52 = icmp eq ptr %50, %51
  %53 = select i1 %52, i8 %30, i8 0
  br label %54

54:                                               ; preds = %46, %28
  %55 = phi i8 [ %30, %28 ], [ %53, %46 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = load ptr, ptr @rgn_table, align 8, !tbaa !36
  %58 = getelementptr inbounds %struct.region, ptr %57, i64 %23
  %59 = load i32, ptr %58, align 4, !tbaa !527
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %56, %60
  br i1 %61, label %28, label %62, !llvm.loop !574

62:                                               ; preds = %54
  %63 = load ptr, ptr %2, align 8
  %64 = icmp eq i8 %55, 0
  br label %65

65:                                               ; preds = %62, %21
  %66 = phi ptr [ %18, %21 ], [ %63, %62 ]
  %67 = phi ptr [ undef, %21 ], [ %43, %62 ]
  %68 = phi i1 [ false, %21 ], [ %64, %62 ]
  %69 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %66) #22
  %70 = add i32 %69, -1
  %71 = icmp slt i32 %70, %22
  br i1 %71, label %77, label %72

72:                                               ; preds = %65, %72
  %73 = phi i32 [ %75, %72 ], [ %70, %65 ]
  %74 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %66, i32 noundef %73) #22
  tail call fastcc void @sel_remove_bb(ptr noundef %74, i8 noundef zeroext 0) #22
  %75 = add i32 %73, -1
  %76 = icmp slt i32 %75, %22
  br i1 %76, label %77, label %72, !llvm.loop !575

77:                                               ; preds = %72, %65
  %78 = phi ptr [ %67, %65 ], [ %74, %72 ]
  store ptr %78, ptr %1, align 8, !tbaa !36
  %79 = load ptr, ptr @current_loop_nest, align 8, !tbaa !36
  %80 = tail call fastcc ptr @loop_outer(ptr noundef %79) #22
  %81 = tail call zeroext i8 @considered_for_pipelining_p(ptr noundef %80) #22, !range !55
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %152

83:                                               ; preds = %77
  br i1 %68, label %87, label %84

84:                                               ; preds = %83
  %85 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %66, i32 noundef 0, ptr noundef nonnull %1) #22, !range !123
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %151, label %88

87:                                               ; preds = %83
  call void @make_region_from_loop_preheader(ptr noundef nonnull %2) #22
  br label %151

88:                                               ; preds = %84, %147
  %89 = phi i32 [ %148, %147 ], [ 0, %84 ]
  %90 = load ptr, ptr %1, align 8
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !205
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !518
  %95 = tail call fastcc ptr @ei_start_1(ptr noundef %90) #22
  %96 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %95) #22
  %97 = icmp eq ptr %96, null
  br i1 %97, label %111, label %98

98:                                               ; preds = %88, %108
  %99 = phi ptr [ %109, %108 ], [ %96, %88 ]
  %100 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 7
  %101 = load i32, ptr %100, align 8, !tbaa !519
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  %104 = load ptr, ptr %93, align 8, !tbaa !518
  br i1 %103, label %105, label %107

105:                                              ; preds = %98
  %106 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %99, ptr noundef %104) #23
  br label %108

107:                                              ; preds = %98
  tail call void @redirect_edge_succ(ptr noundef nonnull %99, ptr noundef %104) #23
  br label %108

108:                                              ; preds = %107, %105
  %109 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %95) #22
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %98, !llvm.loop !576

111:                                              ; preds = %108, %88
  %112 = load ptr, ptr @sel_region_bb_info, align 8
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 9
  %114 = load i32, ptr %113, align 8, !tbaa !128
  %115 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %112, i32 noundef %114) #22
  %116 = load ptr, ptr %115, align 8, !tbaa !530
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6187, ptr noundef nonnull @.str.1) #23
  br label %119

119:                                              ; preds = %111, %118
  tail call fastcc void @delete_and_free_basic_block(ptr noundef nonnull %90) #22
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 5
  %121 = load ptr, ptr %120, align 8, !tbaa !205
  %122 = icmp eq ptr %121, %92
  br i1 %122, label %123, label %147

123:                                              ; preds = %119
  %124 = load ptr, ptr @cfun, align 8, !tbaa !36
  %125 = getelementptr inbounds %struct.function, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !111
  %127 = load ptr, ptr %126, align 8, !tbaa !554
  %128 = icmp eq ptr %92, %127
  br i1 %128, label %147, label %129

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !40
  %132 = getelementptr inbounds %struct.rtl_bb_info, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !115
  %134 = tail call zeroext i8 @jump_leads_only_to_bb_p(ptr noundef %133, ptr noundef nonnull %94) #22, !range !55
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %147, label %136

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !133
  %139 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %138, i32 noundef 0) #22
  %140 = tail call ptr @redirect_edge_and_branch(ptr noundef %139, ptr noundef nonnull %94) #23
  %141 = load ptr, ptr %130, align 8, !tbaa !40
  %142 = getelementptr inbounds %struct.rtl_bb_info, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !115
  %144 = tail call ptr @bb_note(ptr noundef nonnull %92) #23
  %145 = icmp eq ptr %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  tail call void @free_data_sets(ptr noundef nonnull %92) #22
  br label %147

147:                                              ; preds = %136, %146, %129, %123, %119
  %148 = add nuw nsw i32 %89, 1
  %149 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %66, i32 noundef %148, ptr noundef nonnull %1) #22, !range !123
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %88, !llvm.loop !577

151:                                              ; preds = %147, %84, %87
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %2) #22
  br label %163

152:                                              ; preds = %77
  %153 = icmp eq ptr %66, null
  %154 = load ptr, ptr @current_loop_nest, align 8, !tbaa !36
  br i1 %153, label %155, label %159

155:                                              ; preds = %152
  %156 = tail call fastcc ptr @loop_outer(ptr noundef %154) #22
  %157 = getelementptr inbounds %struct.loop, ptr %156, i64 0, i32 10
  %158 = load ptr, ptr %157, align 8, !tbaa !573
  br label %159

159:                                              ; preds = %152, %155
  %160 = phi ptr [ %158, %155 ], [ %66, %152 ]
  %161 = tail call fastcc ptr @loop_outer(ptr noundef %154) #22
  %162 = getelementptr inbounds %struct.loop, ptr %161, i64 0, i32 10
  store ptr %160, ptr %162, align 8, !tbaa !573
  br label %163

163:                                              ; preds = %159, %151
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @finish_region_bb_info() unnamed_addr #9 !prof !35 !PGOFuncName !578 {
  tail call fastcc void @VEC_sel_region_bb_info_def_heap_free() #22
  ret void
}

; Function Attrs: optsize
declare ptr @restore_other_notes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @reemit_notes(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !579 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !471
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !580 {
  tail call fastcc void @VEC_basic_block_heap_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @considered_for_pipelining_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call fastcc i32 @loop_depth(ptr noundef %0) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !573
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @containing_rgn, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !175
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !128
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %9, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !100
  %17 = load ptr, ptr @loop_nests, align 8
  %18 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %17) #22
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5911, ptr noundef nonnull @.str.1) #23
  br label %21

21:                                               ; preds = %4, %20, %8, %1
  %22 = phi i8 [ 0, %1 ], [ 1, %8 ], [ 1, %20 ], [ 0, %4 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_region_from_loop_preheader(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !tbaa !100
  %4 = tail call fastcc i32 @sel_create_new_region() #22
  %5 = load ptr, ptr %0, align 8, !tbaa !36
  %6 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2) #22, !range !123
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = icmp sgt i32 %4, -1
  br label %10

10:                                               ; preds = %8, %13
  %11 = phi i32 [ 0, %8 ], [ %15, %13 ]
  br i1 %9, label %13, label %12

12:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5830, ptr noundef nonnull @.str.1) #23
  br label %13

13:                                               ; preds = %10, %12
  %14 = load ptr, ptr %2, align 8, !tbaa !36
  call fastcc void @sel_add_block_to_region(ptr noundef %14, ptr noundef nonnull %3, i32 noundef %4) #22
  %15 = add i32 %11, 1
  %16 = load ptr, ptr %0, align 8, !tbaa !36
  %17 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %16, i32 noundef %15, ptr noundef nonnull %2) #22, !range !123
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %10, !llvm.loop !581

19:                                               ; preds = %13, %1
  tail call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %0) #22
  %20 = load ptr, ptr %0, align 8, !tbaa !36
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5836, ptr noundef nonnull @.str.1) #23
  br label %23

23:                                               ; preds = %19, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !35 !PGOFuncName !582 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !471
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !36
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !35 !PGOFuncName !583 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #22, !range !55
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #22
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !584 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = tail call fastcc i32 @VEC_basic_block_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !36
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_space(ptr noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !585 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !586
  %6 = load i32, ptr %0, align 8, !tbaa !471
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_sel_region_bb_info_def_heap_free() unnamed_addr #9 !prof !35 !PGOFuncName !587 {
  %1 = load ptr, ptr @sel_region_bb_info, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #22
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @sel_region_bb_info, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @sel_insn_has_single_succ_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.succ_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #21
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %4, ptr noundef nonnull %3, ptr noundef %0, i32 noundef %1) #22
  %5 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %0) #22
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  call fastcc void @_succ_iter_next(ptr noundef nonnull %4) #22
  %8 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %0) #22
  %9 = xor i8 %8, 1
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i8 [ 1, %2 ], [ %9, %7 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_succs_info(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load i32, ptr @succs_info_pool.2, align 8, !tbaa !588
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !590
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr inbounds %struct.succs_info, ptr %5, i64 %6
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4514, ptr noundef nonnull @.str.1) #23
  %10 = load i32, ptr @succs_info_pool.2, align 8, !tbaa !588
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi i32 [ %2, %4 ], [ %10, %9 ]
  %13 = add nsw i32 %12, -1
  store i32 %13, ptr @succs_info_pool.2, align 8, !tbaa !588
  %14 = getelementptr inbounds %struct.succs_info, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !591
  %16 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %15) #22
  tail call fastcc void @VEC_rtx_base_block_remove(ptr noundef %15, i32 noundef %16) #22
  %17 = getelementptr inbounds %struct.succs_info, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !593
  %19 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %18) #22
  tail call fastcc void @VEC_rtx_base_block_remove(ptr noundef %18, i32 noundef %19) #22
  %20 = getelementptr inbounds %struct.succs_info, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !594
  %22 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %21) #22
  tail call fastcc void @VEC_int_base_block_remove(ptr noundef %21, i32 noundef %22) #22
  %23 = getelementptr inbounds %struct.succs_info, ptr %0, i64 0, i32 4
  store i32 0, ptr %23, align 8, !tbaa !595
  %24 = getelementptr inbounds %struct.succs_info, ptr %0, i64 0, i32 6
  store i32 0, ptr %24, align 8, !tbaa !596
  %25 = getelementptr inbounds %struct.succs_info, ptr %0, i64 0, i32 5
  store i32 0, ptr %25, align 4, !tbaa !597
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_block_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 !prof !35 !PGOFuncName !598 {
  %3 = load i32, ptr %0, align 4, !tbaa !599
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2
  %5 = sub i32 %3, %1
  store i32 %5, ptr %0, align 4, !tbaa !599
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds i32, ptr %4, i64 %6
  %8 = zext i32 %5 to i64
  %9 = shl nuw nsw i64 %8, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %4, ptr nonnull align 4 %7, i64 %9, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_length(ptr noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !601 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !599
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @compute_succs_info(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #0 !prof !35 {
  %3 = alloca %struct.succ_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = tail call fastcc ptr @alloc_succs_info() #22
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %3, ptr noundef nonnull %4, ptr noundef %0, i32 noundef 7) #22
  %6 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %0) #22
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.succ_iterator, ptr %3, i64 0, i32 6
  %10 = and i16 %1, -9
  %11 = getelementptr inbounds %struct.succs_info, ptr %5, i64 0, i32 1
  %12 = getelementptr inbounds %struct.succs_info, ptr %5, i64 0, i32 2
  %13 = getelementptr inbounds %struct.succ_iterator, ptr %3, i64 0, i32 1
  %14 = getelementptr inbounds %struct.succs_info, ptr %5, i64 0, i32 6
  %15 = getelementptr inbounds %struct.succs_info, ptr %5, i64 0, i32 3
  %16 = getelementptr inbounds %struct.succs_info, ptr %5, i64 0, i32 4
  %17 = getelementptr inbounds %struct.succs_info, ptr %5, i64 0, i32 5
  br label %18

18:                                               ; preds = %8, %45
  %19 = load i16, ptr %9, align 2, !tbaa !108
  %20 = and i16 %10, %19
  %21 = icmp eq i16 %20, 0
  %22 = load ptr, ptr %4, align 8, !tbaa !36
  br i1 %21, label %34, label %23

23:                                               ; preds = %18
  tail call fastcc void @VEC_rtx_heap_safe_push(ptr noundef nonnull %11, ptr noundef %22) #22
  %24 = load i8, ptr %3, align 8, !tbaa !117
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %13, align 8, !tbaa !125
  %28 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 8
  %29 = load i32, ptr %28, align 4, !tbaa !208
  br label %30

30:                                               ; preds = %23, %26
  %31 = phi i32 [ %29, %26 ], [ 10000, %23 ]
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull %12, i32 noundef %31) #22
  %32 = load i32, ptr %14, align 8, !tbaa !596
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %14, align 8, !tbaa !596
  br label %36

34:                                               ; preds = %18
  tail call fastcc void @VEC_rtx_heap_safe_push(ptr noundef nonnull %15, ptr noundef %22) #22
  %35 = load i8, ptr %3, align 8, !tbaa !117
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i8 [ %35, %34 ], [ %24, %30 ]
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %13, align 8, !tbaa !125
  %41 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !208
  %43 = load i32, ptr %16, align 8, !tbaa !595
  %44 = add nsw i32 %43, %42
  br label %45

45:                                               ; preds = %36, %39
  %46 = phi i32 [ %44, %39 ], [ 10000, %36 ]
  store i32 %46, ptr %16, align 8, !tbaa !595
  %47 = load i32, ptr %17, align 4, !tbaa !597
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %17, align 4, !tbaa !597
  call fastcc void @_succ_iter_next(ptr noundef nonnull %3) #22
  %49 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %0) #22
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %18, !llvm.loop !602

51:                                               ; preds = %45, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_succs_info() unnamed_addr #0 !prof !35 !PGOFuncName !603 {
  %1 = load i32, ptr @succs_info_pool.2, align 8, !tbaa !588
  %2 = load i32, ptr @succs_info_pool.3, align 8, !tbaa !604
  %3 = icmp eq i32 %1, %2
  %4 = add nsw i32 %1, 1
  br i1 %3, label %5, label %24

5:                                                ; preds = %0
  store i32 %4, ptr @succs_info_pool.3, align 8, !tbaa !604
  %6 = load i32, ptr @succs_info_pool.1, align 8, !tbaa !605
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4496, ptr noundef nonnull @.str.1) #23
  %9 = load i32, ptr @succs_info_pool.2, align 8, !tbaa !588
  %10 = add nsw i32 %9, 1
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i32 [ %10, %8 ], [ %4, %5 ]
  store i32 %12, ptr @succs_info_pool.2, align 8, !tbaa !588
  %13 = tail call fastcc ptr @VEC_rtx_heap_alloc() #22
  %14 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !590
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds %struct.succs_info, ptr %14, i64 %15, i32 1
  store ptr %13, ptr %16, align 8, !tbaa !591
  %17 = tail call fastcc ptr @VEC_rtx_heap_alloc() #22
  %18 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !590
  %19 = getelementptr inbounds %struct.succs_info, ptr %18, i64 %15, i32 3
  store ptr %17, ptr %19, align 8, !tbaa !593
  %20 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef 10) #22
  %21 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !590
  %22 = getelementptr inbounds %struct.succs_info, ptr %21, i64 %15, i32 2
  store ptr %20, ptr %22, align 8, !tbaa !594
  %23 = load i32, ptr @succs_info_pool.2, align 8, !tbaa !588
  br label %26

24:                                               ; preds = %0
  store i32 %4, ptr @succs_info_pool.2, align 8, !tbaa !588
  %25 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !590
  br label %26

26:                                               ; preds = %24, %11
  %27 = phi i32 [ %4, %24 ], [ %23, %11 ]
  %28 = phi ptr [ %25, %24 ], [ %21, %11 ]
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds %struct.succs_info, ptr %28, i64 %29
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !606 {
  tail call fastcc void @VEC_rtx_heap_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  tail call fastcc void @VEC_rtx_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !607 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_rtx_heap_alloc() unnamed_addr #0 !prof !35 !PGOFuncName !608 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #23
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !609 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !610 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = tail call fastcc i32 @VEC_rtx_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !36
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !35 !PGOFuncName !611 {
  %3 = load i32, ptr %0, align 8, !tbaa !212
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !212
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_space(ptr noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !612 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !613
  %6 = load i32, ptr %0, align 8, !tbaa !212
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !614 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #23
  store ptr %6, ptr %0, align 8, !tbaa !36
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #8 !prof !35 !PGOFuncName !615 {
  %3 = load i32, ptr %0, align 4, !tbaa !599
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !599
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !616 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !617
  %6 = load i32, ptr %0, align 4, !tbaa !599
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @bb_ends_ebb_p(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = tail call fastcc ptr @bb_next_bb(ptr noundef %0) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %5 = load ptr, ptr @cfun, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = icmp eq ptr %4, %9
  br i1 %10, label %52, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr @forced_ebb_heads, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !128
  %15 = tail call i32 @bitmap_bit_p(ptr noundef %12, i32 noundef %14) #23
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !40
  %20 = load ptr, ptr %19, align 8, !tbaa !382
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 12
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %4) #22, !range !55
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %24, %17
  %28 = tail call zeroext i8 @in_current_region_p(ptr noundef nonnull %4) #22, !range !55
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %32 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %31) #22
  store i32 0, ptr %3, align 8, !tbaa.struct !120
  %33 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %32, ptr %33, align 8, !tbaa.struct !121
  %34 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %32, ptr noundef nonnull %2) #22, !range !55
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %30, %47
  %37 = load ptr, ptr %2, align 8, !tbaa !36
  %38 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !519
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !126
  %45 = icmp eq ptr %44, %4
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4665, ptr noundef nonnull @.str.1) #23
  br label %52

47:                                               ; preds = %36
  call fastcc void @ei_next(ptr noundef nonnull %3) #22
  %48 = load i32, ptr %3, align 8
  %49 = load ptr, ptr %33, align 8
  %50 = call fastcc zeroext i8 @ei_cond(i32 %48, ptr %49, ptr noundef nonnull %2) #22, !range !55
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %36, !llvm.loop !618

52:                                               ; preds = %47, %30, %46, %42, %27, %1, %11, %24
  %53 = phi i8 [ 1, %24 ], [ 1, %11 ], [ 1, %1 ], [ 1, %27 ], [ 0, %42 ], [ 0, %46 ], [ 1, %30 ], [ 1, %47 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret i8 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bb_next_bb(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !619 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #22
  switch i32 %4, label %22 [
    i32 0, label %5
    i32 1, label %8
    i32 2, label %10
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !518
  br label %25

8:                                                ; preds = %1
  %9 = tail call fastcc ptr @single_succ(ptr noundef nonnull %0) #22
  br label %25

10:                                               ; preds = %1
  %11 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %3, i32 noundef 0) #22
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !519
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %3, i32 noundef 1) #22
  br label %18

18:                                               ; preds = %10, %16
  %19 = phi ptr [ %17, %16 ], [ %11, %10 ]
  %20 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !126
  br label %25

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !518
  br label %25

25:                                               ; preds = %22, %18, %8, %5
  %26 = phi ptr [ %24, %22 ], [ %21, %18 ], [ %9, %8 ], [ %7, %5 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @in_same_ebb_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %2, %12
  %9 = phi ptr [ %13, %12 ], [ %4, %2 ]
  %10 = tail call zeroext i8 @bb_ends_ebb_p(ptr noundef %9) #22, !range !55
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @bb_next_bb(ptr noundef %9) #22
  %14 = load ptr, ptr %5, align 8, !tbaa !40
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %8

16:                                               ; preds = %12, %8, %2
  %17 = phi i8 [ 1, %2 ], [ 0, %8 ], [ 1, %12 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clear_outdated_rtx_info(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %47, label %6

6:                                                ; preds = %1, %43
  %7 = phi ptr [ %45, %43 ], [ %4, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = icmp eq ptr %7, %12
  br i1 %13, label %47, label %14

14:                                               ; preds = %6
  %15 = load i32, ptr %7, align 8
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -7
  %18 = icmp ult i32 %17, 4
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  %20 = and i32 %15, -268435457
  store i32 %20, ptr %7, align 8
  %21 = load ptr, ptr @s_i_d, align 8
  %22 = load ptr, ptr @sched_luids, align 8
  %23 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !40
  %25 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %22, i32 noundef %24) #22
  %26 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %21, i32 noundef %25) #22
  %27 = getelementptr inbounds %struct._sel_insn_data, ptr %26, i64 0, i32 13
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, -5
  store i8 %29, ptr %27, align 4
  %30 = load i32, ptr %23, align 8, !tbaa !40
  %31 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %22, i32 noundef %30) #22
  %32 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %21, i32 noundef %31) #22
  %33 = getelementptr inbounds %struct._expr, ptr %32, i64 0, i32 5
  store i32 0, ptr %33, align 8, !tbaa !514
  %34 = load i32, ptr %23, align 8, !tbaa !40
  %35 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %22, i32 noundef %34) #22
  %36 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %21, i32 noundef %35) #22
  %37 = getelementptr inbounds %struct._expr, ptr %36, i64 0, i32 4
  store i32 0, ptr %37, align 4, !tbaa !620
  %38 = load i32, ptr %23, align 8, !tbaa !40
  %39 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %22, i32 noundef %38) #22
  %40 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %21, i32 noundef %39) #22
  %41 = getelementptr inbounds %struct._sel_insn_data, ptr %40, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !304
  tail call void @htab_empty(ptr noundef %42) #23
  br label %43

43:                                               ; preds = %14, %19
  %44 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !40
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %6, !llvm.loop !621

47:                                               ; preds = %6, %43, %1
  ret void
}

; Function Attrs: optsize
declare void @htab_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @free_bb_note_pool() local_unnamed_addr #9 !prof !35 {
  tail call fastcc void @VEC_rtx_heap_free(ptr noundef nonnull @bb_note_pool) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_rtx_heap_free(ptr nocapture noundef %0) unnamed_addr #9 !prof !35 !PGOFuncName !622 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @alloc_sched_pools() local_unnamed_addr #0 !prof !35 {
  %1 = load ptr, ptr @compiler_params, align 8, !tbaa !36
  %2 = getelementptr inbounds %struct.param_info, ptr %1, i64 85, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !623
  %4 = add nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 48) #23
  store ptr %6, ptr @succs_info_pool.0, align 8, !tbaa !590
  store i32 %4, ptr @succs_info_pool.1, align 8, !tbaa !605
  store i32 -1, ptr @succs_info_pool.2, align 8, !tbaa !588
  store i32 -1, ptr @succs_info_pool.3, align 8, !tbaa !604
  %7 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.4, i64 noundef 112, i64 noundef 500) #23
  store ptr %7, ptr @sched_lists_pool, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_sched_pools() local_unnamed_addr #0 !prof !35 {
  %1 = load ptr, ptr @sched_lists_pool, align 8, !tbaa !36
  tail call void @free_alloc_pool(ptr noundef %1) #23
  %2 = load i32, ptr @succs_info_pool.2, align 8, !tbaa !588
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4809, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %0, %4
  %6 = load i32, ptr @succs_info_pool.3, align 8, !tbaa !604
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %5, %8
  %9 = phi i64 [ %16, %8 ], [ 0, %5 ]
  %10 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !590
  %11 = getelementptr inbounds %struct.succs_info, ptr %10, i64 %9, i32 1
  tail call fastcc void @VEC_rtx_heap_free(ptr noundef nonnull %11) #22
  %12 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !590
  %13 = getelementptr inbounds %struct.succs_info, ptr %12, i64 %9, i32 3
  tail call fastcc void @VEC_rtx_heap_free(ptr noundef nonnull %13) #22
  %14 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !590
  %15 = getelementptr inbounds %struct.succs_info, ptr %14, i64 %9, i32 2
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %15) #22
  %16 = add nuw nsw i64 %9, 1
  %17 = load i32, ptr @succs_info_pool.3, align 8, !tbaa !604
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %8, label %20, !llvm.loop !625

20:                                               ; preds = %8, %5
  %21 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !590
  tail call void @free(ptr noundef %21) #22
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #9 !prof !35 !PGOFuncName !626 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_remove_empty_bb(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !35 {
  %4 = alloca %struct.edge_iterator, align 8
  %5 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %0) #22, !range !55
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5060, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %3, %7
  %9 = icmp eq i8 %1, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !205
  %13 = load ptr, ptr %0, align 8, !tbaa !374
  %14 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %13) #22
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %13, i32 noundef 0) #22
  %18 = load ptr, ptr %17, align 8, !tbaa !132
  %19 = icmp eq ptr %18, %12
  br i1 %19, label %57, label %20

20:                                               ; preds = %16, %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5066, ptr noundef nonnull @.str.1) #23
  br label %57

21:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %22 = tail call fastcc ptr @bb_next_bb(ptr noundef %0) #22
  %23 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #22
  store i32 0, ptr %4, align 8, !tbaa.struct !120
  %24 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %23, ptr %24, align 8, !tbaa.struct !121
  %25 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %23) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %21, %40
  %28 = phi ptr [ %41, %40 ], [ %23, %21 ]
  %29 = phi i32 [ %42, %40 ], [ 0, %21 ]
  %30 = phi ptr [ %43, %40 ], [ %25, %21 ]
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !519
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = tail call zeroext i8 @sel_redirect_edge_and_branch(ptr noundef nonnull %30, ptr noundef %22) #22, !range !55
  br label %40

37:                                               ; preds = %27
  call fastcc void @ei_next(ptr noundef nonnull %4) #22
  %38 = load i32, ptr %4, align 8
  %39 = load ptr, ptr %24, align 8
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi ptr [ %39, %37 ], [ %28, %35 ]
  %42 = phi i32 [ %38, %37 ], [ %29, %35 ]
  %43 = tail call fastcc ptr @ei_safe_edge(i32 %42, ptr %41) #22
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %27, !llvm.loop !627

45:                                               ; preds = %40, %21
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !133
  %48 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %47) #22
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %47, i32 noundef 0) #22
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !126
  %54 = icmp eq ptr %53, %22
  br i1 %54, label %56, label %55

55:                                               ; preds = %50, %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5087, ptr noundef nonnull @.str.1) #23
  br label %56

56:                                               ; preds = %50, %55
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  br label %57

57:                                               ; preds = %20, %16, %56
  %58 = phi ptr [ %12, %16 ], [ %12, %20 ], [ %22, %56 ]
  tail call fastcc void @move_bb_info(ptr noundef %58, ptr noundef nonnull %0) #22
  tail call fastcc void @remove_empty_bb(ptr noundef nonnull %0, i8 noundef zeroext %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sel_split_edge(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !132
  %4 = tail call i32 @get_max_uid() #23
  %5 = tail call ptr @split_edge(ptr noundef nonnull %0) #23
  %6 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !100
  %7 = icmp ne i32 %6, 0
  %8 = load ptr, ptr @current_loop_nest, align 8
  %9 = icmp ne ptr %8, null
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %12 = load ptr, ptr @last_added_blocks, align 8
  %13 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %2) #22, !range !123
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  br label %18

18:                                               ; preds = %15, %36
  %19 = phi i32 [ 0, %15 ], [ %38, %36 ]
  %20 = phi ptr [ null, %15 ], [ %37, %36 ]
  %21 = load ptr, ptr %2, align 8, !tbaa !36
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !134
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = load ptr, ptr %16, align 8, !tbaa !126
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !134
  tail call void @add_bb_to_loop(ptr noundef nonnull %21, ptr noundef %28) #23
  %29 = icmp eq ptr %20, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, ptr %17, align 8, !tbaa !128
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !128
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5319, ptr noundef nonnull @.str.1) #23
  br label %36

36:                                               ; preds = %35, %30, %18
  %37 = phi ptr [ %20, %18 ], [ %21, %30 ], [ %21, %35 ]
  %38 = add nuw nsw i32 %19, 1
  %39 = load ptr, ptr @last_added_blocks, align 8
  %40 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %39, i32 noundef %38, ptr noundef nonnull %2) #22, !range !123
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %18, !llvm.loop !628

42:                                               ; preds = %36, %11
  %43 = phi ptr [ null, %11 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  br label %44

44:                                               ; preds = %42, %1
  %45 = phi ptr [ %43, %42 ], [ null, %1 ]
  tail call fastcc void @sel_add_bb(ptr noundef null) #22
  %46 = tail call fastcc ptr @find_new_jump(ptr noundef %3, ptr noundef %5, i32 noundef %4) #22
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call fastcc void @sel_init_new_insn(ptr noundef nonnull %46, i32 noundef 5) #22
  br label %49

49:                                               ; preds = %48, %44
  %50 = icmp eq ptr %45, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %49
  %52 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef nonnull %45) #22, !range !55
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = tail call ptr @sel_bb_head(ptr noundef nonnull %45) #22
  %56 = tail call ptr @compute_live(ptr noundef %55) #23
  br label %57

57:                                               ; preds = %54, %51, %49
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_bb_to_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_add_bb(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !629 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !36
  tail call void @sched_init_luids(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #23
  tail call void @sched_init_bbs() #23
  %3 = load ptr, ptr @last_added_blocks, align 8, !tbaa !36
  tail call void @sel_init_bbs(ptr noundef %3, ptr noundef null) #22
  %4 = load ptr, ptr @last_added_blocks, align 8, !tbaa !36
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4981, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %1, %6
  %8 = icmp eq ptr %0, null
  %9 = load ptr, ptr @last_added_blocks, align 8
  br i1 %8, label %10, label %13

10:                                               ; preds = %7
  %11 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %2) #22, !range !123
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %40, label %31

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %9) #22
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %9, i32 noundef 0) #22
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4987, ptr noundef nonnull @.str.1) #23
  br label %20

20:                                               ; preds = %16, %19
  tail call fastcc void @add_block_to_current_region(ptr noundef nonnull %0) #22
  %21 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef nonnull %0) #22, !range !55
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load ptr, ptr @sel_global_bb_info, align 8
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !128
  %27 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %24, i32 noundef %26) #22
  %28 = load ptr, ptr %27, align 8, !tbaa !257
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  tail call fastcc void @create_initial_data_sets(ptr noundef nonnull %0) #22
  br label %41

31:                                               ; preds = %10, %31
  %32 = phi i32 [ %34, %31 ], [ 0, %10 ]
  %33 = load ptr, ptr %2, align 8, !tbaa !36
  tail call fastcc void @add_block_to_current_region(ptr noundef %33) #22
  %34 = add nuw nsw i32 %32, 1
  %35 = load ptr, ptr @last_added_blocks, align 8
  %36 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %35, i32 noundef %34, ptr noundef nonnull %2) #22, !range !123
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %31, !llvm.loop !630

38:                                               ; preds = %31
  %39 = icmp eq ptr %33, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %10, %38
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5012, ptr noundef nonnull @.str.1) #23
  unreachable

41:                                               ; preds = %38, %20, %23, %30
  %42 = phi ptr [ %0, %30 ], [ %0, %23 ], [ %0, %20 ], [ %33, %38 ]
  tail call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull @last_added_blocks) #22
  %43 = load ptr, ptr @containing_rgn, align 8, !tbaa !36
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !128
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %43, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !100
  tail call void @rgn_setup_region(i32 noundef %48) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_new_jump(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !35 !PGOFuncName !631 {
  %4 = tail call i32 @get_max_uid() #23
  %5 = icmp eq i32 %4, %2
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @check_for_new_jump(ptr noundef %0, i32 noundef %2) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = icmp eq ptr %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = tail call fastcc ptr @check_for_new_jump(ptr noundef nonnull %1, i32 noundef %2) #22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %9
  br label %15

15:                                               ; preds = %11, %6, %3, %14
  %16 = phi ptr [ null, %14 ], [ null, %3 ], [ %7, %6 ], [ %12, %11 ]
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @compute_live(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sched_init_bbs() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_block_to_current_region(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !632 {
  %2 = load ptr, ptr @containing_rgn, align 8, !tbaa !36
  %3 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !36
  %4 = load ptr, ptr @ebb_head, align 8, !tbaa !36
  %5 = load i32, ptr %4, align 4, !tbaa !100
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !100
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !100
  %12 = tail call fastcc i32 @find_place_to_insert_bb(ptr noundef %0, i32 noundef %11) #22
  %13 = add nsw i32 %12, 1
  %14 = load ptr, ptr @rgn_table, align 8, !tbaa !36
  %15 = sext i32 %11 to i64
  %16 = getelementptr inbounds %struct.region, ptr %14, i64 %15, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !534
  %18 = add nsw i32 %17, %13
  %19 = getelementptr inbounds %struct.region, ptr %14, i64 %15, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load ptr, ptr @ebb_head, align 8, !tbaa !36
  %25 = sext i32 %13 to i64
  %26 = getelementptr inbounds i32, ptr %24, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !100
  %28 = icmp eq i32 %27, %18
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4920, ptr noundef nonnull @.str.1) #23
  br label %30

30:                                               ; preds = %23, %29
  tail call void @extend_regions() #23
  %31 = load ptr, ptr @rgn_table, align 8, !tbaa !36
  %32 = add nsw i32 %11, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.region, ptr %31, i64 %33, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !534
  %36 = icmp sgt i32 %35, %18
  %37 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !36
  br i1 %36, label %40, label %38

38:                                               ; preds = %30
  %39 = sext i32 %18 to i64
  br label %54

40:                                               ; preds = %30
  %41 = load ptr, ptr @block_to_bb, align 8, !tbaa !36
  %42 = sext i32 %35 to i64
  %43 = sext i32 %18 to i64
  br label %44

44:                                               ; preds = %40, %44
  %45 = phi i64 [ %42, %40 ], [ %46, %44 ]
  %46 = add nsw i64 %45, -1
  %47 = getelementptr inbounds i32, ptr %37, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !100
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %41, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !100
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %50, align 4, !tbaa !100
  %53 = icmp sgt i64 %46, %43
  br i1 %53, label %44, label %54, !llvm.loop !633

54:                                               ; preds = %44, %38
  %55 = phi i64 [ %39, %38 ], [ %43, %44 ]
  %56 = getelementptr inbounds i32, ptr %37, i64 %55
  %57 = getelementptr inbounds i32, ptr %56, i64 1
  %58 = load i32, ptr @nr_regions, align 4, !tbaa !100
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.region, ptr %31, i64 %59, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !534
  %62 = sub nsw i32 %61, %18
  %63 = sext i32 %62 to i64
  %64 = shl nsw i64 %63, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %57, ptr align 4 %56, i64 %64, i1 false)
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !128
  %67 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !36
  %68 = getelementptr inbounds i32, ptr %67, i64 %55
  store i32 %66, ptr %68, align 4, !tbaa !100
  %69 = load ptr, ptr @block_to_bb, align 8, !tbaa !36
  %70 = sext i32 %66 to i64
  %71 = getelementptr inbounds i32, ptr %69, i64 %70
  store i32 %13, ptr %71, align 4, !tbaa !100
  %72 = load ptr, ptr @containing_rgn, align 8, !tbaa !36
  %73 = load i32, ptr %65, align 8, !tbaa !128
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %72, i64 %74
  store i32 %11, ptr %75, align 4, !tbaa !100
  %76 = load ptr, ptr @rgn_table, align 8, !tbaa !36
  %77 = getelementptr inbounds %struct.region, ptr %76, i64 %15
  %78 = load i32, ptr %77, align 4, !tbaa !527
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %77, align 4, !tbaa !527
  %80 = load i32, ptr @nr_regions, align 4, !tbaa !100
  %81 = icmp slt i32 %11, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %54, %82
  %83 = phi i64 [ %84, %82 ], [ %15, %54 ]
  %84 = add nsw i64 %83, 1
  %85 = getelementptr inbounds %struct.region, ptr %76, i64 %84, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !534
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %85, align 4, !tbaa !534
  %88 = load i32, ptr @nr_regions, align 4, !tbaa !100
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %84, %89
  br i1 %90, label %82, label %91, !llvm.loop !634

91:                                               ; preds = %82, %54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_place_to_insert_bb(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !635 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #22
  store i32 0, ptr %4, align 8, !tbaa.struct !120
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !121
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %3) #22, !range !55
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2, %14
  %10 = load ptr, ptr %3, align 8, !tbaa !36
  %11 = load ptr, ptr %10, align 8, !tbaa !132
  %12 = tail call zeroext i8 @in_current_region_p(ptr noundef %11) #22, !range !55
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %4) #22
  %15 = load i32, ptr %4, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %3) #22, !range !55
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %9, !llvm.loop !636

19:                                               ; preds = %14, %2
  %20 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !100
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %81, label %25

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !100
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %61, label %29

25:                                               ; preds = %19
  %26 = load ptr, ptr %0, align 8, !tbaa !374
  %27 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %26) #22
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %81

29:                                               ; preds = %22, %25
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !128
  tail call fastcc void @recompute_rev_top_order() #22
  %32 = load ptr, ptr @rgn_table, align 8, !tbaa !36
  %33 = sext i32 %1 to i64
  %34 = getelementptr inbounds %struct.region, ptr %32, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !527
  %36 = load ptr, ptr @rgn_bb_table, align 8
  %37 = load ptr, ptr @ebb_head, align 8
  %38 = load ptr, ptr @rev_top_order_index, align 8
  %39 = sext i32 %31 to i64
  %40 = getelementptr inbounds i32, ptr %38, i64 %39
  %41 = zext i32 %35 to i64
  %42 = tail call i32 @llvm.smin.i32(i32 %35, i32 0)
  %43 = add i32 %42, -1
  br label %44

44:                                               ; preds = %48, %29
  %45 = phi i64 [ %49, %48 ], [ %41, %29 ]
  %46 = trunc i64 %45 to i32
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %107

48:                                               ; preds = %44
  %49 = add nsw i64 %45, -1
  %50 = and i64 %49, 4294967295
  %51 = getelementptr inbounds i32, ptr %37, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !100
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, ptr %36, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !100
  %56 = load i32, ptr %40, align 4, !tbaa !100
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, ptr %38, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !100
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %105, label %44, !llvm.loop !637

61:                                               ; preds = %22
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !133
  %64 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %63) #22
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %63, i32 noundef 0) #22
  %68 = getelementptr inbounds %struct.edge_def, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !126
  %70 = tail call zeroext i8 @in_current_region_p(ptr noundef %69) #22, !range !55
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr @block_to_bb, align 8, !tbaa !36
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 9
  %75 = load i32, ptr %74, align 8, !tbaa !128
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, ptr %73, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !100
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %107, label %80

80:                                               ; preds = %72, %66, %61
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4864, ptr noundef nonnull @.str.1) #23
  br label %107

81:                                               ; preds = %19, %25
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !133
  %84 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %83) #22
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %102, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr %0, align 8, !tbaa !374
  %88 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %87) #22
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4876, ptr noundef nonnull @.str.1) #23
  %91 = load ptr, ptr %0, align 8, !tbaa !374
  br label %92

92:                                               ; preds = %86, %90
  %93 = phi ptr [ %87, %86 ], [ %91, %90 ]
  %94 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %93, i32 noundef 0) #22
  %95 = load ptr, ptr %94, align 8, !tbaa !132
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 9
  %97 = load i32, ptr %96, align 8, !tbaa !128
  %98 = load ptr, ptr @block_to_bb, align 8, !tbaa !36
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, ptr %98, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !100
  br label %107

102:                                              ; preds = %81
  %103 = load i32, ptr @current_nr_blocks, align 4, !tbaa !100
  %104 = add nsw i32 %103, -1
  br label %107

105:                                              ; preds = %48
  %106 = trunc i64 %49 to i32
  br label %107

107:                                              ; preds = %44, %105, %80, %72, %102, %92
  %108 = phi i32 [ %101, %92 ], [ %104, %102 ], [ -1, %72 ], [ -1, %80 ], [ %106, %105 ], [ %43, %44 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 %108
}

; Function Attrs: optsize
declare void @extend_regions() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recompute_rev_top_order() unnamed_addr #0 !prof !35 !PGOFuncName !638 {
  %1 = load ptr, ptr @rev_top_order_index, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  %3 = load ptr, ptr @cfun, align 8, !tbaa !36
  br i1 %2, label %4, label %9

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !263
  br label %16

9:                                                ; preds = %0
  %10 = load i32, ptr @rev_top_order_index_len, align 4, !tbaa !100
  %11 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !111
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !263
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %8, %4 ], [ %14, %9 ]
  store i32 %17, ptr @rev_top_order_index_len, align 4, !tbaa !100
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 2
  %20 = tail call ptr @xrealloc(ptr noundef %1, i64 noundef %19) #23
  store ptr %20, ptr @rev_top_order_index, align 8, !tbaa !36
  %21 = load ptr, ptr @cfun, align 8, !tbaa !36
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !111
  br label %24

24:                                               ; preds = %16, %9
  %25 = phi ptr [ %23, %16 ], [ %12, %9 ]
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !525
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 2
  %30 = tail call ptr @xmalloc(i64 noundef %29) #23
  %31 = tail call i32 @post_order_compute(ptr noundef %30, i8 noundef zeroext 1, i8 noundef zeroext 0) #23
  %32 = load ptr, ptr @cfun, align 8, !tbaa !36
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !111
  %35 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !525
  %37 = icmp eq i32 %36, %31
  br i1 %37, label %39, label %38

38:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4714, ptr noundef nonnull @.str.1) #23
  br label %39

39:                                               ; preds = %24, %38
  %40 = icmp sgt i32 %31, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %39
  %42 = zext nneg i32 %31 to i64
  %43 = load i32, ptr @rev_top_order_index_len, align 4, !tbaa !100
  br label %44

44:                                               ; preds = %41, %53
  %45 = phi i32 [ %43, %41 ], [ %55, %53 ]
  %46 = phi i64 [ 0, %41 ], [ %60, %53 ]
  %47 = getelementptr inbounds i32, ptr %30, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !100
  %49 = icmp slt i32 %48, %45
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4720, ptr noundef nonnull @.str.1) #23
  %51 = load i32, ptr @rev_top_order_index_len, align 4, !tbaa !100
  %52 = load i32, ptr %47, align 4, !tbaa !100
  br label %53

53:                                               ; preds = %44, %50
  %54 = phi i32 [ %48, %44 ], [ %52, %50 ]
  %55 = phi i32 [ %45, %44 ], [ %51, %50 ]
  %56 = load ptr, ptr @rev_top_order_index, align 8, !tbaa !36
  %57 = sext i32 %54 to i64
  %58 = getelementptr inbounds i32, ptr %56, i64 %57
  %59 = trunc i64 %46 to i32
  store i32 %59, ptr %58, align 4, !tbaa !100
  %60 = add nuw nsw i64 %46, 1
  %61 = icmp eq i64 %60, %42
  br i1 %61, label %62, label %44, !llvm.loop !639

62:                                               ; preds = %53, %39
  tail call void @free(ptr noundef %30) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @check_for_new_jump(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !640 {
  %3 = tail call ptr @sel_bb_end(ptr noundef %0) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !40
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %2
  br label %10

10:                                               ; preds = %5, %9
  %11 = phi ptr [ null, %9 ], [ %3, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sel_create_recovery_block(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = tail call zeroext i8 @sel_bb_end_p(ptr noundef %0) #22, !range !55
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %4) #22, !range !55
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5368, ptr noundef nonnull @.str.1) #23
  br label %11

11:                                               ; preds = %7, %10
  %12 = tail call fastcc ptr @single_succ(ptr noundef %4) #22
  br label %16

13:                                               ; preds = %1
  %14 = load ptr, ptr @sched_split_block, align 8, !tbaa !36
  %15 = tail call ptr %14(ptr noundef %4, ptr noundef nonnull %0) #23
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi ptr [ %12, %11 ], [ %15, %13 ]
  %18 = call ptr @sched_create_recovery_block(ptr noundef nonnull %2) #23
  %19 = load ptr, ptr %2, align 8, !tbaa !36
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr @cfun, align 8, !tbaa !36
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !113
  call fastcc void @copy_lv_set_from(ptr noundef nonnull %19, ptr noundef %26) #22
  br label %27

27:                                               ; preds = %21, %16
  %28 = call zeroext i8 @sel_bb_empty_p(ptr noundef %18) #22, !range !55
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5378, ptr noundef nonnull @.str.1) #23
  br label %31

31:                                               ; preds = %27, %30
  call void @sched_create_recovery_edges(ptr noundef %4, ptr noundef %18, ptr noundef %17) #23
  %32 = load ptr, ptr @cfun, align 8, !tbaa !36
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !176
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !134
  call void @add_bb_to_loop(ptr noundef %18, ptr noundef %38) #23
  br label %39

39:                                               ; preds = %36, %31
  call fastcc void @sel_add_bb(ptr noundef %18) #22
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !40
  %42 = getelementptr inbounds %struct.rtl_bb_info, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !115
  %44 = call ptr @sel_bb_head(ptr noundef %18) #22
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5386, ptr noundef nonnull @.str.1) #23
  br label %47

47:                                               ; preds = %39, %46
  call fastcc void @sel_init_new_insn(ptr noundef %43, i32 noundef 5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %18
}

; Function Attrs: optsize
declare ptr @sched_create_recovery_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_lv_set_from(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !35 !PGOFuncName !641 {
  %3 = load ptr, ptr @sel_global_bb_info, align 8
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !128
  %6 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %3, i32 noundef %5) #22
  %7 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %6, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !259
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4104, ptr noundef nonnull @.str.1) #23
  %11 = load ptr, ptr @sel_global_bb_info, align 8
  %12 = load i32, ptr %4, align 8, !tbaa !128
  %13 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %11, i32 noundef %12) #22
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %6, %2 ], [ %13, %10 ]
  %16 = phi ptr [ %3, %2 ], [ %11, %10 ]
  %17 = load ptr, ptr %15, align 8, !tbaa !257
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !128
  %20 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %16, i32 noundef %19) #22
  %21 = load ptr, ptr %20, align 8, !tbaa !257
  tail call void @bitmap_copy(ptr noundef %17, ptr noundef %21) #23
  %22 = load ptr, ptr @sel_global_bb_info, align 8
  %23 = load i32, ptr %4, align 8, !tbaa !128
  %24 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %22, i32 noundef %23) #22
  %25 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %24, i64 0, i32 1
  store i8 1, ptr %25, align 8, !tbaa !259
  ret void
}

; Function Attrs: optsize
declare void @sched_create_recovery_edges(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @merge_blocks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @change_loops_latches(ptr noundef readnone %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !642 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5203, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %2, %4
  %6 = load ptr, ptr @current_loop_nest, align 8, !tbaa !36
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %5, %24
  %9 = phi ptr [ %25, %24 ], [ %6, %5 ]
  %10 = tail call zeroext i8 @considered_for_pipelining_p(ptr noundef nonnull %9) #22, !range !55
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !175
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load ptr, ptr @current_loop_nest, align 8, !tbaa !36
  %18 = icmp eq ptr %9, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5212, ptr noundef nonnull @.str.1) #23
  br label %20

20:                                               ; preds = %16, %19
  store ptr %1, ptr %13, align 8, !tbaa !175
  %21 = tail call ptr @loop_latch_edge(ptr noundef nonnull %9) #23
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5214, ptr noundef nonnull @.str.1) #23
  br label %24

24:                                               ; preds = %23, %20, %8, %12
  %25 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %9) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %8, !llvm.loop !643

27:                                               ; preds = %24, %5
  ret void
}

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_redirect_edge_and_branch_force(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !132
  %4 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %3) #22, !range !55
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5412, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !132
  %9 = tail call i32 @get_max_uid() #23
  %10 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %0, ptr noundef %1) #23
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @sel_add_bb(ptr noundef nonnull %10) #22
  br label %13

13:                                               ; preds = %12, %7
  %14 = load ptr, ptr @current_loop_nest, align 8, !tbaa !36
  %15 = icmp ne ptr %14, null
  %16 = load i8, ptr @pipelining_p, align 1
  %17 = icmp ne i8 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = tail call ptr @loop_latch_edge(ptr noundef nonnull %14) #23
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5425, ptr noundef nonnull @.str.1) #23
  br label %23

23:                                               ; preds = %22, %19, %13
  %24 = tail call fastcc ptr @find_new_jump(ptr noundef %8, ptr noundef %10, i32 noundef %9) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call fastcc void @sel_init_new_insn(ptr noundef nonnull %24, i32 noundef 5) #22
  br label %27

27:                                               ; preds = %26, %23
  ret void
}

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_register_cfg_hooks() local_unnamed_addr #0 !prof !35 {
  %1 = alloca %struct.cfg_hooks, align 8
  store ptr @sel_split_block, ptr @sched_split_block, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %1) #21
  call void @get_cfg_hooks(ptr dead_on_unwind nonnull writable sret(%struct.cfg_hooks) align 8 %1) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) @orig_cfg_hooks, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !tbaa.struct !644
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) @sel_cfg_hooks, ptr noundef nonnull align 8 dereferenceable(232) @orig_cfg_hooks, i64 232, i1 false), !tbaa.struct !644
  store ptr @sel_create_basic_block, ptr getelementptr inbounds (%struct.cfg_hooks, ptr @sel_cfg_hooks, i64 0, i32 3), align 8, !tbaa !645
  call void @set_cfg_hooks(ptr noundef nonnull byval(%struct.cfg_hooks) align 8 @sel_cfg_hooks) #23
  store ptr @sel_init_only_bb, ptr @sched_init_only_bb, align 8, !tbaa !36
  store ptr @sel_split_block, ptr @sched_split_block, align 8, !tbaa !36
  store ptr @sel_create_empty_bb, ptr @sched_create_empty_bb, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @sel_split_block(ptr noundef %0, ptr noundef %1) #0 !prof !35 !PGOFuncName !647 {
  %3 = tail call ptr @sched_split_block_1(ptr noundef %0, ptr noundef %1) #23
  tail call fastcc void @sel_add_bb(ptr noundef %3) #22
  tail call fastcc void @change_loops_latches(ptr noundef %0, ptr noundef %3) #22
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %10 = load ptr, ptr @s_i_d, align 8
  %11 = load ptr, ptr @sched_luids, align 8
  br label %12

12:                                               ; preds = %8, %32
  %13 = phi ptr [ %6, %8 ], [ %34, %32 ]
  %14 = load ptr, ptr %4, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %36, label %20

20:                                               ; preds = %12
  %21 = load i32, ptr %13, align 8
  %22 = and i32 %21, 65535
  %23 = add nsw i32 %22, -7
  %24 = icmp ult i32 %23, 4
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, ptr %9, align 8, !tbaa !128
  %27 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !40
  %29 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %11, i32 noundef %28) #22
  %30 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %10, i32 noundef %29) #22
  %31 = getelementptr inbounds %struct._expr, ptr %30, i64 0, i32 6
  store i32 %26, ptr %31, align 4, !tbaa !648
  br label %32

32:                                               ; preds = %20, %25
  %33 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !40
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %12, !llvm.loop !649

36:                                               ; preds = %12, %32, %2
  %37 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %0) #22, !range !55
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef nonnull %3) #22, !range !55
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5242, ptr noundef nonnull @.str.1) #23
  br label %43

43:                                               ; preds = %39, %42
  tail call void @exchange_data_sets(ptr noundef nonnull %3, ptr noundef %0) #22
  tail call void @free_data_sets(ptr noundef %0) #22
  br label %44

44:                                               ; preds = %43, %36
  %45 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef nonnull %3) #22, !range !55
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !36
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !128
  %51 = tail call i32 @bitmap_bit_p(ptr noundef %48, i32 noundef %50) #23
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !36
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !128
  %57 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %54, i32 noundef %56) #23
  br label %58

58:                                               ; preds = %53, %47, %44
  ret ptr %3
}

; Function Attrs: optsize
declare void @get_cfg_hooks(ptr dead_on_unwind writable sret(%struct.cfg_hooks) align 8) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @sel_create_basic_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !prof !35 !PGOFuncName !650 {
  %4 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !100
  %5 = icmp ne i32 %4, 0
  %6 = load ptr, ptr @last_added_blocks, align 8
  %7 = icmp eq ptr %6, null
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5170, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %3, %9
  %11 = tail call fastcc ptr @get_bb_note_from_pool() #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr getelementptr inbounds (%struct.cfg_hooks, ptr @orig_cfg_hooks, i64 0, i32 3), align 8, !tbaa !645
  %15 = tail call ptr %14(ptr noundef %0, ptr noundef %1, ptr noundef %2) #23
  br label %19

16:                                               ; preds = %10
  %17 = tail call ptr @create_basic_block_structure(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef %2) #23
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 2
  store ptr null, ptr %18, align 8, !tbaa !538
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %15, %13 ], [ %17, %16 ]
  tail call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull @last_added_blocks, ptr noundef %20) #22
  ret ptr %20
}

; Function Attrs: optsize
declare void @set_cfg_hooks(ptr noundef byval(%struct.cfg_hooks) align 8) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sel_init_only_bb(ptr noundef %0, ptr noundef readnone %1) #0 !prof !35 !PGOFuncName !651 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5192, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %2, %4
  tail call void @extend_regions() #23
  tail call void @rgn_make_new_region_out_of_new_block(ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @sel_create_empty_bb(ptr noundef %0) #0 !prof !35 !PGOFuncName !652 {
  %2 = tail call ptr @sched_create_empty_bb_1(ptr noundef %0) #23
  %3 = load ptr, ptr @last_added_blocks, align 8
  %4 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %3) #22
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %3, i32 noundef 0) #22
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5349, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %6, %9
  tail call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull @last_added_blocks) #22
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @sched_split_block_1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_bb_note_from_pool() unnamed_addr #19 !prof !35 !PGOFuncName !653 {
  %1 = load ptr, ptr @bb_note_pool, align 8
  %2 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %1) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = tail call fastcc ptr @VEC_rtx_base_pop(ptr noundef %1) #22
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br label %7

7:                                                ; preds = %0, %4
  %8 = phi ptr [ %5, %4 ], [ null, %0 ]
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @create_basic_block_structure(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_rtx_base_pop(ptr nocapture noundef %0) unnamed_addr #8 !prof !35 !PGOFuncName !654 {
  %2 = load i32, ptr %0, align 8, !tbaa !212
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !212
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  ret ptr %6
}

; Function Attrs: optsize
declare void @rgn_make_new_region_out_of_new_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sched_create_empty_bb_1(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_unregister_cfg_hooks() local_unnamed_addr #0 !prof !35 {
  store ptr null, ptr @sched_create_empty_bb, align 8, !tbaa !36
  store ptr null, ptr @sched_split_block, align 8, !tbaa !36
  store ptr null, ptr @sched_init_only_bb, align 8, !tbaa !36
  tail call void @set_cfg_hooks(ptr noundef nonnull byval(%struct.cfg_hooks) align 8 @orig_cfg_hooks) #23
  ret void
}

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_debug_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_jump_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @setup_nop_and_exit_insns() local_unnamed_addr #0 !prof !35 {
  %1 = load ptr, ptr @nop_pattern, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  %3 = load ptr, ptr @exit_insn, align 8
  %4 = icmp eq ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5609, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %0, %6
  %8 = tail call ptr @gen_nop() #23
  store ptr %8, ptr @nop_pattern, align 8, !tbaa !36
  tail call void @start_sequence() #23
  %9 = load ptr, ptr @nop_pattern, align 8, !tbaa !36
  %10 = tail call ptr @emit_insn(ptr noundef %9) #23
  %11 = tail call ptr @get_insns() #23
  store ptr %11, ptr @exit_insn, align 8, !tbaa !36
  tail call void @end_sequence() #23
  %12 = load ptr, ptr @cfun, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !111
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = load ptr, ptr @exit_insn, align 8, !tbaa !36
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare ptr @gen_nop() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @free_nop_and_exit_insns() local_unnamed_addr #15 !prof !35 {
  store ptr null, ptr @exit_insn, align 8, !tbaa !36
  store ptr null, ptr @nop_pattern, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @setup_nop_vinsn() local_unnamed_addr #0 !prof !35 {
  %1 = load ptr, ptr @exit_insn, align 8, !tbaa !36
  %2 = tail call fastcc ptr @vinsn_create(ptr noundef %1, i8 noundef zeroext 0) #22
  store ptr %2, ptr @nop_vinsn, align 8, !tbaa !36
  tail call void @vinsn_attach(ptr noundef %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_nop_vinsn() local_unnamed_addr #0 !prof !35 {
  %1 = load ptr, ptr @nop_vinsn, align 8, !tbaa !36
  %2 = getelementptr inbounds %struct.vinsn_def, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !310
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5640, ptr noundef nonnull @.str.1) #23
  %6 = load ptr, ptr @nop_vinsn, align 8, !tbaa !36
  br label %7

7:                                                ; preds = %0, %5
  %8 = phi ptr [ %1, %0 ], [ %6, %5 ]
  tail call void @vinsn_detach(ptr noundef %8) #22
  store ptr null, ptr @nop_vinsn, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_set_sched_flags() local_unnamed_addr #0 !prof !35 {
  %1 = load ptr, ptr @spec_info, align 8, !tbaa !36
  %2 = icmp ne ptr %1, null
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 32), align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  tail call void %3(ptr noundef nonnull %1) #23
  br label %7

7:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_setup_sched_infos() local_unnamed_addr #0 !prof !35 {
  tail call void @rgn_setup_common_sched_info() #23
  %1 = load ptr, ptr @common_sched_info, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @sel_common_sched_info, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @sel_common_sched_info, i8 0, i64 16, i1 false)
  store ptr @sel_estimate_number_of_insns, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @sel_common_sched_info, i64 0, i32 2), align 8, !tbaa !655
  store ptr @sel_luid_for_non_insn, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @sel_common_sched_info, i64 0, i32 3), align 8, !tbaa !657
  store i32 4, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @sel_common_sched_info, i64 0, i32 4), align 8, !tbaa !658
  store ptr @sel_common_sched_info, ptr @common_sched_info, align 8, !tbaa !36
  store ptr @sched_sel_haifa_sched_info, ptr @current_sched_info, align 8, !tbaa !36
  %2 = tail call i32 @get_rgn_sched_max_insns_priority() #23
  %3 = load ptr, ptr @current_sched_info, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct.haifa_sched_info, ptr %3, i64 0, i32 13
  store i32 %2, ptr %4, align 4, !tbaa !659
  tail call void @sel_set_sched_flags() #22
  ret void
}

; Function Attrs: optsize
declare void @rgn_setup_common_sched_info() local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @sel_estimate_number_of_insns(ptr nocapture noundef readonly %0) #4 !prof !35 !PGOFuncName !661 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = load ptr, ptr %3, align 8, !tbaa !382
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %24, label %12

12:                                               ; preds = %1, %12
  %13 = phi ptr [ %22, %12 ], [ %10, %1 ]
  %14 = phi i32 [ %20, %12 ], [ 0, %1 ]
  %15 = load i32, ptr %13, align 8
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -8
  %18 = icmp ult i32 %17, 3
  %19 = zext i1 %18 to i32
  %20 = add nuw nsw i32 %14, %19
  %21 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !40
  %23 = icmp eq ptr %22, %8
  br i1 %23, label %24, label %12, !llvm.loop !662

24:                                               ; preds = %12, %1
  %25 = phi i32 [ 0, %1 ], [ %20, %12 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sel_luid_for_non_insn(ptr nocapture noundef readonly %0) #0 !prof !35 !PGOFuncName !663 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65534
  %4 = icmp eq i32 %3, 12
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3801, ptr noundef nonnull @.str.1) #23
  br label %6

6:                                                ; preds = %1, %5
  ret i32 -1
}

; Function Attrs: optsize
declare i32 @get_rgn_sched_max_insns_priority() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sel_print_insn(ptr noundef, i32 noundef) #2

; Function Attrs: optsize
declare i32 @contributes_to_priority(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @sel_create_new_region() unnamed_addr #19 !prof !35 !PGOFuncName !664 {
  %1 = load i32, ptr @nr_regions, align 4, !tbaa !100
  %2 = load ptr, ptr @rgn_table, align 8, !tbaa !36
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.region, ptr %2, i64 %3
  store i32 0, ptr %4, align 4, !tbaa !527
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %0
  %7 = getelementptr %struct.region, ptr %4, i64 -1
  %8 = getelementptr %struct.region, ptr %4, i64 -1, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !534
  %10 = load i32, ptr %7, align 4, !tbaa !527
  %11 = add nsw i32 %10, %9
  br label %12

12:                                               ; preds = %0, %6
  %13 = phi i32 [ %11, %6 ], [ 0, %0 ]
  %14 = getelementptr inbounds %struct.region, ptr %2, i64 %3, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr %struct.region, ptr %4, i64 1, i32 1
  store i32 %13, ptr %15, align 4, !tbaa !534
  %16 = load i32, ptr @nr_regions, align 4, !tbaa !100
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @nr_regions, align 4, !tbaa !100
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sel_add_block_to_region(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #19 !prof !35 !PGOFuncName !665 {
  %4 = load ptr, ptr @rgn_table, align 8, !tbaa !36
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds %struct.region, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !527
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 4, !tbaa !527
  %9 = getelementptr inbounds %struct.region, ptr %4, i64 %5, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, -2
  store i8 %11, ptr %9, align 4
  %12 = load ptr, ptr @rgn_table, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.region, ptr %12, i64 %5, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, -3
  store i8 %15, ptr %13, align 4
  %16 = load ptr, ptr @containing_rgn, align 8, !tbaa !36
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !128
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %16, i64 %19
  store i32 %2, ptr %20, align 4, !tbaa !100
  %21 = load i32, ptr %1, align 4, !tbaa !100
  %22 = load ptr, ptr @block_to_bb, align 8, !tbaa !36
  %23 = load i32, ptr %17, align 8, !tbaa !128
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %22, i64 %24
  store i32 %21, ptr %25, align 4, !tbaa !100
  %26 = load i32, ptr %17, align 8, !tbaa !128
  %27 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !36
  %28 = load ptr, ptr @rgn_table, align 8, !tbaa !36
  %29 = getelementptr inbounds %struct.region, ptr %28, i64 %5, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !534
  %31 = add nsw i32 %21, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %27, i64 %32
  store i32 %26, ptr %33, align 4, !tbaa !100
  %34 = load i32, ptr %1, align 4, !tbaa !100
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %1, align 4, !tbaa !100
  %36 = getelementptr inbounds %struct.region, ptr %28, i64 %5
  %37 = load i32, ptr %29, align 4, !tbaa !534
  %38 = load i32, ptr %36, align 4, !tbaa !527
  %39 = add nsw i32 %38, %37
  %40 = getelementptr %struct.region, ptr %36, i64 1, i32 1
  store i32 %39, ptr %40, align 4, !tbaa !534
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_init_pipelining() local_unnamed_addr #0 !prof !35 {
  tail call void @loop_optimizer_init(i32 noundef 141) #23
  store ptr null, ptr @current_loop_nest, align 8, !tbaa !36
  %1 = load ptr, ptr @cfun, align 8, !tbaa !36
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !263
  %6 = tail call ptr @sbitmap_alloc(i32 noundef %5) #23
  store ptr %6, ptr @bbs_in_loop_rgns, align 8, !tbaa !36
  tail call void @sbitmap_zero(ptr noundef %6) #23
  tail call fastcc void @recompute_rev_top_order() #22
  ret void
}

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_loop_nest_for_rgn(i32 noundef %0) local_unnamed_addr #10 !prof !35 {
  %2 = load ptr, ptr @loop_nests, align 8
  %3 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %2) #22
  %4 = icmp ugt i32 %3, %0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %2, i32 noundef %0) #22
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_finish_pipelining() local_unnamed_addr #0 !prof !35 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #22
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 10
  store ptr null, ptr %7, align 8, !tbaa !573
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %8 = load ptr, ptr %2, align 8, !tbaa !36
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !666

10:                                               ; preds = %5, %0
  tail call void @loop_optimizer_finalize() #23
  tail call fastcc void @VEC_loop_p_heap_free() #22
  %11 = load ptr, ptr @rev_top_order_index, align 8, !tbaa !36
  tail call void @free(ptr noundef %11) #22
  store ptr null, ptr @rev_top_order_index, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 !prof !35 !PGOFuncName !667 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !668
  %6 = load ptr, ptr @cfun, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !176
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store ptr null, ptr %0, align 8, !tbaa !670
  store ptr null, ptr %1, align 8, !tbaa !36
  br label %104

11:                                               ; preds = %3
  %12 = tail call fastcc i32 @number_of_loops() #22
  %13 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %12) #22
  store ptr %13, ptr %0, align 8, !tbaa !670
  %14 = and i32 %2, 1
  %15 = xor i32 %14, 1
  %16 = and i32 %2, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr @cfun, align 8, !tbaa !36
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !176
  %22 = getelementptr inbounds %struct.loops, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !671
  %24 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %23, i32 noundef 0, ptr noundef nonnull %4) #22, !range !123
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %103, label %26

26:                                               ; preds = %18, %41
  %27 = phi ptr [ %42, %41 ], [ %19, %18 ]
  %28 = phi i32 [ %43, %41 ], [ 0, %18 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !36
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.loop, ptr %29, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !672
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, ptr %29, align 8, !tbaa !673
  %37 = icmp slt i32 %36, %15
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %0, align 8, !tbaa !670
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %39, i32 noundef %36) #22
  %40 = load ptr, ptr @cfun, align 8, !tbaa !36
  br label %41

41:                                               ; preds = %26, %31, %35, %38
  %42 = phi ptr [ %27, %26 ], [ %27, %31 ], [ %27, %35 ], [ %40, %38 ]
  %43 = add i32 %28, 1
  %44 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !176
  %46 = getelementptr inbounds %struct.loops, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !671
  %48 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %47, i32 noundef %43, ptr noundef nonnull %4) #22, !range !123
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %103, label %26, !llvm.loop !674

50:                                               ; preds = %11
  %51 = and i32 %2, 2
  %52 = icmp eq i32 %51, 0
  %53 = load ptr, ptr @cfun, align 8, !tbaa !36
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !176
  %56 = getelementptr inbounds %struct.loops, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !675
  br i1 %52, label %83, label %58

58:                                               ; preds = %50, %58
  %59 = phi ptr [ %61, %58 ], [ %57, %50 ]
  %60 = getelementptr inbounds %struct.loop, ptr %59, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !672
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %58, !llvm.loop !676

63:                                               ; preds = %58, %81
  %64 = phi ptr [ %82, %81 ], [ %59, %58 ]
  %65 = load i32, ptr %64, align 8, !tbaa !673
  %66 = icmp slt i32 %65, %15
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %0, align 8, !tbaa !670
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %68, i32 noundef %65) #22
  br label %69

69:                                               ; preds = %67, %63
  %70 = getelementptr inbounds %struct.loop, ptr %64, i64 0, i32 9
  %71 = load ptr, ptr %70, align 8, !tbaa !677
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %69, %73
  %74 = phi ptr [ %76, %73 ], [ %71, %69 ]
  %75 = getelementptr inbounds %struct.loop, ptr %74, i64 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !672
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %73, !llvm.loop !678

78:                                               ; preds = %69
  %79 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %64) #22
  %80 = icmp eq ptr %79, null
  br i1 %80, label %103, label %81

81:                                               ; preds = %73, %78
  %82 = phi ptr [ %79, %78 ], [ %74, %73 ]
  br label %63

83:                                               ; preds = %50, %93
  %84 = phi ptr [ %94, %93 ], [ %57, %50 ]
  %85 = load i32, ptr %84, align 8, !tbaa !673
  %86 = icmp slt i32 %85, %15
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %0, align 8, !tbaa !670
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %88, i32 noundef %85) #22
  br label %89

89:                                               ; preds = %87, %83
  %90 = getelementptr inbounds %struct.loop, ptr %84, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !672
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %95, %89
  %94 = phi ptr [ %91, %89 ], [ %98, %95 ]
  br label %83

95:                                               ; preds = %89, %100
  %96 = phi ptr [ %101, %100 ], [ %84, %89 ]
  %97 = getelementptr inbounds %struct.loop, ptr %96, i64 0, i32 9
  %98 = load ptr, ptr %97, align 8, !tbaa !677
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %93

100:                                              ; preds = %95
  %101 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %96) #22
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %95, !llvm.loop !679

103:                                              ; preds = %41, %78, %100, %18
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #22
  br label %104

104:                                              ; preds = %103, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !35 !PGOFuncName !680 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !668
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !670
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #22, !range !123
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !668
  %13 = load i32, ptr %3, align 4, !tbaa !100
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #22
  store ptr %14, ptr %1, align 8, !tbaa !36
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !681

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #22
  store ptr null, ptr %1, align 8, !tbaa !36
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_loop_p_heap_free() unnamed_addr #9 !prof !35 !PGOFuncName !682 {
  %1 = load ptr, ptr @loop_nests, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #22
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @loop_nests, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #10 !prof !35 !PGOFuncName !683 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !36
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !176
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !671
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #22
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !35 !PGOFuncName !684 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !191
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !36
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !35 !PGOFuncName !685 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !599
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !100
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !100
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #10 !prof !35 !PGOFuncName !686 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !176
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !671
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #22
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_find_rgns() local_unnamed_addr #0 !prof !35 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.loop_iterator, align 8
  tail call void @sel_init_pipelining() #22
  tail call void @extend_regions() #23
  %3 = load ptr, ptr @cfun, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !176
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  %8 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !100
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 4, i32 2
  call fastcc void @fel_init(ptr noundef nonnull %2, ptr noundef nonnull %1, i32 noundef %10) #22
  %11 = load ptr, ptr %1, align 8, !tbaa !36
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %7, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %7 ]
  tail call fastcc void @make_regions_from_loop_nest(ptr noundef nonnull %14) #22
  call fastcc void @fel_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #22
  %15 = load ptr, ptr %1, align 8, !tbaa !36
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %13, !llvm.loop !687

17:                                               ; preds = %13, %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  br label %18

18:                                               ; preds = %17, %0
  tail call fastcc void @make_regions_from_the_rest() #22
  %19 = load ptr, ptr @bbs_in_loop_rgns, align 8, !tbaa !36
  %20 = load ptr, ptr %19, align 8, !tbaa !688
  tail call void @free(ptr noundef %20) #22
  tail call void @free(ptr noundef %19) #22
  store ptr null, ptr @bbs_in_loop_rgns, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_regions_from_loop_nest(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !690 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @bbs_in_loop_rgns, align 8, !tbaa !36
  br label %11

7:                                                ; preds = %11
  %8 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11, !llvm.loop !691

11:                                               ; preds = %5, %7
  %12 = phi ptr [ %3, %5 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !168
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !128
  %17 = lshr i32 %16, 6
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds %struct.simple_bitmap_def, ptr %6, i64 0, i32 3, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !201
  %21 = and i32 %16, 63
  %22 = zext nneg i32 %21 to i64
  %23 = shl nuw i64 1, %22
  %24 = and i64 %23, %20
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %7

26:                                               ; preds = %7, %1
  %27 = tail call fastcc i32 @make_region_from_loop(ptr noundef %0) #22
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call fastcc void @VEC_loop_p_heap_safe_push(ptr noundef %0) #22
  br label %30

30:                                               ; preds = %11, %26, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_regions_from_the_rest() unnamed_addr #0 !prof !35 !PGOFuncName !692 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %4 = load i32, ptr @nr_regions, align 4, !tbaa !100
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr @rgn_table, align 8, !tbaa !36
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds %struct.region, ptr %7, i64 %8, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !534
  br label %11

11:                                               ; preds = %0, %6
  %12 = phi i32 [ %10, %6 ], [ 0, %0 ]
  store i32 %12, ptr %1, align 4, !tbaa !100
  %13 = load ptr, ptr @cfun, align 8, !tbaa !36
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !111
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !263
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 2
  %20 = tail call ptr @xmalloc(i64 noundef %19) #23
  %21 = load ptr, ptr @cfun, align 8, !tbaa !36
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !111
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !263
  %26 = sext i32 %25 to i64
  %27 = tail call ptr @xcalloc(i64 noundef %26, i64 noundef 4) #23
  %28 = load ptr, ptr @cfun, align 8, !tbaa !36
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !111
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !263
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %11, %34
  %35 = phi i64 [ %37, %34 ], [ 0, %11 ]
  %36 = getelementptr inbounds i32, ptr %20, i64 %35
  store i32 -1, ptr %36, align 4, !tbaa !100
  %37 = add nuw nsw i64 %35, 1
  %38 = load i32, ptr %31, align 8, !tbaa !263
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %34, label %41, !llvm.loop !693

41:                                               ; preds = %34, %11
  %42 = load ptr, ptr %30, align 8, !tbaa !554
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !113
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !518
  %47 = icmp eq ptr %46, %44
  br i1 %47, label %132, label %51

48:                                               ; preds = %69
  br i1 %47, label %132, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds i8, ptr %3, i64 8
  br label %73

51:                                               ; preds = %41, %69
  %52 = phi ptr [ %71, %69 ], [ %46, %41 ]
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !134
  %55 = icmp eq ptr %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %54, align 8, !tbaa !673
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 13
  %61 = load i32, ptr %60, align 8, !tbaa !694
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !128
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %20, i64 %67
  store i32 %57, ptr %68, align 4, !tbaa !100
  br label %69

69:                                               ; preds = %51, %56, %59, %64
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !518
  %72 = icmp eq ptr %71, %44
  br i1 %72, label %48, label %51, !llvm.loop !695

73:                                               ; preds = %49, %123
  %74 = phi ptr [ %46, %49 ], [ %125, %123 ]
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !128
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %27, i64 %77
  store i32 0, ptr %78, align 4, !tbaa !100
  %79 = load ptr, ptr @bbs_in_loop_rgns, align 8, !tbaa !36
  %80 = load i32, ptr %75, align 8, !tbaa !128
  %81 = lshr i32 %80, 6
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds %struct.simple_bitmap_def, ptr %79, i64 0, i32 3, i64 %82
  %84 = load i64, ptr %83, align 8, !tbaa !201
  %85 = and i32 %80, 63
  %86 = zext nneg i32 %85 to i64
  %87 = shl nuw i64 1, %86
  %88 = and i64 %87, %84
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %73
  %91 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %74) #22
  store i32 0, ptr %3, align 8, !tbaa.struct !120
  store ptr %91, ptr %50, align 8, !tbaa.struct !121
  %92 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %91, ptr noundef nonnull %2) #22, !range !55
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %123, label %94

94:                                               ; preds = %90, %115
  %95 = load ptr, ptr @bbs_in_loop_rgns, align 8, !tbaa !36
  %96 = load ptr, ptr %2, align 8, !tbaa !36
  %97 = load ptr, ptr %96, align 8, !tbaa !132
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %97, i64 0, i32 9
  %99 = load i32, ptr %98, align 8, !tbaa !128
  %100 = lshr i32 %99, 6
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds %struct.simple_bitmap_def, ptr %95, i64 0, i32 3, i64 %101
  %103 = load i64, ptr %102, align 8, !tbaa !201
  %104 = and i32 %99, 63
  %105 = zext nneg i32 %104 to i64
  %106 = shl nuw i64 1, %105
  %107 = and i64 %106, %103
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %94
  %110 = load i32, ptr %75, align 8, !tbaa !128
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, ptr %27, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !100
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr %112, align 4, !tbaa !100
  br label %115

115:                                              ; preds = %94, %109
  call fastcc void @ei_next(ptr noundef nonnull %3) #22
  %116 = load i32, ptr %3, align 8
  %117 = load ptr, ptr %50, align 8
  %118 = call fastcc zeroext i8 @ei_cond(i32 %116, ptr %117, ptr noundef nonnull %2) #22, !range !55
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %123, label %94, !llvm.loop !696

120:                                              ; preds = %73
  %121 = sext i32 %80 to i64
  %122 = getelementptr inbounds i32, ptr %27, i64 %121
  store i32 -1, ptr %122, align 4, !tbaa !100
  br label %123

123:                                              ; preds = %115, %90, %120
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 6
  %125 = load ptr, ptr %124, align 8, !tbaa !518
  %126 = load ptr, ptr @cfun, align 8, !tbaa !36
  %127 = getelementptr inbounds %struct.function, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !111
  %129 = getelementptr inbounds %struct.control_flow_graph, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !113
  %131 = icmp eq ptr %125, %130
  br i1 %131, label %132, label %73, !llvm.loop !697

132:                                              ; preds = %123, %41, %48
  %133 = load ptr, ptr @bbs_in_loop_rgns, align 8, !tbaa !36
  call void @extend_rgns(ptr noundef %27, ptr noundef nonnull %1, ptr noundef %133, ptr noundef %20) #23
  %134 = load ptr, ptr @cfun, align 8, !tbaa !36
  %135 = getelementptr inbounds %struct.function, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !111
  %137 = load ptr, ptr %136, align 8, !tbaa !554
  %138 = getelementptr inbounds %struct.basic_block_def, ptr %137, i64 0, i32 6
  %139 = load ptr, ptr %138, align 8, !tbaa !518
  %140 = getelementptr inbounds %struct.control_flow_graph, ptr %136, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !113
  %142 = icmp eq ptr %139, %141
  br i1 %142, label %197, label %143

143:                                              ; preds = %132, %188
  %144 = phi ptr [ %189, %188 ], [ %134, %132 ]
  %145 = phi ptr [ %191, %188 ], [ %139, %132 ]
  %146 = getelementptr inbounds %struct.basic_block_def, ptr %145, i64 0, i32 9
  %147 = load i32, ptr %146, align 8, !tbaa !128
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, ptr %27, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !100
  %151 = icmp sgt i32 %150, -1
  br i1 %151, label %152, label %188

152:                                              ; preds = %143
  %153 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !36
  %154 = load i32, ptr %1, align 4, !tbaa !100
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, ptr %153, i64 %155
  store i32 %147, ptr %156, align 4, !tbaa !100
  %157 = load ptr, ptr @rgn_table, align 8, !tbaa !36
  %158 = load i32, ptr @nr_regions, align 4, !tbaa !100
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.region, ptr %157, i64 %159
  store i32 1, ptr %160, align 4, !tbaa !527
  %161 = load i32, ptr %1, align 4, !tbaa !100
  %162 = add nsw i32 %161, 1
  store i32 %162, ptr %1, align 4, !tbaa !100
  %163 = load i32, ptr @nr_regions, align 4, !tbaa !100
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.region, ptr %157, i64 %164, i32 1
  store i32 %161, ptr %165, align 4, !tbaa !534
  %166 = load i32, ptr @nr_regions, align 4, !tbaa !100
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.region, ptr %157, i64 %167, i32 2
  %169 = load i8, ptr %168, align 4
  %170 = and i8 %169, -2
  store i8 %170, ptr %168, align 4
  %171 = load ptr, ptr @rgn_table, align 8, !tbaa !36
  %172 = load i32, ptr @nr_regions, align 4, !tbaa !100
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.region, ptr %171, i64 %173, i32 2
  %175 = load i8, ptr %174, align 4
  %176 = and i8 %175, -3
  store i8 %176, ptr %174, align 4
  %177 = load i32, ptr @nr_regions, align 4, !tbaa !100
  %178 = add nsw i32 %177, 1
  store i32 %178, ptr @nr_regions, align 4, !tbaa !100
  %179 = load ptr, ptr @containing_rgn, align 8, !tbaa !36
  %180 = load i32, ptr %146, align 8, !tbaa !128
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, ptr %179, i64 %181
  store i32 %177, ptr %182, align 4, !tbaa !100
  %183 = load ptr, ptr @block_to_bb, align 8, !tbaa !36
  %184 = load i32, ptr %146, align 8, !tbaa !128
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, ptr %183, i64 %185
  store i32 0, ptr %186, align 4, !tbaa !100
  %187 = load ptr, ptr @cfun, align 8, !tbaa !36
  br label %188

188:                                              ; preds = %143, %152
  %189 = phi ptr [ %144, %143 ], [ %187, %152 ]
  %190 = getelementptr inbounds %struct.basic_block_def, ptr %145, i64 0, i32 6
  %191 = load ptr, ptr %190, align 8, !tbaa !518
  %192 = getelementptr inbounds %struct.function, ptr %189, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !111
  %194 = getelementptr inbounds %struct.control_flow_graph, ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !113
  %196 = icmp eq ptr %191, %195
  br i1 %196, label %197, label %143, !llvm.loop !698

197:                                              ; preds = %188, %132
  call void @free(ptr noundef %27) #22
  call void @free(ptr noundef %20) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @make_region_from_loop(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !699 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !tbaa !100
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !700
  %5 = load ptr, ptr @compiler_params, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.param_info, ptr %5, i64 79, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !623
  %8 = icmp ugt i32 %4, %7
  br i1 %8, label %96, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %9, %16
  %12 = phi ptr [ %14, %16 ], [ %0, %9 ]
  %13 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !672
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %10, align 8, !tbaa !175
  %18 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %14, ptr noundef %17) #23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %11, label %96, !llvm.loop !701

20:                                               ; preds = %11
  %21 = tail call i32 @num_loop_insns(ptr noundef nonnull %0) #23
  %22 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 1
  store i32 %21, ptr %22, align 4, !tbaa !702
  %23 = load ptr, ptr @compiler_params, align 8, !tbaa !36
  %24 = getelementptr inbounds %struct.param_info, ptr %23, i64 80, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !623
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %96, label %27

27:                                               ; preds = %20
  %28 = tail call ptr @get_loop_body_in_custom_order(ptr noundef nonnull %0, ptr noundef nonnull @bb_top_order_comparator) #23
  %29 = load i32, ptr %3, align 4, !tbaa !700
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = zext i32 %29 to i64
  br label %36

33:                                               ; preds = %36
  %34 = add nuw nsw i64 %37, 1
  %35 = icmp eq i64 %34, %32
  br i1 %35, label %45, label %36, !llvm.loop !703

36:                                               ; preds = %31, %33
  %37 = phi i64 [ 0, %31 ], [ %34, %33 ]
  %38 = getelementptr inbounds ptr, ptr %28, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !36
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 13
  %41 = load i32, ptr %40, align 8, !tbaa !694
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %33, label %44

44:                                               ; preds = %36
  tail call void @free(ptr noundef nonnull %28) #22
  br label %96

45:                                               ; preds = %33, %27
  %46 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %0) #23
  %47 = load ptr, ptr %46, align 8, !tbaa !132
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5784, ptr noundef nonnull @.str.1) #23
  br label %50

50:                                               ; preds = %45, %49
  %51 = load ptr, ptr %28, align 8, !tbaa !36
  %52 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !168
  %54 = icmp eq ptr %51, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5785, ptr noundef nonnull @.str.1) #23
  br label %56

56:                                               ; preds = %50, %55
  %57 = tail call fastcc i32 @sel_create_new_region() #22
  call fastcc void @sel_add_block_to_region(ptr noundef %47, ptr noundef nonnull %2, i32 noundef %57) #22
  %58 = load ptr, ptr @bbs_in_loop_rgns, align 8, !tbaa !36
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !128
  tail call fastcc void @SET_BIT(ptr noundef %58, i32 noundef %60) #22
  %61 = load i32, ptr %3, align 4, !tbaa !700
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %94, label %63

63:                                               ; preds = %56
  %64 = icmp sgt i32 %57, -1
  br label %65

65:                                               ; preds = %63, %89
  %66 = phi ptr [ %58, %63 ], [ %71, %89 ]
  %67 = phi i64 [ 0, %63 ], [ %90, %89 ]
  br i1 %64, label %70, label %68

68:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5799, ptr noundef nonnull @.str.1) #23
  %69 = load ptr, ptr @bbs_in_loop_rgns, align 8, !tbaa !36
  br label %70

70:                                               ; preds = %65, %68
  %71 = phi ptr [ %66, %65 ], [ %69, %68 ]
  %72 = getelementptr inbounds ptr, ptr %28, i64 %67
  %73 = load ptr, ptr %72, align 8, !tbaa !36
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 9
  %75 = load i32, ptr %74, align 8, !tbaa !128
  %76 = lshr i32 %75, 6
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds %struct.simple_bitmap_def, ptr %71, i64 0, i32 3, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !201
  %80 = and i32 %75, 63
  %81 = zext nneg i32 %80 to i64
  %82 = shl nuw i64 1, %81
  %83 = and i64 %82, %79
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %70
  call fastcc void @sel_add_block_to_region(ptr noundef nonnull %73, ptr noundef nonnull %2, i32 noundef %57) #22
  %86 = load ptr, ptr %72, align 8, !tbaa !36
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 9
  %88 = load i32, ptr %87, align 8, !tbaa !128
  tail call fastcc void @SET_BIT(ptr noundef nonnull %71, i32 noundef %88) #22
  br label %89

89:                                               ; preds = %70, %85
  %90 = add nuw nsw i64 %67, 1
  %91 = load i32, ptr %3, align 4, !tbaa !700
  %92 = zext i32 %91 to i64
  %93 = icmp ult i64 %90, %92
  br i1 %93, label %65, label %94, !llvm.loop !704

94:                                               ; preds = %89, %56
  tail call void @free(ptr noundef nonnull %28) #22
  %95 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  store ptr inttoptr (i64 1 to ptr), ptr %95, align 8, !tbaa !573
  br label %96

96:                                               ; preds = %16, %20, %1, %94, %44
  %97 = phi i32 [ -1, %44 ], [ %57, %94 ], [ -1, %1 ], [ -1, %20 ], [ -1, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  ret i32 %97
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !705 {
  tail call fastcc void @VEC_loop_p_heap_reserve() #22
  %2 = load ptr, ptr @loop_nests, align 8, !tbaa !36
  tail call fastcc void @VEC_loop_p_base_quick_push(ptr noundef %2, ptr noundef %0) #22
  ret void
}

; Function Attrs: optsize
declare i32 @num_loop_insns(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_loop_body_in_custom_order(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @bb_top_order_comparator(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !35 !PGOFuncName !706 {
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = load ptr, ptr %1, align 8, !tbaa !36
  %5 = icmp eq ptr %3, %4
  %6 = load ptr, ptr @rev_top_order_index, align 8, !tbaa !36
  br i1 %5, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !128
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %6, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !100
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !128
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %6, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !100
  %18 = icmp eq i32 %12, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5737, ptr noundef nonnull @.str.1) #23
  %20 = load ptr, ptr @rev_top_order_index, align 8, !tbaa !36
  br label %21

21:                                               ; preds = %2, %7, %19
  %22 = phi ptr [ %6, %2 ], [ %6, %7 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !128
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %22, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !100
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !128
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %22, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !100
  %33 = icmp sgt i32 %27, %32
  %34 = select i1 %33, i32 -1, i32 1
  ret i32 %34
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #19 !prof !35 !PGOFuncName !707 {
  %3 = load ptr, ptr %0, align 8, !tbaa !688
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
  %15 = load i64, ptr %14, align 8, !tbaa !201
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !40
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !40
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !201
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !201
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_heap_reserve() unnamed_addr #0 !prof !35 !PGOFuncName !708 {
  %1 = load ptr, ptr @loop_nests, align 8, !tbaa !36
  %2 = tail call fastcc i32 @VEC_loop_p_base_space(ptr noundef %1) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #23
  store ptr %5, ptr @loop_nests, align 8, !tbaa !36
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_loop_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !35 !PGOFuncName !709 {
  %3 = load i32, ptr %0, align 8, !tbaa !191
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !191
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_space(ptr noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !710 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !711
  %6 = load i32, ptr %0, align 8, !tbaa !191
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @extend_rgns(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_add_loop_preheaders() local_unnamed_addr #0 !prof !35 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = load ptr, ptr @current_loop_nest, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !573
  %6 = icmp eq ptr %5, inttoptr (i64 1 to ptr)
  %7 = select i1 %6, ptr null, ptr %5
  store ptr %7, ptr %2, align 8, !tbaa !36
  %8 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %1) #22, !range !123
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %0, %10
  %11 = phi i32 [ %13, %10 ], [ 0, %0 ]
  %12 = load ptr, ptr %1, align 8, !tbaa !36
  tail call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull @last_added_blocks, ptr noundef %12) #22
  tail call fastcc void @sel_add_bb(ptr noundef %12) #22
  %13 = add nuw nsw i32 %11, 1
  %14 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %7, i32 noundef %13, ptr noundef nonnull %1) #22, !range !123
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %10, !llvm.loop !712

16:                                               ; preds = %10, %0
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  ret void
}

; Function Attrs: optsize
declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { optsize }
attributes #23 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!38, !38, i64 0}
!41 = !{!42, !37, i64 0}
!42 = !{!"_list_node", !37, i64 0, !38, i64 8}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"sel-sched-ir.c:_xlist_add"}
!46 = !{!"sel-sched-ir.c:_list_add"}
!47 = !{!"sel-sched-ir.c:_list_alloc"}
!48 = distinct !{!48, !44}
!49 = !{!50, !37, i64 0}
!50 = !{!"_bnd", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32}
!51 = !{!50, !37, i64 8}
!52 = !{!50, !37, i64 32}
!53 = !{!54, !37, i64 0}
!54 = !{!"", !37, i64 0, !38, i64 8, !38, i64 9}
!55 = !{i8 0, i8 2}
!56 = distinct !{!56, !44}
!57 = !{!"sel-sched-ir.c:_list_clear"}
!58 = distinct !{!58, !44}
!59 = !{!"sel-sched-ir.c:_list_remove"}
!60 = !{!61, !37, i64 0}
!61 = !{!"flist_tail_def", !37, i64 0, !37, i64 8}
!62 = !{!61, !37, i64 8}
!63 = distinct !{!63, !44}
!64 = distinct !{!64, !44}
!65 = !{!"sel-sched-ir.c:flist_remove"}
!66 = !{!"sel-sched-ir.c:fence_clear"}
!67 = !{!68, !37, i64 8}
!68 = !{!"_fence", !37, i64 0, !37, i64 8, !69, i64 16, !69, i64 20, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !69, i64 64, !37, i64 72, !69, i64 80, !37, i64 88, !69, i64 96, !69, i64 96, !69, i64 96, !69, i64 96}
!69 = !{!"int", !38, i64 0}
!70 = !{!68, !37, i64 32}
!71 = !{!68, !37, i64 40}
!72 = !{!68, !37, i64 56}
!73 = !{!"sel-sched-ir.c:delete_deps_context"}
!74 = !{!"sel-sched-ir.c:delete_target_context"}
!75 = !{!76, !37, i64 584}
!76 = !{!"gcc_target", !77, i64 0, !79, i64 368, !80, i64 664, !69, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !37, i64 800, !37, i64 808, !37, i64 816, !37, i64 824, !37, i64 832, !37, i64 840, !37, i64 848, !37, i64 856, !37, i64 864, !37, i64 872, !37, i64 880, !37, i64 888, !37, i64 896, !37, i64 904, !37, i64 912, !37, i64 920, !37, i64 928, !37, i64 936, !37, i64 944, !37, i64 952, !37, i64 960, !37, i64 968, !37, i64 976, !37, i64 984, !37, i64 992, !37, i64 1000, !37, i64 1008, !37, i64 1016, !37, i64 1024, !37, i64 1032, !37, i64 1040, !37, i64 1048, !37, i64 1056, !81, i64 1064, !81, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !82, i64 1176, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !81, i64 1464, !83, i64 1472, !37, i64 1664, !37, i64 1672, !37, i64 1680, !37, i64 1688, !37, i64 1696, !37, i64 1704, !37, i64 1712, !37, i64 1720, !37, i64 1728, !37, i64 1736, !37, i64 1744, !37, i64 1752, !37, i64 1760, !37, i64 1768, !37, i64 1776, !84, i64 1784, !85, i64 1792, !86, i64 1896, !87, i64 1968, !37, i64 2016, !38, i64 2024, !38, i64 2025, !38, i64 2026, !38, i64 2027, !38, i64 2028, !38, i64 2029, !38, i64 2030, !38, i64 2031, !38, i64 2032, !38, i64 2033, !38, i64 2034, !38, i64 2035}
!77 = !{!"asm_out", !37, i64 0, !37, i64 8, !37, i64 16, !78, i64 24, !78, i64 56, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !37, i64 312, !37, i64 320, !37, i64 328, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360}
!78 = !{!"asm_int_op", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!79 = !{!"sched", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288}
!80 = !{!"vectorize", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72}
!81 = !{!"long", !38, i64 0}
!82 = !{!"addr_space", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48}
!83 = !{!"calls", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184}
!84 = !{!"c", !37, i64 0}
!85 = !{!"cxx", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96}
!86 = !{!"emutls", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !38, i64 64, !38, i64 65}
!87 = !{!"target_option_hooks", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40}
!88 = !{!"sel-sched-ir.c:VEC_rtx_gc_free"}
!89 = !{!"sel-sched-ir.c:clear_deps_context"}
!90 = !{!"sel-sched-ir.c:clear_target_context"}
!91 = !{!76, !37, i64 576}
!92 = !{!93, !37, i64 0}
!93 = !{!"_def", !37, i64 0, !38, i64 8}
!94 = !{!93, !38, i64 8}
!95 = !{!"sel-sched-ir.c:alloc_target_context"}
!96 = !{!76, !37, i64 552}
!97 = !{!"sel-sched-ir.c:init_target_context"}
!98 = !{!76, !37, i64 560}
!99 = !{!76, !37, i64 568}
!100 = !{!69, !69, i64 0}
!101 = distinct !{!101, !44}
!102 = !{!"sel-sched-ir.c:_succ_iter_start"}
!103 = !{!104, !106, i64 48}
!104 = !{!"", !38, i64 0, !37, i64 8, !37, i64 16, !105, i64 24, !37, i64 40, !106, i64 48, !106, i64 50, !69, i64 52, !37, i64 56}
!105 = !{!"", !69, i64 0, !37, i64 8}
!106 = !{!"short", !38, i64 0}
!107 = !{!104, !37, i64 40}
!108 = !{!104, !106, i64 50}
!109 = !{!104, !69, i64 52}
!110 = !{!104, !37, i64 56}
!111 = !{!112, !37, i64 8}
!112 = !{!"function", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !69, i64 104, !69, i64 108, !69, i64 112, !69, i64 116, !69, i64 120, !69, i64 124, !37, i64 128, !69, i64 136, !69, i64 137, !69, i64 138, !69, i64 138, !69, i64 138, !69, i64 138, !69, i64 138, !69, i64 138, !69, i64 138, !69, i64 139, !69, i64 139, !69, i64 139, !69, i64 139, !69, i64 139, !69, i64 139, !69, i64 139}
!113 = !{!114, !37, i64 8}
!114 = !{!"control_flow_graph", !37, i64 0, !37, i64 8, !37, i64 16, !69, i64 24, !69, i64 28, !69, i64 32, !37, i64 40, !69, i64 48, !38, i64 52, !38, i64 60, !69, i64 68, !69, i64 72}
!115 = !{!116, !37, i64 8}
!116 = !{!"rtl_bb_info", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !69, i64 32}
!117 = !{!104, !38, i64 0}
!118 = !{!104, !69, i64 24}
!119 = !{!104, !37, i64 32}
!120 = !{i64 0, i64 4, !100, i64 8, i64 8, !36}
!121 = !{i64 0, i64 8, !36}
!122 = !{!"sel-sched-ir.c:_succ_iter_cond"}
!123 = !{i32 0, i32 2}
!124 = distinct !{!124, !44}
!125 = !{!104, !37, i64 8}
!126 = !{!127, !37, i64 8}
!127 = !{!"edge_def", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 24, !37, i64 32, !69, i64 40, !69, i64 44, !69, i64 48, !69, i64 52, !81, i64 56}
!128 = !{!129, !69, i64 80}
!129 = !{!"basic_block_def", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !37, i64 48, !37, i64 56, !38, i64 64, !81, i64 72, !69, i64 80, !69, i64 84, !69, i64 88, !69, i64 92, !69, i64 96}
!130 = !{!104, !37, i64 16}
!131 = !{!"sel-sched-ir.c:_eligible_successor_edge_p"}
!132 = !{!127, !37, i64 0}
!133 = !{!129, !37, i64 8}
!134 = !{!129, !37, i64 24}
!135 = !{!"sel-sched-ir.c:flist_add"}
!136 = !{!68, !37, i64 0}
!137 = !{!68, !69, i64 16}
!138 = !{!68, !69, i64 20}
!139 = !{!68, !37, i64 72}
!140 = !{!68, !69, i64 80}
!141 = !{!68, !37, i64 48}
!142 = !{!68, !69, i64 64}
!143 = !{!68, !37, i64 88}
!144 = !{!"sel-sched-ir.c:state_create"}
!145 = !{!"sel-sched-ir.c:create_deps_context"}
!146 = !{!"sel-sched-ir.c:_succ_iter_next"}
!147 = !{!"sel-sched-ir.c:ei_start_1"}
!148 = !{!"sel-sched-ir.c:VEC_edge_base_iterate"}
!149 = !{!150, !69, i64 0}
!150 = !{!"VEC_edge_base", !69, i64 0, !69, i64 4, !38, i64 8}
!151 = !{!"sel-sched-ir.c:VEC_edge_heap_free"}
!152 = !{!"sel-sched-ir.c:ei_cond"}
!153 = !{!"sel-sched-ir.c:get_all_loop_exits"}
!154 = distinct !{!154, !44}
!155 = distinct !{!155, !44}
!156 = distinct !{!156, !44}
!157 = distinct !{!157, !44}
!158 = !{!"sel-sched-ir.c:ei_next"}
!159 = !{!105, !69, i64 0}
!160 = !{!"sel-sched-ir.c:ei_end_p"}
!161 = !{!"sel-sched-ir.c:ei_edge"}
!162 = !{!"sel-sched-ir.c:VEC_edge_base_length"}
!163 = !{!"sel-sched-ir.c:ei_container"}
!164 = !{!"sel-sched-ir.c:VEC_edge_base_index"}
!165 = !{!"sel-sched-ir.c:sel_bb_empty_or_nop_p"}
!166 = !{!"sel-sched-ir.c:single_succ"}
!167 = !{!"sel-sched-ir.c:inner_loop_header_p"}
!168 = !{!169, !37, i64 8}
!169 = !{!"loop", !69, i64 0, !69, i64 4, !37, i64 8, !37, i64 16, !170, i64 24, !69, i64 32, !69, i64 36, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !171, i64 80, !171, i64 96, !38, i64 112, !38, i64 113, !69, i64 116, !37, i64 120, !37, i64 128, !38, i64 136, !37, i64 144}
!170 = !{!"lpt_decision", !69, i64 0, !69, i64 4}
!171 = !{!"", !81, i64 0, !81, i64 8}
!172 = !{!"sel-sched-ir.c:loop_outer"}
!173 = !{!169, !37, i64 40}
!174 = !{!"sel-sched-ir.c:get_loop_exit_edges_unique_dests"}
!175 = !{!169, !37, i64 16}
!176 = !{!112, !37, i64 32}
!177 = !{!178, !69, i64 0}
!178 = !{!"loops", !69, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!179 = !{!169, !37, i64 128}
!180 = !{!181, !37, i64 16}
!181 = !{!"loop_exit", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!182 = !{!181, !37, i64 0}
!183 = distinct !{!183, !44}
!184 = distinct !{!184, !44}
!185 = !{!"sel-sched-ir.c:VEC_edge_heap_safe_push"}
!186 = !{!"sel-sched-ir.c:VEC_edge_base_ordered_remove"}
!187 = !{!"sel-sched-ir.c:single_succ_edge"}
!188 = !{!"sel-sched-ir.c:single_succ_p"}
!189 = !{!"sel-sched-ir.c:loop_depth"}
!190 = !{!"sel-sched-ir.c:VEC_loop_p_base_length"}
!191 = !{!192, !69, i64 0}
!192 = !{!"VEC_loop_p_base", !69, i64 0, !69, i64 4, !38, i64 8}
!193 = !{!"sel-sched-ir.c:VEC_loop_p_base_index"}
!194 = !{!"sel-sched-ir.c:VEC_edge_heap_reserve"}
!195 = !{!"sel-sched-ir.c:VEC_edge_base_quick_push"}
!196 = !{!"sel-sched-ir.c:VEC_edge_base_space"}
!197 = !{!150, !69, i64 4}
!198 = !{!"sel-sched-ir.c:init_fence_for_scheduling"}
!199 = !{!68, !37, i64 24}
!200 = !{!"sel-sched-ir.c:state_alloc"}
!201 = !{!81, !81, i64 0}
!202 = !{!"sel-sched-ir.c:alloc_deps_context"}
!203 = !{i64 0, i64 8, !36, i64 8, i64 8, !36, i64 16, i64 4, !100, i64 20, i64 4, !100, i64 24, i64 8, !36, i64 32, i64 8, !36, i64 40, i64 8, !36, i64 48, i64 8, !36, i64 56, i64 8, !36, i64 64, i64 4, !100, i64 72, i64 8, !36, i64 80, i64 4, !100, i64 88, i64 8, !36, i64 96, i64 4, !100, i64 96, i64 4, !100, i64 96, i64 4, !100, i64 96, i64 4, !100}
!204 = !{!"sel-sched-ir.c:merge_fences"}
!205 = !{!129, !37, i64 48}
!206 = distinct !{!206, !44}
!207 = distinct !{!207, !44}
!208 = !{!127, !69, i64 52}
!209 = !{!"sel-sched-ir.c:state_free"}
!210 = !{!"sel-sched-ir.c:reset_deps_context"}
!211 = !{!"sel-sched-ir.c:VEC_rtx_base_block_remove"}
!212 = !{!213, !69, i64 0}
!213 = !{!"VEC_rtx_base", !69, i64 0, !69, i64 4, !38, i64 8}
!214 = !{!"sel-sched-ir.c:VEC_rtx_base_length"}
!215 = !{!"sel-sched-ir.c:add_to_fences"}
!216 = !{!"sel-sched-ir.c:state_create_copy"}
!217 = !{!"sel-sched-ir.c:create_copy_of_deps_context"}
!218 = !{!"sel-sched-ir.c:create_copy_of_target_context"}
!219 = !{!"sel-sched-ir.c:VEC_rtx_gc_copy"}
!220 = !{!221, !69, i64 0}
!221 = !{!"VEC_rtx_gc", !213, i64 0}
!222 = !{!"sel-sched-ir.c:state_copy"}
!223 = !{!"sel-sched-ir.c:copy_deps_context"}
!224 = !{!"sel-sched-ir.c:copy_target_context"}
!225 = !{!226, !69, i64 8}
!226 = !{!"", !37, i64 0, !69, i64 8, !69, i64 12, !37, i64 16, !69, i64 24, !69, i64 28, !69, i64 32}
!227 = !{!226, !37, i64 0}
!228 = !{!226, !69, i64 24}
!229 = !{!226, !69, i64 28}
!230 = !{!226, !37, i64 16}
!231 = !{!226, !69, i64 32}
!232 = !{!226, !69, i64 12}
!233 = distinct !{!233, !44}
!234 = !{!235, !69, i64 8}
!235 = !{!"", !37, i64 0, !69, i64 8, !69, i64 12}
!236 = !{!235, !37, i64 0}
!237 = !{!238, !69, i64 68}
!238 = !{!"_sel_insn_data", !239, i64 0, !69, i64 64, !69, i64 68, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !240, i64 112, !37, i64 296, !69, i64 304, !69, i64 308, !69, i64 312, !69, i64 316, !69, i64 316, !69, i64 316}
!239 = !{!"_expr", !37, i64 0, !69, i64 8, !69, i64 12, !69, i64 16, !69, i64 20, !69, i64 24, !69, i64 28, !69, i64 32, !69, i64 36, !69, i64 40, !37, i64 48, !38, i64 56, !69, i64 57, !69, i64 57, !69, i64 57, !69, i64 57}
!240 = !{!"deps", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !69, i64 32, !69, i64 36, !69, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !69, i64 80, !37, i64 88, !69, i64 96, !37, i64 104, !241, i64 112, !241, i64 144, !69, i64 176, !69, i64 180}
!241 = !{!"bitmap_head_def", !37, i64 0, !37, i64 8, !69, i64 16, !37, i64 24}
!242 = !{!"sel-sched-ir.c:set_insn_init"}
!243 = !{!"sel-sched-ir.c:VEC_sel_insn_data_def_base_index"}
!244 = !{!"sel-sched-ir.c:VEC_int_base_index"}
!245 = !{!"sel-sched-ir.c:sel_init_new_insn"}
!246 = !{!239, !37, i64 0}
!247 = !{!239, !69, i64 8}
!248 = !{!239, !69, i64 12}
!249 = !{!239, !69, i64 16}
!250 = !{!239, !69, i64 24}
!251 = !{!239, !69, i64 32}
!252 = !{!239, !69, i64 36}
!253 = !{!239, !38, i64 56}
!254 = !{!"sel-sched-ir.c:insn_is_the_only_one_in_bb_p"}
!255 = !{!"sel-sched-ir.c:extend_bb_info"}
!256 = !{!"sel-sched-ir.c:create_initial_data_sets"}
!257 = !{!258, !37, i64 0}
!258 = !{!"", !37, i64 0, !38, i64 8}
!259 = !{!258, !38, i64 8}
!260 = !{!"sel-sched-ir.c:extend_insn_data"}
!261 = !{!"sel-sched-ir.c:init_insn_data"}
!262 = !{!"sel-sched-ir.c:init_simplejump_data"}
!263 = !{!114, !69, i64 32}
!264 = !{!"sel-sched-ir.c:extend_region_bb_info"}
!265 = !{!"sel-sched-ir.c:VEC_sel_region_bb_info_def_heap_safe_grow_cleared"}
!266 = !{!"sel-sched-ir.c:VEC_sel_region_bb_info_def_base_length"}
!267 = !{!268, !69, i64 0}
!268 = !{!"VEC_sel_region_bb_info_def_base", !69, i64 0, !69, i64 4, !38, i64 8}
!269 = !{!"sel-sched-ir.c:VEC_sel_region_bb_info_def_heap_safe_grow"}
!270 = !{}
!271 = !{!"sel-sched-ir.c:VEC_sel_region_bb_info_def_base_address"}
!272 = !{!"sel-sched-ir.c:VEC_sel_region_bb_info_def_heap_reserve_exact"}
!273 = !{!"sel-sched-ir.c:VEC_sel_region_bb_info_def_base_space"}
!274 = !{!268, !69, i64 4}
!275 = !{!"sel-sched-ir.c:VEC_sel_global_bb_info_def_base_index"}
!276 = !{!"sel-sched-ir.c:invalidate_av_set"}
!277 = !{!278, !69, i64 16}
!278 = !{!"", !37, i64 0, !37, i64 8, !69, i64 16}
!279 = !{!278, !37, i64 8}
!280 = !{!"sel-sched-ir.c:VEC_sel_region_bb_info_def_base_index"}
!281 = !{!"sel-sched-ir.c:VEC_sel_insn_data_def_base_length"}
!282 = !{!283, !69, i64 0}
!283 = !{!"VEC_sel_insn_data_def_base", !69, i64 0, !69, i64 4, !38, i64 8}
!284 = !{!"sel-sched-ir.c:VEC_sel_insn_data_def_base_space"}
!285 = !{!283, !69, i64 4}
!286 = !{!"sel-sched-ir.c:VEC_sel_insn_data_def_heap_safe_grow_cleared"}
!287 = !{!"sel-sched-ir.c:VEC_sel_insn_data_def_heap_safe_grow"}
!288 = !{!"sel-sched-ir.c:VEC_sel_insn_data_def_base_address"}
!289 = !{!"sel-sched-ir.c:VEC_sel_insn_data_def_heap_reserve_exact"}
!290 = !{!239, !37, i64 48}
!291 = !{!292, !37, i64 8}
!292 = !{!"expr_history_def_1", !69, i64 0, !37, i64 8, !37, i64 16, !69, i64 24, !69, i64 28}
!293 = !{!292, !37, i64 16}
!294 = distinct !{!294, !44}
!295 = !{!239, !69, i64 28}
!296 = !{!239, !69, i64 40}
!297 = !{!"sel-sched-ir.c:prepare_insn_expr"}
!298 = !{!"sel-sched-ir.c:vinsn_create"}
!299 = !{!"sel-sched-ir.c:first_time_insn_init"}
!300 = !{!238, !37, i64 72}
!301 = !{!"sel-sched-ir.c:init_first_time_insn_data"}
!302 = !{!238, !37, i64 80}
!303 = !{!238, !37, i64 88}
!304 = !{!238, !37, i64 104}
!305 = !{!"sel-sched-ir.c:free_history_vect"}
!306 = distinct !{!306, !44}
!307 = !{!"sel-sched-ir.c:VEC_expr_history_def_base_iterate"}
!308 = !{!309, !69, i64 0}
!309 = !{!"VEC_expr_history_def_base", !69, i64 0, !69, i64 4, !38, i64 8}
!310 = !{!311, !69, i64 64}
!311 = !{!"vinsn_def", !37, i64 0, !312, i64 8, !69, i64 56, !69, i64 60, !69, i64 64, !69, i64 68, !38, i64 72}
!312 = !{!"idata_def", !69, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40}
!313 = !{!"sel-sched-ir.c:VEC_expr_history_def_heap_free"}
!314 = !{!"sel-sched-ir.c:vinsn_init"}
!315 = !{!311, !37, i64 0}
!316 = !{!311, !69, i64 68}
!317 = !{!318, !69, i64 256}
!318 = !{!"df", !38, i64 0, !38, i64 64, !37, i64 128, !319, i64 136, !319, i64 176, !37, i64 216, !37, i64 224, !37, i64 232, !69, i64 240, !69, i64 244, !37, i64 248, !69, i64 256, !69, i64 260, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !37, i64 312, !37, i64 320, !37, i64 328, !37, i64 336, !69, i64 344, !69, i64 348, !37, i64 352, !69, i64 360, !69, i64 364, !38, i64 365, !38, i64 366}
!319 = !{!"df_ref_info", !37, i64 0, !37, i64 8, !37, i64 16, !69, i64 24, !69, i64 28, !69, i64 32, !69, i64 36}
!320 = !{!318, !37, i64 248}
!321 = !{!76, !37, i64 648}
!322 = !{!311, !69, i64 8}
!323 = !{!311, !37, i64 24}
!324 = !{!311, !69, i64 56}
!325 = !{!76, !37, i64 632}
!326 = !{!311, !38, i64 72}
!327 = !{!"sel-sched-ir.c:init_id_from_df"}
!328 = !{!"sel-sched-ir.c:deps_init_id"}
!329 = !{!330, !69, i64 0}
!330 = !{!"", !69, i64 0, !37, i64 8, !38, i64 16, !38, i64 17}
!331 = !{!330, !37, i64 8}
!332 = !{!330, !38, i64 16}
!333 = !{!"sel-sched-ir.c:hash_with_unspec_callback"}
!334 = !{!"sel-sched-ir.c:setup_id_for_insn"}
!335 = !{!312, !69, i64 0}
!336 = !{!312, !37, i64 24}
!337 = !{!312, !37, i64 40}
!338 = !{!312, !37, i64 32}
!339 = !{!"sel-sched-ir.c:setup_id_lhs_rhs"}
!340 = !{!312, !37, i64 16}
!341 = !{!312, !37, i64 8}
!342 = !{!"sel-sched-ir.c:maybe_downgrade_id_to_use"}
!343 = !{!344, !37, i64 8}
!344 = !{!"df_insn_info", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !69, i64 40}
!345 = distinct !{!345, !44}
!346 = !{!344, !37, i64 0}
!347 = !{!"sel-sched-ir.c:setup_id_reg_sets"}
!348 = distinct !{!348, !44}
!349 = !{!344, !37, i64 16}
!350 = distinct !{!350, !44}
!351 = !{!"sel-sched-ir.c:lhs_and_rhs_separable_p"}
!352 = !{!"sel-sched-ir.c:deps_init_id_start_insn"}
!353 = !{!"sel-sched-ir.c:deps_init_id_finish_insn"}
!354 = !{!"sel-sched-ir.c:deps_init_id_start_lhs"}
!355 = !{!"sel-sched-ir.c:deps_init_id_finish_lhs"}
!356 = !{!"sel-sched-ir.c:deps_init_id_start_rhs"}
!357 = !{!"sel-sched-ir.c:deps_init_id_finish_rhs"}
!358 = !{!"sel-sched-ir.c:deps_init_id_note_reg_set"}
!359 = !{!"sel-sched-ir.c:deps_init_id_note_reg_clobber"}
!360 = !{!"sel-sched-ir.c:deps_init_id_note_reg_use"}
!361 = !{!"sel-sched-ir.c:hash_transformed_insns"}
!362 = !{!363, !37, i64 0}
!363 = !{!"transformed_insns", !37, i64 0, !37, i64 8, !69, i64 16, !69, i64 20, !69, i64 24, !69, i64 24}
!364 = !{!311, !69, i64 60}
!365 = !{!"sel-sched-ir.c:eq_transformed_insns"}
!366 = !{!"sel-sched-ir.c:free_transformed_insns"}
!367 = !{!363, !37, i64 8}
!368 = !{!"sel-sched-ir.c:init_expr"}
!369 = !{!239, !69, i64 20}
!370 = !{!"sel-sched-ir.c:get_seqno_of_a_pred"}
!371 = !{!238, !37, i64 0}
!372 = distinct !{!372, !44}
!373 = !{!"sel-sched-ir.c:single_pred_p"}
!374 = !{!129, !37, i64 0}
!375 = !{!"sel-sched-ir.c:single_pred"}
!376 = !{!"sel-sched-ir.c:cfg_preds"}
!377 = !{!"sel-sched-ir.c:single_pred_edge"}
!378 = !{!"sel-sched-ir.c:cfg_preds_1"}
!379 = distinct !{!379, !44}
!380 = !{!235, !69, i64 12}
!381 = distinct !{!381, !44}
!382 = !{!116, !37, i64 0}
!383 = !{!"sel-sched-ir.c:vinsn_delete"}
!384 = !{!311, !37, i64 32}
!385 = !{!311, !37, i64 48}
!386 = !{!311, !37, i64 40}
!387 = !{!"sel-sched-ir.c:sel_insn_rtx_cost"}
!388 = !{!"sel-sched-ir.c:recog_memoized"}
!389 = !{!"sel-sched-ir.c:VEC_haifa_deps_insn_data_def_base_index"}
!390 = !{!238, !37, i64 96}
!391 = distinct !{!391, !44}
!392 = !{!"sel-sched-ir.c:find_in_history_vect_1"}
!393 = !{!292, !69, i64 0}
!394 = !{!"sel-sched-ir.c:bmp_iter_set_init"}
!395 = !{!241, !37, i64 0}
!396 = !{!397, !37, i64 0}
!397 = !{!"", !37, i64 0, !37, i64 8, !69, i64 16, !81, i64 24}
!398 = !{!397, !37, i64 8}
!399 = !{!400, !69, i64 16}
!400 = !{!"bitmap_element_def", !37, i64 0, !37, i64 8, !69, i64 16, !38, i64 24}
!401 = !{!397, !69, i64 16}
!402 = !{!397, !81, i64 24}
!403 = !{!"sel-sched-ir.c:bmp_iter_set"}
!404 = distinct !{!404, !44}
!405 = distinct !{!405, !44}
!406 = !{!400, !37, i64 0}
!407 = !{!"sel-sched-ir.c:bmp_iter_next"}
!408 = !{!"sel-sched-ir.c:VEC_expr_history_def_base_length"}
!409 = !{!"sel-sched-ir.c:VEC_expr_history_def_base_address"}
!410 = !{!292, !69, i64 24}
!411 = !{!292, !69, i64 28}
!412 = !{!"sel-sched-ir.c:VEC_expr_history_def_base_index"}
!413 = !{!"sel-sched-ir.c:VEC_expr_history_def_heap_safe_insert"}
!414 = !{!"sel-sched-ir.c:VEC_expr_history_def_heap_reserve"}
!415 = !{!"sel-sched-ir.c:VEC_expr_history_def_base_quick_insert"}
!416 = !{i64 0, i64 4, !100, i64 8, i64 8, !36, i64 16, i64 8, !36, i64 24, i64 4, !100, i64 28, i64 4, !100}
!417 = !{!"sel-sched-ir.c:VEC_expr_history_def_base_space"}
!418 = !{!309, !69, i64 4}
!419 = !{!"sel-sched-ir.c:skip_unspecs_callback"}
!420 = !{!"sel-sched-ir.c:VEC_expr_history_def_heap_copy"}
!421 = !{!422, !69, i64 0}
!422 = !{!"VEC_expr_history_def_heap", !309, i64 0}
!423 = distinct !{!423, !44}
!424 = !{!"sel-sched-ir.c:update_target_availability"}
!425 = !{!"sel-sched-ir.c:update_speculative_bits"}
!426 = !{i32 -1, i32 3}
!427 = !{!311, !37, i64 16}
!428 = !{!"sel-sched-ir.c:rhs_regno"}
!429 = distinct !{!429, !44}
!430 = !{!"sel-sched-ir.c:_list_iter_start"}
!431 = !{!54, !38, i64 8}
!432 = !{!54, !38, i64 9}
!433 = !{!"sel-sched-ir.c:_list_iter_cond_expr"}
!434 = distinct !{!434, !44}
!435 = !{!"sel-sched-ir.c:set_unavailable_target_for_expr"}
!436 = distinct !{!436, !44}
!437 = distinct !{!437, !44}
!438 = !{!"sel-sched-ir.c:_list_iter_next"}
!439 = !{!"sel-sched-ir.c:av_set_add_element"}
!440 = !{!"sel-sched-ir.c:_list_iter_remove"}
!441 = !{!"sel-sched-ir.c:av_set_lookup_other_equiv_expr"}
!442 = distinct !{!442, !44}
!443 = distinct !{!443, !44}
!444 = distinct !{!444, !44}
!445 = !{!"sel-sched-ir.c:join_distinct_sets"}
!446 = distinct !{!446, !44}
!447 = distinct !{!447, !44}
!448 = !{!"sel-sched-ir.c:av_set_lookup_and_remove"}
!449 = distinct !{!449, !44}
!450 = !{!"sel-sched-ir.c:av_set_add_nocopy"}
!451 = !{i64 0, i64 8, !36, i64 8, i64 4, !100, i64 12, i64 4, !100, i64 16, i64 4, !100, i64 20, i64 4, !100, i64 24, i64 4, !100, i64 28, i64 4, !100, i64 32, i64 4, !100, i64 36, i64 4, !100, i64 40, i64 4, !100, i64 48, i64 8, !36, i64 56, i64 1, !40, i64 57, i64 4, !100, i64 57, i64 4, !100, i64 57, i64 4, !100, i64 57, i64 4, !100}
!452 = !{!"sel-sched-ir.c:_list_iter_remove_nofree"}
!453 = !{!"sel-sched-ir.c:_list_remove_nofree"}
!454 = distinct !{!454, !44}
!455 = distinct !{!455, !44}
!456 = distinct !{!456, !44}
!457 = distinct !{!457, !44}
!458 = distinct !{!458, !44}
!459 = !{!"sel-sched-ir.c:init_global_and_expr_for_bb"}
!460 = !{!"sel-sched-ir.c:init_global_and_expr_for_insn"}
!461 = !{!462, !37, i64 0}
!462 = !{!"", !37, i64 0}
!463 = !{!238, !37, i64 296}
!464 = !{!465, !69, i64 4}
!465 = !{!"_haifa_insn_data", !69, i64 0, !69, i64 4, !69, i64 8, !69, i64 12, !69, i64 16, !106, i64 20, !69, i64 22, !69, i64 22, !38, i64 23, !69, i64 24, !69, i64 28, !69, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !69, i64 88}
!466 = !{!"sel-sched-ir.c:VEC_haifa_insn_data_def_base_index"}
!467 = !{!114, !37, i64 16}
!468 = distinct !{!468, !44}
!469 = !{!"sel-sched-ir.c:VEC_basic_block_heap_alloc"}
!470 = !{!"sel-sched-ir.c:VEC_basic_block_base_quick_push"}
!471 = !{!472, !69, i64 0}
!472 = !{!"VEC_basic_block_base", !69, i64 0, !69, i64 4, !38, i64 8}
!473 = !{!"sel-sched-ir.c:VEC_basic_block_base_index"}
!474 = !{!"sel-sched-ir.c:finish_global_and_expr_for_bb"}
!475 = !{!"sel-sched-ir.c:finish_global_and_expr_insn"}
!476 = !{!238, !69, i64 64}
!477 = !{!"sel-sched-ir.c:VEC_basic_block_heap_free"}
!478 = !{!"sel-sched-ir.c:finish_insns"}
!479 = distinct !{!479, !44}
!480 = !{!"sel-sched-ir.c:free_first_time_insn_data"}
!481 = !{!"sel-sched-ir.c:VEC_sel_insn_data_def_heap_free"}
!482 = !{!483, !37, i64 0}
!483 = !{!"", !37, i64 0, !69, i64 8, !37, i64 16, !37, i64 24, !38, i64 32}
!484 = !{!483, !37, i64 24}
!485 = !{!483, !69, i64 8}
!486 = distinct !{!486, !44}
!487 = !{!240, !37, i64 104}
!488 = !{!483, !37, i64 16}
!489 = !{!240, !69, i64 176}
!490 = distinct !{!490, !44}
!491 = !{!"sel-sched-ir.c:setup_has_dependence_sched_deps_info"}
!492 = !{!238, !69, i64 312}
!493 = !{!"sel-sched-ir.c:has_dependence_start_insn"}
!494 = !{!"sel-sched-ir.c:has_dependence_finish_insn"}
!495 = !{!"sel-sched-ir.c:has_dependence_start_lhs"}
!496 = !{!"sel-sched-ir.c:has_dependence_finish_lhs"}
!497 = !{!"sel-sched-ir.c:has_dependence_start_rhs"}
!498 = !{!"sel-sched-ir.c:has_dependence_finish_rhs"}
!499 = !{!"sel-sched-ir.c:has_dependence_note_reg_set"}
!500 = !{!501, !37, i64 8}
!501 = !{!"deps_reg", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !69, i64 32, !69, i64 36}
!502 = !{!501, !37, i64 24}
!503 = !{!501, !37, i64 0}
!504 = !{!"sel-sched-ir.c:has_dependence_note_reg_clobber"}
!505 = !{!"sel-sched-ir.c:has_dependence_note_reg_use"}
!506 = !{!"sel-sched-ir.c:has_dependence_note_mem_dep"}
!507 = !{!"sel-sched-ir.c:has_dependence_note_dep"}
!508 = !{!509, !37, i64 0}
!509 = !{!"", !37, i64 0, !69, i64 8, !38, i64 12}
!510 = !{!509, !69, i64 8}
!511 = !{!"sel-sched-ir.c:tick_check_note_mem_dep"}
!512 = !{!"sel-sched-ir.c:tick_check_note_dep"}
!513 = !{!"sel-sched-ir.c:tick_check_dep_with_dw"}
!514 = !{!238, !69, i64 24}
!515 = !{!238, !69, i64 304}
!516 = !{i64 0, i64 8, !36, i64 8, i64 4, !100, i64 12, i64 4, !100, i64 16, i64 4, !100, i64 20, i64 4, !100, i64 24, i64 4, !100, i64 28, i64 4, !100, i64 32, i64 4, !100, i64 36, i64 4, !100, i64 40, i64 4, !100, i64 48, i64 8, !36, i64 56, i64 1, !40, i64 57, i64 4, !100, i64 57, i64 4, !100, i64 57, i64 4, !100, i64 57, i64 4, !100, i64 64, i64 4, !100, i64 68, i64 4, !100, i64 72, i64 8, !36, i64 80, i64 8, !36, i64 88, i64 8, !36, i64 96, i64 8, !36, i64 104, i64 8, !36, i64 112, i64 8, !36, i64 120, i64 8, !36, i64 128, i64 8, !36, i64 136, i64 8, !36, i64 144, i64 4, !100, i64 148, i64 4, !100, i64 152, i64 4, !100, i64 160, i64 8, !36, i64 168, i64 8, !36, i64 176, i64 8, !36, i64 184, i64 8, !36, i64 192, i64 4, !100, i64 200, i64 8, !36, i64 208, i64 4, !100, i64 216, i64 8, !36, i64 224, i64 8, !36, i64 232, i64 8, !36, i64 240, i64 4, !100, i64 248, i64 8, !36, i64 256, i64 8, !36, i64 264, i64 8, !36, i64 272, i64 4, !100, i64 280, i64 8, !36, i64 288, i64 4, !100, i64 292, i64 4, !100, i64 296, i64 8, !36, i64 304, i64 4, !100, i64 308, i64 4, !100, i64 312, i64 4, !100, i64 316, i64 4, !100, i64 316, i64 4, !100, i64 316, i64 4, !100}
!517 = distinct !{!517, !44}
!518 = !{!129, !37, i64 56}
!519 = !{!127, !69, i64 48}
!520 = !{!"sel-sched-ir.c:maybe_tidy_empty_bb"}
!521 = distinct !{!521, !44}
!522 = distinct !{!522, !44}
!523 = distinct !{!523, !44}
!524 = !{!"sel-sched-ir.c:sel_recompute_toporder"}
!525 = !{!114, !69, i64 24}
!526 = distinct !{!526, !44}
!527 = !{!528, !69, i64 0}
!528 = !{!"", !69, i64 0, !69, i64 4, !69, i64 8, !69, i64 8}
!529 = !{!"sel-sched-ir.c:move_bb_info"}
!530 = !{!278, !37, i64 0}
!531 = !{!"sel-sched-ir.c:remove_empty_bb"}
!532 = !{!"sel-sched-ir.c:sel_remove_bb"}
!533 = !{!"sel-sched-ir.c:remove_bb_from_region"}
!534 = !{!528, !69, i64 4}
!535 = distinct !{!535, !44}
!536 = distinct !{!536, !44}
!537 = !{!"sel-sched-ir.c:return_bb_to_pool"}
!538 = !{!129, !37, i64 16}
!539 = !{!"sel-sched-ir.c:delete_and_free_basic_block"}
!540 = !{!"sel-sched-ir.c:free_lv_set"}
!541 = distinct !{!541, !44}
!542 = distinct !{!542, !44}
!543 = distinct !{!543, !44}
!544 = !{!"sel-sched-ir.c:VEC_sel_global_bb_info_def_heap_safe_grow_cleared"}
!545 = !{!"sel-sched-ir.c:VEC_sel_global_bb_info_def_base_length"}
!546 = !{!547, !69, i64 0}
!547 = !{!"VEC_sel_global_bb_info_def_base", !69, i64 0, !69, i64 4, !38, i64 8}
!548 = !{!"sel-sched-ir.c:VEC_sel_global_bb_info_def_heap_safe_grow"}
!549 = !{!"sel-sched-ir.c:VEC_sel_global_bb_info_def_base_address"}
!550 = !{!"sel-sched-ir.c:VEC_sel_global_bb_info_def_heap_reserve_exact"}
!551 = !{!"sel-sched-ir.c:VEC_sel_global_bb_info_def_base_space"}
!552 = !{!547, !69, i64 4}
!553 = !{!"sel-sched-ir.c:VEC_sel_global_bb_info_def_heap_free"}
!554 = !{!114, !37, i64 0}
!555 = distinct !{!555, !44}
!556 = !{!"sel-sched-ir.c:init_lv_set"}
!557 = !{!558, !37, i64 16}
!558 = !{!"df_lr_bb_info", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!559 = !{!"sel-sched-ir.c:df_lr_get_bb_info"}
!560 = !{!561, !69, i64 16}
!561 = !{!"dataflow", !37, i64 0, !37, i64 8, !69, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !69, i64 48, !38, i64 52, !38, i64 53, !38, i64 54}
!562 = !{!561, !37, i64 8}
!563 = distinct !{!563, !44}
!564 = !{!"sel-sched-ir.c:free_av_set"}
!565 = !{!"sel-sched-ir.c:exchange_lv_sets"}
!566 = !{!"sel-sched-ir.c:exchange_av_sets"}
!567 = !{!"sel-sched-ir.c:init_bb"}
!568 = !{!"sel-sched-ir.c:sel_restore_notes"}
!569 = distinct !{!569, !44}
!570 = distinct !{!570, !44}
!571 = distinct !{!571, !44}
!572 = !{!"sel-sched-ir.c:sel_remove_loop_preheader"}
!573 = !{!169, !37, i64 64}
!574 = distinct !{!574, !44}
!575 = distinct !{!575, !44}
!576 = distinct !{!576, !44}
!577 = distinct !{!577, !44}
!578 = !{!"sel-sched-ir.c:finish_region_bb_info"}
!579 = !{!"sel-sched-ir.c:VEC_basic_block_base_length"}
!580 = !{!"sel-sched-ir.c:VEC_basic_block_heap_safe_push"}
!581 = distinct !{!581, !44}
!582 = !{!"sel-sched-ir.c:VEC_basic_block_base_iterate"}
!583 = !{!"sel-sched-ir.c:ei_safe_edge"}
!584 = !{!"sel-sched-ir.c:VEC_basic_block_heap_reserve"}
!585 = !{!"sel-sched-ir.c:VEC_basic_block_base_space"}
!586 = !{!472, !69, i64 4}
!587 = !{!"sel-sched-ir.c:VEC_sel_region_bb_info_def_heap_free"}
!588 = !{!589, !69, i64 12}
!589 = !{!"", !37, i64 0, !69, i64 8, !69, i64 12, !69, i64 16}
!590 = !{!589, !37, i64 0}
!591 = !{!592, !37, i64 8}
!592 = !{!"succs_info", !106, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !69, i64 32, !69, i64 36, !69, i64 40}
!593 = !{!592, !37, i64 24}
!594 = !{!592, !37, i64 16}
!595 = !{!592, !69, i64 32}
!596 = !{!592, !69, i64 40}
!597 = !{!592, !69, i64 36}
!598 = !{!"sel-sched-ir.c:VEC_int_base_block_remove"}
!599 = !{!600, !69, i64 0}
!600 = !{!"VEC_int_base", !69, i64 0, !69, i64 4, !38, i64 8}
!601 = !{!"sel-sched-ir.c:VEC_int_base_length"}
!602 = distinct !{!602, !44}
!603 = !{!"sel-sched-ir.c:alloc_succs_info"}
!604 = !{!589, !69, i64 16}
!605 = !{!589, !69, i64 8}
!606 = !{!"sel-sched-ir.c:VEC_rtx_heap_safe_push"}
!607 = !{!"sel-sched-ir.c:VEC_int_heap_safe_push"}
!608 = !{!"sel-sched-ir.c:VEC_rtx_heap_alloc"}
!609 = !{!"sel-sched-ir.c:VEC_int_heap_alloc"}
!610 = !{!"sel-sched-ir.c:VEC_rtx_heap_reserve"}
!611 = !{!"sel-sched-ir.c:VEC_rtx_base_quick_push"}
!612 = !{!"sel-sched-ir.c:VEC_rtx_base_space"}
!613 = !{!213, !69, i64 4}
!614 = !{!"sel-sched-ir.c:VEC_int_heap_reserve"}
!615 = !{!"sel-sched-ir.c:VEC_int_base_quick_push"}
!616 = !{!"sel-sched-ir.c:VEC_int_base_space"}
!617 = !{!600, !69, i64 4}
!618 = distinct !{!618, !44}
!619 = !{!"sel-sched-ir.c:bb_next_bb"}
!620 = !{!238, !69, i64 20}
!621 = distinct !{!621, !44}
!622 = !{!"sel-sched-ir.c:VEC_rtx_heap_free"}
!623 = !{!624, !69, i64 8}
!624 = !{!"param_info", !37, i64 0, !69, i64 8, !38, i64 12, !69, i64 16, !69, i64 20, !37, i64 24}
!625 = distinct !{!625, !44}
!626 = !{!"sel-sched-ir.c:VEC_int_heap_free"}
!627 = distinct !{!627, !44}
!628 = distinct !{!628, !44}
!629 = !{!"sel-sched-ir.c:sel_add_bb"}
!630 = distinct !{!630, !44}
!631 = !{!"sel-sched-ir.c:find_new_jump"}
!632 = !{!"sel-sched-ir.c:add_block_to_current_region"}
!633 = distinct !{!633, !44}
!634 = distinct !{!634, !44}
!635 = !{!"sel-sched-ir.c:find_place_to_insert_bb"}
!636 = distinct !{!636, !44}
!637 = distinct !{!637, !44}
!638 = !{!"sel-sched-ir.c:recompute_rev_top_order"}
!639 = distinct !{!639, !44}
!640 = !{!"sel-sched-ir.c:check_for_new_jump"}
!641 = !{!"sel-sched-ir.c:copy_lv_set_from"}
!642 = !{!"sel-sched-ir.c:change_loops_latches"}
!643 = distinct !{!643, !44}
!644 = !{i64 0, i64 8, !36, i64 8, i64 8, !36, i64 16, i64 8, !36, i64 24, i64 8, !36, i64 32, i64 8, !36, i64 40, i64 8, !36, i64 48, i64 8, !36, i64 56, i64 8, !36, i64 64, i64 8, !36, i64 72, i64 8, !36, i64 80, i64 8, !36, i64 88, i64 8, !36, i64 96, i64 8, !36, i64 104, i64 8, !36, i64 112, i64 8, !36, i64 120, i64 8, !36, i64 128, i64 8, !36, i64 136, i64 8, !36, i64 144, i64 8, !36, i64 152, i64 8, !36, i64 160, i64 8, !36, i64 168, i64 8, !36, i64 176, i64 8, !36, i64 184, i64 8, !36, i64 192, i64 8, !36, i64 200, i64 8, !36, i64 208, i64 8, !36, i64 216, i64 8, !36, i64 224, i64 8, !36}
!645 = !{!646, !37, i64 24}
!646 = !{!"cfg_hooks", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224}
!647 = !{!"sel-sched-ir.c:sel_split_block"}
!648 = !{!238, !69, i64 28}
!649 = distinct !{!649, !44}
!650 = !{!"sel-sched-ir.c:sel_create_basic_block"}
!651 = !{!"sel-sched-ir.c:sel_init_only_bb"}
!652 = !{!"sel-sched-ir.c:sel_create_empty_bb"}
!653 = !{!"sel-sched-ir.c:get_bb_note_from_pool"}
!654 = !{!"sel-sched-ir.c:VEC_rtx_base_pop"}
!655 = !{!656, !37, i64 16}
!656 = !{!"common_sched_info_def", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !69, i64 32}
!657 = !{!656, !37, i64 24}
!658 = !{!656, !69, i64 32}
!659 = !{!660, !69, i64 100}
!660 = !{!"haifa_sched_info", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !69, i64 96, !69, i64 100, !37, i64 104, !37, i64 112, !37, i64 120, !69, i64 128}
!661 = !{!"sel-sched-ir.c:sel_estimate_number_of_insns"}
!662 = distinct !{!662, !44}
!663 = !{!"sel-sched-ir.c:sel_luid_for_non_insn"}
!664 = !{!"sel-sched-ir.c:sel_create_new_region"}
!665 = !{!"sel-sched-ir.c:sel_add_block_to_region"}
!666 = distinct !{!666, !44}
!667 = !{!"sel-sched-ir.c:fel_init"}
!668 = !{!669, !69, i64 8}
!669 = !{!"", !37, i64 0, !69, i64 8}
!670 = !{!669, !37, i64 0}
!671 = !{!178, !37, i64 8}
!672 = !{!169, !37, i64 48}
!673 = !{!169, !69, i64 0}
!674 = distinct !{!674, !44}
!675 = !{!178, !37, i64 24}
!676 = distinct !{!676, !44}
!677 = !{!169, !37, i64 56}
!678 = distinct !{!678, !44}
!679 = distinct !{!679, !44}
!680 = !{!"sel-sched-ir.c:fel_next"}
!681 = distinct !{!681, !44}
!682 = !{!"sel-sched-ir.c:VEC_loop_p_heap_free"}
!683 = !{!"sel-sched-ir.c:number_of_loops"}
!684 = !{!"sel-sched-ir.c:VEC_loop_p_base_iterate"}
!685 = !{!"sel-sched-ir.c:VEC_int_base_iterate"}
!686 = !{!"sel-sched-ir.c:get_loop"}
!687 = distinct !{!687, !44}
!688 = !{!689, !37, i64 0}
!689 = !{!"simple_bitmap_def", !37, i64 0, !69, i64 8, !69, i64 12, !38, i64 16}
!690 = !{!"sel-sched-ir.c:make_regions_from_loop_nest"}
!691 = distinct !{!691, !44}
!692 = !{!"sel-sched-ir.c:make_regions_from_the_rest"}
!693 = distinct !{!693, !44}
!694 = !{!129, !69, i64 96}
!695 = distinct !{!695, !44}
!696 = distinct !{!696, !44}
!697 = distinct !{!697, !44}
!698 = distinct !{!698, !44}
!699 = !{!"sel-sched-ir.c:make_region_from_loop"}
!700 = !{!169, !69, i64 36}
!701 = distinct !{!701, !44}
!702 = !{!169, !69, i64 4}
!703 = distinct !{!703, !44}
!704 = distinct !{!704, !44}
!705 = !{!"sel-sched-ir.c:VEC_loop_p_heap_safe_push"}
!706 = !{!"sel-sched-ir.c:bb_top_order_comparator"}
!707 = !{!"sel-sched-ir.c:SET_BIT"}
!708 = !{!"sel-sched-ir.c:VEC_loop_p_heap_reserve"}
!709 = !{!"sel-sched-ir.c:VEC_loop_p_base_quick_push"}
!710 = !{!"sel-sched-ir.c:VEC_loop_p_base_space"}
!711 = !{!192, !69, i64 4}
!712 = distinct !{!712, !44}
