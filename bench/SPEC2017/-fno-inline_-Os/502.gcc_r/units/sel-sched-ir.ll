; ModuleID = 'sel-sched-ir.c'
source_filename = "sel-sched-ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.sched_scan_info_def = type { ptr, ptr, ptr, ptr }
%struct.anon.1 = type { ptr, i32, ptr, ptr, [3 x i32] }
%struct.cfg_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.common_sched_info_def = type { ptr, ptr, ptr, ptr, i32 }
%struct.haifa_sched_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, i32 }
%struct.succs_info = type { i16, ptr, ptr, ptr, i32, i32, i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._sel_insn_data = type { %struct._expr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.deps, ptr, i32, i32, i32, i8 }
%struct._expr = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8 }
%struct.deps = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.bitmap_head_def, %struct.bitmap_head_def, i32, i8 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
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
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.VEC_sel_insn_data_def_base = type { i32, i32, [1 x %struct._sel_insn_data] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.sel_region_bb_info_def = type { ptr, ptr, i32 }
%struct.vinsn_def = type { ptr, %struct.idata_def, i32, i32, i32, i32, i8 }
%struct.idata_def = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct._haifa_deps_insn_data = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.VEC_haifa_deps_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_deps_insn_data] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.expr_history_def_1 = type { i32, ptr, ptr, i32, i32 }
%struct.VEC_expr_history_def_base = type { i32, i32, [1 x %struct.expr_history_def_1] }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct._haifa_insn_data = type { i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.region = type { i32, i32, i8 }
%struct.VEC_sel_region_bb_info_def_base = type { i32, i32, [1 x %struct.sel_region_bb_info_def] }
%struct.sel_global_bb_info_def = type { ptr, i8 }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.VEC_sel_global_bb_info_def_base = type { i32, i32, [1 x %struct.sel_global_bb_info_def] }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.loop_iterator = type { ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.loop_exit = type { ptr, ptr, ptr, ptr }
%struct.VEC_haifa_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_insn_data] }
%struct.transformed_insns = type { ptr, ptr, i32, i32, i8 }
%struct.deps_reg = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct._dep = type { ptr, ptr, i32, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.df_regular_ref = type { %struct.df_base_ref, ptr }

@sel_global_bb_info = dso_local local_unnamed_addr global ptr null, align 8
@sel_region_bb_info = dso_local local_unnamed_addr global ptr null, align 8
@nop_pattern = dso_local local_unnamed_addr global ptr null, align 8
@exit_insn = dso_local local_unnamed_addr global ptr null, align 8
@preheader_removed = dso_local local_unnamed_addr global i8 0, align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@advance_deps_context_sched_deps_info = internal global %struct.sched_deps_info_def { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @haifa_note_reg_set, ptr @haifa_note_reg_clobber, ptr @haifa_note_reg_use, ptr null, ptr null, i8 0 }, align 8
@sched_deps_info = external local_unnamed_addr global ptr, align 8
@flag_sel_sched_pipelining_outer_loops = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [15 x i8] c"sel-sched-ir.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@fences = external global ptr, align 8
@issue_rate = external local_unnamed_addr global i32, align 4
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
@init_insn_force_unique_p = internal unnamed_addr global i1 false, align 1
@h_d_i_d = external local_unnamed_addr global ptr, align 8
@__const.sel_init_global_and_expr.ssi = private unnamed_addr constant %struct.sched_scan_info_def { ptr null, ptr @init_global_and_expr_for_bb, ptr @extend_insn_data, ptr @init_global_and_expr_for_insn }, align 8
@current_nr_blocks = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@rgn_bb_table = external local_unnamed_addr global ptr, align 8
@ebb_head = external local_unnamed_addr global ptr, align 8
@__const.sel_finish_global_and_expr.ssi = private unnamed_addr constant %struct.sched_scan_info_def { ptr null, ptr @finish_global_and_expr_for_bb, ptr null, ptr @finish_global_and_expr_insn }, align 8
@has_dependence_data = internal global %struct.anon.1 zeroinitializer, align 8
@tick_check_data.0 = internal unnamed_addr global ptr null, align 8
@tick_check_data.1 = internal unnamed_addr global i32 0, align 8
@tick_check_data.2 = internal unnamed_addr global i1 false, align 4
@tick_check_sched_deps_info = internal global %struct.sched_deps_info_def { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @haifa_note_reg_set, ptr @haifa_note_reg_clobber, ptr @haifa_note_reg_use, ptr @tick_check_note_mem_dep, ptr @tick_check_note_dep, i8 0 }, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@global_level = external local_unnamed_addr global i32, align 4
@containing_rgn = external local_unnamed_addr global ptr, align 8
@__const.sel_init_bbs.ssi = private unnamed_addr constant %struct.sched_scan_info_def { ptr @extend_bb_info, ptr @init_bb, ptr null, ptr null }, align 8
@current_loop_nest = dso_local local_unnamed_addr global ptr null, align 8
@succs_info_pool.0 = internal unnamed_addr global ptr null, align 8
@succs_info_pool.1 = internal unnamed_addr global i32 0, align 8
@succs_info_pool.2 = internal unnamed_addr global i32 0, align 8
@succs_info_pool.3 = internal unnamed_addr global i32 0, align 8
@block_to_bb = external local_unnamed_addr global ptr, align 8
@forced_ebb_heads = external local_unnamed_addr global ptr, align 8
@bb_note_pool = internal global ptr null, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"sel-sched-lists\00", align 1
@sched_lists_pool = dso_local local_unnamed_addr global ptr null, align 8
@last_added_blocks = internal global ptr null, align 8
@sched_split_block = external local_unnamed_addr global ptr, align 8
@pipelining_p = external local_unnamed_addr global i8, align 1
@orig_cfg_hooks = internal global %struct.cfg_hooks zeroinitializer, align 8
@sel_cfg_hooks = internal global %struct.cfg_hooks zeroinitializer, align 8
@sched_init_only_bb = external local_unnamed_addr global ptr, align 8
@sched_create_empty_bb = external local_unnamed_addr global ptr, align 8
@spec_info = external local_unnamed_addr global ptr, align 8
@sel_common_sched_info = internal global %struct.common_sched_info_def zeroinitializer, align 8
@common_sched_info = external local_unnamed_addr global ptr, align 8
@sched_sel_haifa_sched_info = internal global %struct.haifa_sched_info { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sel_print_insn, ptr @contributes_to_priority, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, i32 48 }, align 8
@current_sched_info = external local_unnamed_addr global ptr, align 8
@bbs_in_loop_rgns = internal unnamed_addr global ptr null, align 8
@loop_nests = internal unnamed_addr global ptr null, align 8
@rev_top_order_index = internal unnamed_addr global ptr null, align 8
@current_succs = dso_local local_unnamed_addr global %struct.succs_info zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"./sel-sched-ir.h\00", align 1
@after_recovery = external local_unnamed_addr global ptr, align 8
@dfa_state_size = external local_unnamed_addr global i64, align 8
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@init_global_data.0 = internal unnamed_addr global ptr null, align 8
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@h_i_d = external local_unnamed_addr global ptr, align 8
@has_dependence_sched_deps_info = internal global %struct.sched_deps_info_def zeroinitializer, align 8
@const_has_dependence_sched_deps_info = internal unnamed_addr constant %struct.sched_deps_info_def { ptr null, ptr @has_dependence_start_insn, ptr @has_dependence_finish_insn, ptr @has_dependence_start_lhs, ptr @has_dependence_finish_lhs, ptr @has_dependence_start_rhs, ptr @has_dependence_finish_rhs, ptr @has_dependence_note_reg_set, ptr @has_dependence_note_reg_clobber, ptr @has_dependence_note_reg_use, ptr @has_dependence_note_mem_dep, ptr @has_dependence_note_dep, i8 0 }, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@rgn_table = external local_unnamed_addr global ptr, align 8
@sched_max_luid = external local_unnamed_addr global i32, align 4
@insn_init_create_new_vinsn_p = internal unnamed_addr global i1 false, align 1
@_insn_init_ssid = internal global %struct._sel_insn_data zeroinitializer, align 8
@df = external local_unnamed_addr global ptr, align 8
@note_list = external local_unnamed_addr global ptr, align 8
@blocks_to_reschedule = external local_unnamed_addr global ptr, align 8
@nr_regions = external local_unnamed_addr global i32, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@deps_init_id_data.0 = internal unnamed_addr global i32 0, align 8
@deps_init_id_data.1 = internal unnamed_addr global ptr null, align 8
@deps_init_id_data.2 = internal unnamed_addr global i8 0, align 8
@deps_init_id_data.3 = internal unnamed_addr global i1 false, align 8
@deps_init_id_sched_deps_info = internal global %struct.sched_deps_info_def zeroinitializer, align 8
@const_deps_init_id_sched_deps_info = internal unnamed_addr constant %struct.sched_deps_info_def { ptr null, ptr @deps_init_id_start_insn, ptr @deps_init_id_finish_insn, ptr @deps_init_id_start_lhs, ptr @deps_init_id_finish_lhs, ptr @deps_init_id_start_rhs, ptr @deps_init_id_finish_rhs, ptr @deps_init_id_note_reg_set, ptr @deps_init_id_note_reg_clobber, ptr @deps_init_id_note_reg_use, ptr null, ptr null, i8 0 }, align 8
@rev_top_order_index_len = internal unnamed_addr global i32 -1, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ilist_copy(ptr noundef readonly %0) local_unnamed_addr #0 !prof !700 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !701
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4, !prof !705

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %9, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %10, %4 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct._list_node, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !706
  call fastcc void @_xlist_add(ptr noundef %5, ptr noundef %8) #22
  %9 = load ptr, ptr %5, align 8, !tbaa !701
  %10 = load ptr, ptr %6, align 8, !tbaa !707
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %4, !prof !709, !llvm.loop !710

12:                                               ; preds = %4
  %13 = load ptr, ptr %2, align 8, !tbaa !701
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi ptr [ %13, %12 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_xlist_add(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !712 !PGOFuncName !713 {
  tail call fastcc void @_list_add(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !701
  %4 = getelementptr inbounds %struct._list_node, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !706
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ilist_invert(ptr noundef readonly %0) local_unnamed_addr #0 !prof !714 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !701
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %8, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct._list_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !706
  call fastcc void @_xlist_add(ptr noundef nonnull %2, ptr noundef %7) #22
  %8 = load ptr, ptr %5, align 8, !tbaa !707
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4, !llvm.loop !715

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !701
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi ptr [ %11, %10 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blist_add(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !716 {
  tail call fastcc void @_list_add(ptr noundef %0) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !701
  %6 = getelementptr inbounds %struct._list_node, ptr %5, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !717
  %7 = getelementptr inbounds %struct._list_node, ptr %5, i64 0, i32 1, i32 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !719
  %8 = getelementptr inbounds %struct._list_node, ptr %5, i64 0, i32 1, i32 0, i32 2
  %9 = getelementptr inbounds %struct._list_node, ptr %5, i64 0, i32 1, i32 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %3, ptr %9, align 8, !tbaa !720
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_list_add(ptr nocapture noundef %0) unnamed_addr #0 !prof !721 !PGOFuncName !722 {
  %2 = tail call fastcc ptr @_list_alloc() #22
  %3 = load ptr, ptr %0, align 8, !tbaa !701
  store ptr %3, ptr %2, align 8, !tbaa !707
  store ptr %2, ptr %0, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blist_remove(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !716 {
  %2 = load ptr, ptr %0, align 8, !tbaa !701
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
define dso_local void @av_set_clear(ptr noundef %0) local_unnamed_addr #0 !prof !723 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #22
  %4 = load ptr, ptr %3, align 8, !tbaa !724
  %5 = load ptr, ptr %4, align 8, !tbaa !701
  %6 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %5, ptr noundef nonnull %2) #22, !range !726
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8, !prof !727

8:                                                ; preds = %1, %8
  call void @av_set_iter_remove(ptr noundef nonnull %3) #22
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #22
  %9 = load ptr, ptr %3, align 8, !tbaa !724
  %10 = load ptr, ptr %9, align 8, !tbaa !701
  %11 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %10, ptr noundef nonnull %2) #22, !range !726
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %8, !prof !728, !llvm.loop !729

13:                                               ; preds = %8, %1
  %14 = load ptr, ptr %0, align 8, !tbaa !701
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !730

16:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2260, ptr noundef nonnull @.str.1) #23
  br label %17

17:                                               ; preds = %13, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_list_clear(ptr nocapture noundef %0) unnamed_addr #0 !prof !731 !PGOFuncName !732 {
  %2 = load ptr, ptr %0, align 8, !tbaa !701
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !733

4:                                                ; preds = %1, %4
  tail call fastcc void @_list_remove(ptr noundef nonnull %0) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !701
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %4, !prof !734, !llvm.loop !735

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_list_remove(ptr nocapture noundef %0) unnamed_addr #0 !prof !736 !PGOFuncName !737 {
  %2 = load ptr, ptr %0, align 8, !tbaa !701
  %3 = load ptr, ptr %2, align 8, !tbaa !707
  store ptr %3, ptr %0, align 8, !tbaa !701
  %4 = load ptr, ptr @sched_lists_pool, align 8, !tbaa !701
  tail call void @pool_free(ptr noundef %4, ptr noundef nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @flist_tail_init(ptr noundef %0) local_unnamed_addr #2 !prof !738 {
  store ptr null, ptr %0, align 8, !tbaa !739
  %2 = getelementptr inbounds %struct.flist_tail_def, ptr %0, i64 0, i32 1
  store ptr %0, ptr %2, align 8, !tbaa !741
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @flist_lookup(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #3 !prof !742 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4, !prof !743

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %10, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct._list_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !706
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %9, !prof !744

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !707
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %4, !prof !745, !llvm.loop !746

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct._list_node, ptr %5, i64 0, i32 1
  br label %14

14:                                               ; preds = %9, %12, %2
  %15 = phi ptr [ null, %2 ], [ %13, %12 ], [ null, %9 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flist_clear(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !738 {
  %2 = load ptr, ptr %0, align 8, !tbaa !701
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !747

4:                                                ; preds = %1, %4
  tail call fastcc void @flist_remove(ptr noundef nonnull %0) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !701
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %4, !prof !748, !llvm.loop !749

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flist_remove(ptr nocapture noundef %0) unnamed_addr #0 !prof !738 !PGOFuncName !750 {
  %2 = load ptr, ptr %0, align 8, !tbaa !701
  %3 = getelementptr inbounds %struct._list_node, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !706
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !751

6:                                                ; preds = %1
  tail call fastcc void @fence_clear(ptr noundef nonnull %3) #22
  br label %7

7:                                                ; preds = %6, %1
  tail call fastcc void @_list_remove(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @def_list_add(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !752 {
  tail call fastcc void @_list_add(ptr noundef %0) #22
  %4 = load ptr, ptr %0, align 8, !tbaa !701
  %5 = getelementptr inbounds %struct._list_node, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !753
  %6 = getelementptr inbounds %struct._list_node, ptr %4, i64 0, i32 1, i32 0, i32 1
  store i8 %2, ptr %6, align 8, !tbaa !755
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_target_context(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !756 {
  %2 = tail call fastcc ptr @alloc_target_context() #22
  tail call fastcc void @init_target_context(ptr noundef %2, i8 noundef zeroext %0) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_target_context() unnamed_addr #0 !prof !757 !PGOFuncName !758 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 23), align 8, !tbaa !759
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !773

3:                                                ; preds = %0
  %4 = tail call ptr %1() #23
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi ptr [ %4, %3 ], [ inttoptr (i64 1 to ptr), %0 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_target_context(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !774 !PGOFuncName !775 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 24), align 8, !tbaa !776
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !777

5:                                                ; preds = %2
  tail call void %3(ptr noundef %0, i8 noundef zeroext %1) #23
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_target_context(ptr noundef %0) local_unnamed_addr #0 !prof !778 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 25), align 8, !tbaa !779
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !780

4:                                                ; preds = %1
  tail call void %2(ptr noundef %0) #23
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reset_target_context(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !738 {
  tail call fastcc void @clear_target_context(ptr noundef %0) #22
  tail call fastcc void @init_target_context(ptr noundef %0, i8 noundef zeroext %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_target_context(ptr noundef %0) unnamed_addr #0 !prof !774 !PGOFuncName !781 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 26), align 8, !tbaa !782
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !777

4:                                                ; preds = %1
  tail call void %2(ptr noundef %0) #23
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @advance_deps_context(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !783 {
  store ptr @advance_deps_context_sched_deps_info, ptr @sched_deps_info, align 8, !tbaa !701
  tail call void @deps_analyze_insn(ptr noundef %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: optsize
declare void @deps_analyze_insn(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_fences(ptr noundef %0) local_unnamed_addr #0 !prof !784 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.succ_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %4 = tail call i32 @get_max_uid() #23
  %5 = add nsw i32 %4, 1
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %3, ptr noundef nonnull %2, ptr noundef %0, i32 noundef 9) #22
  %6 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %0) #22
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8, !prof !785

8:                                                ; preds = %1
  %9 = sext i32 %5 to i64
  br label %15

10:                                               ; preds = %15
  %11 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !786
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %14
  br label %15

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 610, ptr noundef nonnull @.str.1) #23
  br label %13

15:                                               ; preds = %13, %8
  %16 = load ptr, ptr %2, align 8, !tbaa !701
  %17 = tail call fastcc ptr @state_create() #22
  %18 = tail call fastcc ptr @create_deps_context() #22
  %19 = tail call ptr @create_target_context(i8 noundef zeroext 1) #22
  %20 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 4) #23
  %21 = load i32, ptr @issue_rate, align 4, !tbaa !786
  tail call fastcc void @flist_add(ptr noundef nonnull @fences, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef null, ptr noundef null, ptr noundef %20, i32 noundef %5, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef %21, i8 noundef zeroext 1, i8 noundef zeroext 0) #22
  call fastcc void @_succ_iter_next(ptr noundef nonnull %3) #22
  %22 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %0) #22
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %10, !prof !787, !llvm.loop !788

24:                                               ; preds = %15, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: optsize
declare i32 @get_max_uid() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_succ_iter_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.succ_iterator) align 8 %0, ptr nocapture noundef writeonly %1, ptr noundef readonly %2, i32 noundef %3) unnamed_addr #0 !prof !789 !PGOFuncName !790 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !706
  %7 = load i32, ptr %2, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %13 [
    i16 8, label %14
    i16 7, label %14
    i16 9, label %14
    i16 10, label %14
    i16 13, label %9
  ], !prof !791

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %11 = load i32, ptr %10, align 8, !tbaa !706
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %14, label %13, !prof !792

13:                                               ; preds = %4, %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1206, ptr noundef nonnull @.str.1) #23
  br label %14

14:                                               ; preds = %4, %4, %4, %4, %9, %13
  %15 = trunc i32 %3 to i16
  %16 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 5
  store i16 %15, ptr %16, align 8, !tbaa !793
  store ptr null, ptr %1, align 8, !tbaa !701
  %17 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store ptr %6, ptr %18, align 8, !tbaa !797
  %19 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 6
  store i16 0, ptr %19, align 2, !tbaa !798
  %20 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 7
  store i32 -1, ptr %20, align 4, !tbaa !799
  %21 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 8
  store ptr null, ptr %21, align 8, !tbaa !800
  %22 = load ptr, ptr @cfun, align 8, !tbaa !701
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !801
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !803
  %27 = icmp eq ptr %6, %26
  br i1 %27, label %37, label %28, !prof !805

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !706
  %31 = getelementptr inbounds %struct.rtl_bb_info, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !806
  %33 = icmp eq ptr %32, %2
  br i1 %33, label %37, label %34, !prof !808

34:                                               ; preds = %28
  store i8 0, ptr %0, align 8, !tbaa !809
  %35 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %35, align 8, !tbaa !810
  %36 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3, i32 1
  store ptr null, ptr %36, align 8, !tbaa !811
  br label %42

37:                                               ; preds = %28, %14
  %38 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 1
  %40 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %39) #22
  store i32 0, ptr %38, align 8, !tbaa.struct !812
  %41 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3, i32 1
  store ptr %40, ptr %41, align 8, !tbaa.struct !813
  store i8 1, ptr %0, align 8, !tbaa !809
  br label %42

42:                                               ; preds = %37, %34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @_succ_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !814 !PGOFuncName !815 {
  %4 = alloca ptr, align 8
  %5 = load i8, ptr %0, align 8, !tbaa !809
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7, !prof !816

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 7
  %10 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3, i32 1
  %13 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %8, align 8, !tbaa !800
  %16 = icmp eq ptr %15, null
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !701
  br i1 %16, label %42, label %30, !prof !817

17:                                               ; preds = %3
  %18 = load ptr, ptr %1, align 8, !tbaa !701
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %128, !prof !818

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 5
  %22 = load i16, ptr %21, align 8, !tbaa !793
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %128, label %25, !prof !819

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !706
  store ptr %27, ptr %1, align 8, !tbaa !701
  %28 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 6
  store i16 1, ptr %28, align 2, !tbaa !798
  br label %128

29:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !701
  br label %30

30:                                               ; preds = %29, %7
  br label %31

31:                                               ; preds = %30, %38
  %32 = load ptr, ptr %8, align 8, !tbaa !800
  %33 = load i32, ptr %9, align 4, !tbaa !799
  %34 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %32, i32 noundef %33, ptr noundef nonnull %4) #22, !range !820
  %35 = add nsw i32 %33, 1
  store i32 %35, ptr %9, align 4, !tbaa !799
  %36 = load ptr, ptr %4, align 8, !tbaa !701
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = tail call fastcc zeroext i8 @_eligible_successor_edge_p(ptr noundef nonnull %36, ptr noundef nonnull %0) #22, !range !726
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %31, label %47, !llvm.loop !821

41:                                               ; preds = %31
  tail call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %8) #22
  br label %42

42:                                               ; preds = %41, %7
  %43 = load i32, ptr %10, align 8
  %44 = load ptr, ptr %12, align 8
  %45 = tail call fastcc zeroext i8 @ei_cond(i32 %43, ptr %44, ptr noundef nonnull %11) #22, !range !726
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %90, label %48, !prof !822

47:                                               ; preds = %38
  store ptr %36, ptr %11, align 8, !tbaa !823
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %96

48:                                               ; preds = %42, %85
  %49 = load ptr, ptr %11, align 8, !tbaa !823
  %50 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !824
  %52 = load i16, ptr %13, align 8, !tbaa !793
  %53 = and i16 %52, 8
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %81, label %55, !prof !826

55:                                               ; preds = %48
  %56 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !786
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %81, label %58

58:                                               ; preds = %55
  %59 = tail call zeroext i8 @in_current_region_p(ptr noundef %51) #22, !range !726
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr @block_to_bb, align 8, !tbaa !701
  %63 = load ptr, ptr %14, align 8, !tbaa !797
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !827
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %62, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !786
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !827
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, ptr %62, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !786
  %74 = icmp slt i32 %68, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %61, %58
  %76 = tail call fastcc ptr @get_all_loop_exits(ptr noundef %51) #22
  store ptr %76, ptr %8, align 8, !tbaa !800
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load ptr, ptr %11, align 8, !tbaa !823
  br label %81

80:                                               ; preds = %75
  store i32 0, ptr %9, align 4, !tbaa !799
  tail call fastcc void @ei_next(ptr noundef nonnull %10) #22
  br label %90

81:                                               ; preds = %78, %61, %55, %48
  %82 = phi ptr [ %79, %78 ], [ %49, %61 ], [ %49, %55 ], [ %49, %48 ]
  %83 = tail call fastcc zeroext i8 @_eligible_successor_edge_p(ptr noundef %82, ptr noundef nonnull %0) #22, !range !726
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %90, !prof !829

85:                                               ; preds = %81
  tail call fastcc void @ei_next(ptr noundef nonnull %10) #22
  %86 = load i32, ptr %10, align 8
  %87 = load ptr, ptr %12, align 8
  %88 = tail call fastcc zeroext i8 @ei_cond(i32 %86, ptr %87, ptr noundef nonnull %11) #22, !range !726
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %48, !prof !830

90:                                               ; preds = %85, %81, %42, %80
  %91 = load ptr, ptr %8, align 8, !tbaa !800
  %92 = icmp eq ptr %91, null
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br i1 %92, label %93, label %29, !prof !831

93:                                               ; preds = %90
  %94 = load ptr, ptr %11, align 8, !tbaa !823
  %95 = icmp eq ptr %94, null
  br i1 %95, label %128, label %96, !prof !832

96:                                               ; preds = %47, %93
  %97 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !833
  %99 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !824
  %101 = load ptr, ptr @cfun, align 8, !tbaa !701
  %102 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !801
  %104 = getelementptr inbounds %struct.control_flow_graph, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !803
  %106 = icmp eq ptr %100, %105
  %107 = load ptr, ptr @after_recovery, align 8
  %108 = icmp eq ptr %100, %107
  %109 = select i1 %106, i1 true, i1 %108
  br i1 %109, label %110, label %112, !prof !834

110:                                              ; preds = %96
  %111 = load ptr, ptr @exit_insn, align 8, !tbaa !701
  store ptr %111, ptr %1, align 8, !tbaa !701
  br label %128

112:                                              ; preds = %96
  %113 = tail call ptr @sel_bb_head(ptr noundef %100) #22
  store ptr %113, ptr %1, align 8, !tbaa !701
  %114 = load i16, ptr %13, align 8, !tbaa !793
  %115 = icmp eq i16 %114, 1
  br i1 %115, label %116, label %122, !prof !835

116:                                              ; preds = %112
  %117 = tail call ptr @bb_note(ptr noundef %100) #23
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 2
  %119 = load ptr, ptr %118, align 8, !tbaa !706
  %120 = icmp eq ptr %113, %119
  br i1 %120, label %122, label %121

121:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1331, ptr noundef nonnull @.str.1) #23
  br label %122

122:                                              ; preds = %112, %116, %121
  %123 = load ptr, ptr %1, align 8, !tbaa !701
  %124 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !706
  %126 = icmp eq ptr %125, %100
  br i1 %126, label %128, label %127, !prof !836

127:                                              ; preds = %122
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1332, ptr noundef nonnull @.str.1) #23
  br label %128

128:                                              ; preds = %93, %110, %122, %127, %17, %20, %25
  %129 = phi i8 [ 1, %25 ], [ 0, %20 ], [ 0, %17 ], [ 1, %127 ], [ 1, %122 ], [ 1, %110 ], [ 0, %93 ]
  ret i8 %129
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @_eligible_successor_edge_p(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !837 !PGOFuncName !838 {
  %3 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 5
  %4 = load i16, ptr %3, align 8, !tbaa !793
  %5 = zext i16 %4 to i32
  %6 = load ptr, ptr %0, align 8, !tbaa !839
  %7 = tail call zeroext i8 @in_current_region_p(ptr noundef %6) #22, !range !726
  %8 = icmp eq i16 %4, 0
  br i1 %8, label %9, label %10, !prof !829

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1363, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %2, %9
  %11 = icmp eq i8 %7, 0
  br i1 %11, label %15, label %12, !prof !829

12:                                               ; preds = %10
  %13 = and i32 %5, 4
  %14 = icmp eq i32 %13, 0
  br label %22

15:                                               ; preds = %10
  %16 = and i32 %5, 12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1369, ptr noundef nonnull @.str.1) #23
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
  %27 = load ptr, ptr %26, align 8, !tbaa !824
  br label %28

28:                                               ; preds = %24, %36
  %29 = phi ptr [ %41, %36 ], [ %27, %24 ]
  %30 = phi ptr [ %39, %36 ], [ %25, %24 ]
  %31 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %29) #22, !range !726
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %45, !prof !826

33:                                               ; preds = %28
  %34 = tail call fastcc zeroext i8 @sel_bb_empty_or_nop_p(ptr noundef %29) #22, !range !726
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %56, label %36, !prof !826

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !840
  %39 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %38, i32 noundef 0) #22
  %40 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !824
  %42 = tail call zeroext i8 @in_current_region_p(ptr noundef %41) #22, !range !726
  %43 = icmp eq i8 %42, 0
  %44 = and i1 %23, %43
  br i1 %44, label %56, label %28

45:                                               ; preds = %28
  %46 = tail call zeroext i8 @in_current_region_p(ptr noundef %29) #22, !range !726
  %47 = icmp eq i8 %46, 0
  %48 = and i1 %23, %47
  br i1 %48, label %106, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !840
  %52 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %51) #22
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %106, label %54

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %51, i32 noundef 0) #22
  br label %24

56:                                               ; preds = %33, %36
  %57 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 2
  store ptr %30, ptr %57, align 8, !tbaa !833
  %58 = tail call zeroext i8 @in_current_region_p(ptr noundef %29) #22, !range !726
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %101, label %60, !prof !841

60:                                               ; preds = %56
  %61 = load ptr, ptr @block_to_bb, align 8, !tbaa !701
  %62 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !797
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !827
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %61, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !786
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !827
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, ptr %61, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !786
  %74 = icmp slt i32 %68, %73
  %75 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 6
  store i16 1, ptr %75, align 2, !tbaa !798
  br i1 %74, label %76, label %83, !prof !842

76:                                               ; preds = %60
  br i1 %11, label %77, label %81, !prof !843

77:                                               ; preds = %76
  %78 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !786
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1431, ptr noundef nonnull @.str.1) #23
  br label %81

81:                                               ; preds = %76, %77, %80
  %82 = trunc i16 %4 to i8
  br label %98

83:                                               ; preds = %60
  %84 = load i8, ptr @pipelining_p, align 1, !tbaa !706
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %0, align 8, !tbaa !839
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !844
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !844
  %92 = icmp eq ptr %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = trunc i16 %4 to i8
  br label %98

95:                                               ; preds = %86, %83
  store i16 2, ptr %75, align 2, !tbaa !798
  %96 = trunc i16 %4 to i8
  %97 = lshr i8 %96, 1
  br label %98

98:                                               ; preds = %95, %93, %81
  %99 = phi i8 [ %82, %81 ], [ %94, %93 ], [ %97, %95 ]
  %100 = and i8 %99, 1
  br label %106

101:                                              ; preds = %56
  %102 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 6
  store i16 4, ptr %102, align 2, !tbaa !798
  %103 = trunc i16 %4 to i8
  %104 = lshr i8 %103, 2
  %105 = and i8 %104, 1
  br label %106

106:                                              ; preds = %49, %45, %19, %101, %98
  %107 = phi i8 [ %100, %98 ], [ %105, %101 ], [ 0, %19 ], [ 0, %45 ], [ 0, %49 ]
  ret i8 %107
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flist_add(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i8 noundef zeroext %13, i8 noundef zeroext %14) unnamed_addr #0 !prof !756 !PGOFuncName !845 {
  tail call fastcc void @_list_add(ptr noundef %0) #22
  %16 = load ptr, ptr %0, align 8, !tbaa !701
  %17 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1
  store ptr %1, ptr %17, align 8, !tbaa !846
  %18 = icmp eq ptr %2, null
  br i1 %18, label %19, label %20, !prof !848

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 275, ptr noundef nonnull @.str.1) #23
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 1
  store ptr %2, ptr %21, align 8, !tbaa !849
  %22 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 2
  store i32 %10, ptr %22, align 8, !tbaa !850
  %23 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 3
  store i32 %11, ptr %23, align 4, !tbaa !851
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
  br i1 %33, label %34, label %35, !prof !848

34:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 283, ptr noundef nonnull @.str.1) #23
  br label %35

35:                                               ; preds = %20, %34
  %36 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 5
  store ptr %3, ptr %36, align 8, !tbaa !852
  %37 = icmp eq ptr %4, null
  br i1 %37, label %38, label %42, !prof !848

38:                                               ; preds = %35
  %39 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 23), align 8, !tbaa !759
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 286, ptr noundef nonnull @.str.1) #23
  br label %42

42:                                               ; preds = %35, %38, %41
  %43 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 6
  store ptr %4, ptr %43, align 8, !tbaa !853
  %44 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 10
  store ptr %5, ptr %44, align 8, !tbaa !854
  %45 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 11
  store i32 %12, ptr %45, align 8, !tbaa !855
  %46 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 7
  store ptr %6, ptr %46, align 8, !tbaa !856
  %47 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 8
  store ptr %7, ptr %47, align 8, !tbaa !857
  %48 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 9
  store i32 %8, ptr %48, align 8, !tbaa !858
  %49 = getelementptr inbounds %struct._list_node, ptr %16, i64 0, i32 1, i32 0, i32 12
  store ptr %9, ptr %49, align 8, !tbaa !859
  tail call fastcc void @init_fence_for_scheduling(ptr noundef nonnull %17) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @state_create() unnamed_addr #0 !prof !784 !PGOFuncName !860 {
  %1 = tail call fastcc ptr @state_alloc() #22
  tail call void @state_reset(ptr noundef %1) #23
  tail call void @advance_state(ptr noundef %1) #23
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_deps_context() unnamed_addr #0 !prof !784 !PGOFuncName !861 {
  %1 = tail call fastcc ptr @alloc_deps_context() #22
  tail call void @init_deps(ptr noundef %1, i8 noundef zeroext 0) #23
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_succ_iter_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !862 !PGOFuncName !863 {
  %2 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !833
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !864

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !823
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !829

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1345, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %1, %5, %9
  %11 = load i8, ptr %0, align 8, !tbaa !809
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %23, label %13, !prof !864

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !823
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17, !prof !829

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !800
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23, !prof !826

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3
  tail call fastcc void @ei_next(ptr noundef nonnull %22) #22
  br label %23

23:                                               ; preds = %21, %17, %13, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @move_fence_to_fences(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !865 {
  %3 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !739
  %5 = load ptr, ptr %3, align 8, !tbaa !706
  %6 = tail call ptr @flist_lookup(ptr noundef %4, ptr noundef %5) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8, !prof !866

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !849
  %11 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !852
  %13 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !853
  %15 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !854
  %17 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !856
  %19 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !857
  %21 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !858
  %23 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !859
  %25 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !850
  %27 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 11
  %28 = load i32, ptr %27, align 8, !tbaa !855
  %29 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 13
  %30 = load i8, ptr %29, align 8
  %31 = lshr i8 %30, 3
  %32 = and i8 %31, 1
  tail call fastcc void @merge_fences(ptr noundef nonnull %6, ptr noundef %5, ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef %16, ptr noundef %18, ptr noundef %20, i32 noundef %22, ptr noundef %24, i32 noundef %26, i32 noundef %28, i8 noundef zeroext %32) #22
  br label %40

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.flist_tail_def, ptr %1, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !741
  tail call fastcc void @_list_add(ptr noundef %35) #22
  %36 = load ptr, ptr %35, align 8, !tbaa !701
  store ptr %36, ptr %34, align 8, !tbaa !741
  %37 = getelementptr inbounds %struct._list_node, ptr %36, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %37, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 104, i1 false), !tbaa.struct !867
  %38 = load ptr, ptr %35, align 8, !tbaa !701
  %39 = getelementptr inbounds %struct._list_node, ptr %38, i64 0, i32 1
  tail call fastcc void @init_fence_for_scheduling(ptr noundef nonnull %39) #22
  br label %40

40:                                               ; preds = %33, %8
  store ptr null, ptr %3, align 8, !tbaa !846
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_fences(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef readnone %9, i32 noundef %10, i32 noundef %11, i8 noundef zeroext %12) unnamed_addr #0 !prof !714 !PGOFuncName !868 {
  %14 = alloca ptr, align 8
  %15 = alloca %struct.succ_iterator, align 8
  %16 = alloca ptr, align 8
  store ptr %6, ptr %14, align 8, !tbaa !701
  %17 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !854
  %19 = load ptr, ptr %0, align 8, !tbaa !846
  %20 = tail call zeroext i8 @sel_bb_head_p(ptr noundef %19) #22, !range !726
  %21 = icmp eq i8 %20, 0
  %22 = icmp ne ptr %9, null
  %23 = or i1 %22, %21
  br i1 %23, label %28, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !859
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
  %37 = load ptr, ptr %36, align 8, !tbaa !849
  tail call void @state_reset(ptr noundef %37) #23
  tail call fastcc void @state_free(ptr noundef %2) #22
  %38 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !852
  tail call fastcc void @reset_deps_context(ptr noundef %39) #22
  tail call fastcc void @delete_deps_context(ptr noundef %3) #22
  %40 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !853
  tail call void @reset_target_context(ptr noundef %41, i8 noundef zeroext 1) #22
  tail call fastcc void @delete_target_context(ptr noundef %4) #22
  %42 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !850
  %44 = icmp slt i32 %43, %10
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 %10, ptr %42, align 8, !tbaa !850
  br label %46

46:                                               ; preds = %45, %35
  store ptr null, ptr %17, align 8, !tbaa !854
  %47 = load i32, ptr @issue_rate, align 4, !tbaa !786
  %48 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 11
  store i32 %47, ptr %48, align 8, !tbaa !855
  call fastcc void @VEC_rtx_gc_free(ptr noundef nonnull %14) #22
  tail call void @free(ptr noundef %7) #22
  %49 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !856
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef nonnull %50) #22
  tail call fastcc void @VEC_rtx_base_block_remove(ptr noundef nonnull %50, i32 noundef %53) #22
  br label %54

54:                                               ; preds = %52, %46
  %55 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !857
  %57 = icmp eq ptr %56, null
  br i1 %57, label %189, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !858
  %61 = sext i32 %60 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %56, i8 0, i64 %61, i1 false)
  br label %189

62:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  %63 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !706
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !869
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 688, ptr noundef nonnull @.str.1) #23
  %69 = load ptr, ptr %63, align 8, !tbaa !706
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !869
  br label %72

72:                                               ; preds = %62, %68
  %73 = phi ptr [ %66, %62 ], [ %71, %68 ]
  %74 = tail call ptr @find_fallthru_edge(ptr noundef %73) #23
  %75 = icmp eq ptr %74, null
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %74, align 8, !tbaa !839
  %78 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !706
  %80 = icmp eq ptr %77, %79
  br i1 %80, label %92, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !706
  %84 = icmp eq ptr %77, %83
  br i1 %84, label %106, label %85

85:                                               ; preds = %81, %72
  %86 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !849
  tail call void @state_reset(ptr noundef %87) #23
  tail call fastcc void @state_free(ptr noundef %2) #22
  %88 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !853
  tail call void @reset_target_context(ptr noundef %89, i8 noundef zeroext 1) #22
  tail call fastcc void @delete_target_context(ptr noundef %4) #22
  store ptr null, ptr %17, align 8, !tbaa !854
  %90 = load i32, ptr @issue_rate, align 4, !tbaa !786
  %91 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 11
  store i32 %90, ptr %91, align 8, !tbaa !855
  br label %113

92:                                               ; preds = %76
  %93 = load ptr, ptr %63, align 8, !tbaa !706
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %93, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !869
  %96 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !706
  %98 = icmp eq ptr %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 711, ptr noundef nonnull @.str.1) #23
  br label %100

100:                                              ; preds = %92, %99
  %101 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !849
  tail call fastcc void @state_free(ptr noundef %102) #22
  store ptr %2, ptr %101, align 8, !tbaa !849
  %103 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 6
  %104 = load ptr, ptr %103, align 8, !tbaa !853
  tail call fastcc void @delete_target_context(ptr noundef %104) #22
  store ptr %4, ptr %103, align 8, !tbaa !853
  store ptr %5, ptr %17, align 8, !tbaa !854
  %105 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 11
  store i32 %11, ptr %105, align 8, !tbaa !855
  br label %113

106:                                              ; preds = %81
  tail call fastcc void @state_free(ptr noundef %2) #22
  tail call fastcc void @delete_target_context(ptr noundef %4) #22
  %107 = load ptr, ptr %63, align 8, !tbaa !706
  %108 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !869
  %110 = load ptr, ptr %78, align 8, !tbaa !706
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
  %120 = load ptr, ptr %16, align 8, !tbaa !701
  %121 = icmp eq ptr %120, %1
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = icmp eq ptr %119, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %122
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 739, ptr noundef nonnull @.str.1) #23
  br label %125

125:                                              ; preds = %122, %124
  %126 = load ptr, ptr %117, align 8, !tbaa !823
  br label %127

127:                                              ; preds = %118, %125
  %128 = phi ptr [ %126, %125 ], [ %119, %118 ]
  call fastcc void @_succ_iter_next(ptr noundef nonnull %15) #22
  %129 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef %18) #22
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %118, !llvm.loop !870

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
  %139 = load ptr, ptr %16, align 8, !tbaa !701
  %140 = icmp eq ptr %139, %1
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = icmp eq ptr %138, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %141
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 750, ptr noundef nonnull @.str.1) #23
  br label %144

144:                                              ; preds = %141, %143
  %145 = load ptr, ptr %136, align 8, !tbaa !823
  br label %146

146:                                              ; preds = %137, %144
  %147 = phi ptr [ %145, %144 ], [ %138, %137 ]
  call fastcc void @_succ_iter_next(ptr noundef nonnull %15) #22
  %148 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef %5) #22
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %137, !llvm.loop !871

150:                                              ; preds = %146
  %151 = icmp eq ptr %132, null
  %152 = icmp eq ptr %147, null
  %153 = select i1 %151, i1 true, i1 %152
  br i1 %153, label %154, label %173

154:                                              ; preds = %131, %150
  %155 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 5
  %156 = load ptr, ptr %155, align 8, !tbaa !852
  tail call fastcc void @reset_deps_context(ptr noundef %156) #22
  tail call fastcc void @delete_deps_context(ptr noundef %3) #22
  call fastcc void @VEC_rtx_gc_free(ptr noundef nonnull %14) #22
  tail call void @free(ptr noundef %7) #22
  %157 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %158 = load i32, ptr %157, align 8, !tbaa !850
  %159 = tail call i32 @llvm.smax.i32(i32 %158, i32 %10)
  store i32 %159, ptr %157, align 8, !tbaa !850
  %160 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 7
  %161 = load ptr, ptr %160, align 8, !tbaa !856
  %162 = icmp eq ptr %161, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %154
  %164 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef nonnull %161) #22
  tail call fastcc void @VEC_rtx_base_block_remove(ptr noundef nonnull %161, i32 noundef %164) #22
  br label %165

165:                                              ; preds = %163, %154
  %166 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 8
  %167 = load ptr, ptr %166, align 8, !tbaa !857
  %168 = icmp eq ptr %167, null
  br i1 %168, label %188, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 9
  %171 = load i32, ptr %170, align 8, !tbaa !858
  %172 = sext i32 %171 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %167, i8 0, i64 %172, i1 false)
  br label %188

173:                                              ; preds = %150
  %174 = getelementptr inbounds %struct.edge_def, ptr %147, i64 0, i32 8
  %175 = load i32, ptr %174, align 4, !tbaa !872
  %176 = getelementptr inbounds %struct.edge_def, ptr %132, i64 0, i32 8
  %177 = load i32, ptr %176, align 4, !tbaa !872
  %178 = icmp sgt i32 %175, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 5
  %181 = load ptr, ptr %180, align 8, !tbaa !852
  tail call fastcc void @delete_deps_context(ptr noundef %181) #22
  store ptr %3, ptr %180, align 8, !tbaa !852
  %182 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 7
  tail call fastcc void @VEC_rtx_gc_free(ptr noundef nonnull %182) #22
  store ptr %6, ptr %182, align 8, !tbaa !856
  %183 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 8
  %184 = load ptr, ptr %183, align 8, !tbaa !857
  tail call void @free(ptr noundef %184) #22
  store ptr %7, ptr %183, align 8, !tbaa !857
  %185 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 9
  store i32 %8, ptr %185, align 8, !tbaa !858
  %186 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  store i32 %10, ptr %186, align 8, !tbaa !850
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
  store i32 0, ptr %195, align 4, !tbaa !851
  %196 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 13
  %197 = or i8 %194, 4
  store i8 %197, ptr %196, align 8
  %198 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 12
  store ptr null, ptr %198, align 8, !tbaa !859
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @init_fence_for_scheduling(ptr nocapture noundef %0) unnamed_addr #6 !prof !738 !PGOFuncName !873 {
  %2 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 4
  store ptr null, ptr %2, align 8, !tbaa !874
  %3 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 13
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, -4
  store i8 %5, ptr %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_clean_fence_to_fences(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !714 {
  %4 = tail call i32 @get_max_uid() #23
  %5 = add nsw i32 %4, 1
  %6 = tail call fastcc ptr @state_create() #22
  %7 = tail call fastcc ptr @create_deps_context() #22
  %8 = tail call ptr @create_target_context(i8 noundef zeroext 1) #22
  %9 = sext i32 %5 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 4) #23
  %11 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !850
  %13 = add nsw i32 %12, 1
  %14 = load i32, ptr @issue_rate, align 4, !tbaa !786
  %15 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 13
  %16 = load i8, ptr %15, align 8
  %17 = lshr i8 %16, 3
  %18 = and i8 %17, 1
  tail call fastcc void @add_to_fences(ptr noundef %0, ptr noundef %1, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef null, ptr noundef %10, i32 noundef %5, ptr noundef null, i32 noundef %13, i32 noundef 0, i32 noundef %14, i8 noundef zeroext 1, i8 noundef zeroext %18) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_fences(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i8 noundef zeroext %13, i8 noundef zeroext %14) unnamed_addr #0 !prof !875 !PGOFuncName !876 {
  %16 = load ptr, ptr %0, align 8, !tbaa !739
  %17 = tail call ptr @flist_lookup(ptr noundef %16, ptr noundef %1) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %24, !prof !877

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.flist_tail_def, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !741
  tail call fastcc void @flist_add(ptr noundef %21, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i8 noundef zeroext %13, i8 noundef zeroext %14) #22
  %22 = load ptr, ptr %20, align 8, !tbaa !741
  %23 = load ptr, ptr %22, align 8, !tbaa !701
  store ptr %23, ptr %20, align 8, !tbaa !741
  br label %25

24:                                               ; preds = %15
  tail call fastcc void @merge_fences(ptr noundef nonnull %17, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %12, i8 noundef zeroext %14) #22
  br label %25

25:                                               ; preds = %24, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_dirty_fence_to_fences(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !875 {
  %4 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !858
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call ptr @xmalloc(i64 noundef %7) #23
  %9 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !857
  %11 = load i32, ptr %4, align 8, !tbaa !858
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %10, i64 %13, i1 false)
  %14 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !849
  %16 = tail call fastcc ptr @state_create_copy(ptr noundef %15) #22
  %17 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !852
  %19 = tail call fastcc ptr @create_copy_of_deps_context(ptr noundef %18) #22
  %20 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !853
  %22 = tail call fastcc ptr @create_copy_of_target_context(ptr noundef %21) #22
  %23 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !854
  %25 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !856
  %27 = tail call fastcc ptr @VEC_rtx_gc_copy(ptr noundef %26) #22
  %28 = load i32, ptr %4, align 8, !tbaa !858
  %29 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 12
  %30 = load ptr, ptr %29, align 8, !tbaa !859
  %31 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !850
  %33 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !851
  %35 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 11
  %36 = load i32, ptr %35, align 8, !tbaa !855
  %37 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 13
  %38 = load i8, ptr %37, align 8
  %39 = lshr i8 %38, 2
  %40 = and i8 %39, 1
  %41 = lshr i8 %38, 3
  %42 = and i8 %41, 1
  tail call fastcc void @add_to_fences(ptr noundef %0, ptr noundef %1, ptr noundef %16, ptr noundef %19, ptr noundef %22, ptr noundef %24, ptr noundef %27, ptr noundef %8, i32 noundef %28, ptr noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i8 noundef zeroext %40, i8 noundef zeroext %42) #22
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @state_create_copy(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !875 !PGOFuncName !878 {
  %2 = tail call fastcc ptr @state_alloc() #22
  tail call fastcc void @state_copy(ptr noundef %2, ptr noundef %0) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_copy_of_deps_context(ptr noundef %0) unnamed_addr #0 !prof !875 !PGOFuncName !879 {
  %2 = tail call fastcc ptr @alloc_deps_context() #22
  tail call fastcc void @copy_deps_context(ptr noundef %2, ptr noundef %0) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_copy_of_target_context(ptr noundef %0) unnamed_addr #0 !prof !875 !PGOFuncName !880 {
  %2 = tail call fastcc ptr @alloc_target_context() #22
  tail call fastcc void @copy_target_context(ptr noundef %2, ptr noundef %0) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_rtx_gc_copy(ptr noundef readonly %0) unnamed_addr #0 !prof !875 !PGOFuncName !881 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !882

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !883
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6, !prof !885

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %4) #23
  store i32 %4, ptr %8, align 8, !tbaa !886
  %9 = getelementptr inbounds %struct.VEC_rtx_base, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2
  %11 = shl nuw nsw i64 %7, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %9, ptr nonnull align 8 %10, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %1, %6, %3
  %13 = phi ptr [ %8, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_regset_from_pool() local_unnamed_addr #0 !prof !888 {
  %1 = load i32, ptr @regset_pool.1, align 8, !tbaa !889
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %9, label %3, !prof !891

3:                                                ; preds = %0
  %4 = load ptr, ptr @regset_pool.0, align 8, !tbaa !892
  %5 = add nsw i32 %1, -1
  store i32 %5, ptr @regset_pool.1, align 8, !tbaa !889
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !701
  br label %28

9:                                                ; preds = %0
  %10 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #23
  %11 = load i32, ptr @regset_pool.4, align 8, !tbaa !893
  %12 = load i32, ptr @regset_pool.5, align 8, !tbaa !894
  %13 = icmp eq i32 %11, %12
  %14 = load ptr, ptr @regset_pool.3, align 8, !tbaa !895
  br i1 %13, label %15, label %22, !prof !896

15:                                               ; preds = %9
  %16 = shl nsw i32 %11, 1
  %17 = or disjoint i32 %16, 1
  store i32 %17, ptr @regset_pool.5, align 8, !tbaa !894
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr @xrealloc(ptr noundef %14, i64 noundef %19) #23
  store ptr %20, ptr @regset_pool.3, align 8, !tbaa !895
  %21 = load i32, ptr @regset_pool.4, align 8, !tbaa !893
  br label %22

22:                                               ; preds = %15, %9
  %23 = phi i32 [ %21, %15 ], [ %11, %9 ]
  %24 = phi ptr [ %20, %15 ], [ %14, %9 ]
  %25 = add nsw i32 %23, 1
  store i32 %25, ptr @regset_pool.4, align 8, !tbaa !893
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  store ptr %10, ptr %27, align 8, !tbaa !701
  br label %28

28:                                               ; preds = %22, %3
  %29 = phi ptr [ %8, %3 ], [ %10, %22 ]
  %30 = load i32, ptr @regset_pool.6, align 8, !tbaa !897
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr @regset_pool.6, align 8, !tbaa !897
  ret ptr %29
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_clear_regset_from_pool() local_unnamed_addr #0 !prof !898 {
  %1 = tail call ptr @get_regset_from_pool() #22
  tail call void @bitmap_clear(ptr noundef %1) #23
  ret ptr %1
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @return_regset_to_pool(ptr noundef %0) local_unnamed_addr #0 !prof !888 {
  %2 = load i32, ptr @regset_pool.6, align 8, !tbaa !897
  %3 = add nsw i32 %2, -1
  store i32 %3, ptr @regset_pool.6, align 8, !tbaa !897
  %4 = load i32, ptr @regset_pool.1, align 8, !tbaa !889
  %5 = load i32, ptr @regset_pool.2, align 8, !tbaa !899
  %6 = icmp eq i32 %4, %5
  %7 = load ptr, ptr @regset_pool.0, align 8, !tbaa !892
  br i1 %6, label %8, label %15, !prof !900

8:                                                ; preds = %1
  %9 = shl nsw i32 %4, 1
  %10 = or disjoint i32 %9, 1
  store i32 %10, ptr @regset_pool.2, align 8, !tbaa !899
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 3
  %13 = tail call ptr @xrealloc(ptr noundef %7, i64 noundef %12) #23
  store ptr %13, ptr @regset_pool.0, align 8, !tbaa !892
  %14 = load i32, ptr @regset_pool.1, align 8, !tbaa !889
  br label %15

15:                                               ; preds = %8, %1
  %16 = phi i32 [ %14, %8 ], [ %4, %1 ]
  %17 = phi ptr [ %13, %8 ], [ %7, %1 ]
  %18 = add nsw i32 %16, 1
  store i32 %18, ptr @regset_pool.1, align 8, !tbaa !889
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  store ptr %0, ptr %20, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_regset_pool() local_unnamed_addr #0 !prof !901 {
  %1 = load i32, ptr @regset_pool.6, align 8, !tbaa !897
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !902

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1003, ptr noundef nonnull @.str.1) #23
  br label %4

4:                                                ; preds = %0, %3
  %5 = load i32, ptr @regset_pool.1, align 8, !tbaa !889
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @regset_pool.0, align 8, !tbaa !892
  br i1 %6, label %20, label %8, !prof !903

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %15, %8 ], [ %7, %4 ]
  %10 = phi i32 [ %16, %8 ], [ %5, %4 ]
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr @regset_pool.1, align 8, !tbaa !889
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !701
  tail call void @bitmap_obstack_free(ptr noundef %14) #23
  %15 = load ptr, ptr @regset_pool.0, align 8, !tbaa !892
  %16 = load i32, ptr @regset_pool.1, align 8, !tbaa !889
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  store ptr null, ptr %18, align 8, !tbaa !701
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %8, !prof !904, !llvm.loop !905

20:                                               ; preds = %8, %4
  %21 = phi ptr [ %7, %4 ], [ %15, %8 ]
  tail call void @free(ptr noundef %21) #22
  store ptr null, ptr @regset_pool.0, align 8, !tbaa !892
  store i32 0, ptr @regset_pool.2, align 8, !tbaa !899
  %22 = load ptr, ptr @regset_pool.3, align 8, !tbaa !895
  tail call void @free(ptr noundef %22) #22
  store ptr null, ptr @regset_pool.3, align 8, !tbaa !895
  store i32 0, ptr @regset_pool.4, align 8, !tbaa !893
  store i32 0, ptr @regset_pool.5, align 8, !tbaa !894
  store i32 0, ptr @regset_pool.6, align 8, !tbaa !897
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_nop_from_pool(ptr noundef %0) local_unnamed_addr #0 !prof !906 {
  %2 = load i32, ptr @nop_pool.1, align 8, !tbaa !907
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4, !prof !909

4:                                                ; preds = %1
  %5 = load ptr, ptr @nop_pool.0, align 8, !tbaa !910
  %6 = add nsw i32 %2, -1
  store i32 %6, ptr @nop_pool.1, align 8, !tbaa !907
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %5, i64 %7
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 2, %4 ], [ 3, %1 ]
  %11 = phi ptr [ %8, %4 ], [ @nop_pattern, %1 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !701
  %13 = tail call ptr @emit_insn_before(ptr noundef %12, ptr noundef %0) #23
  %14 = load ptr, ptr @s_i_d, align 8
  %15 = load ptr, ptr @sched_luids, align 8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !706
  %18 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %17) #22
  %19 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %14, i32 noundef %18) #22
  %20 = load ptr, ptr @nop_vinsn, align 8, !tbaa !701
  %21 = getelementptr inbounds %struct._sel_insn_data, ptr %19, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !911
  tail call fastcc void @set_insn_init(ptr noundef nonnull %19, ptr noundef %20, i32 noundef %22) #22
  tail call fastcc void @sel_init_new_insn(ptr noundef %13, i32 noundef %10) #22
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_insn_init(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !916 !PGOFuncName !917 {
  tail call void @copy_expr_onside(ptr noundef nonnull @_insn_init_ssid, ptr noundef %0) #22
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !918

5:                                                ; preds = %3
  store i1 false, ptr @insn_init_create_new_vinsn_p, align 1
  tail call void @change_vinsn_in_expr(ptr noundef nonnull @_insn_init_ssid, ptr noundef nonnull %1) #22
  br label %7

6:                                                ; preds = %3
  store i1 true, ptr @insn_init_create_new_vinsn_p, align 1
  br label %7

7:                                                ; preds = %6, %5
  store i32 %2, ptr getelementptr inbounds (%struct._sel_insn_data, ptr @_insn_init_ssid, i64 0, i32 2), align 4, !tbaa !911
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_sel_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #8 !prof !919 !PGOFuncName !920 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !921 !PGOFuncName !922 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !786
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_init_new_insn(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !916 !PGOFuncName !923 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %21, !prof !924

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !706
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11, !prof !925

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !706
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !925

15:                                               ; preds = %11
  %16 = tail call fastcc zeroext i8 @insn_is_the_only_one_in_bb_p(ptr noundef nonnull %0) #22, !range !726
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18, !prof !926

18:                                               ; preds = %15
  tail call void @extend_bb_info() #22
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !706
  tail call fastcc void @create_initial_data_sets(ptr noundef %20) #22
  br label %21

21:                                               ; preds = %2, %18, %15, %11, %7
  %22 = and i32 %1, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24, !prof !927

24:                                               ; preds = %21
  tail call void @sched_init_luids(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %0) #23
  br label %25

25:                                               ; preds = %24, %21
  %26 = and i32 %1, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !925

28:                                               ; preds = %25
  tail call void @extend_insn_data() #22
  tail call fastcc void @init_insn_data(ptr noundef nonnull %0) #22
  tail call void @clear_expr(ptr noundef nonnull @_insn_init_ssid) #22
  br label %29

29:                                               ; preds = %28, %25
  %30 = and i32 %1, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32, !prof !926

32:                                               ; preds = %29
  tail call void @extend_insn_data() #22
  tail call fastcc void @init_simplejump_data(ptr noundef nonnull %0) #22
  br label %33

33:                                               ; preds = %32, %29
  %34 = load ptr, ptr @containing_rgn, align 8, !tbaa !701
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !706
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !827
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %34, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !786
  %42 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !701
  %43 = load ptr, ptr @ebb_head, align 8, !tbaa !701
  %44 = load i32, ptr %43, align 4, !tbaa !786
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %42, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !786
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %34, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !786
  %51 = icmp eq i32 %41, %50
  br i1 %51, label %53, label %52, !prof !926

52:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4083, ptr noundef nonnull @.str.1) #23
  br label %53

53:                                               ; preds = %33, %52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @return_nop_to_pool(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !906 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !706
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !928

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !706
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !928

10:                                               ; preds = %6, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1062, ptr noundef nonnull @.str.1) #23
  br label %11

11:                                               ; preds = %6, %10
  %12 = tail call zeroext i8 @sel_remove_insn(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext %1) #22, !range !726
  %13 = load i32, ptr @nop_pool.1, align 8, !tbaa !907
  %14 = load i32, ptr @nop_pool.2, align 8, !tbaa !929
  %15 = icmp eq i32 %13, %14
  %16 = load ptr, ptr @nop_pool.0, align 8, !tbaa !910
  br i1 %15, label %17, label %24, !prof !909

17:                                               ; preds = %11
  %18 = shl nsw i32 %13, 1
  %19 = or disjoint i32 %18, 1
  store i32 %19, ptr @nop_pool.2, align 8, !tbaa !929
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr @xrealloc(ptr noundef %16, i64 noundef %21) #23
  store ptr %22, ptr @nop_pool.0, align 8, !tbaa !910
  %23 = load i32, ptr @nop_pool.1, align 8, !tbaa !907
  br label %24

24:                                               ; preds = %17, %11
  %25 = phi i32 [ %23, %17 ], [ %13, %11 ]
  %26 = phi ptr [ %22, %17 ], [ %16, %11 ]
  %27 = add nsw i32 %25, 1
  store i32 %27, ptr @nop_pool.1, align 8, !tbaa !907
  %28 = sext i32 %25 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  store ptr %0, ptr %29, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @sel_remove_insn(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !930 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._list_iterator, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !706
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !706
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !931

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !706
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !931

16:                                               ; preds = %12, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3736, ptr noundef nonnull @.str.1) #23
  br label %17

17:                                               ; preds = %12, %16
  %18 = load i32, ptr %0, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 7
  br i1 %20, label %21, label %48, !prof !931

21:                                               ; preds = %17
  %22 = load ptr, ptr @sel_region_bb_info, align 8
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !827
  %25 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %22, i32 noundef %24) #22
  %26 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !932
  %28 = load i32, ptr @global_level, align 4, !tbaa !786
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  %31 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %25, i64 0, i32 1
  call fastcc void @_list_iter_start(ptr noundef nonnull %5, ptr noundef nonnull %31, i8 noundef zeroext 1) #22
  %32 = load ptr, ptr %5, align 8, !tbaa !724
  %33 = load ptr, ptr %32, align 8, !tbaa !701
  %34 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %33, ptr noundef nonnull %4) #22, !range !726
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %30, %42
  %37 = load ptr, ptr %4, align 8, !tbaa !701
  %38 = load ptr, ptr %37, align 8, !tbaa !934
  %39 = load ptr, ptr %38, align 8, !tbaa !935
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  call void @av_set_iter_remove(ptr noundef nonnull %5) #22
  br label %47

42:                                               ; preds = %36
  call fastcc void @_list_iter_next(ptr noundef nonnull %5) #22
  %43 = load ptr, ptr %5, align 8, !tbaa !724
  %44 = load ptr, ptr %43, align 8, !tbaa !701
  %45 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %44, ptr noundef nonnull %4) #22, !range !726
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %36, !llvm.loop !938

47:                                               ; preds = %42, %30, %41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %48

48:                                               ; preds = %47, %21, %17
  %49 = icmp eq i8 %1, 0
  br i1 %49, label %76, label %50, !prof !939

50:                                               ; preds = %48
  %51 = load ptr, ptr %9, align 8, !tbaa !706
  %52 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !706
  %54 = load ptr, ptr %7, align 8, !tbaa !706
  %55 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %53, ptr %55, align 8, !tbaa !706
  %56 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %51, ptr %56, align 8, !tbaa !706
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !706
  %59 = load ptr, ptr %58, align 8, !tbaa !940
  %60 = icmp eq ptr %59, %0
  br i1 %60, label %61, label %70, !prof !941

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !706
  %64 = icmp eq ptr %63, %54
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3764, ptr noundef nonnull @.str.1) #23
  %66 = load ptr, ptr %57, align 8, !tbaa !706
  br label %67

67:                                               ; preds = %61, %65
  %68 = phi ptr [ %58, %61 ], [ %66, %65 ]
  store ptr %51, ptr %68, align 8, !tbaa !940
  %69 = load ptr, ptr %57, align 8, !tbaa !706
  br label %70

70:                                               ; preds = %67, %50
  %71 = phi ptr [ %69, %67 ], [ %58, %50 ]
  %72 = getelementptr inbounds %struct.rtl_bb_info, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !806
  %74 = icmp eq ptr %73, %0
  br i1 %74, label %75, label %82, !prof !942

75:                                               ; preds = %70
  store ptr %51, ptr %72, align 8, !tbaa !806
  br label %82

76:                                               ; preds = %48
  tail call void @remove_insn(ptr noundef nonnull %0) #23
  %77 = load ptr, ptr @s_i_d, align 8
  %78 = load ptr, ptr @sched_luids, align 8
  %79 = load i32, ptr %6, align 8, !tbaa !706
  %80 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %78, i32 noundef %79) #22
  %81 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %77, i32 noundef %80) #22
  tail call void @clear_expr(ptr noundef nonnull %81) #22
  br label %82

82:                                               ; preds = %70, %75, %76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %83 = tail call zeroext i8 @tidy_control_flow(ptr noundef %8, i8 noundef zeroext %2) #22, !range !726
  ret i8 %83
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @free_nop_pool() local_unnamed_addr #10 !prof !784 {
  store i32 0, ptr @nop_pool.1, align 8, !tbaa !907
  store i32 0, ptr @nop_pool.2, align 8, !tbaa !929
  %1 = load ptr, ptr @nop_pool.0, align 8, !tbaa !910
  tail call void @free(ptr noundef %1) #22
  store ptr null, ptr @nop_pool.0, align 8, !tbaa !910
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vinsn_attach(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !943 {
  %2 = load ptr, ptr %0, align 8, !tbaa !935
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !944

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1219, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !945
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !945
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @vinsn_copy(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !714 {
  %3 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !946
  %5 = add i32 %4, -25
  %6 = icmp ult i32 %5, -2
  %7 = zext i1 %6 to i8
  %8 = load ptr, ptr %0, align 8, !tbaa !935
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
define dso_local ptr @create_copy_of_insn_rtx(ptr noundef %0) local_unnamed_addr #0 !prof !947 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %9 [
    i16 7, label %4
    i16 8, label %10
  ], !prof !948

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !706
  %7 = tail call ptr @copy_rtx(ptr noundef %6) #23
  %8 = tail call ptr @create_insn_rtx_from_pattern(ptr noundef %7, ptr noundef nonnull %0) #22
  br label %15

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5563, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %1, %9
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !706
  %13 = tail call ptr @copy_rtx(ptr noundef %12) #23
  %14 = tail call ptr @create_insn_rtx_from_pattern(ptr noundef %13, ptr noundef null) #22
  br label %15

15:                                               ; preds = %10, %4
  %16 = phi ptr [ %8, %4 ], [ %14, %10 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_vinsn_from_insn_rtx(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !949 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %15, !prof !950

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !706
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11, !prof !951

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !706
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
define dso_local void @vinsn_detach(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !943 {
  %2 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !945
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %7, label %5, !prof !952

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1273, ptr noundef nonnull @.str.1) #23
  %6 = load i32, ptr %2, align 8, !tbaa !945
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %3, %1 ], [ %6, %5 ]
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %2, align 8, !tbaa !945
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !953

11:                                               ; preds = %7
  tail call fastcc void @vinsn_delete(ptr noundef nonnull %0) #22
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vinsn_delete(ptr nocapture noundef %0) unnamed_addr #0 !prof !954 !PGOFuncName !955 {
  %2 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !945
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !956

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1259, ptr noundef nonnull @.str.1) #23
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !957
  tail call void @return_regset_to_pool(ptr noundef %8) #22
  %9 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !958
  tail call void @return_regset_to_pool(ptr noundef %10) #22
  %11 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !959
  tail call void @return_regset_to_pool(ptr noundef %12) #22
  tail call void @free(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @vinsn_cond_branch_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !960 {
  %2 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !946
  %4 = add i32 %3, -23
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %17, label %6, !prof !961

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !935
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !706
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !706
  %12 = getelementptr inbounds %struct.rtl_bb_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !806
  %14 = icmp eq ptr %13, %7
  br i1 %14, label %15, label %17, !prof !962

15:                                               ; preds = %6
  %16 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %7) #23
  br label %17

17:                                               ; preds = %1, %6, %15
  %18 = phi i8 [ %16, %15 ], [ 0, %1 ], [ 0, %6 ]
  ret i8 %18
}

; Function Attrs: optsize
declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @sel_vinsn_cost(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !963 {
  %2 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !964
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8, !prof !965

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !935
  %7 = tail call fastcc i32 @sel_insn_rtx_cost(ptr noundef %6) #22, !range !966
  store i32 %7, ptr %2, align 4, !tbaa !964
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ %3, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sel_insn_rtx_cost(ptr noundef %0) unnamed_addr #0 !prof !967 !PGOFuncName !968 {
  %2 = tail call fastcc i32 @recog_memoized(ptr noundef %0) #22
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %8, label %4, !prof !969

4:                                                ; preds = %1
  %5 = tail call i32 @insn_default_latency(ptr noundef %0) #23
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8, !prof !969

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %1, %4, %7
  %9 = phi i32 [ 0, %7 ], [ %5, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sel_gen_insn_from_rtx_after(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !970 {
  %5 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 11
  %6 = load i8, ptr %5, align 8, !tbaa !971
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %9, label %8, !prof !972

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
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sel_gen_recovery_insn_from_rtx_after(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !714 {
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
  %12 = load i32, ptr %11, align 8, !tbaa !706
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
define internal fastcc nonnull ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #8 !prof !973 !PGOFuncName !974 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @sel_gen_insn_from_expr_after(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !970 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %8, !prof !972

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !934
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ %7, %6 ], [ %1, %4 ]
  tail call fastcc void @set_insn_init(ptr noundef %0, ptr noundef %9, i32 noundef %2) #22
  %10 = load ptr, ptr @_insn_init_ssid, align 8, !tbaa !934
  %11 = load ptr, ptr %10, align 8, !tbaa !935
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !706
  tail call void @add_insn_after(ptr noundef %11, ptr noundef %3, ptr noundef %14) #23
  %15 = load ptr, ptr @sched_luids, align 8
  %16 = load i32, ptr %12, align 8, !tbaa !706
  %17 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %16) #22
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 3, i32 2, !prof !972
  tail call fastcc void @sel_init_new_insn(ptr noundef %11, i32 noundef %19) #22
  ret ptr %11
}

; Function Attrs: optsize
declare void @add_insn_after(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sel_move_insn(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !975 {
  %4 = load ptr, ptr %0, align 8, !tbaa !934
  %5 = load ptr, ptr %4, align 8, !tbaa !935
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !706
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !706
  %10 = load ptr, ptr @s_i_d, align 8
  %11 = load ptr, ptr @sched_luids, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !706
  %14 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %11, i32 noundef %13) #22
  %15 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %10, i32 noundef %14) #22
  %16 = load ptr, ptr %15, align 8, !tbaa !976
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !941

18:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1408, ptr noundef nonnull @.str.1) #23
  br label %19

19:                                               ; preds = %3, %18
  %20 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %2, ptr %20, align 8, !tbaa !706
  %21 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %9, ptr %21, align 8, !tbaa !706
  store ptr %5, ptr %8, align 8, !tbaa !706
  %22 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %5, ptr %22, align 8, !tbaa !706
  tail call void @df_insn_change_bb(ptr noundef nonnull %5, ptr noundef %7) #23
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !706
  %25 = getelementptr inbounds %struct.rtl_bb_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !806
  %27 = icmp eq ptr %26, %2
  br i1 %27, label %28, label %29, !prof !977

28:                                               ; preds = %19
  store ptr %5, ptr %25, align 8, !tbaa !806
  br label %29

29:                                               ; preds = %28, %19
  tail call fastcc void @prepare_insn_expr(ptr noundef nonnull %5, i32 noundef %1) #22
  ret ptr %5
}

; Function Attrs: optsize
declare void @df_insn_change_bb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_insn_expr(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !978 !PGOFuncName !979 {
  %3 = load ptr, ptr @s_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !706
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %6) #22
  %8 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %7) #22
  %9 = getelementptr inbounds %struct._sel_insn_data, ptr %8, i64 0, i32 2
  store i32 %1, ptr %9, align 4, !tbaa !911
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !706
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !827
  %14 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 6
  store i32 %13, ptr %14, align 4, !tbaa !980
  %15 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 1
  store i32 0, ptr %15, align 8, !tbaa !981
  %16 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 9
  store i32 0, ptr %16, align 8, !tbaa !982
  %17 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 12
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, -7
  store i8 %19, ptr %17, align 1
  %20 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 11
  store i8 1, ptr %20, align 8, !tbaa !971
  %21 = load i32, ptr %5, align 8, !tbaa !706
  %22 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %21) #22
  %23 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %22) #22
  %24 = getelementptr inbounds %struct._sel_insn_data, ptr %23, i64 0, i32 13
  %25 = load i8, ptr %24, align 4
  %26 = and i8 %25, -2
  store i8 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !983
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30, !prof !984

30:                                               ; preds = %2
  %31 = tail call i32 @ds_get_max_dep_weak(i32 noundef %28) #23
  store i32 %31, ptr %27, align 8, !tbaa !983
  br label %32

32:                                               ; preds = %30, %2
  %33 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 10
  tail call fastcc void @free_history_vect(ptr noundef nonnull %33) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @find_in_history_vect(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !985 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !706
  %10 = call fastcc zeroext i8 @find_in_history_vect_1(ptr noundef %0, i32 noundef %9, ptr noundef %2, i8 noundef zeroext 0, ptr noundef nonnull %5) #22
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12, !prof !986

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4, !tbaa !786
  br label %38

14:                                               ; preds = %4
  %15 = load ptr, ptr @s_i_d, align 8
  %16 = load ptr, ptr @sched_luids, align 8
  %17 = load i32, ptr %8, align 8, !tbaa !706
  %18 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %16, i32 noundef %17) #22
  %19 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %15, i32 noundef %18) #22
  %20 = getelementptr inbounds %struct._sel_insn_data, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !987
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23, !prof !988

23:                                               ; preds = %14
  %24 = icmp eq i8 %3, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %7, ptr noundef nonnull %21, ptr noundef nonnull %6) #22
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %6) #22, !range !726
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %33, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %38

29:                                               ; preds = %25, %33
  %30 = load i32, ptr %6, align 4, !tbaa !786
  %31 = call fastcc zeroext i8 @find_in_history_vect_1(ptr noundef %0, i32 noundef %30, ptr noundef %2, i8 noundef zeroext 0, ptr noundef nonnull %5) #22
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  call fastcc void @bmp_iter_next(ptr noundef nonnull %7, ptr noundef nonnull %6) #22
  %34 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %6) #22, !range !726
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %28, label %29, !llvm.loop !989

36:                                               ; preds = %29
  %37 = load i32, ptr %5, align 4, !tbaa !786
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %38

38:                                               ; preds = %14, %23, %28, %36, %12
  %39 = phi i32 [ %13, %12 ], [ %37, %36 ], [ -1, %28 ], [ -1, %23 ], [ -1, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @find_in_history_vect_1(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !prof !990 !PGOFuncName !991 {
  %6 = tail call fastcc i32 @VEC_expr_history_def_base_length(ptr noundef %0) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %35, label %8, !prof !992

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @VEC_expr_history_def_base_address(ptr noundef %0) #22
  %10 = icmp sgt i32 %6, 0
  br i1 %10, label %11, label %35, !prof !993

11:                                               ; preds = %8, %25
  %12 = phi i64 [ %27, %25 ], [ 0, %8 ]
  %13 = getelementptr inbounds %struct.expr_history_def_1, ptr %9, i64 %12
  %14 = load i32, ptr %13, align 8, !tbaa !994
  %15 = getelementptr inbounds %struct.expr_history_def_1, ptr %9, i64 %12, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !996
  %17 = icmp eq i32 %14, %1
  br i1 %17, label %18, label %23, !prof !997

18:                                               ; preds = %11
  %19 = icmp eq i8 %3, 0
  br i1 %19, label %29, label %20, !prof !998

20:                                               ; preds = %18
  %21 = tail call zeroext i8 @vinsn_equal_p(ptr noundef %16, ptr noundef %2) #22
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %11, %20
  %24 = icmp ugt i32 %14, %1
  br i1 %24, label %33, label %25, !prof !999

25:                                               ; preds = %23
  %26 = zext nneg i32 %6 to i64
  %27 = add nuw nsw i64 %12, 1
  %28 = icmp eq i64 %27, %26
  br i1 %28, label %35, label %11, !prof !1000

29:                                               ; preds = %18
  %30 = trunc i64 %12 to i32
  br label %35

31:                                               ; preds = %20
  %32 = trunc i64 %12 to i32
  br label %35

33:                                               ; preds = %23
  %34 = trunc i64 %12 to i32
  br label %35

35:                                               ; preds = %29, %31, %33, %25, %8, %5
  %36 = phi i32 [ 0, %5 ], [ 0, %8 ], [ %30, %29 ], [ %32, %31 ], [ %34, %33 ], [ %6, %25 ]
  %37 = phi i8 [ 0, %5 ], [ 0, %8 ], [ 1, %29 ], [ 1, %31 ], [ 0, %33 ], [ 0, %25 ]
  store i32 %36, ptr %4, align 4, !tbaa !786
  ret i8 %37
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !prof !1001 !PGOFuncName !1002 {
  %4 = load ptr, ptr %1, align 8, !tbaa !1003
  store ptr %4, ptr %0, align 8, !tbaa !1004
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !1006
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !1007

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !1004
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !1008
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !1010

13:                                               ; preds = %8
  %14 = shl i32 %11, 7
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !1011
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !1012
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !1013
  %21 = icmp eq i64 %19, 0
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %16, %22
  store i32 %23, ptr %2, align 4, !tbaa !786
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !1014 !PGOFuncName !1015 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1013
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !1016

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !1017

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !786
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !1018, !llvm.loop !1019

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !786
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !786
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !1011
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !1004
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !1011
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !1020

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !1012
  store i64 %35, ptr %3, align 8, !tbaa !1013
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !1021

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !786
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !786
  %40 = load i32, ptr %23, align 8, !tbaa !1011
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !1011
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !1022, !llvm.loop !1023

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !1024
  store ptr %44, ptr %0, align 8, !tbaa !1004
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !1021

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !1008
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !786
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !1013
  store i32 %16, ptr %1, align 4, !tbaa !786
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !1025 !PGOFuncName !1026 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1013
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !1013
  %6 = load i32, ptr %1, align 4, !tbaa !786
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !786
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @insert_in_history_vect(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !1027 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.expr_history_def_1, align 8
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %10 = load ptr, ptr %0, align 8, !tbaa !701
  store ptr %10, ptr %7, align 8, !tbaa !701
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #21
  %11 = call fastcc zeroext i8 @find_in_history_vect_1(ptr noundef %10, i32 noundef %1, ptr noundef %4, i8 noundef zeroext 1, ptr noundef nonnull %9) #22
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13, !prof !1028

13:                                               ; preds = %6
  %14 = load i32, ptr %9, align 4, !tbaa !786
  %15 = tail call fastcc ptr @VEC_expr_history_def_base_index(ptr noundef %10, i32 noundef %14) #22
  %16 = getelementptr inbounds %struct.expr_history_def_1, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !1029
  %18 = icmp eq i32 %17, %5
  br i1 %18, label %28, label %19

19:                                               ; preds = %13
  %20 = tail call i32 @ds_max_merge(i32 noundef %17, i32 noundef %5) #23
  store i32 %20, ptr %16, align 8, !tbaa !1029
  br label %28

21:                                               ; preds = %6
  store i32 %1, ptr %8, align 8, !tbaa !994
  %22 = getelementptr inbounds %struct.expr_history_def_1, ptr %8, i64 0, i32 1
  store ptr %3, ptr %22, align 8, !tbaa !1030
  %23 = getelementptr inbounds %struct.expr_history_def_1, ptr %8, i64 0, i32 2
  store ptr %4, ptr %23, align 8, !tbaa !996
  %24 = getelementptr inbounds %struct.expr_history_def_1, ptr %8, i64 0, i32 3
  store i32 %5, ptr %24, align 8, !tbaa !1029
  %25 = getelementptr inbounds %struct.expr_history_def_1, ptr %8, i64 0, i32 4
  store i32 %2, ptr %25, align 4, !tbaa !1031
  tail call void @vinsn_attach(ptr noundef %3) #22
  tail call void @vinsn_attach(ptr noundef %4) #22
  %26 = load i32, ptr %9, align 4, !tbaa !786
  call fastcc void @VEC_expr_history_def_heap_safe_insert(ptr noundef nonnull %7, i32 noundef %26, ptr noundef nonnull %8) #22
  %27 = load ptr, ptr %7, align 8, !tbaa !701
  store ptr %27, ptr %0, align 8, !tbaa !701
  br label %28

28:                                               ; preds = %13, %19, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_expr_history_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #8 !prof !714 !PGOFuncName !1032 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_expr_history_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @ds_max_merge(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_expr_history_def_heap_safe_insert(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1027 !PGOFuncName !1033 {
  tail call fastcc void @VEC_expr_history_def_heap_reserve(ptr noundef %0) #22
  %4 = load ptr, ptr %0, align 8, !tbaa !701
  tail call fastcc void @VEC_expr_history_def_base_quick_insert(ptr noundef %4, i32 noundef %1, ptr noundef %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @vinsn_equal_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !1034 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %46, label %4, !prof !1035

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !946
  %7 = getelementptr inbounds %struct.vinsn_def, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !946
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %46, !prof !1036

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !1037
  %13 = getelementptr inbounds %struct.vinsn_def, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !1037
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %46, !prof !1038

16:                                               ; preds = %10
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 35), align 8, !tbaa !1039
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr null, ptr @skip_unspecs_callback
  %20 = icmp eq i32 %6, 23
  br i1 %20, label %21, label %31, !prof !1040

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !1041
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26, !prof !1042

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1583, ptr noundef nonnull @.str.1) #23
  br label %26

26:                                               ; preds = %21, %25
  %27 = getelementptr inbounds %struct.vinsn_def, ptr %1, i64 0, i32 1, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !1041
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %40, !prof !1042

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1584, ptr noundef nonnull @.str.1) #23
  br label %36

31:                                               ; preds = %16
  %32 = load ptr, ptr %0, align 8, !tbaa !935
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 1
  %34 = load ptr, ptr %1, align 8, !tbaa !935
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1
  br label %36

36:                                               ; preds = %31, %30
  %37 = phi ptr [ %27, %30 ], [ %35, %31 ]
  %38 = phi ptr [ %22, %30 ], [ %33, %31 ]
  %39 = load ptr, ptr %37, align 8, !tbaa !706
  br label %40

40:                                               ; preds = %36, %26
  %41 = phi ptr [ %28, %26 ], [ %39, %36 ]
  %42 = phi ptr [ %22, %26 ], [ %38, %36 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !706
  %44 = tail call i32 @rtx_equal_p_cb(ptr noundef %43, ptr noundef %41, ptr noundef %19) #23
  %45 = trunc i32 %44 to i8
  br label %46

46:                                               ; preds = %40, %10, %4, %2
  %47 = phi i8 [ 1, %2 ], [ 0, %4 ], [ 0, %10 ], [ %45, %40 ]
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @skip_unspecs_callback(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 !prof !714 !PGOFuncName !1043 {
  %5 = load ptr, ptr %0, align 8, !tbaa !701
  %6 = load ptr, ptr %1, align 8, !tbaa !701
  %7 = load i32, ptr %5, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 18
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 35), align 8, !tbaa !1039
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = tail call zeroext i8 %11(ptr noundef nonnull %5) #23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13, %10
  %17 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !706
  %19 = getelementptr inbounds %struct.rtvec_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !701
  store ptr %20, ptr %2, align 8, !tbaa !701
  br label %36

21:                                               ; preds = %13, %4
  %22 = load i32, ptr %6, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 18
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 35), align 8, !tbaa !1039
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = tail call zeroext i8 %26(ptr noundef nonnull %6) #23
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28, %25
  store ptr %5, ptr %2, align 8, !tbaa !701
  %32 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !706
  %34 = getelementptr inbounds %struct.rtvec_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !701
  br label %36

36:                                               ; preds = %16, %31
  %37 = phi ptr [ %35, %31 ], [ %6, %16 ]
  store ptr %37, ptr %3, align 8, !tbaa !701
  br label %38

38:                                               ; preds = %36, %21, %28
  %39 = phi i32 [ 0, %28 ], [ 0, %21 ], [ 1, %36 ]
  ret i32 %39
}

; Function Attrs: optsize
declare i32 @rtx_equal_p_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_expr(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !1044 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !1045
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7, !prof !1046

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %8 = tail call fastcc ptr @VEC_expr_history_def_heap_copy(ptr noundef nonnull %5) #22
  %9 = call fastcc i32 @VEC_expr_history_def_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %3) #22, !range !820
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11, !prof !1047

11:                                               ; preds = %7, %11
  %12 = phi i32 [ %18, %11 ], [ 0, %7 ]
  %13 = load ptr, ptr %3, align 8, !tbaa !701
  %14 = getelementptr inbounds %struct.expr_history_def_1, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1030
  tail call void @vinsn_attach(ptr noundef %15) #22
  %16 = getelementptr inbounds %struct.expr_history_def_1, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !996
  tail call void @vinsn_attach(ptr noundef %17) #22
  %18 = add i32 %12, 1
  %19 = call fastcc i32 @VEC_expr_history_def_base_iterate(ptr noundef %8, i32 noundef %18, ptr noundef nonnull %3) #22, !range !820
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %11, !prof !1048, !llvm.loop !1049

21:                                               ; preds = %11, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %22

22:                                               ; preds = %21, %2
  %23 = phi ptr [ %8, %21 ], [ null, %2 ]
  %24 = load ptr, ptr %1, align 8, !tbaa !934
  %25 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !981
  %27 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !1050
  %29 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !1051
  %31 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !1052
  %33 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !980
  %35 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !983
  %37 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 8
  %38 = load i32, ptr %37, align 4, !tbaa !1053
  %39 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !982
  %41 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 11
  %42 = load i8, ptr %41, align 8, !tbaa !971
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
define internal fastcc noundef ptr @VEC_expr_history_def_heap_copy(ptr noundef readonly %0) unnamed_addr #0 !prof !1054 !PGOFuncName !1055 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !1056

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1057
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6, !prof !885

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %4, i64 noundef 8, i64 noundef 32) #23
  store i32 %4, ptr %8, align 8, !tbaa !1059
  %9 = getelementptr inbounds %struct.VEC_expr_history_def_base, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.VEC_expr_history_def_base, ptr %0, i64 0, i32 2
  %11 = shl nuw nsw i64 %7, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %9, ptr nonnull align 8 %10, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %1, %6, %3
  %13 = phi ptr [ %8, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_expr_history_def_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !1061 !PGOFuncName !1062 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5, !prof !1063

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1057
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11, !prof !1064

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_expr_history_def_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !701
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_expr(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, i8 noundef zeroext %11, i8 noundef zeroext %12, i8 noundef zeroext %13, i8 noundef zeroext %14, i8 noundef zeroext %15) unnamed_addr #0 !prof !1065 !PGOFuncName !1066 {
  tail call void @vinsn_attach(ptr noundef %1) #22
  store ptr %1, ptr %0, align 8, !tbaa !934
  %17 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 1
  store i32 %2, ptr %17, align 8, !tbaa !981
  %18 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 2
  store i32 %3, ptr %18, align 4, !tbaa !1050
  %19 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 3
  store i32 %4, ptr %19, align 8, !tbaa !1051
  %20 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 4
  store i32 0, ptr %20, align 4, !tbaa !1067
  %21 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 5
  store i32 %5, ptr %21, align 8, !tbaa !1052
  %22 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 6
  store i32 %6, ptr %22, align 4, !tbaa !980
  %23 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 9
  store i32 %9, ptr %23, align 8, !tbaa !982
  %24 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  store i32 %7, ptr %24, align 8, !tbaa !983
  %25 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 8
  store i32 %8, ptr %25, align 4, !tbaa !1053
  %26 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 10
  store ptr %10, ptr %26, align 8
  %27 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 %11, ptr %27, align 8, !tbaa !971
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
define dso_local void @copy_expr_onside(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !1068 {
  %3 = load ptr, ptr %1, align 8, !tbaa !934
  %4 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !981
  %6 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !1050
  %8 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !1051
  %10 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !1052
  %12 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !983
  %14 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 8
  %15 = load i32, ptr %14, align 4, !tbaa !1053
  %16 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 11
  %17 = load i8, ptr %16, align 8, !tbaa !971
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
define dso_local void @merge_expr_data(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !714 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !981
  %7 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !981
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 %8, ptr %5, align 8, !tbaa !981
  br label %11

11:                                               ; preds = %10, %3
  %12 = icmp eq ptr %2, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !1050
  %16 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !1050
  %18 = add nsw i32 %17, %15
  store i32 %18, ptr %16, align 4, !tbaa !1050
  br label %25

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !1050
  %22 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !1050
  %24 = tail call i32 @llvm.smax.i32(i32 %21, i32 %23)
  store i32 %24, ptr %20, align 4, !tbaa !1050
  br label %25

25:                                               ; preds = %19, %13
  %26 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !1051
  %28 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !1051
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 %29, ptr %26, align 8, !tbaa !1051
  br label %32

32:                                               ; preds = %31, %25
  %33 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !1052
  %35 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !1052
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 %36, ptr %33, align 8, !tbaa !1052
  br label %39

39:                                               ; preds = %38, %32
  %40 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 6
  %41 = load i32, ptr %40, align 4, !tbaa !980
  %42 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !980
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 0, ptr %40, align 4, !tbaa !980
  br label %46

46:                                               ; preds = %45, %39
  %47 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !982
  %49 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !982
  %51 = tail call i32 @llvm.smin.i32(i32 %48, i32 %50)
  store i32 %51, ptr %47, align 8, !tbaa !982
  %52 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !1045
  %54 = call fastcc i32 @VEC_expr_history_def_base_iterate(ptr noundef %53, i32 noundef 0, ptr noundef nonnull %4) #22, !range !820
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 10
  br label %58

58:                                               ; preds = %56, %58
  %59 = phi i32 [ 0, %56 ], [ %70, %58 ]
  %60 = load ptr, ptr %4, align 8, !tbaa !701
  %61 = load i32, ptr %60, align 8, !tbaa !994
  %62 = getelementptr inbounds %struct.expr_history_def_1, ptr %60, i64 0, i32 4
  %63 = load i32, ptr %62, align 4, !tbaa !1031
  %64 = getelementptr inbounds %struct.expr_history_def_1, ptr %60, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !1030
  %66 = getelementptr inbounds %struct.expr_history_def_1, ptr %60, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !996
  %68 = getelementptr inbounds %struct.expr_history_def_1, ptr %60, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !1029
  tail call void @insert_in_history_vect(ptr noundef nonnull %57, i32 noundef %61, i32 noundef %63, ptr noundef %65, ptr noundef %67, i32 noundef %69) #22
  %70 = add nuw nsw i32 %59, 1
  %71 = load ptr, ptr %52, align 8, !tbaa !1045
  %72 = call fastcc i32 @VEC_expr_history_def_base_iterate(ptr noundef %71, i32 noundef %70, ptr noundef nonnull %4) #22, !range !820
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %58, !llvm.loop !1069

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
define internal fastcc void @update_target_availability(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) unnamed_addr #6 !prof !714 !PGOFuncName !1070 {
  %4 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  %5 = load i8, ptr %4, align 8, !tbaa !971
  %6 = icmp slt i8 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 11
  %9 = load i8, ptr %8, align 8, !tbaa !971
  %10 = icmp slt i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %2, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !980
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !980
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %25, label %23

21:                                               ; preds = %11
  %22 = and i8 %9, %5
  br label %23

23:                                               ; preds = %13, %17, %3, %7, %21
  %24 = phi i8 [ %22, %21 ], [ -1, %7 ], [ -1, %3 ], [ -1, %17 ], [ -1, %13 ]
  store i8 %24, ptr %4, align 8, !tbaa !971
  br label %25

25:                                               ; preds = %23, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_speculative_bits(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 !prof !714 !PGOFuncName !1071 {
  %4 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !983
  %6 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !983
  %8 = tail call i32 @ds_max_merge(i32 noundef %5, i32 noundef %7) #23
  store i32 %8, ptr %4, align 8, !tbaa !983
  %9 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !1053
  %11 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 8
  %12 = load i32, ptr %11, align 4, !tbaa !1053
  %13 = or i32 %12, %10
  store i32 %13, ptr %11, align 4, !tbaa !1053
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
  %34 = load i32, ptr %4, align 8, !tbaa !983
  %35 = tail call i32 @speculate_expr(ptr noundef nonnull %0, i32 noundef %34) #22, !range !1072
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1770, ptr noundef nonnull @.str.1) #23
  br label %38

38:                                               ; preds = %37, %33, %27
  %39 = icmp eq ptr %2, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %38
  %41 = load i32, ptr %4, align 8, !tbaa !983
  %42 = or i32 %25, %24
  %43 = and i32 %42, 16777215
  %44 = xor i32 %43, 16777215
  %45 = and i32 %44, %41
  %46 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 10
  %47 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !706
  %49 = load ptr, ptr %1, align 8, !tbaa !934
  %50 = load ptr, ptr %0, align 8, !tbaa !934
  tail call void @insert_in_history_vect(ptr noundef nonnull %46, i32 noundef %48, i32 noundef 1, ptr noundef %49, ptr noundef %50, i32 noundef %45) #22
  br label %51

51:                                               ; preds = %38, %40, %3, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @merge_expr(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !714 {
  %4 = load ptr, ptr %0, align 8, !tbaa !934
  %5 = load ptr, ptr %1, align 8, !tbaa !934
  %6 = tail call zeroext i8 @vinsn_equal_p(ptr noundef %4, ptr noundef %5) #22
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1848, ptr noundef nonnull @.str.1) #23
  br label %9

9:                                                ; preds = %3, %8
  %10 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !983
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !983
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %1, align 8, !tbaa !934
  tail call void @change_vinsn_in_expr(ptr noundef nonnull %0, ptr noundef %18) #22
  br label %19

19:                                               ; preds = %17, %13, %9
  tail call void @merge_expr_data(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #22
  %20 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !1050
  %22 = icmp slt i32 %21, 10001
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1858, ptr noundef nonnull @.str.1) #23
  br label %24

24:                                               ; preds = %19, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @change_vinsn_in_expr(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !1073 {
  %3 = load ptr, ptr %0, align 8, !tbaa !934
  tail call void @vinsn_detach(ptr noundef %3) #22
  store ptr %1, ptr %0, align 8, !tbaa !934
  tail call void @vinsn_attach(ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clear_expr(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !1065 {
  %2 = load ptr, ptr %0, align 8, !tbaa !934
  tail call void @vinsn_detach(ptr noundef %2) #22
  store ptr null, ptr %0, align 8, !tbaa !934
  %3 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 10
  tail call fastcc void @free_history_vect(ptr noundef nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_history_vect(ptr nocapture noundef %0) unnamed_addr #0 !prof !1074 !PGOFuncName !1075 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !701
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5, !prof !1076

5:                                                ; preds = %1
  %6 = call fastcc i32 @VEC_expr_history_def_base_iterate(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %2) #22, !range !820
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8, !prof !1077

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %15, %8 ], [ 0, %5 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !701
  %11 = getelementptr inbounds %struct.expr_history_def_1, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !1030
  tail call void @vinsn_detach(ptr noundef %12) #22
  %13 = getelementptr inbounds %struct.expr_history_def_1, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !996
  tail call void @vinsn_detach(ptr noundef %14) #22
  %15 = add i32 %9, 1
  %16 = load ptr, ptr %0, align 8, !tbaa !701
  %17 = call fastcc i32 @VEC_expr_history_def_base_iterate(ptr noundef %16, i32 noundef %15, ptr noundef nonnull %2) #22, !range !820
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %8, !prof !1078, !llvm.loop !1079

19:                                               ; preds = %8, %5
  tail call fastcc void @VEC_expr_history_def_heap_free(ptr noundef nonnull %0) #22
  store ptr null, ptr %0, align 8, !tbaa !701
  br label %20

20:                                               ; preds = %1, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @speculate_expr(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !714 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = and i32 %1, 16777215
  %5 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !983
  %7 = tail call i32 @ds_full_merge(i32 noundef %6, i32 noundef %4, ptr noundef null, ptr noundef null) #23
  %8 = load ptr, ptr %0, align 8, !tbaa !934
  %9 = load ptr, ptr %8, align 8, !tbaa !935
  %10 = call i32 @sched_speculate_insn(ptr noundef %9, i32 noundef %7, ptr noundef nonnull %3) #23
  switch i32 %10, label %29 [
    i32 0, label %11
    i32 1, label %14
    i32 -1, label %30
  ]

11:                                               ; preds = %2
  store i32 %7, ptr %5, align 8, !tbaa !983
  %12 = icmp ne i32 %6, %7
  %13 = zext i1 %12 to i32
  br label %30

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8, !tbaa !701
  %16 = call ptr @create_insn_rtx_from_pattern(ptr noundef %15, ptr noundef null) #22
  %17 = call ptr @create_vinsn_from_insn_rtx(ptr noundef %16, i8 noundef zeroext 0) #22
  call void @change_vinsn_in_expr(ptr noundef nonnull %0, ptr noundef %17) #22
  store i32 %7, ptr %5, align 8, !tbaa !983
  %18 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 12
  %19 = load i8, ptr %18, align 1
  %20 = or i8 %19, 1
  store i8 %20, ptr %18, align 1
  %21 = load ptr, ptr %0, align 8, !tbaa !934
  %22 = getelementptr inbounds %struct.vinsn_def, ptr %21, i64 0, i32 1, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !958
  %24 = call i32 @expr_dest_regno(ptr noundef nonnull %0) #22
  %25 = call i32 @bitmap_bit_p(ptr noundef %23, i32 noundef %24) #23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 0, ptr %28, align 8, !tbaa !971
  br label %30

29:                                               ; preds = %2
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1981, ptr noundef nonnull @.str.1) #23
  br label %30

30:                                               ; preds = %2, %27, %14, %29, %11
  %31 = phi i32 [ -1, %29 ], [ %13, %11 ], [ 2, %27 ], [ 1, %14 ], [ %10, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 %31
}

; Function Attrs: optsize
declare i32 @ds_full_merge(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @sched_speculate_insn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_insn_rtx_from_pattern(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !1080 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %8, !prof !1081

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5516, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %2, %7
  tail call void @start_sequence() #23
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %12, !prof !1082

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
  store ptr %1, ptr %20, align 8, !tbaa !706
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !706
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !706
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

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @expr_dest_regno(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !1083 {
  %2 = tail call ptr @expr_dest_reg(ptr noundef %0) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !1084

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2004, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call fastcc i32 @rhs_regno(ptr noundef %2) #22
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @expr_dest_reg(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !1085 {
  %2 = load ptr, ptr %0, align 8, !tbaa !934
  %3 = getelementptr inbounds %struct.vinsn_def, ptr %2, i64 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1086
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !1087

6:                                                ; preds = %1
  %7 = load i32, ptr %4, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 37
  br i1 %9, label %11, label %10, !prof !1088

10:                                               ; preds = %6, %1
  br label %11

11:                                               ; preds = %6, %10
  %12 = phi ptr [ null, %10 ], [ %4, %6 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1089 !PGOFuncName !1090 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !706
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_unavailable_targets(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !1091 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._list_iterator, align 8
  store ptr %0, ptr %4, align 8, !tbaa !701
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %6, ptr noundef nonnull %4, i8 noundef zeroext 0) #22
  %7 = load ptr, ptr %6, align 8, !tbaa !724
  %8 = load ptr, ptr %7, align 8, !tbaa !701
  %9 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %8, ptr noundef nonnull %5) #22, !range !726
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11, !prof !1092

11:                                               ; preds = %3, %17
  %12 = load ptr, ptr %5, align 8, !tbaa !701
  %13 = load ptr, ptr %12, align 8, !tbaa !934
  %14 = call ptr @av_set_lookup(ptr noundef %1, ptr noundef %13) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !1093

16:                                               ; preds = %11
  call fastcc void @set_unavailable_target_for_expr(ptr noundef nonnull %12, ptr noundef %2) #22
  br label %17

17:                                               ; preds = %11, %16
  call fastcc void @_list_iter_next(ptr noundef nonnull %6) #22
  %18 = load ptr, ptr %6, align 8, !tbaa !724
  %19 = load ptr, ptr %18, align 8, !tbaa !701
  %20 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %19, ptr noundef nonnull %5) #22, !range !726
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %11, !prof !1094, !llvm.loop !1095

22:                                               ; preds = %17, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_list_iter_start(ptr nocapture noundef writeonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #2 !prof !1096 !PGOFuncName !1097 {
  store ptr %1, ptr %0, align 8, !tbaa !724
  %4 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 1
  store i8 %2, ptr %4, align 8, !tbaa !1098
  %5 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 2
  store i8 0, ptr %5, align 1, !tbaa !1099
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef zeroext i8 @_list_iter_cond_expr(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 !prof !1100 !PGOFuncName !1101 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4, !prof !1102

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  store ptr %5, ptr %1, align 8, !tbaa !701
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i8 [ 1, %4 ], [ 0, %2 ]
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @av_set_lookup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !1103 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._list_iterator, align 8
  store ptr %0, ptr %3, align 8, !tbaa !701
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %5, ptr noundef nonnull %3, i8 noundef zeroext 0) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !724
  %7 = load ptr, ptr %6, align 8, !tbaa !701
  %8 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %7, ptr noundef nonnull %4) #22, !range !726
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %20, label %10, !prof !1104

10:                                               ; preds = %2, %15
  %11 = load ptr, ptr %4, align 8, !tbaa !701
  %12 = load ptr, ptr %11, align 8, !tbaa !934
  %13 = call zeroext i8 @vinsn_equal_p(ptr noundef %12, ptr noundef %1) #22
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %20, !prof !1105

15:                                               ; preds = %10
  call fastcc void @_list_iter_next(ptr noundef nonnull %5) #22
  %16 = load ptr, ptr %5, align 8, !tbaa !724
  %17 = load ptr, ptr %16, align 8, !tbaa !701
  %18 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %17, ptr noundef nonnull %4) #22, !range !726
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %10, !prof !1106, !llvm.loop !1107

20:                                               ; preds = %15, %10, %2
  %21 = phi ptr [ null, %2 ], [ %11, %10 ], [ null, %15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_unavailable_target_for_expr(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1108 !PGOFuncName !1109 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !934
  %6 = getelementptr inbounds %struct.vinsn_def, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !946
  %8 = icmp eq i32 %7, 23
  br i1 %8, label %9, label %31, !prof !1110

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.vinsn_def, ptr %5, i64 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1086
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %61, !prof !1111

15:                                               ; preds = %9
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #22
  %17 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %16) #23
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %61, label %19, !prof !1112

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8, !tbaa !934
  %21 = getelementptr inbounds %struct.vinsn_def, ptr %20, i64 0, i32 1, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !958
  %23 = getelementptr inbounds %struct.vinsn_def, ptr %20, i64 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !1086
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef %24) #22
  %26 = tail call i32 @bitmap_bit_p(ptr noundef %22, i32 noundef %25) #23
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  br i1 %27, label %30, label %29, !prof !1113

29:                                               ; preds = %19
  store i8 -1, ptr %28, align 8, !tbaa !971
  br label %61

30:                                               ; preds = %19
  store i8 0, ptr %28, align 8, !tbaa !971
  br label %61

31:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  %32 = getelementptr inbounds %struct.vinsn_def, ptr %5, i64 0, i32 1, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !957
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %33, ptr noundef nonnull %3) #22
  %34 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !726
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %45, label %36, !prof !1114

36:                                               ; preds = %31, %42
  %37 = load i32, ptr %3, align 4, !tbaa !786
  %38 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %37) #23
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40, !prof !1115

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 0, ptr %41, align 8, !tbaa !971
  br label %45

42:                                               ; preds = %36
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #22
  %43 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !726
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %36, !prof !1116, !llvm.loop !1117

45:                                               ; preds = %42, %31, %40
  %46 = load ptr, ptr %0, align 8, !tbaa !934
  %47 = getelementptr inbounds %struct.vinsn_def, ptr %46, i64 0, i32 1, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !959
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %48, ptr noundef nonnull %3) #22
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !726
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %60, label %51, !prof !1118

51:                                               ; preds = %45, %57
  %52 = load i32, ptr %3, align 4, !tbaa !786
  %53 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %52) #23
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55, !prof !1119

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 0, ptr %56, align 8, !tbaa !971
  br label %60

57:                                               ; preds = %51
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #22
  %58 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !726
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %51, !prof !1120, !llvm.loop !1121

60:                                               ; preds = %57, %45, %55
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  br label %61

61:                                               ; preds = %9, %15, %30, %29, %60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_list_iter_next(ptr nocapture noundef %0) unnamed_addr #11 !prof !1122 !PGOFuncName !1123 {
  %2 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !1099
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8, !prof !1124

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !724
  %7 = load ptr, ptr %6, align 8, !tbaa !701
  store ptr %7, ptr %0, align 8, !tbaa !724
  br label %9

8:                                                ; preds = %1
  store i8 0, ptr %2, align 1, !tbaa !1099
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @av_set_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !1125 {
  %3 = load ptr, ptr %1, align 8, !tbaa !934
  %4 = load ptr, ptr %3, align 8, !tbaa !935
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !706
  %7 = load ptr, ptr @nop_pattern, align 8, !tbaa !701
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10, !prof !1126

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
define internal fastcc ptr @av_set_add_element(ptr nocapture noundef %0) unnamed_addr #0 !prof !1125 !PGOFuncName !1127 {
  tail call fastcc void @_list_add(ptr noundef %0) #22
  %2 = load ptr, ptr %0, align 8, !tbaa !701
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @av_set_iter_remove(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !1125 {
  %2 = load ptr, ptr %0, align 8, !tbaa !724
  %3 = load ptr, ptr %2, align 8, !tbaa !701
  %4 = getelementptr inbounds %struct._list_node, ptr %3, i64 0, i32 1
  tail call void @clear_expr(ptr noundef nonnull %4) #22
  tail call fastcc void @_list_iter_remove(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_list_iter_remove(ptr nocapture noundef %0) unnamed_addr #0 !prof !1125 !PGOFuncName !1128 {
  %2 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !1099
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9, !prof !1129

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !1098
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10, !prof !1126

9:                                                ; preds = %5, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 448, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %5, %9
  %11 = load ptr, ptr %0, align 8, !tbaa !724
  tail call fastcc void @_list_remove(ptr noundef %11) #22
  store i8 1, ptr %2, align 1, !tbaa !1099
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @merge_with_other_exprs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !1027 {
  %4 = load ptr, ptr %0, align 8, !tbaa !701
  %5 = tail call fastcc ptr @av_set_lookup_other_equiv_expr(ptr noundef %4, ptr noundef %2) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !1028

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._expr, ptr %5, i64 0, i32 11
  store i8 -1, ptr %8, align 8, !tbaa !971
  %9 = getelementptr inbounds %struct._expr, ptr %5, i64 0, i32 2
  store i32 0, ptr %9, align 4, !tbaa !1050
  tail call void @merge_expr(ptr noundef nonnull %5, ptr noundef %2, ptr noundef null) #22
  store i32 10000, ptr %9, align 4, !tbaa !1050
  tail call void @av_set_iter_remove(ptr noundef %1) #22
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %5, %7 ], [ %2, %3 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @av_set_lookup_other_equiv_expr(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 !prof !1027 !PGOFuncName !1130 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._list_iterator, align 8
  store ptr %0, ptr %3, align 8, !tbaa !701
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %5, ptr noundef nonnull %3, i8 noundef zeroext 0) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !724
  %7 = load ptr, ptr %6, align 8, !tbaa !701
  %8 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %7, ptr noundef nonnull %4) #22, !range !726
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10, !prof !1131

10:                                               ; preds = %2, %18
  %11 = load ptr, ptr %4, align 8, !tbaa !701
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %18, label %13, !prof !1132

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 8, !tbaa !934
  %15 = load ptr, ptr %1, align 8, !tbaa !934
  %16 = call zeroext i8 @vinsn_equal_p(ptr noundef %14, ptr noundef %15) #22
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23, !prof !1133

18:                                               ; preds = %13, %10
  call fastcc void @_list_iter_next(ptr noundef nonnull %5) #22
  %19 = load ptr, ptr %5, align 8, !tbaa !724
  %20 = load ptr, ptr %19, align 8, !tbaa !701
  %21 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %20, ptr noundef nonnull %4) #22, !range !726
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %10, !prof !1134, !llvm.loop !1135

23:                                               ; preds = %18, %13, %2
  %24 = phi ptr [ null, %2 ], [ %11, %13 ], [ null, %18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @av_set_is_in_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !1136 {
  %3 = tail call ptr @av_set_lookup(ptr noundef %0, ptr noundef %1) #22
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @av_set_copy(ptr noundef %0) local_unnamed_addr #0 !prof !1137 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct._list_iterator, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !701
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !701
  call fastcc void @_list_iter_start(ptr noundef nonnull %4, ptr noundef nonnull %2, i8 noundef zeroext 0) #22
  %6 = load ptr, ptr %4, align 8, !tbaa !724
  %7 = load ptr, ptr %6, align 8, !tbaa !701
  %8 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %7, ptr noundef nonnull %3) #22, !range !726
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10, !prof !1138

10:                                               ; preds = %1, %10
  %11 = load ptr, ptr %3, align 8, !tbaa !701
  call void @av_set_add(ptr noundef nonnull %5, ptr noundef %11) #22
  call fastcc void @_list_iter_next(ptr noundef nonnull %4) #22
  %12 = load ptr, ptr %4, align 8, !tbaa !724
  %13 = load ptr, ptr %12, align 8, !tbaa !701
  %14 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %13, ptr noundef nonnull %3) #22, !range !726
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %10, !prof !1139, !llvm.loop !1140

16:                                               ; preds = %10
  %17 = load ptr, ptr %5, align 8, !tbaa !701
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @av_set_union_and_clear(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !1141 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 1) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !724
  %7 = load ptr, ptr %6, align 8, !tbaa !701
  %8 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %7, ptr noundef nonnull %4) #22, !range !726
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10, !prof !1142

10:                                               ; preds = %3, %17
  %11 = load ptr, ptr %1, align 8, !tbaa !701
  %12 = load ptr, ptr %4, align 8, !tbaa !701
  %13 = load ptr, ptr %12, align 8, !tbaa !934
  %14 = tail call ptr @av_set_lookup(ptr noundef %11, ptr noundef %13) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !1143

16:                                               ; preds = %10
  tail call void @merge_expr(ptr noundef nonnull %14, ptr noundef nonnull %12, ptr noundef %2) #22
  call void @av_set_iter_remove(ptr noundef nonnull %5) #22
  br label %17

17:                                               ; preds = %16, %10
  call fastcc void @_list_iter_next(ptr noundef nonnull %5) #22
  %18 = load ptr, ptr %5, align 8, !tbaa !724
  %19 = load ptr, ptr %18, align 8, !tbaa !701
  %20 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %19, ptr noundef nonnull %4) #22, !range !726
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %10, !prof !1144, !llvm.loop !1145

22:                                               ; preds = %17, %3
  %23 = phi ptr [ %6, %3 ], [ %18, %17 ]
  tail call fastcc void @join_distinct_sets(ptr noundef nonnull %23, ptr noundef %1) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @join_distinct_sets(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !1141 !PGOFuncName !1146 {
  %3 = load ptr, ptr %0, align 8, !tbaa !701
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !1147

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2167, ptr noundef nonnull @.str.1) #23
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr %1, align 8, !tbaa !701
  store ptr %7, ptr %0, align 8, !tbaa !701
  store ptr null, ptr %1, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @av_set_union_and_live(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !714 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct._list_iterator, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  store ptr null, ptr %8, align 8, !tbaa !701
  call fastcc void @_list_iter_start(ptr noundef nonnull %7, ptr noundef %0, i8 noundef zeroext 1) #22
  %9 = load ptr, ptr %7, align 8, !tbaa !724
  %10 = load ptr, ptr %9, align 8, !tbaa !701
  %11 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %10, ptr noundef nonnull %6) #22, !range !726
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %58, label %13

13:                                               ; preds = %5, %53
  %14 = load ptr, ptr %6, align 8, !tbaa !701
  %15 = load ptr, ptr %14, align 8, !tbaa !934
  %16 = tail call fastcc ptr @av_set_lookup_and_remove(ptr noundef %1, ptr noundef %15) #22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %52, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 8, !tbaa !934
  %20 = getelementptr inbounds %struct.vinsn_def, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !946
  %22 = icmp eq i32 %21, 23
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.vinsn_def, ptr %19, i64 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !1086
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = tail call i32 @expr_dest_regno(ptr noundef nonnull %14) #22
  br label %31

31:                                               ; preds = %23, %29
  %32 = phi i32 [ %30, %29 ], [ -1, %23 ]
  %33 = load ptr, ptr %16, align 8, !tbaa !934
  %34 = getelementptr inbounds %struct.vinsn_def, ptr %33, i64 0, i32 1, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !1086
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
  %45 = load ptr, ptr %19, align 8, !tbaa !935
  %46 = load ptr, ptr %16, align 8, !tbaa !934
  %47 = load ptr, ptr %46, align 8, !tbaa !935
  %48 = icmp eq ptr %45, %47
  br i1 %48, label %51, label %49

49:                                               ; preds = %44, %41
  %50 = getelementptr inbounds %struct._expr, ptr %16, i64 0, i32 11
  store i8 -1, ptr %50, align 8, !tbaa !971
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
  %54 = load ptr, ptr %7, align 8, !tbaa !724
  %55 = load ptr, ptr %54, align 8, !tbaa !701
  %56 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %55, ptr noundef nonnull %6) #22, !range !726
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %13, !llvm.loop !1148

58:                                               ; preds = %53, %5
  %59 = phi ptr [ %9, %5 ], [ %54, %53 ]
  call fastcc void @_list_iter_start(ptr noundef nonnull %7, ptr noundef %1, i8 noundef zeroext 0) #22
  %60 = load ptr, ptr %7, align 8, !tbaa !724
  %61 = load ptr, ptr %60, align 8, !tbaa !701
  %62 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %61, ptr noundef nonnull %6) #22, !range !726
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %58, %64
  %65 = load ptr, ptr %6, align 8, !tbaa !701
  tail call fastcc void @set_unavailable_target_for_expr(ptr noundef %65, ptr noundef %2) #22
  call fastcc void @_list_iter_next(ptr noundef nonnull %7) #22
  %66 = load ptr, ptr %7, align 8, !tbaa !724
  %67 = load ptr, ptr %66, align 8, !tbaa !701
  %68 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %67, ptr noundef nonnull %6) #22, !range !726
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %64, !llvm.loop !1149

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
define internal fastcc noundef ptr @av_set_lookup_and_remove(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !714 !PGOFuncName !1150 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 1) #22
  %5 = load ptr, ptr %4, align 8, !tbaa !724
  %6 = load ptr, ptr %5, align 8, !tbaa !701
  %7 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %6, ptr noundef nonnull %3) #22, !range !726
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2, %15
  %10 = load ptr, ptr %3, align 8, !tbaa !701
  %11 = load ptr, ptr %10, align 8, !tbaa !934
  %12 = tail call zeroext i8 @vinsn_equal_p(ptr noundef %11, ptr noundef %1) #22
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  call fastcc void @_list_iter_remove_nofree(ptr noundef nonnull %4) #22
  br label %20

15:                                               ; preds = %9
  call fastcc void @_list_iter_next(ptr noundef nonnull %4) #22
  %16 = load ptr, ptr %4, align 8, !tbaa !724
  %17 = load ptr, ptr %16, align 8, !tbaa !701
  %18 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %17, ptr noundef nonnull %3) #22, !range !726
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !1151

20:                                               ; preds = %15, %2, %14
  %21 = phi ptr [ %10, %14 ], [ null, %2 ], [ null, %15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @av_set_add_nocopy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !714 !PGOFuncName !1152 {
  %3 = tail call fastcc ptr @av_set_add_element(ptr noundef %0) #22
  %4 = getelementptr inbounds %struct._list_node, ptr %3, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !1153
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @av_set_leave_one_nonspec(ptr noundef %0) local_unnamed_addr #0 !prof !1154 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #22
  %4 = load ptr, ptr %3, align 8, !tbaa !724
  %5 = load ptr, ptr %4, align 8, !tbaa !701
  %6 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %5, ptr noundef nonnull %2) #22, !range !726
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %23, label %8, !prof !1155

8:                                                ; preds = %1, %17
  %9 = phi i8 [ %18, %17 ], [ 0, %1 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !701
  %11 = getelementptr inbounds %struct._expr, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !983
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !prof !1156

14:                                               ; preds = %8
  %15 = icmp eq i8 %9, 0
  br i1 %15, label %17, label %16, !prof !1156

16:                                               ; preds = %14
  call void @av_set_iter_remove(ptr noundef nonnull %3) #22
  br label %17

17:                                               ; preds = %14, %8, %16
  %18 = phi i8 [ %9, %8 ], [ 1, %16 ], [ 1, %14 ]
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #22
  %19 = load ptr, ptr %3, align 8, !tbaa !724
  %20 = load ptr, ptr %19, align 8, !tbaa !701
  %21 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %20, ptr noundef nonnull %2) #22, !range !726
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %8, !prof !1157, !llvm.loop !1158

23:                                               ; preds = %17, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @av_set_element(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !714 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._list_iterator, align 8
  store ptr %0, ptr %3, align 8, !tbaa !701
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %5, ptr noundef nonnull %3, i8 noundef zeroext 0) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !724
  %7 = load ptr, ptr %6, align 8, !tbaa !701
  %8 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %7, ptr noundef nonnull %4) #22, !range !726
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %2, %15
  %11 = phi i32 [ %16, %15 ], [ %1, %2 ]
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 8, !tbaa !701
  br label %22

15:                                               ; preds = %10
  %16 = add nsw i32 %11, -1
  call fastcc void @_list_iter_next(ptr noundef nonnull %5) #22
  %17 = load ptr, ptr %5, align 8, !tbaa !724
  %18 = load ptr, ptr %17, align 8, !tbaa !701
  %19 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %18, ptr noundef nonnull %4) #22, !range !726
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %10, !llvm.loop !1159

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
define dso_local void @av_set_substract_cond_branches(ptr noundef %0) local_unnamed_addr #0 !prof !1160 {
  %2 = alloca %struct._list_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 1) #22
  %4 = load ptr, ptr %2, align 8, !tbaa !724
  %5 = load ptr, ptr %4, align 8, !tbaa !701
  %6 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %5, ptr noundef nonnull %3) #22, !range !726
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8, !prof !1161

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %3, align 8, !tbaa !701
  %10 = load ptr, ptr %9, align 8, !tbaa !934
  %11 = tail call zeroext i8 @vinsn_cond_branch_p(ptr noundef %10) #22
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !1162

13:                                               ; preds = %8
  call void @av_set_iter_remove(ptr noundef nonnull %2) #22
  br label %14

14:                                               ; preds = %8, %13
  call fastcc void @_list_iter_next(ptr noundef nonnull %2) #22
  %15 = load ptr, ptr %2, align 8, !tbaa !724
  %16 = load ptr, ptr %15, align 8, !tbaa !701
  %17 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %16, ptr noundef nonnull %3) #22, !range !726
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !prof !1094, !llvm.loop !1163

19:                                               ; preds = %14, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @av_set_split_usefulness(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #14 !prof !1164 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._list_iterator, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !701
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 0) #22
  %7 = load ptr, ptr %5, align 8, !tbaa !724
  %8 = load ptr, ptr %7, align 8, !tbaa !701
  %9 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %8, ptr noundef nonnull %6) #22, !range !726
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %27, label %11, !prof !1165

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, 0
  br label %13

13:                                               ; preds = %11, %20
  %14 = load ptr, ptr %6, align 8, !tbaa !701
  br i1 %12, label %20, label %15, !prof !1166

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct._expr, ptr %14, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !1050
  %18 = mul nsw i32 %17, %1
  %19 = sdiv i32 %18, %2
  br label %20

20:                                               ; preds = %13, %15
  %21 = phi i32 [ %19, %15 ], [ 0, %13 ]
  %22 = getelementptr inbounds %struct._expr, ptr %14, i64 0, i32 2
  store i32 %21, ptr %22, align 4, !tbaa !1050
  call fastcc void @_list_iter_next(ptr noundef nonnull %5) #22
  %23 = load ptr, ptr %5, align 8, !tbaa !724
  %24 = load ptr, ptr %23, align 8, !tbaa !701
  %25 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %24, ptr noundef nonnull %6) #22, !range !726
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %13, !prof !1167, !llvm.loop !1168

27:                                               ; preds = %20, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @av_set_intersect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !1169 {
  %3 = alloca %struct._list_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #22
  %5 = load ptr, ptr %3, align 8, !tbaa !724
  %6 = load ptr, ptr %5, align 8, !tbaa !701
  %7 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %6, ptr noundef nonnull %4) #22, !range !726
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9, !prof !1170

9:                                                ; preds = %2, %15
  %10 = load ptr, ptr %4, align 8, !tbaa !701
  %11 = load ptr, ptr %10, align 8, !tbaa !934
  %12 = tail call ptr @av_set_lookup(ptr noundef %1, ptr noundef %11) #22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !1171

14:                                               ; preds = %9
  call void @av_set_iter_remove(ptr noundef nonnull %3) #22
  br label %15

15:                                               ; preds = %9, %14
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #22
  %16 = load ptr, ptr %3, align 8, !tbaa !724
  %17 = load ptr, ptr %16, align 8, !tbaa !701
  %18 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %17, ptr noundef nonnull %4) #22, !range !726
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !prof !1172, !llvm.loop !1173

20:                                               ; preds = %15, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_data_for_scheduled_insn(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !1174 {
  %2 = tail call fastcc zeroext i8 @first_time_insn_init(ptr noundef %0) #22, !range !726
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !1175

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2778, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @s_i_d, align 8
  %7 = load ptr, ptr @sched_luids, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !706
  %10 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %7, i32 noundef %9) #22
  %11 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %6, i32 noundef %10) #22
  %12 = getelementptr inbounds %struct._sel_insn_data, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !1176
  %14 = icmp eq ptr %13, null
  br i1 %14, label %73, label %15, !prof !1177

15:                                               ; preds = %5
  tail call void @bitmap_obstack_free(ptr noundef nonnull %13) #23
  %16 = load ptr, ptr @s_i_d, align 8
  %17 = load ptr, ptr @sched_luids, align 8
  %18 = load i32, ptr %8, align 8, !tbaa !706
  %19 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %17, i32 noundef %18) #22
  %20 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %16, i32 noundef %19) #22
  %21 = getelementptr inbounds %struct._sel_insn_data, ptr %20, i64 0, i32 4
  store ptr null, ptr %21, align 8, !tbaa !1176
  %22 = load i32, ptr %8, align 8, !tbaa !706
  %23 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %17, i32 noundef %22) #22
  %24 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %16, i32 noundef %23) #22
  %25 = getelementptr inbounds %struct._sel_insn_data, ptr %24, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !1178
  tail call void @bitmap_obstack_free(ptr noundef %26) #23
  %27 = load ptr, ptr @s_i_d, align 8
  %28 = load ptr, ptr @sched_luids, align 8
  %29 = load i32, ptr %8, align 8, !tbaa !706
  %30 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %28, i32 noundef %29) #22
  %31 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %27, i32 noundef %30) #22
  %32 = getelementptr inbounds %struct._sel_insn_data, ptr %31, i64 0, i32 5
  store ptr null, ptr %32, align 8, !tbaa !1178
  %33 = load i32, ptr %8, align 8, !tbaa !706
  %34 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %28, i32 noundef %33) #22
  %35 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %27, i32 noundef %34) #22
  %36 = getelementptr inbounds %struct._sel_insn_data, ptr %35, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !1179
  tail call void @htab_delete(ptr noundef %37) #23
  %38 = load ptr, ptr @s_i_d, align 8
  %39 = load ptr, ptr @sched_luids, align 8
  %40 = load i32, ptr %8, align 8, !tbaa !706
  %41 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %40) #22
  %42 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %38, i32 noundef %41) #22
  %43 = getelementptr inbounds %struct._sel_insn_data, ptr %42, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !987
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46, !prof !1180

46:                                               ; preds = %15
  tail call void @bitmap_obstack_free(ptr noundef nonnull %44) #23
  %47 = load ptr, ptr @s_i_d, align 8
  %48 = load ptr, ptr @sched_luids, align 8
  %49 = load i32, ptr %8, align 8, !tbaa !706
  %50 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %48, i32 noundef %49) #22
  %51 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %47, i32 noundef %50) #22
  %52 = getelementptr inbounds %struct._sel_insn_data, ptr %51, i64 0, i32 6
  store ptr null, ptr %52, align 8, !tbaa !987
  %53 = load i32, ptr %8, align 8, !tbaa !706
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
  %63 = load i32, ptr %8, align 8, !tbaa !706
  %64 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %62, i32 noundef %63) #22
  %65 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %61, i32 noundef %64) #22
  %66 = getelementptr inbounds %struct._sel_insn_data, ptr %65, i64 0, i32 4
  store ptr null, ptr %66, align 8, !tbaa !1176
  %67 = load i32, ptr %8, align 8, !tbaa !706
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @first_time_insn_init(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !1181 !PGOFuncName !1182 {
  %2 = load ptr, ptr @s_i_d, align 8
  %3 = load ptr, ptr @sched_luids, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !706
  %6 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %3, i32 noundef %5) #22
  %7 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %2, i32 noundef %6) #22
  %8 = getelementptr inbounds %struct._sel_insn_data, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !1183
  %10 = icmp eq ptr %9, null
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_deps(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_init_global_and_expr(ptr noundef %0) local_unnamed_addr #0 !prof !784 {
  %2 = alloca %struct.sched_scan_info_def, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @__const.sel_init_global_and_expr.ssi, i64 32, i1 false)
  call void @sched_scan(ptr noundef nonnull %2, ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @init_global_and_expr_for_bb(ptr noundef %0) #0 !prof !1184 !PGOFuncName !1185 {
  %2 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %0) #22, !range !726
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !1186

4:                                                ; preds = %1
  tail call fastcc void @invalidate_av_set(ptr noundef %0) #22
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @extend_insn_data() #0 !prof !1187 !PGOFuncName !1188 {
  tail call void @sched_extend_target() #23
  tail call void @sched_deps_init(i8 noundef zeroext 0) #23
  %1 = load i32, ptr @sched_max_luid, align 4, !tbaa !786
  %2 = add nsw i32 %1, 1
  %3 = load ptr, ptr @s_i_d, align 8
  %4 = tail call fastcc i32 @VEC_sel_insn_data_def_base_length(ptr noundef %3) #22
  %5 = sub i32 %2, %4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %19, !prof !1189

7:                                                ; preds = %0
  %8 = tail call fastcc i32 @VEC_sel_insn_data_def_base_space(ptr noundef %3, i32 noundef %5) #22, !range !820
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19, !prof !1190

10:                                               ; preds = %7
  %11 = icmp sgt i32 %1, 2049
  br i1 %11, label %12, label %14, !prof !1191

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
define internal void @init_global_and_expr_for_insn(ptr noundef %0) #0 !prof !1192 !PGOFuncName !1193 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %9 [
    i16 12, label %118
    i16 13, label %4
  ], !prof !1194

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %6 = load i32, ptr %5, align 8, !tbaa !706
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %8, label %13, !prof !1186

8:                                                ; preds = %4
  store ptr null, ptr @init_global_data.0, align 8, !tbaa !1195
  br label %118

9:                                                ; preds = %1
  %10 = and i32 %2, 65535
  %11 = add nsw i32 %10, -7
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %15, label %13, !prof !1197

13:                                               ; preds = %4, %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2843, ptr noundef nonnull @.str.1) #23
  %14 = load i32, ptr %0, align 8
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi i32 [ %2, %9 ], [ %14, %13 ]
  %17 = and i32 %16, 268435456
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19, !prof !1198

19:                                               ; preds = %15
  %20 = load ptr, ptr @init_global_data.0, align 8, !tbaa !1195
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @s_i_d, align 8
  %24 = load ptr, ptr @sched_luids, align 8
  %25 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !706
  %27 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %24, i32 noundef %26) #22
  %28 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %23, i32 noundef %27) #22
  %29 = getelementptr inbounds %struct._sel_insn_data, ptr %28, i64 0, i32 9
  store ptr %0, ptr %29, align 8, !tbaa !1199
  br label %30

30:                                               ; preds = %15, %19, %22
  %31 = phi ptr [ %0, %22 ], [ %0, %19 ], [ null, %15 ]
  store ptr %31, ptr @init_global_data.0, align 8, !tbaa !1195
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !706
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 16
  br i1 %37, label %38, label %40, !prof !941

38:                                               ; preds = %30
  %39 = load ptr, ptr @sched_luids, align 8
  br label %44

40:                                               ; preds = %30
  %41 = tail call i32 @asm_noperands(ptr noundef nonnull %34) #23
  %42 = icmp sgt i32 %41, -1
  %43 = load ptr, ptr @sched_luids, align 8
  br i1 %42, label %44, label %53, !prof !941

44:                                               ; preds = %38, %40
  %45 = phi ptr [ %39, %38 ], [ %43, %40 ]
  %46 = load ptr, ptr @s_i_d, align 8
  %47 = load i32, ptr %32, align 8, !tbaa !706
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
  %56 = load i32, ptr %32, align 8, !tbaa !706
  %57 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %54, i32 noundef %56) #22
  %58 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %55, i32 noundef %57) #22
  %59 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %58, i64 0, i32 7
  %60 = load i8, ptr %59, align 8
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %87, !prof !1200

63:                                               ; preds = %53
  %64 = load ptr, ptr @s_i_d, align 8
  %65 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %64, i32 noundef %57) #22
  %66 = getelementptr inbounds %struct._sel_insn_data, ptr %65, i64 0, i32 13
  %67 = load i8, ptr %66, align 4
  %68 = and i8 %67, 2
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %87, !prof !1201

70:                                               ; preds = %63
  %71 = load i32, ptr %0, align 8
  %72 = and i32 %71, 268435456
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %87, !prof !1201

74:                                               ; preds = %70
  %75 = tail call i32 @prologue_epilogue_contains(ptr noundef nonnull %0) #23
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %87, !prof !1202

77:                                               ; preds = %74
  %78 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !786
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80, !prof !1203

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
  %89 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 33), align 8, !tbaa !1204
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91, !prof !1198

91:                                               ; preds = %87
  %92 = tail call i32 %89(ptr noundef nonnull %0) #23
  %93 = tail call i32 @ds_get_max_dep_weak(i32 noundef %92) #23
  br label %94

94:                                               ; preds = %87, %91
  %95 = phi i32 [ %93, %91 ], [ 0, %87 ]
  %96 = load ptr, ptr @s_i_d, align 8
  %97 = load ptr, ptr @sched_luids, align 8
  %98 = load i32, ptr %32, align 8, !tbaa !706
  %99 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %97, i32 noundef %98) #22
  %100 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %96, i32 noundef %99) #22
  %101 = tail call fastcc ptr @vinsn_create(ptr noundef nonnull %0, i8 noundef zeroext %88) #22
  %102 = load ptr, ptr @h_i_d, align 8
  %103 = load i32, ptr %32, align 8, !tbaa !706
  %104 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %102, i32 noundef %103) #22
  %105 = getelementptr inbounds %struct._haifa_insn_data, ptr %104, i64 0, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !1205
  %107 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !706
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 9
  %110 = load i32, ptr %109, align 8, !tbaa !827
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
declare void @sched_scan(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_finish_global_and_expr() local_unnamed_addr #0 !prof !784 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.sched_scan_info_def, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  %3 = load i32, ptr @current_nr_blocks, align 4, !tbaa !786
  %4 = tail call fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %3) #22
  store ptr %4, ptr %1, align 8, !tbaa !701
  %5 = load i32, ptr @current_nr_blocks, align 4, !tbaa !786
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %26, !prof !787

7:                                                ; preds = %0, %7
  %8 = phi i64 [ %22, %7 ], [ 0, %0 ]
  %9 = load ptr, ptr @cfun, align 8, !tbaa !701
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !801
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !1207
  %14 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !701
  %15 = load ptr, ptr @ebb_head, align 8, !tbaa !701
  %16 = getelementptr inbounds i32, ptr %15, i64 %8
  %17 = load i32, ptr %16, align 4, !tbaa !786
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %14, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !786
  %21 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %13, i32 noundef %20) #22
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %4, ptr noundef %21) #22
  %22 = add nuw nsw i64 %8, 1
  %23 = load i32, ptr @current_nr_blocks, align 4, !tbaa !786
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %7, label %26, !prof !1208, !llvm.loop !1209

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
define internal fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !784 !PGOFuncName !1210 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !756 !PGOFuncName !1211 {
  %3 = load i32, ptr %0, align 8, !tbaa !1212
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1212
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !701
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !1214 !PGOFuncName !1215 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !701
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @finish_global_and_expr_for_bb(ptr nocapture noundef readonly %0) #0 !prof !756 !PGOFuncName !1216 {
  %2 = load ptr, ptr @sel_region_bb_info, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !827
  %5 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %2, i32 noundef %4) #22
  %6 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %5, i64 0, i32 1
  tail call void @av_set_clear(ptr noundef nonnull %6) #22
  %7 = load ptr, ptr @sel_region_bb_info, align 8
  %8 = load i32, ptr %3, align 8, !tbaa !827
  %9 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %7, i32 noundef %8) #22
  %10 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %9, i64 0, i32 2
  store i32 0, ptr %10, align 8, !tbaa !932
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @finish_global_and_expr_insn(ptr nocapture noundef readonly %0) #0 !prof !1217 !PGOFuncName !1218 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %8 [
    i16 12, label %36
    i16 13, label %4
  ], !prof !1219

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %6 = load i32, ptr %5, align 8, !tbaa !706
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %36, label %12, !prof !1220

8:                                                ; preds = %1
  %9 = and i32 %2, 65535
  %10 = add nsw i32 %9, -7
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %13, label %12, !prof !1197

12:                                               ; preds = %4, %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2929, ptr noundef nonnull @.str.1) #23
  br label %13

13:                                               ; preds = %8, %12
  %14 = load ptr, ptr @sched_luids, align 8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !706
  %17 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %14, i32 noundef %16) #22
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %36, !prof !1180

19:                                               ; preds = %13
  tail call fastcc void @free_first_time_insn_data(ptr noundef nonnull %0) #22
  %20 = load ptr, ptr @s_i_d, align 8
  %21 = load ptr, ptr @sched_luids, align 8
  %22 = load i32, ptr %15, align 8, !tbaa !706
  %23 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %21, i32 noundef %22) #22
  %24 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %20, i32 noundef %23) #22
  %25 = getelementptr inbounds %struct._sel_insn_data, ptr %24, i64 0, i32 1
  store i32 0, ptr %25, align 8, !tbaa !1221
  %26 = load ptr, ptr @h_d_i_d, align 8
  %27 = load i32, ptr %15, align 8, !tbaa !706
  %28 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %21, i32 noundef %27) #22
  %29 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %26, i32 noundef %28) #22
  %30 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %29, i64 0, i32 7
  %31 = load i8, ptr %30, align 8
  %32 = and i8 %31, -2
  store i8 %32, ptr %30, align 8
  %33 = load i32, ptr %15, align 8, !tbaa !706
  %34 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %21, i32 noundef %33) #22
  %35 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %20, i32 noundef %34) #22
  tail call void @clear_expr(ptr noundef nonnull %35) #22
  br label %36

36:                                               ; preds = %1, %4, %19, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !784 !PGOFuncName !1222 {
  %2 = load ptr, ptr %0, align 8, !tbaa !701
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1223

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_insns() unnamed_addr #0 !prof !784 !PGOFuncName !1224 {
  %1 = load ptr, ptr @s_i_d, align 8
  %2 = tail call fastcc i32 @VEC_sel_insn_data_def_base_length(ptr noundef %1) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %36, label %4, !prof !785

4:                                                ; preds = %0, %31
  %5 = phi ptr [ %33, %31 ], [ %1, %0 ]
  %6 = phi i32 [ %32, %31 ], [ 0, %0 ]
  %7 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %5, i32 noundef %6) #22
  %8 = getelementptr inbounds %struct._sel_insn_data, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !1183
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !1225

11:                                               ; preds = %4
  tail call void @return_regset_to_pool(ptr noundef nonnull %9) #22
  br label %12

12:                                               ; preds = %11, %4
  %13 = getelementptr inbounds %struct._sel_insn_data, ptr %7, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !1176
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16, !prof !1226

16:                                               ; preds = %12
  tail call void @bitmap_obstack_free(ptr noundef nonnull %14) #23
  store ptr null, ptr %13, align 8, !tbaa !1176
  %17 = getelementptr inbounds %struct._sel_insn_data, ptr %7, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !1178
  tail call void @bitmap_obstack_free(ptr noundef %18) #23
  store ptr null, ptr %17, align 8, !tbaa !1178
  %19 = getelementptr inbounds %struct._sel_insn_data, ptr %7, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !1179
  tail call void @htab_delete(ptr noundef %20) #23
  %21 = getelementptr inbounds %struct._sel_insn_data, ptr %7, i64 0, i32 8
  tail call void @free_deps(ptr noundef nonnull %21) #23
  br label %22

22:                                               ; preds = %16, %12
  %23 = load ptr, ptr %7, align 8, !tbaa !976
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25, !prof !1227

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
  br i1 %35, label %4, label %36, !prof !1228, !llvm.loop !1229

36:                                               ; preds = %31, %0
  tail call fastcc void @VEC_sel_insn_data_def_heap_free() #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_mark_hard_insn(ptr noundef readnone %0) local_unnamed_addr #0 !prof !714 {
  %2 = load ptr, ptr @has_dependence_data, align 8, !tbaa !1230
  %3 = icmp ne ptr %2, null
  %4 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 2), align 8
  %5 = icmp ne ptr %4, null
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !1232
  %9 = load ptr, ptr %8, align 8, !tbaa !935
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3173, ptr noundef nonnull @.str.1) #23
  br label %12

12:                                               ; preds = %7, %11
  %13 = load i32, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3174, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %12, %15
  br label %17

17:                                               ; preds = %16, %17
  %18 = phi i64 [ %22, %17 ], [ 0, %16 ]
  %19 = getelementptr inbounds %struct.anon.1, ptr @has_dependence_data, i64 0, i32 4, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !786
  %21 = and i32 %20, -16777216
  store i32 %21, ptr %19, align 4, !tbaa !786
  %22 = add nuw nsw i64 %18, 1
  %23 = icmp eq i64 %22, 3
  br i1 %23, label %24, label %17, !llvm.loop !1234

24:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @sel_clear_has_dependence() local_unnamed_addr #15 !prof !1235 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 4, i64 0), i8 0, i64 12, i1 false), !tbaa !786
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @has_dependence_p(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !1235 {
  %4 = load ptr, ptr @s_i_d, align 8
  %5 = load ptr, ptr @sched_luids, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !706
  %8 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %5, i32 noundef %7) #22
  %9 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %4, i32 noundef %8) #22
  %10 = load ptr, ptr %9, align 8, !tbaa !976
  %11 = getelementptr inbounds %struct.vinsn_def, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !946
  %13 = icmp eq i32 %12, 36
  br i1 %13, label %59, label %14, !prof !1236

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct._sel_insn_data, ptr %9, i64 0, i32 8
  %16 = getelementptr inbounds %struct._sel_insn_data, ptr %9, i64 0, i32 8, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !1237
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !1238

19:                                               ; preds = %14
  tail call void @init_deps_reg_last(ptr noundef nonnull %15) #23
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds %struct._sel_insn_data, ptr %9, i64 0, i32 8, i32 18
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %28, !prof !1238

25:                                               ; preds = %20
  store ptr null, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 2), align 8, !tbaa !1239
  tail call void @advance_deps_context(ptr noundef nonnull %15, ptr noundef nonnull %1) #22
  %26 = load i8, ptr %21, align 4
  %27 = or i8 %26, 1
  store i8 %27, ptr %21, align 4
  br label %28

28:                                               ; preds = %25, %20
  store i32 3, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  store ptr %1, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 2), align 8, !tbaa !1239
  %29 = load ptr, ptr %0, align 8, !tbaa !934
  store ptr %29, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !1232
  store ptr %15, ptr @has_dependence_data, align 8, !tbaa !1230
  tail call void @sel_clear_has_dependence() #22
  tail call fastcc void @setup_has_dependence_sched_deps_info() #22
  %30 = load ptr, ptr %0, align 8, !tbaa !934
  %31 = load ptr, ptr %30, align 8, !tbaa !935
  tail call void @deps_analyze_insn(ptr noundef nonnull %15, ptr noundef %31) #23
  store ptr null, ptr @has_dependence_data, align 8, !tbaa !1230
  %32 = getelementptr inbounds %struct._sel_insn_data, ptr %9, i64 0, i32 8, i32 17
  %33 = load i32, ptr %32, align 8, !tbaa !1240
  switch i32 %33, label %37 [
    i32 2, label %35
    i32 1, label %34
  ], !prof !1241

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %28, %34
  %36 = phi i32 [ 67108864, %34 ], [ 16777216, %28 ]
  store i32 %36, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 4), align 8, !tbaa !786
  br label %37

37:                                               ; preds = %35, %28
  %38 = load ptr, ptr %0, align 8, !tbaa !934
  %39 = getelementptr inbounds %struct.vinsn_def, ptr %38, i64 0, i32 1, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !1086
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42, !prof !1242

42:                                               ; preds = %37
  %43 = load i32, ptr %40, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 43
  br i1 %45, label %46, label %50, !prof !1243

46:                                               ; preds = %42
  %47 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef nonnull %1) #22, !range !726
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49, !prof !1244

49:                                               ; preds = %46
  store i32 67108864, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 4), align 8, !tbaa !786
  br label %50

50:                                               ; preds = %49, %46, %42, %37
  store ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 4), ptr %2, align 8, !tbaa !701
  br label %51

51:                                               ; preds = %50, %51
  %52 = phi i64 [ 0, %50 ], [ %57, %51 ]
  %53 = phi i32 [ 0, %50 ], [ %56, %51 ]
  %54 = getelementptr inbounds %struct.anon.1, ptr @has_dependence_data, i64 0, i32 4, i64 %52
  %55 = load i32, ptr %54, align 4, !tbaa !786
  %56 = tail call i32 @ds_full_merge(i32 noundef %53, i32 noundef %55, ptr noundef null, ptr noundef null) #23
  %57 = add nuw nsw i64 %52, 1
  %58 = icmp eq i64 %57, 3
  br i1 %58, label %59, label %51, !prof !1245, !llvm.loop !1246

59:                                               ; preds = %51, %3
  %60 = phi i32 [ 0, %3 ], [ %56, %51 ]
  ret i32 %60
}

; Function Attrs: optsize
declare void @init_deps_reg_last(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @setup_has_dependence_sched_deps_info() unnamed_addr #16 !prof !1235 !PGOFuncName !1247 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) @has_dependence_sched_deps_info, ptr noundef nonnull align 8 dereferenceable(104) @const_has_dependence_sched_deps_info, i64 104, i1 false)
  %1 = load ptr, ptr @spec_info, align 8, !tbaa !701
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1248

3:                                                ; preds = %0
  store i8 4, ptr getelementptr inbounds (%struct.sched_deps_info_def, ptr @has_dependence_sched_deps_info, i64 0, i32 12), align 8
  br label %4

4:                                                ; preds = %3, %0
  store ptr @has_dependence_sched_deps_info, ptr @sched_deps_info, align 8, !tbaa !701
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @sel_insn_is_speculation_check(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !1249 {
  %2 = load ptr, ptr @s_i_d, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4, !prof !1250

4:                                                ; preds = %1
  %5 = load ptr, ptr @sched_luids, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !706
  %8 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %5, i32 noundef %7) #22
  %9 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef nonnull %2, i32 noundef %8) #22
  %10 = getelementptr inbounds %struct._sel_insn_data, ptr %9, i64 0, i32 12
  %11 = load i32, ptr %10, align 8, !tbaa !1251
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %4, %1
  %15 = phi i8 [ 0, %1 ], [ %13, %4 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @tick_check_p(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !1252 {
  store ptr %0, ptr @tick_check_data.0, align 8, !tbaa !1253
  store i32 0, ptr @tick_check_data.1, align 8, !tbaa !1255
  store i1 false, ptr @tick_check_data.2, align 4
  store ptr @tick_check_sched_deps_info, ptr @sched_deps_info, align 8, !tbaa !701
  %4 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 18
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8, !prof !1256

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3409, ptr noundef nonnull @.str.1) #23
  %9 = load i8, ptr %4, align 4
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi i8 [ %5, %3 ], [ %9, %8 ]
  %12 = or i8 %11, 1
  store i8 %12, ptr %4, align 4
  %13 = load ptr, ptr %0, align 8, !tbaa !934
  %14 = load ptr, ptr %13, align 8, !tbaa !935
  tail call void @deps_analyze_insn(ptr noundef nonnull %1, ptr noundef %14) #23
  %15 = load i8, ptr %4, align 4
  %16 = and i8 %15, -2
  store i8 %16, ptr %4, align 4
  %17 = load i32, ptr @tick_check_data.1, align 8, !tbaa !1255
  %18 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !850
  %20 = sub nsw i32 %17, %19
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 0)
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @lhs_of_insn_equals_to_dest_p(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !1257 {
  %3 = load ptr, ptr @s_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !706
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %6) #22
  %8 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %7) #22
  %9 = load ptr, ptr %8, align 8, !tbaa !976
  %10 = getelementptr inbounds %struct.vinsn_def, ptr %9, i64 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1086
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %1, null
  %14 = or i1 %13, %12
  br i1 %14, label %18, label %15, !prof !1258

15:                                               ; preds = %2
  %16 = tail call i32 @rtx_equal_p(ptr noundef nonnull %11, ptr noundef nonnull %1) #23
  %17 = trunc i32 %16 to i8
  br label %18

18:                                               ; preds = %2, %15
  %19 = phi i8 [ %17, %15 ], [ 0, %2 ]
  ret i8 %19
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @insn_sid(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct._sel_insn_data) align 8 %0, ptr nocapture noundef readonly %1) local_unnamed_addr #17 !prof !714 {
  %3 = load ptr, ptr @s_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !706
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %6) #22
  %8 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %7) #22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %8, i64 320, i1 false), !tbaa.struct !1259
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @get_dest_and_mode(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 !prof !1260 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !706
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8, !prof !1261

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3458, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %3, %7
  %9 = load i32, ptr %5, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 23
  br i1 %11, label %13, label %12, !prof !1262

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3459, ptr noundef nonnull @.str.1) #23
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !706
  store ptr %15, ptr %1, align 8, !tbaa !701
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !1261

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3463, ptr noundef nonnull @.str.1) #23
  %18 = load ptr, ptr %1, align 8, !tbaa !701
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %15, %13 ], [ %18, %17 ]
  %21 = load i32, ptr %20, align 8
  %22 = trunc i32 %21 to i16
  switch i16 %22, label %23 [
    i16 43, label %24
    i16 37, label %24
  ], !prof !1263

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3464, ptr noundef nonnull @.str.1) #23
  br label %24

24:                                               ; preds = %19, %19, %23
  %25 = icmp eq ptr %2, null
  br i1 %25, label %31, label %26, !prof !1261

26:                                               ; preds = %24
  %27 = load ptr, ptr %1, align 8, !tbaa !701
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  store i32 %30, ptr %2, align 4, !tbaa !786
  br label %31

31:                                               ; preds = %26, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @bookkeeping_can_be_created_if_moved_through_p(ptr noundef %0) local_unnamed_addr #0 !prof !1264 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.succ_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %3, ptr noundef nonnull %2, ptr noundef %0, i32 noundef 1) #22
  %4 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %0) #22
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6, !prof !1265

6:                                                ; preds = %1, %10
  %7 = load ptr, ptr %2, align 8, !tbaa !701
  %8 = tail call zeroext i8 @sel_num_cfg_preds_gt_1(ptr noundef %7) #22, !range !726
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13, !prof !1266

10:                                               ; preds = %6
  call fastcc void @_succ_iter_next(ptr noundef nonnull %3) #22
  %11 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %0) #22
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %6, !prof !1267, !llvm.loop !1268

13:                                               ; preds = %6, %10, %1
  %14 = phi i8 [ 0, %1 ], [ 0, %10 ], [ 1, %6 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @sel_num_cfg_preds_gt_1(ptr noundef %0) local_unnamed_addr #0 !prof !1269 {
  %2 = tail call zeroext i8 @sel_bb_head_p(ptr noundef %0) #22, !range !726
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %32, label %4, !prof !1270

4:                                                ; preds = %1
  %5 = load ptr, ptr @block_to_bb, align 8, !tbaa !701
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !706
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !827
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %5, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !786
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %32, label %14, !prof !1271

14:                                               ; preds = %4, %26
  %15 = phi ptr [ %29, %26 ], [ %7, %4 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !1272
  %17 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %16) #22
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %32, label %19, !prof !1271

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %16, i32 noundef 0) #22
  %21 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !824
  %23 = icmp eq ptr %22, %15
  br i1 %23, label %26, label %24, !prof !1273

24:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4632, ptr noundef nonnull @.str.1) #23
  %25 = load ptr, ptr %15, align 8, !tbaa !1272
  br label %26

26:                                               ; preds = %19, %24
  %27 = phi ptr [ %16, %19 ], [ %25, %24 ]
  %28 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %27, i32 noundef 0) #22
  %29 = load ptr, ptr %28, align 8, !tbaa !839
  %30 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %29) #22, !range !726
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %14, !prof !1273

32:                                               ; preds = %26, %14, %1, %4
  %33 = phi i8 [ 0, %4 ], [ 0, %1 ], [ 0, %26 ], [ 1, %14 ]
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @tidy_control_flow(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !1274 {
  %3 = tail call fastcc zeroext i8 @maybe_tidy_empty_bb(ptr noundef %0, i8 noundef zeroext 0) #22, !range !726
  %4 = icmp eq i8 %3, 0
  %5 = icmp ne i8 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %172, !prof !1275

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !706
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !806
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !1276
  %14 = tail call zeroext i8 @jump_leads_only_to_bb_p(ptr noundef %11, ptr noundef %13) #22, !range !726
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %40, label %16, !prof !1277

16:                                               ; preds = %7
  %17 = load ptr, ptr @s_i_d, align 8
  %18 = load ptr, ptr @sched_luids, align 8
  %19 = load ptr, ptr %8, align 8, !tbaa !706
  %20 = getelementptr inbounds %struct.rtl_bb_info, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !806
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !706
  %24 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %18, i32 noundef %23) #22
  %25 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %17, i32 noundef %24) #22
  %26 = getelementptr inbounds %struct._expr, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !1278
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %16
  %30 = load ptr, ptr @fences, align 8, !tbaa !701
  %31 = tail call ptr @flist_lookup(ptr noundef %30, ptr noundef nonnull %21) #22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = tail call zeroext i8 @sel_remove_insn(ptr noundef nonnull %21, i8 noundef zeroext 0, i8 noundef zeroext 0) #22, !range !726
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %172

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !840
  %39 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %38, i32 noundef 0) #22
  tail call void @tidy_fallthru_edge(ptr noundef %39) #23
  br label %40

40:                                               ; preds = %36, %29, %16, %7
  %41 = tail call ptr @sel_bb_head(ptr noundef nonnull %0) #22
  %42 = tail call ptr @sel_bb_end(ptr noundef nonnull %0) #22
  %43 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !786
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %82, label %45, !prof !1277

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
  %53 = load ptr, ptr %52, align 8, !tbaa !706
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
  %61 = load ptr, ptr %60, align 8, !tbaa !706
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
  %72 = load ptr, ptr %71, align 8, !tbaa !706
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
  %80 = load ptr, ptr %79, align 8, !tbaa !706
  %81 = icmp eq ptr %64, %80
  br i1 %81, label %86, label %74

82:                                               ; preds = %74, %66, %40
  %83 = phi ptr [ %64, %66 ], [ %41, %40 ], [ %64, %74 ]
  %84 = phi ptr [ %42, %66 ], [ %42, %40 ], [ %75, %74 ]
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %86, label %172, !prof !1279

86:                                               ; preds = %59, %78, %51, %70, %63, %82
  %87 = phi ptr [ %83, %82 ], [ %64, %70 ], [ %42, %63 ], [ %42, %51 ], [ %64, %78 ], [ %42, %59 ]
  %88 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %0) #22, !range !726
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %172, !prof !1280

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !706
  %93 = load ptr, ptr @nop_pattern, align 8, !tbaa !701
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %172, !prof !1281

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !840
  %98 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %97) #22
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %172, !prof !1282

100:                                              ; preds = %95
  %101 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %97, i32 noundef 0) #22
  %102 = getelementptr inbounds %struct.edge_def, ptr %101, i64 0, i32 7
  %103 = load i32, ptr %102, align 8, !tbaa !1283
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %172, label %106, !prof !1284

106:                                              ; preds = %100
  %107 = tail call fastcc ptr @single_succ(ptr noundef nonnull %0) #22
  %108 = load ptr, ptr @cfun, align 8, !tbaa !701
  %109 = getelementptr inbounds %struct.function, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !801
  %111 = getelementptr inbounds %struct.control_flow_graph, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !803
  %113 = icmp eq ptr %107, %112
  br i1 %113, label %172, label %114, !prof !1284

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !869
  %117 = tail call zeroext i8 @in_current_region_p(ptr noundef %116) #22, !range !726
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %172, label %119, !prof !1284

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !706
  %122 = getelementptr inbounds %struct.rtl_bb_info, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !806
  %124 = load ptr, ptr %12, align 8, !tbaa !1276
  %125 = tail call zeroext i8 @jump_leads_only_to_bb_p(ptr noundef %123, ptr noundef %124) #22, !range !726
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %172, label %127, !prof !1282

127:                                              ; preds = %119
  %128 = load ptr, ptr @s_i_d, align 8
  %129 = load ptr, ptr @sched_luids, align 8
  %130 = load ptr, ptr %115, align 8, !tbaa !869
  %131 = getelementptr inbounds %struct.basic_block_def, ptr %130, i64 0, i32 7
  %132 = load ptr, ptr %131, align 8, !tbaa !706
  %133 = getelementptr inbounds %struct.rtl_bb_info, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !806
  %135 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %136 = load i32, ptr %135, align 8, !tbaa !706
  %137 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %129, i32 noundef %136) #22
  %138 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %128, i32 noundef %137) #22
  %139 = getelementptr inbounds %struct._expr, ptr %138, i64 0, i32 5
  %140 = load i32, ptr %139, align 8, !tbaa !1278
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %172

142:                                              ; preds = %127
  %143 = load ptr, ptr @fences, align 8, !tbaa !701
  %144 = tail call ptr @flist_lookup(ptr noundef %143, ptr noundef nonnull %134) #22
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %172

146:                                              ; preds = %142
  tail call void @clear_expr(ptr noundef nonnull %138) #22
  %147 = load ptr, ptr %115, align 8, !tbaa !869
  %148 = getelementptr inbounds %struct.basic_block_def, ptr %147, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !840
  %150 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %149, i32 noundef 0) #22
  %151 = tail call zeroext i8 @sel_redirect_edge_and_branch(ptr noundef %150, ptr noundef nonnull %0) #22, !range !726
  %152 = load ptr, ptr %115, align 8, !tbaa !869
  %153 = getelementptr inbounds %struct.basic_block_def, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !840
  %155 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %154, i32 noundef 0) #22
  %156 = getelementptr inbounds %struct.edge_def, ptr %155, i64 0, i32 7
  %157 = load i32, ptr %156, align 8, !tbaa !1283
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %146
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3696, ptr noundef nonnull @.str.1) #23
  %161 = load ptr, ptr %115, align 8, !tbaa !869
  br label %162

162:                                              ; preds = %146, %160
  %163 = phi ptr [ %152, %146 ], [ %161, %160 ]
  %164 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %163) #22, !range !726
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr %115, align 8, !tbaa !869
  %168 = tail call fastcc zeroext i8 @maybe_tidy_empty_bb(ptr noundef %167, i8 noundef zeroext %151) #22, !range !726
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
define internal fastcc noundef zeroext i8 @maybe_tidy_empty_bb(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1285 !PGOFuncName !1286 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %5 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %0) #22, !range !726
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %106, label %7, !prof !1287

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #22, !range !726
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %10, !prof !1284

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @single_succ(ptr noundef %0) #22
  %12 = load ptr, ptr @cfun, align 8, !tbaa !701
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !801
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !803
  %17 = icmp eq ptr %11, %16
  br i1 %17, label %18, label %27, !prof !1284

18:                                               ; preds = %10
  %19 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #22, !range !726
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %106, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #22
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !1283
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %106, label %27

27:                                               ; preds = %21, %10, %7
  %28 = load ptr, ptr %0, align 8, !tbaa !1272
  %29 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %28) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %106, label %31, !prof !1284

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !840
  %34 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %33) #22
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %106, label %36, !prof !1284

36:                                               ; preds = %31
  %37 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #22
  store i32 0, ptr %4, align 8, !tbaa.struct !812
  %38 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %37, ptr %38, align 8, !tbaa.struct !813
  %39 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %37, ptr noundef nonnull %3) #22, !range !726
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %52, label %41, !prof !1288

41:                                               ; preds = %36, %47
  %42 = load ptr, ptr %3, align 8, !tbaa !701
  %43 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !1283
  %45 = and i32 %44, 14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %106, !prof !1282

47:                                               ; preds = %41
  call fastcc void @ei_next(ptr noundef nonnull %4) #22
  %48 = load i32, ptr %4, align 8
  %49 = load ptr, ptr %38, align 8
  %50 = call fastcc zeroext i8 @ei_cond(i32 %48, ptr %49, ptr noundef nonnull %3) #22, !range !726
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %41, !prof !1289, !llvm.loop !1290

52:                                               ; preds = %47, %36
  tail call void @free_data_sets(ptr noundef nonnull %0) #22
  %53 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #22, !range !726
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %63, !prof !1284

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !869
  %58 = tail call zeroext i8 @can_merge_blocks_p(ptr noundef %57, ptr noundef nonnull %0) #23
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3577, ptr noundef nonnull @.str.1) #23
  br label %61

61:                                               ; preds = %55, %60
  %62 = load ptr, ptr %56, align 8, !tbaa !869
  tail call void @sel_merge_blocks(ptr noundef %62, ptr noundef nonnull %0) #22
  br label %106

63:                                               ; preds = %52
  %64 = tail call fastcc ptr @single_succ(ptr noundef nonnull %0) #22
  store i32 0, ptr %4, align 8, !tbaa.struct !812
  store ptr %37, ptr %38, align 8, !tbaa.struct !813
  %65 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %37, ptr noundef nonnull %3) #22, !range !726
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %86, label %67, !prof !1291

67:                                               ; preds = %63, %81
  %68 = phi i8 [ %83, %81 ], [ %1, %63 ]
  br label %69

69:                                               ; preds = %67, %76
  %70 = load ptr, ptr %3, align 8, !tbaa !701
  %71 = load ptr, ptr %70, align 8, !tbaa !839
  %72 = getelementptr inbounds %struct.edge_def, ptr %70, i64 0, i32 7
  %73 = load i32, ptr %72, align 8, !tbaa !1283
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76, !prof !1284

76:                                               ; preds = %69
  call fastcc void @ei_next(ptr noundef nonnull %4) #22
  %77 = load i32, ptr %4, align 8
  %78 = load ptr, ptr %38, align 8
  %79 = call fastcc zeroext i8 @ei_cond(i32 %77, ptr %78, ptr noundef nonnull %3) #22, !range !726
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %86, label %69, !prof !1289, !llvm.loop !1292

81:                                               ; preds = %69
  %82 = tail call zeroext i8 @sel_redirect_edge_and_branch(ptr noundef nonnull %70, ptr noundef %64) #22, !range !726
  %83 = or i8 %82, %68
  store i32 0, ptr %4, align 8, !tbaa.struct !812
  store ptr %37, ptr %38, align 8, !tbaa.struct !813
  %84 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %37, ptr noundef nonnull %3) #22, !range !726
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %67, !prof !1293, !llvm.loop !1294

86:                                               ; preds = %81, %76, %63
  %87 = phi i8 [ %1, %63 ], [ %68, %76 ], [ %83, %81 ]
  %88 = phi ptr [ null, %63 ], [ %71, %76 ], [ %71, %81 ]
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !869
  %91 = tail call zeroext i8 @can_merge_blocks_p(ptr noundef %90, ptr noundef nonnull %0) #23
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93, !prof !1282

93:                                               ; preds = %86
  %94 = load ptr, ptr %89, align 8, !tbaa !869
  tail call void @sel_merge_blocks(ptr noundef %94, ptr noundef nonnull %0) #22
  br label %103

95:                                               ; preds = %86
  %96 = icmp eq ptr %88, null
  br i1 %96, label %97, label %98, !prof !1284

97:                                               ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3611, ptr noundef nonnull @.str.1) #23
  br label %98

98:                                               ; preds = %95, %97
  %99 = tail call zeroext i8 @in_current_region_p(ptr noundef %88) #22, !range !726
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %102, label %101, !prof !1284

101:                                              ; preds = %98
  tail call fastcc void @move_bb_info(ptr noundef %88, ptr noundef nonnull %0) #22
  br label %102

102:                                              ; preds = %101, %98
  tail call fastcc void @remove_empty_bb(ptr noundef nonnull %0, i8 noundef zeroext 1) #22
  br label %103

103:                                              ; preds = %102, %93
  %104 = icmp eq i8 %87, 0
  br i1 %104, label %106, label %105, !prof !1282

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
define dso_local noundef zeroext i8 @jump_leads_only_to_bb_p(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 !prof !1295 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !706
  %5 = tail call i32 @onlyjump_p(ptr noundef %0) #23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7, !prof !1296

7:                                                ; preds = %2
  %8 = tail call i32 @any_uncondjump_p(ptr noundef nonnull %0) #23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10, !prof !1297

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !840
  %13 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %12) #22
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %26, !prof !1298

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %12, i32 noundef 0) #22
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !1283
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26, !prof !1298

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !824
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %26, !prof !1299

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %10, %15, %21, %2, %7, %25
  %27 = phi i8 [ 1, %25 ], [ 0, %7 ], [ 0, %2 ], [ 0, %21 ], [ 0, %15 ], [ 0, %10 ]
  ret i8 %27
}

; Function Attrs: optsize
declare void @tidy_fallthru_edge(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !1300 !PGOFuncName !1301 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !701
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sel_bb_head(ptr noundef %0) local_unnamed_addr #0 !prof !1302 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !701
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !801
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !803
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %13, !prof !1303

8:                                                ; preds = %1
  %9 = load ptr, ptr @exit_insn, align 8, !tbaa !701
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %22, !prof !1304

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4322, ptr noundef nonnull @.str.1) #23
  %12 = load ptr, ptr @exit_insn, align 8, !tbaa !701
  br label %22

13:                                               ; preds = %1
  %14 = tail call ptr @bb_note(ptr noundef %0) #23
  %15 = tail call ptr @next_nonnote_insn(ptr noundef %14) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17, !prof !1305

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !706
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %22, label %21, !prof !1306

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %11, %8, %13, %17, %21
  %23 = phi ptr [ null, %21 ], [ %15, %17 ], [ null, %13 ], [ %9, %8 ], [ %12, %11 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sel_bb_end(ptr noundef %0) local_unnamed_addr #0 !prof !1307 {
  %2 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %0) #22, !range !726
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %17, !prof !1308

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !701
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !801
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !803
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %12, !prof !1309

11:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4353, ptr noundef nonnull @.str.1) #23
  br label %12

12:                                               ; preds = %4, %11
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !706
  %15 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !806
  br label %17

17:                                               ; preds = %1, %12
  %18 = phi ptr [ %16, %12 ], [ null, %1 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sel_bb_empty_p(ptr noundef %0) local_unnamed_addr #0 !prof !1310 {
  %2 = tail call ptr @sel_bb_head(ptr noundef %0) #22
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !1311 !PGOFuncName !1312 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1313

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1314
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1316 !PGOFuncName !1317 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #22
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !824
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @in_current_region_p(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !1318 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !827
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %21, label %5, !prof !1319

5:                                                ; preds = %1
  %6 = load ptr, ptr @containing_rgn, align 8, !tbaa !701
  %7 = zext nneg i32 %3 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !786
  %10 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !701
  %11 = load ptr, ptr @ebb_head, align 8, !tbaa !701
  %12 = load i32, ptr %11, align 4, !tbaa !786
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !786
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %6, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !786
  %19 = icmp eq i32 %9, %18
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %1, %5
  %22 = phi i8 [ %20, %5 ], [ 0, %1 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sel_redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !714 {
  %3 = load i8, ptr @pipelining_p, align 1, !tbaa !706
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
  %13 = load ptr, ptr %0, align 8, !tbaa !839
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
  %23 = load ptr, ptr @current_loop_nest, align 8, !tbaa !701
  %24 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 2
  store ptr %1, ptr %24, align 8, !tbaa !1320
  %25 = tail call ptr @loop_latch_edge(ptr noundef %23) #23
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5459, ptr noundef nonnull @.str.1) #23
  br label %28

28:                                               ; preds = %27, %22, %21
  %29 = load ptr, ptr @containing_rgn, align 8, !tbaa !701
  %30 = load ptr, ptr %0, align 8, !tbaa !839
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !827
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %29, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !786
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !827
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %29, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !786
  %41 = icmp eq i32 %35, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %28
  %43 = load ptr, ptr @block_to_bb, align 8, !tbaa !701
  %44 = getelementptr inbounds i32, ptr %43, i64 %33
  %45 = load i32, ptr %44, align 4, !tbaa !786
  %46 = getelementptr inbounds i32, ptr %43, i64 %38
  %47 = load i32, ptr %46, align 4, !tbaa !786
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
define internal fastcc void @sel_recompute_toporder() unnamed_addr #0 !prof !714 !PGOFuncName !1324 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !701
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !801
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !1325
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 2
  %8 = alloca i8, i64 %7, align 16
  %9 = call i32 @post_order_compute(ptr noundef nonnull %8, i8 noundef zeroext 0, i8 noundef zeroext 0) #23
  %10 = load ptr, ptr @containing_rgn, align 8, !tbaa !701
  %11 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !701
  %12 = load ptr, ptr @ebb_head, align 8, !tbaa !701
  %13 = load i32, ptr %12, align 4, !tbaa !786
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %11, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !786
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %10, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !786
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
  %29 = load i32, ptr %28, align 4, !tbaa !786
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %10, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !786
  %33 = icmp eq i32 %32, %19
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = getelementptr inbounds i32, ptr %22, i64 %30
  store i32 %26, ptr %35, align 4, !tbaa !786
  %36 = load i32, ptr %28, align 4, !tbaa !786
  %37 = sext i32 %26 to i64
  %38 = getelementptr inbounds i32, ptr %12, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !786
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %11, i64 %40
  store i32 %36, ptr %41, align 4, !tbaa !786
  %42 = add nsw i32 %26, 1
  br label %43

43:                                               ; preds = %24, %34
  %44 = phi i32 [ %42, %34 ], [ %26, %24 ]
  %45 = icmp ugt i64 %25, 1
  br i1 %45, label %24, label %46, !llvm.loop !1326

46:                                               ; preds = %43, %0
  %47 = phi i32 [ 0, %0 ], [ %44, %43 ]
  %48 = load ptr, ptr @rgn_table, align 8, !tbaa !701
  %49 = sext i32 %19 to i64
  %50 = getelementptr inbounds %struct.region, ptr %48, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !1327
  %52 = icmp eq i32 %47, %51
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3542, ptr noundef nonnull @.str.1) #23
  br label %54

54:                                               ; preds = %46, %53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @purge_empty_blocks() local_unnamed_addr #0 !prof !784 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !701
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !801
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !1207
  %6 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !701
  %7 = load ptr, ptr @ebb_head, align 8, !tbaa !701
  %8 = load i32, ptr %7, align 4, !tbaa !786
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !786
  %12 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %5, i32 noundef %11) #22
  %13 = tail call zeroext i8 @sel_is_loop_preheader_p(ptr noundef %12) #22
  %14 = icmp ne i8 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load i32, ptr @current_nr_blocks, align 4, !tbaa !786
  %17 = icmp sgt i32 %16, %15
  br i1 %17, label %18, label %40, !prof !787

18:                                               ; preds = %0, %18
  %19 = phi i32 [ %37, %18 ], [ %15, %0 ]
  %20 = load ptr, ptr @cfun, align 8, !tbaa !701
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !801
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !1207
  %25 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !701
  %26 = load ptr, ptr @ebb_head, align 8, !tbaa !701
  %27 = zext nneg i32 %19 to i64
  %28 = getelementptr inbounds i32, ptr %26, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !786
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %25, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !786
  %33 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %24, i32 noundef %32) #22
  %34 = tail call fastcc zeroext i8 @maybe_tidy_empty_bb(ptr noundef %33, i8 noundef zeroext 0) #22, !range !726
  %35 = xor i8 %34, 1
  %36 = zext nneg i8 %35 to i32
  %37 = add nuw nsw i32 %19, %36
  %38 = load i32, ptr @current_nr_blocks, align 4, !tbaa !786
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %18, label %40, !prof !1329

40:                                               ; preds = %18, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @sel_is_loop_preheader_p(ptr noundef readonly %0) local_unnamed_addr #0 !prof !1330 {
  %2 = load ptr, ptr @current_loop_nest, align 8, !tbaa !701
  %3 = icmp eq ptr %2, null
  br i1 %3, label %45, label %4, !prof !1331

4:                                                ; preds = %1
  %5 = load i8, ptr @preheader_removed, align 1, !tbaa !706
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %4
  %8 = load ptr, ptr @block_to_bb, align 8, !tbaa !701
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !827
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !786
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.loop, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !1320
  %18 = tail call zeroext i8 @in_current_region_p(ptr noundef %17) #22, !range !726
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !827
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %8, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !786
  %26 = icmp slt i32 %13, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6087, ptr noundef nonnull @.str.1) #23
  %28 = load ptr, ptr @current_loop_nest, align 8, !tbaa !701
  br label %29

29:                                               ; preds = %27, %20, %15
  %30 = phi ptr [ %28, %27 ], [ %2, %20 ], [ %2, %15 ]
  %31 = tail call fastcc ptr @loop_outer(ptr noundef %30) #22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %29, %42
  %34 = phi ptr [ %43, %42 ], [ %31, %29 ]
  %35 = tail call zeroext i8 @considered_for_pipelining_p(ptr noundef nonnull %34) #22, !range !726
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.loop, ptr %34, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !1332
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6095, ptr noundef nonnull @.str.1) #23
  br label %42

42:                                               ; preds = %33, %37, %41
  %43 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %34) #22
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %33, !llvm.loop !1333

45:                                               ; preds = %42, %29, %7, %4, %1
  %46 = phi i8 [ 0, %1 ], [ 1, %7 ], [ 0, %4 ], [ 0, %29 ], [ 0, %42 ]
  ret i8 %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #8 !prof !1334 !PGOFuncName !1335 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_region_bb_info_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @remove_insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_seqno_by_preds(ptr noundef readonly %0) local_unnamed_addr #0 !prof !714 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !706
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !706
  %8 = load ptr, ptr %7, align 8, !tbaa !940
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
  %20 = load i32, ptr %19, align 8, !tbaa !706
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %18, i32 noundef %20) #22
  %22 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %17, i32 noundef %21) #22
  %23 = getelementptr inbounds %struct._sel_insn_data, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !911
  br label %51

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !706
  %28 = icmp eq ptr %27, %8
  br i1 %28, label %29, label %10, !llvm.loop !1336

29:                                               ; preds = %25, %1
  call fastcc void @cfg_preds(ptr noundef %5, ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %30 = load i32, ptr %3, align 4, !tbaa !786
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load ptr, ptr @s_i_d, align 8
  %34 = load ptr, ptr @sched_luids, align 8
  %35 = load ptr, ptr %2, align 8, !tbaa !701
  %36 = zext nneg i32 %30 to i64
  br label %37

37:                                               ; preds = %32, %37
  %38 = phi i64 [ 0, %32 ], [ %49, %37 ]
  %39 = phi i32 [ -1, %32 ], [ %48, %37 ]
  %40 = getelementptr inbounds ptr, ptr %35, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !701
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !706
  %44 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %34, i32 noundef %43) #22
  %45 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %33, i32 noundef %44) #22
  %46 = getelementptr inbounds %struct._sel_insn_data, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !911
  %48 = tail call i32 @llvm.smax.i32(i32 %39, i32 %47)
  %49 = add nuw nsw i64 %38, 1
  %50 = icmp eq i64 %49, %36
  br i1 %50, label %51, label %37, !llvm.loop !1337

51:                                               ; preds = %37, %29, %16
  %52 = phi i32 [ %24, %16 ], [ -1, %29 ], [ %48, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cfg_preds(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !714 !PGOFuncName !1338 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !tbaa !786
  store ptr null, ptr %1, align 8, !tbaa !701
  store i32 0, ptr %2, align 4, !tbaa !786
  call fastcc void @cfg_preds_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_extend_global_bb_info() local_unnamed_addr #0 !prof !1339 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !701
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !801
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !1340
  tail call fastcc void @VEC_sel_global_bb_info_def_heap_safe_grow_cleared(i32 noundef %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sel_global_bb_info_def_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !1339 !PGOFuncName !1341 {
  %2 = load ptr, ptr @sel_global_bb_info, align 8, !tbaa !701
  %3 = tail call fastcc i32 @VEC_sel_global_bb_info_def_base_length(ptr noundef %2) #22
  tail call fastcc void @VEC_sel_global_bb_info_def_heap_safe_grow(i32 noundef %0) #22
  %4 = load ptr, ptr @sel_global_bb_info, align 8, !tbaa !701
  %5 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_address(ptr noundef %4) #22
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @sel_finish_global_bb_info() local_unnamed_addr #10 !prof !901 {
  tail call fastcc void @VEC_sel_global_bb_info_def_heap_free() #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_sel_global_bb_info_def_heap_free() unnamed_addr #10 !prof !901 !PGOFuncName !1342 {
  %1 = load ptr, ptr @sel_global_bb_info, align 8, !tbaa !701
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1343

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #22
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @sel_global_bb_info, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_lv_sets() local_unnamed_addr #0 !prof !901 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !701
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !801
  %4 = load ptr, ptr %3, align 8, !tbaa !1344
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !1276
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !803
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %20, label %10, !prof !903

10:                                               ; preds = %0, %10
  %11 = phi ptr [ %13, %10 ], [ %6, %0 ]
  tail call fastcc void @init_lv_set(ptr noundef %11) #22
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !1276
  %14 = load ptr, ptr @cfun, align 8, !tbaa !701
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !801
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !803
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %20, label %10, !prof !1345, !llvm.loop !1346

20:                                               ; preds = %10, %0
  %21 = phi ptr [ %6, %0 ], [ %13, %10 ]
  tail call fastcc void @init_lv_set(ptr noundef %21) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_lv_set(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1347 !PGOFuncName !1348 {
  %2 = load ptr, ptr @sel_global_bb_info, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !827
  %5 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %2, i32 noundef %4) #22
  %6 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %5, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !1349
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !1351

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4093, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %1, %9
  %11 = tail call ptr @get_regset_from_pool() #22
  %12 = load ptr, ptr @sel_global_bb_info, align 8
  %13 = load i32, ptr %3, align 8, !tbaa !827
  %14 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %12, i32 noundef %13) #22
  store ptr %11, ptr %14, align 8, !tbaa !1352
  %15 = load ptr, ptr @sel_global_bb_info, align 8
  %16 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %15, i32 noundef %13) #22
  %17 = load ptr, ptr %16, align 8, !tbaa !1352
  %18 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %13) #22
  %19 = getelementptr inbounds %struct.df_lr_bb_info, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !1353
  tail call void @bitmap_copy(ptr noundef %17, ptr noundef %20) #23
  %21 = load ptr, ptr @sel_global_bb_info, align 8
  %22 = load i32, ptr %3, align 8, !tbaa !827
  %23 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %21, i32 noundef %22) #22
  %24 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %23, i64 0, i32 1
  store i8 1, ptr %24, align 8, !tbaa !1349
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_lv_sets() local_unnamed_addr #0 !prof !901 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !701
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !801
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !803
  tail call fastcc void @free_lv_set(ptr noundef %5) #22
  %6 = load ptr, ptr @cfun, align 8, !tbaa !701
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !801
  %9 = load ptr, ptr %8, align 8, !tbaa !1344
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !1276
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !803
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %39, label %15, !prof !903

15:                                               ; preds = %0
  %16 = load ptr, ptr @sel_global_bb_info, align 8
  br label %17

17:                                               ; preds = %15, %29
  %18 = phi ptr [ %30, %29 ], [ %6, %15 ]
  %19 = phi ptr [ %31, %29 ], [ %16, %15 ]
  %20 = phi ptr [ %33, %29 ], [ %11, %15 ]
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !827
  %23 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %19, i32 noundef %22) #22
  %24 = load ptr, ptr %23, align 8, !tbaa !1352
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26, !prof !848

26:                                               ; preds = %17
  tail call fastcc void @free_lv_set(ptr noundef nonnull %20) #22
  %27 = load ptr, ptr @sel_global_bb_info, align 8
  %28 = load ptr, ptr @cfun, align 8, !tbaa !701
  br label %29

29:                                               ; preds = %17, %26
  %30 = phi ptr [ %18, %17 ], [ %28, %26 ]
  %31 = phi ptr [ %19, %17 ], [ %27, %26 ]
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !1276
  %34 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !801
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !803
  %38 = icmp eq ptr %33, %37
  br i1 %38, label %39, label %17, !prof !1355, !llvm.loop !1356

39:                                               ; preds = %29, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_lv_set(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1347 !PGOFuncName !1357 {
  %2 = load ptr, ptr @sel_global_bb_info, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !827
  %5 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %2, i32 noundef %4) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !1352
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12, !prof !1358

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4128, ptr noundef nonnull @.str.1) #23
  %9 = load ptr, ptr @sel_global_bb_info, align 8
  %10 = load i32, ptr %3, align 8, !tbaa !827
  %11 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %9, i32 noundef %10) #22
  br label %12

12:                                               ; preds = %1, %8
  %13 = phi ptr [ %5, %1 ], [ %11, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !1352
  tail call void @return_regset_to_pool(ptr noundef %14) #22
  %15 = load ptr, ptr @sel_global_bb_info, align 8
  %16 = load i32, ptr %3, align 8, !tbaa !827
  %17 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %15, i32 noundef %16) #22
  store ptr null, ptr %17, align 8, !tbaa !1352
  %18 = load ptr, ptr @sel_global_bb_info, align 8
  %19 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %18, i32 noundef %16) #22
  %20 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %19, i64 0, i32 1
  store i8 0, ptr %20, align 8, !tbaa !1349
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #8 !prof !1359 !PGOFuncName !1360 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_global_bb_info_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_data_sets(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !1361 {
  tail call fastcc void @free_lv_set(ptr noundef %0) #22
  tail call fastcc void @free_av_set(ptr noundef %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_av_set(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1361 !PGOFuncName !1362 {
  %2 = load ptr, ptr @sel_region_bb_info, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !827
  %5 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %2, i32 noundef %4) #22
  %6 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %5, i64 0, i32 1
  tail call void @av_set_clear(ptr noundef nonnull %6) #22
  %7 = load ptr, ptr @sel_region_bb_info, align 8
  %8 = load i32, ptr %3, align 8, !tbaa !827
  %9 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %7, i32 noundef %8) #22
  %10 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %9, i64 0, i32 2
  store i32 0, ptr %10, align 8, !tbaa !932
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @exchange_data_sets(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #17 !prof !714 {
  tail call fastcc void @exchange_lv_sets(ptr noundef %0, ptr noundef %1) #22
  tail call fastcc void @exchange_av_sets(ptr noundef %0, ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @exchange_lv_sets(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #17 !prof !714 !PGOFuncName !1363 {
  %3 = load ptr, ptr @sel_global_bb_info, align 8
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !827
  %6 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %3, i32 noundef %5) #22
  %7 = load ptr, ptr %6, align 8, !tbaa !1352
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !827
  %10 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %3, i32 noundef %9) #22
  %11 = load ptr, ptr %10, align 8, !tbaa !1352
  store ptr %11, ptr %6, align 8, !tbaa !1352
  %12 = load ptr, ptr @sel_global_bb_info, align 8
  %13 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %12, i32 noundef %9) #22
  store ptr %7, ptr %13, align 8, !tbaa !1352
  %14 = load ptr, ptr @sel_global_bb_info, align 8
  %15 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %14, i32 noundef %5) #22
  %16 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %15, i64 0, i32 1
  %17 = load i8, ptr %16, align 8, !tbaa !1349
  %18 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %14, i32 noundef %9) #22
  %19 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %18, i64 0, i32 1
  %20 = load i8, ptr %19, align 8, !tbaa !1349
  store i8 %20, ptr %16, align 8, !tbaa !1349
  store i8 %17, ptr %19, align 8, !tbaa !1349
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @exchange_av_sets(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #17 !prof !714 !PGOFuncName !1364 {
  %3 = load ptr, ptr @sel_region_bb_info, align 8
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !827
  %6 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %3, i32 noundef %5) #22
  %7 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1365
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !827
  %11 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %3, i32 noundef %10) #22
  %12 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1365
  store ptr %13, ptr %7, align 8, !tbaa !1365
  store ptr %8, ptr %12, align 8, !tbaa !1365
  %14 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %6, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !932
  %16 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %11, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !932
  store i32 %17, ptr %14, align 8, !tbaa !932
  store i32 %15, ptr %16, align 8, !tbaa !932
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_data_sets(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !714 {
  %3 = load ptr, ptr @sel_global_bb_info, align 8
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !827
  %6 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %3, i32 noundef %5) #22
  %7 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %6, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !1349
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load ptr, ptr @sel_region_bb_info, align 8
  %12 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %11, i32 noundef %5) #22
  %13 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !932
  %15 = load i32, ptr @global_level, align 4, !tbaa !786
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %10, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4239, ptr noundef nonnull @.str.1) #23
  %18 = load ptr, ptr @sel_region_bb_info, align 8
  %19 = load i32, ptr %4, align 8, !tbaa !827
  %20 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %18, i32 noundef %19) #22
  br label %21

21:                                               ; preds = %10, %17
  %22 = phi ptr [ %12, %10 ], [ %20, %17 ]
  %23 = phi i32 [ %5, %10 ], [ %19, %17 ]
  %24 = phi ptr [ %11, %10 ], [ %18, %17 ]
  %25 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !1365
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4240, ptr noundef nonnull @.str.1) #23
  %29 = load ptr, ptr @sel_region_bb_info, align 8
  %30 = load i32, ptr %4, align 8, !tbaa !827
  %31 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %29, i32 noundef %30) #22
  br label %32

32:                                               ; preds = %21, %28
  %33 = phi ptr [ %22, %21 ], [ %31, %28 ]
  %34 = phi i32 [ %23, %21 ], [ %30, %28 ]
  %35 = phi ptr [ %24, %21 ], [ %29, %28 ]
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !827
  %38 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %35, i32 noundef %37) #22
  %39 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !932
  %41 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %33, i64 0, i32 2
  store i32 %40, ptr %41, align 8, !tbaa !932
  %42 = load ptr, ptr @sel_global_bb_info, align 8
  %43 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %42, i32 noundef %37) #22
  %44 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %43, i64 0, i32 1
  %45 = load i8, ptr %44, align 8, !tbaa !1349
  %46 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %42, i32 noundef %34) #22
  %47 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %46, i64 0, i32 1
  store i8 %45, ptr %47, align 8, !tbaa !1349
  %48 = load i32, ptr @global_level, align 4, !tbaa !786
  %49 = icmp eq i32 %40, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %38, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !1365
  %53 = tail call ptr @av_set_copy(ptr noundef %52) #22
  %54 = load ptr, ptr @sel_region_bb_info, align 8
  %55 = load i32, ptr %4, align 8, !tbaa !827
  %56 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %54, i32 noundef %55) #22
  %57 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %56, i64 0, i32 1
  store ptr %53, ptr %57, align 8, !tbaa !1365
  %58 = load ptr, ptr @sel_global_bb_info, align 8
  %59 = load i32, ptr %36, align 8, !tbaa !827
  %60 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %58, i32 noundef %59) #22
  br label %61

61:                                               ; preds = %50, %32
  %62 = phi ptr [ %60, %50 ], [ %43, %32 ]
  %63 = phi i32 [ %55, %50 ], [ %34, %32 ]
  %64 = phi ptr [ %58, %50 ], [ %42, %32 ]
  %65 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %62, i64 0, i32 1
  %66 = load i8, ptr %65, align 8, !tbaa !1349
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %61
  %69 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %64, i32 noundef %63) #22
  %70 = load ptr, ptr %69, align 8, !tbaa !1352
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4251, ptr noundef nonnull @.str.1) #23
  %73 = load ptr, ptr @sel_global_bb_info, align 8
  %74 = load i32, ptr %4, align 8, !tbaa !827
  %75 = load i32, ptr %36, align 8, !tbaa !827
  %76 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %73, i32 noundef %74) #22
  %77 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %73, i32 noundef %75) #22
  br label %78

78:                                               ; preds = %68, %72
  %79 = phi ptr [ %62, %68 ], [ %77, %72 ]
  %80 = phi ptr [ %69, %68 ], [ %76, %72 ]
  %81 = load ptr, ptr %80, align 8, !tbaa !1352
  %82 = load ptr, ptr %79, align 8, !tbaa !1352
  tail call void @bitmap_copy(ptr noundef %81, ptr noundef %82) #23
  br label %83

83:                                               ; preds = %78, %61
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_av_set(ptr noundef %0) local_unnamed_addr #0 !prof !1169 {
  %2 = tail call i32 @get_av_level(ptr noundef %0) #22
  %3 = load i32, ptr @global_level, align 4, !tbaa !786
  %4 = icmp eq i32 %2, %3
  br i1 %4, label %6, label %5, !prof !1366

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4262, ptr noundef nonnull @.str.1) #23
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call zeroext i8 @sel_bb_head_p(ptr noundef %0) #22, !range !726
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9, !prof !1367

9:                                                ; preds = %6
  %10 = load ptr, ptr @sel_region_bb_info, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !706
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !827
  %15 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %10, i32 noundef %14) #22
  %16 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !1365
  br label %18

18:                                               ; preds = %6, %9
  %19 = phi ptr [ %17, %9 ], [ null, %6 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_av_level(ptr noundef %0) local_unnamed_addr #0 !prof !1368 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %7, label %6, !prof !1369

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4278, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call zeroext i8 @sel_bb_head_p(ptr noundef nonnull %0) #22, !range !726
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10, !prof !1370

10:                                               ; preds = %7
  %11 = load ptr, ptr @sel_region_bb_info, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !706
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !827
  %16 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %11, i32 noundef %15) #22
  %17 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %16, i64 0, i32 2
  br label %26

18:                                               ; preds = %7
  %19 = load ptr, ptr @s_i_d, align 8
  %20 = load ptr, ptr @sched_luids, align 8
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !706
  %23 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %20, i32 noundef %22) #22
  %24 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %19, i32 noundef %23) #22
  %25 = getelementptr inbounds %struct._sel_insn_data, ptr %24, i64 0, i32 1
  br label %26

26:                                               ; preds = %18, %10
  %27 = phi ptr [ %17, %10 ], [ %25, %18 ]
  %28 = load i32, ptr %27, align 8, !tbaa !786
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sel_bb_head_p(ptr noundef readonly %0) local_unnamed_addr #0 !prof !1371 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !706
  %4 = tail call ptr @sel_bb_head(ptr noundef %3) #22
  %5 = icmp eq ptr %4, %0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @bb_note(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @sel_bb_end_p(ptr noundef readonly %0) local_unnamed_addr #0 !prof !1372 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !706
  %4 = tail call ptr @sel_bb_end(ptr noundef %3) #22
  %5 = icmp eq ptr %4, %0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fallthru_bb_of_jump(ptr noundef %0) local_unnamed_addr #0 !prof !1264 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %34, !prof !1373

5:                                                ; preds = %1
  %6 = tail call i32 @any_uncondjump_p(ptr noundef nonnull %0) #23
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !1374

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !706
  %11 = tail call fastcc ptr @single_succ(ptr noundef %10) #22
  br label %34

12:                                               ; preds = %5
  %13 = tail call i32 @any_condjump_p(ptr noundef nonnull %0) #23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %34, label %15, !prof !1375

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !706
  %18 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %17) #22, !range !726
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %34, !prof !1376

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !840
  %23 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %22, i32 noundef 0) #22
  %24 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !1283
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30, !prof !1377

28:                                               ; preds = %20
  %29 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %22, i32 noundef 1) #22
  br label %30

30:                                               ; preds = %20, %28
  %31 = phi ptr [ %29, %28 ], [ %23, %20 ]
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !824
  br label %34

34:                                               ; preds = %15, %12, %1, %30, %8
  %35 = phi ptr [ %11, %8 ], [ %33, %30 ], [ null, %1 ], [ null, %12 ], [ null, %15 ]
  ret ptr %35
}

; Function Attrs: optsize
declare i32 @any_uncondjump_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !1378 !PGOFuncName !1379 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !840
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #22
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_init_bbs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !784 {
  %3 = alloca %struct.sched_scan_info_def, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) @__const.sel_init_bbs.ssi, i64 32, i1 false)
  call void @sched_scan(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @extend_bb_info() #0 !prof !784 !PGOFuncName !1380 {
  tail call void @sel_extend_global_bb_info() #22
  tail call fastcc void @extend_region_bb_info() #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @init_bb(ptr noundef %0) #0 !prof !1184 !PGOFuncName !1381 {
  %2 = tail call ptr @bb_note(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !706
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !806
  tail call void @remove_notes(ptr noundef %2, ptr noundef %6) #23
  %7 = load ptr, ptr @note_list, align 8, !tbaa !701
  %8 = load ptr, ptr @sel_region_bb_info, align 8
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !827
  %11 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %8, i32 noundef %10) #22
  store ptr %7, ptr %11, align 8, !tbaa !1382
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_finish_bbs() local_unnamed_addr #0 !prof !784 {
  tail call fastcc void @sel_restore_notes() #22
  %1 = load ptr, ptr @current_loop_nest, align 8, !tbaa !701
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !792

3:                                                ; preds = %0
  tail call fastcc void @sel_remove_loop_preheader() #22
  br label %4

4:                                                ; preds = %3, %0
  tail call fastcc void @finish_region_bb_info() #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_restore_notes() unnamed_addr #0 !prof !784 !PGOFuncName !1383 {
  %1 = load i32, ptr @current_nr_blocks, align 4, !tbaa !786
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %69, !prof !787

3:                                                ; preds = %0, %65
  %4 = phi i64 [ %18, %65 ], [ 0, %0 ]
  %5 = load ptr, ptr @cfun, align 8, !tbaa !701
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !801
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !1207
  %10 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !701
  %11 = load ptr, ptr @ebb_head, align 8, !tbaa !701
  %12 = getelementptr inbounds i32, ptr %11, i64 %4
  %13 = load i32, ptr %12, align 4, !tbaa !786
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %10, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !786
  %17 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %9, i32 noundef %16) #22
  %18 = add nuw nsw i64 %4, 1
  %19 = getelementptr inbounds i32, ptr %11, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !786
  %21 = sext i32 %20 to i64
  %22 = getelementptr i32, ptr %10, i64 %21
  %23 = getelementptr i32, ptr %22, i64 -1
  %24 = load i32, ptr %23, align 4, !tbaa !786
  %25 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %9, i32 noundef %24) #22
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !1276
  br label %28

28:                                               ; preds = %61, %3
  %29 = phi ptr [ %17, %3 ], [ %63, %61 ]
  %30 = load ptr, ptr @sel_region_bb_info, align 8
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !827
  %33 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %30, i32 noundef %32) #22
  %34 = load ptr, ptr %33, align 8, !tbaa !1382
  store ptr %34, ptr @note_list, align 8, !tbaa !701
  %35 = tail call ptr @restore_other_notes(ptr noundef null, ptr noundef %29) #23
  %36 = load ptr, ptr @sel_region_bb_info, align 8
  %37 = load i32, ptr %31, align 8, !tbaa !827
  %38 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %36, i32 noundef %37) #22
  store ptr null, ptr %38, align 8, !tbaa !1382
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !706
  %41 = load ptr, ptr %40, align 8, !tbaa !706
  %42 = icmp eq ptr %41, null
  br i1 %42, label %61, label %43, !prof !1291

43:                                               ; preds = %28, %57
  %44 = phi ptr [ %59, %57 ], [ %41, %28 ]
  %45 = load ptr, ptr %39, align 8, !tbaa !706
  %46 = getelementptr inbounds %struct.rtl_bb_info, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !806
  %48 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %49 = load ptr, ptr %48, align 8, !tbaa !706
  %50 = icmp eq ptr %44, %49
  br i1 %50, label %61, label %51, !prof !1384

51:                                               ; preds = %43
  %52 = load i32, ptr %44, align 8
  %53 = and i32 %52, 65535
  %54 = add nsw i32 %53, -11
  %55 = icmp ult i32 %54, -3
  br i1 %55, label %57, label %56, !prof !1385

56:                                               ; preds = %51
  tail call void @reemit_notes(ptr noundef nonnull %44) #23
  br label %57

57:                                               ; preds = %51, %56
  %58 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 2
  %59 = load ptr, ptr %58, align 8, !tbaa !706
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %43, !prof !1386, !llvm.loop !1387

61:                                               ; preds = %43, %57, %28
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !1276
  %64 = icmp eq ptr %63, %27
  br i1 %64, label %65, label %28, !prof !1220, !llvm.loop !1388

65:                                               ; preds = %61
  %66 = load i32, ptr @current_nr_blocks, align 4, !tbaa !786
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %18, %67
  br i1 %68, label %3, label %69, !prof !1208, !llvm.loop !1389

69:                                               ; preds = %65, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_remove_loop_preheader() unnamed_addr #0 !prof !714 !PGOFuncName !1390 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @containing_rgn, align 8, !tbaa !701
  %4 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !701
  %5 = load ptr, ptr @ebb_head, align 8, !tbaa !701
  %6 = load i32, ptr %5, align 4, !tbaa !786
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %4, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !786
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %3, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !786
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %13 = load ptr, ptr @current_loop_nest, align 8, !tbaa !701
  %14 = tail call fastcc ptr @loop_outer(ptr noundef %13) #22
  %15 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !1391
  %17 = icmp eq ptr %16, inttoptr (i64 1 to ptr)
  %18 = select i1 %17, ptr null, ptr %16
  store ptr %18, ptr %2, align 8, !tbaa !701
  %19 = icmp eq ptr %13, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6137, ptr noundef nonnull @.str.1) #23
  br label %21

21:                                               ; preds = %0, %20
  %22 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %18) #22
  %23 = sext i32 %12 to i64
  %24 = load ptr, ptr @rgn_table, align 8, !tbaa !701
  %25 = getelementptr inbounds %struct.region, ptr %24, i64 %23
  %26 = load i32, ptr %25, align 4, !tbaa !1327
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %21, %54
  %29 = phi i64 [ %56, %54 ], [ 0, %21 ]
  %30 = phi i8 [ %55, %54 ], [ 1, %21 ]
  %31 = load ptr, ptr @cfun, align 8, !tbaa !701
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !801
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !1207
  %36 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !701
  %37 = load ptr, ptr @ebb_head, align 8, !tbaa !701
  %38 = getelementptr inbounds i32, ptr %37, i64 %29
  %39 = load i32, ptr %38, align 4, !tbaa !786
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %36, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !786
  %43 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %35, i32 noundef %42) #22
  %44 = tail call zeroext i8 @sel_is_loop_preheader_p(ptr noundef %43) #22
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %28
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %2, ptr noundef %43) #22
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !706
  %49 = getelementptr inbounds %struct.rtl_bb_info, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !806
  %51 = tail call ptr @bb_note(ptr noundef %43) #23
  %52 = icmp eq ptr %50, %51
  %53 = select i1 %52, i8 %30, i8 0
  br label %54

54:                                               ; preds = %46, %28
  %55 = phi i8 [ %30, %28 ], [ %53, %46 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = load ptr, ptr @rgn_table, align 8, !tbaa !701
  %58 = getelementptr inbounds %struct.region, ptr %57, i64 %23
  %59 = load i32, ptr %58, align 4, !tbaa !1327
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %56, %60
  br i1 %61, label %28, label %62, !llvm.loop !1392

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
  br i1 %76, label %77, label %72, !llvm.loop !1393

77:                                               ; preds = %72, %65
  %78 = phi ptr [ %67, %65 ], [ %74, %72 ]
  store ptr %78, ptr %1, align 8, !tbaa !701
  %79 = load ptr, ptr @current_loop_nest, align 8, !tbaa !701
  %80 = tail call fastcc ptr @loop_outer(ptr noundef %79) #22
  %81 = tail call zeroext i8 @considered_for_pipelining_p(ptr noundef %80) #22, !range !726
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %152

83:                                               ; preds = %77
  br i1 %68, label %87, label %84

84:                                               ; preds = %83
  %85 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %66, i32 noundef 0, ptr noundef nonnull %1) #22, !range !820
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %151, label %88

87:                                               ; preds = %83
  call void @make_region_from_loop_preheader(ptr noundef nonnull %2) #22
  br label %151

88:                                               ; preds = %84, %147
  %89 = phi i32 [ %148, %147 ], [ 0, %84 ]
  %90 = load ptr, ptr %1, align 8
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !869
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !1276
  %95 = tail call fastcc ptr @ei_start_1(ptr noundef %90) #22
  %96 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %95) #22
  %97 = icmp eq ptr %96, null
  br i1 %97, label %111, label %98

98:                                               ; preds = %88, %108
  %99 = phi ptr [ %109, %108 ], [ %96, %88 ]
  %100 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 7
  %101 = load i32, ptr %100, align 8, !tbaa !1283
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  %104 = load ptr, ptr %93, align 8, !tbaa !1276
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
  br i1 %110, label %111, label %98, !llvm.loop !1394

111:                                              ; preds = %108, %88
  %112 = load ptr, ptr @sel_region_bb_info, align 8
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 9
  %114 = load i32, ptr %113, align 8, !tbaa !827
  %115 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %112, i32 noundef %114) #22
  %116 = load ptr, ptr %115, align 8, !tbaa !1382
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6187, ptr noundef nonnull @.str.1) #23
  br label %119

119:                                              ; preds = %111, %118
  tail call fastcc void @delete_and_free_basic_block(ptr noundef nonnull %90) #22
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 5
  %121 = load ptr, ptr %120, align 8, !tbaa !869
  %122 = icmp eq ptr %121, %92
  br i1 %122, label %123, label %147

123:                                              ; preds = %119
  %124 = load ptr, ptr @cfun, align 8, !tbaa !701
  %125 = getelementptr inbounds %struct.function, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !801
  %127 = load ptr, ptr %126, align 8, !tbaa !1344
  %128 = icmp eq ptr %92, %127
  br i1 %128, label %147, label %129

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !706
  %132 = getelementptr inbounds %struct.rtl_bb_info, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !806
  %134 = tail call zeroext i8 @jump_leads_only_to_bb_p(ptr noundef %133, ptr noundef nonnull %94) #22, !range !726
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %147, label %136

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !840
  %139 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %138, i32 noundef 0) #22
  %140 = tail call ptr @redirect_edge_and_branch(ptr noundef %139, ptr noundef nonnull %94) #23
  %141 = load ptr, ptr %130, align 8, !tbaa !706
  %142 = getelementptr inbounds %struct.rtl_bb_info, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !806
  %144 = tail call ptr @bb_note(ptr noundef nonnull %92) #23
  %145 = icmp eq ptr %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  tail call void @free_data_sets(ptr noundef nonnull %92) #22
  br label %147

147:                                              ; preds = %136, %146, %129, %123, %119
  %148 = add nuw nsw i32 %89, 1
  %149 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %66, i32 noundef %148, ptr noundef nonnull %1) #22, !range !820
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %88, !llvm.loop !1395

151:                                              ; preds = %147, %84, %87
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %2) #22
  br label %163

152:                                              ; preds = %77
  %153 = icmp eq ptr %66, null
  %154 = load ptr, ptr @current_loop_nest, align 8, !tbaa !701
  br i1 %153, label %155, label %159

155:                                              ; preds = %152
  %156 = tail call fastcc ptr @loop_outer(ptr noundef %154) #22
  %157 = getelementptr inbounds %struct.loop, ptr %156, i64 0, i32 10
  %158 = load ptr, ptr %157, align 8, !tbaa !1391
  br label %159

159:                                              ; preds = %152, %155
  %160 = phi ptr [ %158, %155 ], [ %66, %152 ]
  %161 = tail call fastcc ptr @loop_outer(ptr noundef %154) #22
  %162 = getelementptr inbounds %struct.loop, ptr %161, i64 0, i32 10
  store ptr %160, ptr %162, align 8, !tbaa !1391
  br label %163

163:                                              ; preds = %159, %151
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @finish_region_bb_info() unnamed_addr #10 !prof !784 !PGOFuncName !1396 {
  tail call fastcc void @VEC_sel_region_bb_info_def_heap_free() #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @sel_insn_has_single_succ_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !1397 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.succ_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #21
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %4, ptr noundef nonnull %3, ptr noundef %0, i32 noundef %1) #22
  %5 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %0) #22
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7, !prof !1398

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
define dso_local void @free_succs_info(ptr noundef %0) local_unnamed_addr #0 !prof !1399 {
  %2 = load i32, ptr @succs_info_pool.2, align 8, !tbaa !1400
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %9, !prof !1402

4:                                                ; preds = %1
  %5 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !1403
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr inbounds %struct.succs_info, ptr %5, i64 %6
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %11, label %9, !prof !1402

9:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4514, ptr noundef nonnull @.str.1) #23
  %10 = load i32, ptr @succs_info_pool.2, align 8, !tbaa !1400
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi i32 [ %2, %4 ], [ %10, %9 ]
  %13 = add nsw i32 %12, -1
  store i32 %13, ptr @succs_info_pool.2, align 8, !tbaa !1400
  %14 = getelementptr inbounds %struct.succs_info, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1404
  %16 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %15) #22
  tail call fastcc void @VEC_rtx_base_block_remove(ptr noundef %15, i32 noundef %16) #22
  %17 = getelementptr inbounds %struct.succs_info, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !1406
  %19 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %18) #22
  tail call fastcc void @VEC_rtx_base_block_remove(ptr noundef %18, i32 noundef %19) #22
  %20 = getelementptr inbounds %struct.succs_info, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !1407
  %22 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %21) #22
  tail call fastcc void @VEC_int_base_block_remove(ptr noundef %21, i32 noundef %22) #22
  %23 = getelementptr inbounds %struct.succs_info, ptr %0, i64 0, i32 4
  store i32 0, ptr %23, align 8, !tbaa !1408
  %24 = getelementptr inbounds %struct.succs_info, ptr %0, i64 0, i32 6
  store i32 0, ptr %24, align 8, !tbaa !1409
  %25 = getelementptr inbounds %struct.succs_info, ptr %0, i64 0, i32 5
  store i32 0, ptr %25, align 4, !tbaa !1410
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_base_block_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !prof !1411 !PGOFuncName !1412 {
  %3 = load i32, ptr %0, align 8, !tbaa !883
  %4 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2
  %5 = sub i32 %3, %1
  store i32 %5, ptr %0, align 8, !tbaa !883
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = zext i32 %5 to i64
  %9 = shl nuw nsw i64 %8, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %7, i64 %9, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !1411 !PGOFuncName !1413 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1414

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !883
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_block_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !prof !1399 !PGOFuncName !1415 {
  %3 = load i32, ptr %0, align 4, !tbaa !1416
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2
  %5 = sub i32 %3, %1
  store i32 %5, ptr %0, align 4, !tbaa !1416
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds i32, ptr %4, i64 %6
  %8 = zext i32 %5 to i64
  %9 = shl nuw nsw i64 %8, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %4, ptr nonnull align 4 %7, i64 %9, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !1399 !PGOFuncName !1418 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1419

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !1416
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @compute_succs_info(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #0 !prof !1399 {
  %3 = alloca %struct.succ_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = tail call fastcc ptr @alloc_succs_info() #22
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %3, ptr noundef nonnull %4, ptr noundef %0, i32 noundef 7) #22
  %6 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %0) #22
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %51, label %8, !prof !822

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.succ_iterator, ptr %3, i64 0, i32 6
  %10 = and i16 %1, -9
  %11 = getelementptr inbounds %struct.succ_iterator, ptr %3, i64 0, i32 1
  %12 = getelementptr inbounds %struct.succs_info, ptr %5, i64 0, i32 3
  %13 = getelementptr inbounds %struct.succs_info, ptr %5, i64 0, i32 4
  %14 = getelementptr inbounds %struct.succs_info, ptr %5, i64 0, i32 5
  br label %15

15:                                               ; preds = %8, %45
  %16 = load i16, ptr %9, align 2, !tbaa !798
  %17 = and i16 %10, %16
  %18 = icmp eq i16 %17, 0
  %19 = load ptr, ptr %4, align 8, !tbaa !701
  br i1 %18, label %34, label %20, !prof !841

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.succs_info, ptr %5, i64 0, i32 1
  tail call fastcc void @VEC_rtx_heap_safe_push(ptr noundef nonnull %21, ptr noundef %19) #22
  %22 = load i8, ptr %3, align 8, !tbaa !809
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24, !prof !843

24:                                               ; preds = %20
  %25 = load ptr, ptr %11, align 8, !tbaa !823
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 8
  %27 = load i32, ptr %26, align 4, !tbaa !872
  br label %28

28:                                               ; preds = %20, %24
  %29 = phi i32 [ %27, %24 ], [ 10000, %20 ]
  %30 = getelementptr inbounds %struct.succs_info, ptr %5, i64 0, i32 2
  %31 = getelementptr inbounds %struct.succs_info, ptr %5, i64 0, i32 6
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull %30, i32 noundef %29) #22
  %32 = load i32, ptr %31, align 8, !tbaa !1409
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %31, align 8, !tbaa !1409
  br label %36

34:                                               ; preds = %15
  tail call fastcc void @VEC_rtx_heap_safe_push(ptr noundef nonnull %12, ptr noundef %19) #22
  %35 = load i8, ptr %3, align 8, !tbaa !809
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi i8 [ %35, %34 ], [ %22, %28 ]
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %45, label %39, !prof !829

39:                                               ; preds = %36
  %40 = load ptr, ptr %11, align 8, !tbaa !823
  %41 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !872
  %43 = load i32, ptr %13, align 8, !tbaa !1408
  %44 = add nsw i32 %43, %42
  br label %45

45:                                               ; preds = %36, %39
  %46 = phi i32 [ %44, %39 ], [ 10000, %36 ]
  store i32 %46, ptr %13, align 8, !tbaa !1408
  %47 = load i32, ptr %14, align 4, !tbaa !1410
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %14, align 4, !tbaa !1410
  call fastcc void @_succ_iter_next(ptr noundef nonnull %3) #22
  %49 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %0) #22
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %15, !prof !830, !llvm.loop !1420

51:                                               ; preds = %45, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_succs_info() unnamed_addr #0 !prof !1399 !PGOFuncName !1421 {
  %1 = load i32, ptr @succs_info_pool.2, align 8, !tbaa !1400
  %2 = load i32, ptr @succs_info_pool.3, align 8, !tbaa !1422
  %3 = icmp eq i32 %1, %2
  %4 = add nsw i32 %1, 1
  br i1 %3, label %5, label %24, !prof !1423

5:                                                ; preds = %0
  store i32 %4, ptr @succs_info_pool.3, align 8, !tbaa !1422
  %6 = load i32, ptr @succs_info_pool.1, align 8, !tbaa !1424
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %11, label %8, !prof !1425

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4496, ptr noundef nonnull @.str.1) #23
  %9 = load i32, ptr @succs_info_pool.2, align 8, !tbaa !1400
  %10 = add nsw i32 %9, 1
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i32 [ %10, %8 ], [ %4, %5 ]
  store i32 %12, ptr @succs_info_pool.2, align 8, !tbaa !1400
  %13 = tail call fastcc ptr @VEC_rtx_heap_alloc() #22
  %14 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !1403
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds %struct.succs_info, ptr %14, i64 %15, i32 1
  store ptr %13, ptr %16, align 8, !tbaa !1404
  %17 = tail call fastcc ptr @VEC_rtx_heap_alloc() #22
  %18 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !1403
  %19 = getelementptr inbounds %struct.succs_info, ptr %18, i64 %15, i32 3
  store ptr %17, ptr %19, align 8, !tbaa !1406
  %20 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef 10) #22
  %21 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !1403
  %22 = getelementptr inbounds %struct.succs_info, ptr %21, i64 %15, i32 2
  store ptr %20, ptr %22, align 8, !tbaa !1407
  %23 = load i32, ptr @succs_info_pool.2, align 8, !tbaa !1400
  br label %26

24:                                               ; preds = %0
  store i32 %4, ptr @succs_info_pool.2, align 8, !tbaa !1400
  %25 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !1403
  br label %26

26:                                               ; preds = %24, %11
  %27 = phi i32 [ %4, %24 ], [ %23, %11 ]
  %28 = phi ptr [ %25, %24 ], [ %21, %11 ]
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds %struct.succs_info, ptr %28, i64 %29
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !837 !PGOFuncName !1426 {
  tail call fastcc void @VEC_rtx_heap_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !701
  tail call fastcc void @VEC_rtx_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1164 !PGOFuncName !1427 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !701
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @bb_ends_ebb_p(ptr noundef %0) local_unnamed_addr #0 !prof !757 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = tail call fastcc ptr @bb_next_bb(ptr noundef %0) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %5 = load ptr, ptr @cfun, align 8, !tbaa !701
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !801
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !803
  %10 = icmp eq ptr %4, %9
  br i1 %10, label %52, label %11, !prof !1428

11:                                               ; preds = %1
  %12 = load ptr, ptr @forced_ebb_heads, align 8, !tbaa !701
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !827
  %15 = tail call i32 @bitmap_bit_p(ptr noundef %12, i32 noundef %14) #23
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %52, !prof !1429

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !706
  %20 = load ptr, ptr %19, align 8, !tbaa !940
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 12
  br i1 %23, label %24, label %27, !prof !1430

24:                                               ; preds = %17
  %25 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %4) #22, !range !726
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %52, label %27, !prof !1431

27:                                               ; preds = %24, %17
  %28 = tail call zeroext i8 @in_current_region_p(ptr noundef nonnull %4) #22, !range !726
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %52, label %30, !prof !1432

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %32 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %31) #22
  store i32 0, ptr %3, align 8, !tbaa.struct !812
  %33 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %32, ptr %33, align 8, !tbaa.struct !813
  %34 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %32, ptr noundef nonnull %2) #22, !range !726
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %52, label %36, !prof !1291

36:                                               ; preds = %30, %47
  %37 = load ptr, ptr %2, align 8, !tbaa !701
  %38 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !1283
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42, !prof !1433

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !824
  %45 = icmp eq ptr %44, %4
  br i1 %45, label %52, label %46, !prof !1434

46:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4665, ptr noundef nonnull @.str.1) #23
  br label %52

47:                                               ; preds = %36
  call fastcc void @ei_next(ptr noundef nonnull %3) #22
  %48 = load i32, ptr %3, align 8
  %49 = load ptr, ptr %33, align 8
  %50 = call fastcc zeroext i8 @ei_cond(i32 %48, ptr %49, ptr noundef nonnull %2) #22, !range !726
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %36, !prof !1435, !llvm.loop !1436

52:                                               ; preds = %47, %30, %46, %42, %27, %1, %11, %24
  %53 = phi i8 [ 1, %24 ], [ 1, %11 ], [ 1, %1 ], [ 1, %27 ], [ 0, %42 ], [ 0, %46 ], [ 1, %30 ], [ 1, %47 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret i8 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bb_next_bb(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1437 !PGOFuncName !1438 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !840
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #22
  switch i32 %4, label %22 [
    i32 0, label %5
    i32 1, label %8
    i32 2, label %10
  ], !prof !1439

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !1276
  br label %25

8:                                                ; preds = %1
  %9 = tail call fastcc ptr @single_succ(ptr noundef nonnull %0) #22
  br label %25

10:                                               ; preds = %1
  %11 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %3, i32 noundef 0) #22
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !1283
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !1440

16:                                               ; preds = %10
  %17 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %3, i32 noundef 1) #22
  br label %18

18:                                               ; preds = %10, %16
  %19 = phi ptr [ %17, %16 ], [ %11, %10 ]
  %20 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !824
  br label %25

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !1276
  br label %25

25:                                               ; preds = %22, %18, %8, %5
  %26 = phi ptr [ %24, %22 ], [ %21, %18 ], [ %9, %8 ], [ %7, %5 ]
  ret ptr %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !1441 !PGOFuncName !1442 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1272
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #8 !prof !1443 !PGOFuncName !1444 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1445 !PGOFuncName !1446 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #22, !range !726
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1447

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #22
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !701
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !1448 !PGOFuncName !1449 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !1450

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #22
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #22
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !1451

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !1452
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !1452
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @in_same_ebb_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !875 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !706
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !706
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %16, label %8, !prof !1453

8:                                                ; preds = %2, %12
  %9 = phi ptr [ %13, %12 ], [ %4, %2 ]
  %10 = tail call zeroext i8 @bb_ends_ebb_p(ptr noundef %9) #22, !range !726
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16, !prof !877

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @bb_next_bb(ptr noundef %9) #22
  %14 = load ptr, ptr %5, align 8, !tbaa !706
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %8, !prof !1454

16:                                               ; preds = %12, %8, %2
  %17 = phi i8 [ 1, %2 ], [ 0, %8 ], [ 1, %12 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clear_outdated_rtx_info(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !714 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !706
  %4 = load ptr, ptr %3, align 8, !tbaa !706
  %5 = icmp eq ptr %4, null
  br i1 %5, label %47, label %6

6:                                                ; preds = %1, %43
  %7 = phi ptr [ %45, %43 ], [ %4, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !706
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !806
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !706
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
  %24 = load i32, ptr %23, align 8, !tbaa !706
  %25 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %22, i32 noundef %24) #22
  %26 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %21, i32 noundef %25) #22
  %27 = getelementptr inbounds %struct._sel_insn_data, ptr %26, i64 0, i32 13
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, -5
  store i8 %29, ptr %27, align 4
  %30 = load i32, ptr %23, align 8, !tbaa !706
  %31 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %22, i32 noundef %30) #22
  %32 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %21, i32 noundef %31) #22
  %33 = getelementptr inbounds %struct._expr, ptr %32, i64 0, i32 5
  store i32 0, ptr %33, align 8, !tbaa !1278
  %34 = load i32, ptr %23, align 8, !tbaa !706
  %35 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %22, i32 noundef %34) #22
  %36 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %21, i32 noundef %35) #22
  %37 = getelementptr inbounds %struct._expr, ptr %36, i64 0, i32 4
  store i32 0, ptr %37, align 4, !tbaa !1455
  %38 = load i32, ptr %23, align 8, !tbaa !706
  %39 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %22, i32 noundef %38) #22
  %40 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %21, i32 noundef %39) #22
  %41 = getelementptr inbounds %struct._sel_insn_data, ptr %40, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !1179
  tail call void @htab_empty(ptr noundef %42) #23
  br label %43

43:                                               ; preds = %14, %19
  %44 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !706
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %6, !llvm.loop !1456

47:                                               ; preds = %6, %43, %1
  ret void
}

; Function Attrs: optsize
declare void @htab_empty(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @free_bb_note_pool() local_unnamed_addr #10 !prof !901 {
  tail call fastcc void @VEC_rtx_heap_free(ptr noundef nonnull @bb_note_pool) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_rtx_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !1457 !PGOFuncName !1458 {
  %2 = load ptr, ptr %0, align 8, !tbaa !701
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1459

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @alloc_sched_pools() local_unnamed_addr #0 !prof !901 {
  %1 = load ptr, ptr @compiler_params, align 8, !tbaa !701
  %2 = getelementptr inbounds %struct.param_info, ptr %1, i64 85, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !1460
  %4 = add nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 48) #23
  store ptr %6, ptr @succs_info_pool.0, align 8, !tbaa !1403
  store i32 %4, ptr @succs_info_pool.1, align 8, !tbaa !1424
  store i32 -1, ptr @succs_info_pool.2, align 8, !tbaa !1400
  store i32 -1, ptr @succs_info_pool.3, align 8, !tbaa !1422
  %7 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.2, i64 noundef 112, i64 noundef 500) #23
  store ptr %7, ptr @sched_lists_pool, align 8, !tbaa !701
  ret void
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_sched_pools() local_unnamed_addr #0 !prof !901 {
  %1 = load ptr, ptr @sched_lists_pool, align 8, !tbaa !701
  tail call void @free_alloc_pool(ptr noundef %1) #23
  %2 = load i32, ptr @succs_info_pool.2, align 8, !tbaa !1400
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %5, label %4, !prof !902

4:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4809, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %0, %4
  %6 = load i32, ptr @succs_info_pool.3, align 8, !tbaa !1422
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %20, !prof !1462

8:                                                ; preds = %5, %8
  %9 = phi i64 [ %16, %8 ], [ 0, %5 ]
  %10 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !1403
  %11 = getelementptr inbounds %struct.succs_info, ptr %10, i64 %9, i32 1
  tail call fastcc void @VEC_rtx_heap_free(ptr noundef nonnull %11) #22
  %12 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !1403
  %13 = getelementptr inbounds %struct.succs_info, ptr %12, i64 %9, i32 3
  tail call fastcc void @VEC_rtx_heap_free(ptr noundef nonnull %13) #22
  %14 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !1403
  %15 = getelementptr inbounds %struct.succs_info, ptr %14, i64 %9, i32 2
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %15) #22
  %16 = add nuw nsw i64 %9, 1
  %17 = load i32, ptr @succs_info_pool.3, align 8, !tbaa !1422
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %8, label %20, !prof !1463, !llvm.loop !1464

20:                                               ; preds = %8, %5
  %21 = load ptr, ptr @succs_info_pool.0, align 8, !tbaa !1403
  tail call void @free(ptr noundef %21) #22
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !1465 !PGOFuncName !1466 {
  %2 = load ptr, ptr %0, align 8, !tbaa !701
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1467

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_remove_empty_bb(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !714 {
  %4 = alloca %struct.edge_iterator, align 8
  %5 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %0) #22, !range !726
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
  %12 = load ptr, ptr %11, align 8, !tbaa !869
  %13 = load ptr, ptr %0, align 8, !tbaa !1272
  %14 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %13) #22
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %13, i32 noundef 0) #22
  %18 = load ptr, ptr %17, align 8, !tbaa !839
  %19 = icmp eq ptr %18, %12
  br i1 %19, label %57, label %20

20:                                               ; preds = %16, %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5066, ptr noundef nonnull @.str.1) #23
  br label %57

21:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %22 = tail call fastcc ptr @bb_next_bb(ptr noundef %0) #22
  %23 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #22
  store i32 0, ptr %4, align 8, !tbaa.struct !812
  %24 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %23, ptr %24, align 8, !tbaa.struct !813
  %25 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %23) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %21, %40
  %28 = phi ptr [ %41, %40 ], [ %23, %21 ]
  %29 = phi i32 [ %42, %40 ], [ 0, %21 ]
  %30 = phi ptr [ %43, %40 ], [ %25, %21 ]
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !1283
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = tail call zeroext i8 @sel_redirect_edge_and_branch(ptr noundef nonnull %30, ptr noundef %22) #22, !range !726
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
  br i1 %44, label %45, label %27, !llvm.loop !1468

45:                                               ; preds = %40, %21
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !840
  %48 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %47) #22
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %47, i32 noundef 0) #22
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !824
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
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !714 !PGOFuncName !1469 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #22, !range !726
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #22
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_bb_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1361 !PGOFuncName !1470 {
  %3 = tail call zeroext i8 @in_current_region_p(ptr noundef %0) #22, !range !726
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !1284

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5042, ptr noundef nonnull @.str.1) #23
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr @sel_region_bb_info, align 8
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !827
  %10 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %7, i32 noundef %9) #22
  %11 = load ptr, ptr %10, align 8, !tbaa !1382
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !827
  %14 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %7, i32 noundef %13) #22
  tail call void @concat_note_lists(ptr noundef %11, ptr noundef nonnull %14) #23
  %15 = load ptr, ptr @sel_region_bb_info, align 8
  %16 = load i32, ptr %8, align 8, !tbaa !827
  %17 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %15, i32 noundef %16) #22
  store ptr null, ptr %17, align 8, !tbaa !1382
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_empty_bb(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1361 !PGOFuncName !1471 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !706
  %5 = load ptr, ptr %4, align 8, !tbaa !940
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !806
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9, !prof !1282

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
  br i1 %15, label %85, label %16, !prof !1284

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !1272
  %18 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %17) #22
  switch i32 %18, label %24 [
    i32 0, label %19
    i32 1, label %26
  ], !prof !1472

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !840
  %22 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %21) #22
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %85, label %44

24:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5117, ptr noundef nonnull @.str.1) #23
  %25 = load ptr, ptr %0, align 8, !tbaa !1272
  br label %26

26:                                               ; preds = %16, %24
  %27 = phi ptr [ %17, %16 ], [ %25, %24 ]
  %28 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %27, i32 noundef 0) #22
  %29 = load ptr, ptr %28, align 8, !tbaa !839
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !869
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %33, label %38, !prof !1282

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.edge_def, ptr %28, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !1283
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40, !prof !1284

38:                                               ; preds = %33, %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5121, ptr noundef nonnull @.str.1) #23
  %39 = load ptr, ptr %30, align 8, !tbaa !869
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %29, %33 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !840
  br label %44

44:                                               ; preds = %19, %40
  %45 = phi ptr [ %43, %40 ], [ %21, %19 ]
  %46 = phi ptr [ %41, %40 ], [ null, %19 ]
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %48 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %45) #22
  switch i32 %48, label %49 [
    i32 0, label %55
    i32 1, label %50
  ], !prof !1472

49:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5132, ptr noundef nonnull @.str.1) #23
  br label %50

50:                                               ; preds = %44, %49
  %51 = load ptr, ptr %47, align 8, !tbaa !840
  %52 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %51, i32 noundef 0) #22
  %53 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !824
  br label %55

55:                                               ; preds = %44, %50
  %56 = phi ptr [ %54, %50 ], [ null, %44 ]
  %57 = load ptr, ptr %0, align 8, !tbaa !1272
  %58 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %57) #22
  %59 = icmp ne i32 %58, 0
  %60 = icmp ne ptr %56, null
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %72, !prof !1473

62:                                               ; preds = %55
  %63 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %57, i32 noundef 0) #22
  %64 = getelementptr inbounds %struct.edge_def, ptr %63, i64 0, i32 7
  %65 = load i32, ptr %64, align 8, !tbaa !1283
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68, !prof !1284

68:                                               ; preds = %62
  %69 = tail call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %63, ptr noundef nonnull %56) #23
  br label %72

70:                                               ; preds = %62
  %71 = tail call zeroext i8 @sel_redirect_edge_and_branch(ptr noundef nonnull %63, ptr noundef nonnull %56) #22, !range !726
  br label %72

72:                                               ; preds = %68, %70, %55
  %73 = load ptr, ptr %47, align 8, !tbaa !840
  %74 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %73) #22
  %75 = icmp ne i32 %74, 0
  %76 = icmp ne ptr %46, null
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %78, label %85, !prof !1473

78:                                               ; preds = %72
  %79 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %73, i32 noundef 0) #22
  %80 = getelementptr inbounds %struct.edge_def, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !824
  %82 = tail call ptr @find_edge(ptr noundef nonnull %46, ptr noundef %81) #23
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85, !prof !1284

84:                                               ; preds = %78
  tail call void @redirect_edge_pred(ptr noundef nonnull %79, ptr noundef nonnull %46) #23
  br label %85

85:                                               ; preds = %72, %84, %78, %19, %14
  tail call fastcc void @sel_remove_bb(ptr noundef nonnull %0, i8 noundef zeroext %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sel_split_edge(ptr noundef %0) local_unnamed_addr #0 !prof !714 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !839
  %4 = tail call i32 @get_max_uid() #23
  %5 = tail call ptr @split_edge(ptr noundef nonnull %0) #23
  %6 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !786
  %7 = icmp ne i32 %6, 0
  %8 = load ptr, ptr @current_loop_nest, align 8
  %9 = icmp ne ptr %8, null
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %12 = load ptr, ptr @last_added_blocks, align 8
  %13 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %2) #22, !range !820
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  br label %18

18:                                               ; preds = %15, %36
  %19 = phi i32 [ 0, %15 ], [ %38, %36 ]
  %20 = phi ptr [ null, %15 ], [ %37, %36 ]
  %21 = load ptr, ptr %2, align 8, !tbaa !701
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !844
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = load ptr, ptr %16, align 8, !tbaa !824
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !844
  tail call void @add_bb_to_loop(ptr noundef nonnull %21, ptr noundef %28) #23
  %29 = icmp eq ptr %20, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, ptr %17, align 8, !tbaa !827
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !827
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5319, ptr noundef nonnull @.str.1) #23
  br label %36

36:                                               ; preds = %35, %30, %18
  %37 = phi ptr [ %20, %18 ], [ %21, %30 ], [ %21, %35 ]
  %38 = add nuw nsw i32 %19, 1
  %39 = load ptr, ptr @last_added_blocks, align 8
  %40 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %39, i32 noundef %38, ptr noundef nonnull %2) #22, !range !820
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %18, !llvm.loop !1474

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
  %52 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef nonnull %45) #22, !range !726
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
declare ptr @split_edge(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !714 !PGOFuncName !1475 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1212
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !701
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !701
  ret i32 %14
}

; Function Attrs: optsize
declare void @add_bb_to_loop(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_add_bb(ptr noundef %0) unnamed_addr #0 !prof !714 !PGOFuncName !1476 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !701
  tail call void @sched_init_luids(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #23
  tail call void @sched_init_bbs() #23
  %3 = load ptr, ptr @last_added_blocks, align 8, !tbaa !701
  tail call void @sel_init_bbs(ptr noundef %3, ptr noundef null) #22
  %4 = load ptr, ptr @last_added_blocks, align 8, !tbaa !701
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
  %11 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %2) #22, !range !820
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
  %21 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef nonnull %0) #22, !range !726
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load ptr, ptr @sel_global_bb_info, align 8
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !827
  %27 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %24, i32 noundef %26) #22
  %28 = load ptr, ptr %27, align 8, !tbaa !1352
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  tail call fastcc void @create_initial_data_sets(ptr noundef nonnull %0) #22
  br label %41

31:                                               ; preds = %10, %31
  %32 = phi i32 [ %34, %31 ], [ 0, %10 ]
  %33 = load ptr, ptr %2, align 8, !tbaa !701
  tail call fastcc void @add_block_to_current_region(ptr noundef %33) #22
  %34 = add nuw nsw i32 %32, 1
  %35 = load ptr, ptr @last_added_blocks, align 8
  %36 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %35, i32 noundef %34, ptr noundef nonnull %2) #22, !range !820
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %31, !llvm.loop !1477

38:                                               ; preds = %31
  %39 = icmp eq ptr %33, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %10, %38
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5012, ptr noundef nonnull @.str.1) #23
  unreachable

41:                                               ; preds = %38, %20, %23, %30
  %42 = phi ptr [ %0, %30 ], [ %0, %23 ], [ %0, %20 ], [ %33, %38 ]
  tail call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull @last_added_blocks) #22
  %43 = load ptr, ptr @containing_rgn, align 8, !tbaa !701
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !827
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %43, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !786
  tail call void @rgn_setup_region(i32 noundef %48) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_new_jump(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !714 !PGOFuncName !1478 {
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
declare ptr @compute_live(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sel_create_recovery_block(ptr noundef %0) local_unnamed_addr #0 !prof !714 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !701
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !706
  %5 = tail call zeroext i8 @sel_bb_end_p(ptr noundef %0) #22, !range !726
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %4) #22, !range !726
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5368, ptr noundef nonnull @.str.1) #23
  br label %11

11:                                               ; preds = %7, %10
  %12 = tail call fastcc ptr @single_succ(ptr noundef %4) #22
  br label %16

13:                                               ; preds = %1
  %14 = load ptr, ptr @sched_split_block, align 8, !tbaa !701
  %15 = tail call ptr %14(ptr noundef %4, ptr noundef nonnull %0) #23
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi ptr [ %12, %11 ], [ %15, %13 ]
  %18 = call ptr @sched_create_recovery_block(ptr noundef nonnull %2) #23
  %19 = load ptr, ptr %2, align 8, !tbaa !701
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr @cfun, align 8, !tbaa !701
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !801
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !803
  call fastcc void @copy_lv_set_from(ptr noundef nonnull %19, ptr noundef %26) #22
  br label %27

27:                                               ; preds = %21, %16
  %28 = call zeroext i8 @sel_bb_empty_p(ptr noundef %18) #22, !range !726
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5378, ptr noundef nonnull @.str.1) #23
  br label %31

31:                                               ; preds = %27, %30
  call void @sched_create_recovery_edges(ptr noundef %4, ptr noundef %18, ptr noundef %17) #23
  %32 = load ptr, ptr @cfun, align 8, !tbaa !701
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !1479
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !844
  call void @add_bb_to_loop(ptr noundef %18, ptr noundef %38) #23
  br label %39

39:                                               ; preds = %36, %31
  call fastcc void @sel_add_bb(ptr noundef %18) #22
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !706
  %42 = getelementptr inbounds %struct.rtl_bb_info, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !806
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
declare ptr @sched_create_recovery_block(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_lv_set_from(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !714 !PGOFuncName !1480 {
  %3 = load ptr, ptr @sel_global_bb_info, align 8
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !827
  %6 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %3, i32 noundef %5) #22
  %7 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %6, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !1349
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4104, ptr noundef nonnull @.str.1) #23
  %11 = load ptr, ptr @sel_global_bb_info, align 8
  %12 = load i32, ptr %4, align 8, !tbaa !827
  %13 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %11, i32 noundef %12) #22
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %6, %2 ], [ %13, %10 ]
  %16 = phi ptr [ %3, %2 ], [ %11, %10 ]
  %17 = load ptr, ptr %15, align 8, !tbaa !1352
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !827
  %20 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %16, i32 noundef %19) #22
  %21 = load ptr, ptr %20, align 8, !tbaa !1352
  tail call void @bitmap_copy(ptr noundef %17, ptr noundef %21) #23
  %22 = load ptr, ptr @sel_global_bb_info, align 8
  %23 = load i32, ptr %4, align 8, !tbaa !827
  %24 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %22, i32 noundef %23) #22
  %25 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %24, i64 0, i32 1
  store i8 1, ptr %25, align 8, !tbaa !1349
  ret void
}

; Function Attrs: optsize
declare void @sched_create_recovery_edges(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_merge_blocks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !714 {
  tail call void @sel_remove_empty_bb(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0) #22
  tail call void @merge_blocks(ptr noundef %0, ptr noundef %1) #23
  tail call fastcc void @change_loops_latches(ptr noundef %1, ptr noundef %0) #22
  ret void
}

; Function Attrs: optsize
declare void @merge_blocks(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @change_loops_latches(ptr noundef readnone %0, ptr noundef %1) unnamed_addr #0 !prof !714 !PGOFuncName !1481 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5203, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %2, %4
  %6 = load ptr, ptr @current_loop_nest, align 8, !tbaa !701
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %5, %24
  %9 = phi ptr [ %25, %24 ], [ %6, %5 ]
  %10 = tail call zeroext i8 @considered_for_pipelining_p(ptr noundef nonnull %9) #22, !range !726
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !1332
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load ptr, ptr @current_loop_nest, align 8, !tbaa !701
  %18 = icmp eq ptr %9, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5212, ptr noundef nonnull @.str.1) #23
  br label %20

20:                                               ; preds = %16, %19
  store ptr %1, ptr %13, align 8, !tbaa !1332
  %21 = tail call ptr @loop_latch_edge(ptr noundef nonnull %9) #23
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5214, ptr noundef nonnull @.str.1) #23
  br label %24

24:                                               ; preds = %23, %20, %8, %12
  %25 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %9) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %8, !llvm.loop !1482

27:                                               ; preds = %24, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_redirect_edge_and_branch_force(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !714 {
  %3 = load ptr, ptr %0, align 8, !tbaa !839
  %4 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %3) #22, !range !726
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5412, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !839
  %9 = tail call i32 @get_max_uid() #23
  %10 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %0, ptr noundef %1) #23
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @sel_add_bb(ptr noundef nonnull %10) #22
  br label %13

13:                                               ; preds = %12, %7
  %14 = load ptr, ptr @current_loop_nest, align 8, !tbaa !701
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
declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_register_cfg_hooks() local_unnamed_addr #0 !prof !784 {
  %1 = alloca %struct.cfg_hooks, align 8
  store ptr @sel_split_block, ptr @sched_split_block, align 8, !tbaa !701
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %1) #21
  call void @get_cfg_hooks(ptr dead_on_unwind nonnull writable sret(%struct.cfg_hooks) align 8 %1) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) @orig_cfg_hooks, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !tbaa.struct !1483
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) @sel_cfg_hooks, ptr noundef nonnull align 8 dereferenceable(232) @orig_cfg_hooks, i64 232, i1 false), !tbaa.struct !1483
  store ptr @sel_create_basic_block, ptr getelementptr inbounds (%struct.cfg_hooks, ptr @sel_cfg_hooks, i64 0, i32 3), align 8, !tbaa !1484
  call void @set_cfg_hooks(ptr noundef nonnull byval(%struct.cfg_hooks) align 8 @sel_cfg_hooks) #23
  store ptr @sel_init_only_bb, ptr @sched_init_only_bb, align 8, !tbaa !701
  store ptr @sel_split_block, ptr @sched_split_block, align 8, !tbaa !701
  store ptr @sel_create_empty_bb, ptr @sched_create_empty_bb, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @sel_split_block(ptr noundef %0, ptr noundef %1) #0 !prof !714 !PGOFuncName !1486 {
  %3 = tail call ptr @sched_split_block_1(ptr noundef %0, ptr noundef %1) #23
  tail call fastcc void @sel_add_bb(ptr noundef %3) #22
  tail call fastcc void @change_loops_latches(ptr noundef %0, ptr noundef %3) #22
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !706
  %6 = load ptr, ptr %5, align 8, !tbaa !706
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %10 = load ptr, ptr @s_i_d, align 8
  %11 = load ptr, ptr @sched_luids, align 8
  br label %12

12:                                               ; preds = %8, %32
  %13 = phi ptr [ %6, %8 ], [ %34, %32 ]
  %14 = load ptr, ptr %4, align 8, !tbaa !706
  %15 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !806
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !706
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %36, label %20

20:                                               ; preds = %12
  %21 = load i32, ptr %13, align 8
  %22 = and i32 %21, 65535
  %23 = add nsw i32 %22, -7
  %24 = icmp ult i32 %23, 4
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, ptr %9, align 8, !tbaa !827
  %27 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !706
  %29 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %11, i32 noundef %28) #22
  %30 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %10, i32 noundef %29) #22
  %31 = getelementptr inbounds %struct._expr, ptr %30, i64 0, i32 6
  store i32 %26, ptr %31, align 4, !tbaa !1487
  br label %32

32:                                               ; preds = %20, %25
  %33 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !706
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %12, !llvm.loop !1488

36:                                               ; preds = %12, %32, %2
  %37 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %0) #22, !range !726
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef nonnull %3) #22, !range !726
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
  %45 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef nonnull %3) #22, !range !726
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !701
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !827
  %51 = tail call i32 @bitmap_bit_p(ptr noundef %48, i32 noundef %50) #23
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !701
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !827
  %57 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %54, i32 noundef %56) #23
  br label %58

58:                                               ; preds = %53, %47, %44
  ret ptr %3
}

; Function Attrs: optsize
declare void @get_cfg_hooks(ptr dead_on_unwind writable sret(%struct.cfg_hooks) align 8) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @sel_create_basic_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !prof !714 !PGOFuncName !1489 {
  %4 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !786
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
  %14 = load ptr, ptr getelementptr inbounds (%struct.cfg_hooks, ptr @orig_cfg_hooks, i64 0, i32 3), align 8, !tbaa !1484
  %15 = tail call ptr %14(ptr noundef %0, ptr noundef %1, ptr noundef %2) #23
  br label %19

16:                                               ; preds = %10
  %17 = tail call ptr @create_basic_block_structure(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef %2) #23
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 2
  store ptr null, ptr %18, align 8, !tbaa !1490
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %15, %13 ], [ %17, %16 ]
  tail call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull @last_added_blocks, ptr noundef %20) #22
  ret ptr %20
}

; Function Attrs: optsize
declare void @set_cfg_hooks(ptr noundef byval(%struct.cfg_hooks) align 8) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sel_init_only_bb(ptr noundef %0, ptr noundef readnone %1) #0 !prof !714 !PGOFuncName !1491 {
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
define internal ptr @sel_create_empty_bb(ptr noundef %0) #0 !prof !714 !PGOFuncName !1492 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_unregister_cfg_hooks() local_unnamed_addr #0 !prof !784 {
  store ptr null, ptr @sched_create_empty_bb, align 8, !tbaa !701
  store ptr null, ptr @sched_split_block, align 8, !tbaa !701
  store ptr null, ptr @sched_init_only_bb, align 8, !tbaa !701
  tail call void @set_cfg_hooks(ptr noundef nonnull byval(%struct.cfg_hooks) align 8 @orig_cfg_hooks) #23
  ret void
}

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @emit_debug_insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @emit_jump_insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #4

; Function Attrs: optsize
declare void @sched_init_luids(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sched_extend_target() local_unnamed_addr #4

; Function Attrs: optsize
declare void @sched_deps_init(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 !prof !1493 !PGOFuncName !1494 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !706
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9, !prof !1495

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !706
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #23
  store i32 %8, ptr %2, align 8, !tbaa !706
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @vinsn_create(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !954 !PGOFuncName !1496 {
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 80) #23
  tail call fastcc void @vinsn_init(ptr noundef %3, ptr noundef %0, i8 noundef zeroext %1) #22
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @setup_nop_and_exit_insns() local_unnamed_addr #0 !prof !901 {
  %1 = load ptr, ptr @nop_pattern, align 8, !tbaa !701
  %2 = icmp eq ptr %1, null
  %3 = load ptr, ptr @exit_insn, align 8
  %4 = icmp eq ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %7, label %6, !prof !1497

6:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5609, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %0, %6
  %8 = tail call ptr @gen_nop() #23
  store ptr %8, ptr @nop_pattern, align 8, !tbaa !701
  tail call void @start_sequence() #23
  %9 = load ptr, ptr @nop_pattern, align 8, !tbaa !701
  %10 = tail call ptr @emit_insn(ptr noundef %9) #23
  %11 = tail call ptr @get_insns() #23
  store ptr %11, ptr @exit_insn, align 8, !tbaa !701
  tail call void @end_sequence() #23
  %12 = load ptr, ptr @cfun, align 8, !tbaa !701
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !801
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !803
  %17 = load ptr, ptr @exit_insn, align 8, !tbaa !701
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !706
  ret void
}

; Function Attrs: optsize
declare ptr @gen_nop() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @free_nop_and_exit_insns() local_unnamed_addr #15 !prof !901 {
  store ptr null, ptr @exit_insn, align 8, !tbaa !701
  store ptr null, ptr @nop_pattern, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @setup_nop_vinsn() local_unnamed_addr #0 !prof !784 {
  %1 = load ptr, ptr @exit_insn, align 8, !tbaa !701
  %2 = tail call fastcc ptr @vinsn_create(ptr noundef %1, i8 noundef zeroext 0) #22
  store ptr %2, ptr @nop_vinsn, align 8, !tbaa !701
  tail call void @vinsn_attach(ptr noundef %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_nop_vinsn() local_unnamed_addr #0 !prof !784 {
  %1 = load ptr, ptr @nop_vinsn, align 8, !tbaa !701
  %2 = getelementptr inbounds %struct.vinsn_def, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !945
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %7, label %5, !prof !792

5:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5640, ptr noundef nonnull @.str.1) #23
  %6 = load ptr, ptr @nop_vinsn, align 8, !tbaa !701
  br label %7

7:                                                ; preds = %0, %5
  %8 = phi ptr [ %1, %0 ], [ %6, %5 ]
  tail call void @vinsn_detach(ptr noundef %8) #22
  store ptr null, ptr @nop_vinsn, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_set_sched_flags() local_unnamed_addr #0 !prof !1498 {
  %1 = load ptr, ptr @spec_info, align 8, !tbaa !701
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3, !prof !1499

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 32), align 8, !tbaa !1500
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void %4(ptr noundef nonnull %1) #23
  br label %7

7:                                                ; preds = %6, %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_setup_sched_infos() local_unnamed_addr #0 !prof !1339 {
  tail call void @rgn_setup_common_sched_info() #23
  %1 = load ptr, ptr @common_sched_info, align 8, !tbaa !701
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @sel_common_sched_info, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @sel_common_sched_info, i8 0, i64 16, i1 false)
  store ptr @sel_estimate_number_of_insns, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @sel_common_sched_info, i64 0, i32 2), align 8, !tbaa !1501
  store ptr @sel_luid_for_non_insn, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @sel_common_sched_info, i64 0, i32 3), align 8, !tbaa !1503
  store i32 4, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @sel_common_sched_info, i64 0, i32 4), align 8, !tbaa !1504
  store ptr @sel_common_sched_info, ptr @common_sched_info, align 8, !tbaa !701
  store ptr @sched_sel_haifa_sched_info, ptr @current_sched_info, align 8, !tbaa !701
  %2 = tail call i32 @get_rgn_sched_max_insns_priority() #23
  %3 = load ptr, ptr @current_sched_info, align 8, !tbaa !701
  %4 = getelementptr inbounds %struct.haifa_sched_info, ptr %3, i64 0, i32 13
  store i32 %2, ptr %4, align 4, !tbaa !1505
  tail call void @sel_set_sched_flags() #22
  ret void
}

; Function Attrs: optsize
declare void @rgn_setup_common_sched_info() local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @sel_estimate_number_of_insns(ptr nocapture noundef readonly %0) #3 !prof !714 !PGOFuncName !1507 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !706
  %4 = load ptr, ptr %3, align 8, !tbaa !940
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !806
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !706
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !706
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
  %22 = load ptr, ptr %21, align 8, !tbaa !706
  %23 = icmp eq ptr %22, %8
  br i1 %23, label %24, label %12, !llvm.loop !1508

24:                                               ; preds = %12, %1
  %25 = phi i32 [ 0, %1 ], [ %20, %12 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sel_luid_for_non_insn(ptr nocapture noundef readonly %0) #0 !prof !1509 !PGOFuncName !1510 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65534
  %4 = icmp eq i32 %3, 12
  br i1 %4, label %6, label %5, !prof !1511

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3801, ptr noundef nonnull @.str.1) #23
  br label %6

6:                                                ; preds = %1, %5
  ret i32 -1
}

; Function Attrs: optsize
declare i32 @get_rgn_sched_max_insns_priority() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_region_from_loop_preheader(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !714 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !tbaa !786
  %4 = tail call fastcc i32 @sel_create_new_region() #22
  %5 = load ptr, ptr %0, align 8, !tbaa !701
  %6 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2) #22, !range !820
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
  %14 = load ptr, ptr %2, align 8, !tbaa !701
  call fastcc void @sel_add_block_to_region(ptr noundef %14, ptr noundef nonnull %3, i32 noundef %4) #22
  %15 = add i32 %11, 1
  %16 = load ptr, ptr %0, align 8, !tbaa !701
  %17 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %16, i32 noundef %15, ptr noundef nonnull %2) #22, !range !820
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %10, !llvm.loop !1512

19:                                               ; preds = %13, %1
  tail call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %0) #22
  %20 = load ptr, ptr %0, align 8, !tbaa !701
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @sel_create_new_region() unnamed_addr #17 !prof !714 !PGOFuncName !1513 {
  %1 = load i32, ptr @nr_regions, align 4, !tbaa !786
  %2 = load ptr, ptr @rgn_table, align 8, !tbaa !701
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.region, ptr %2, i64 %3
  store i32 0, ptr %4, align 4, !tbaa !1327
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %0
  %7 = getelementptr %struct.region, ptr %4, i64 -1
  %8 = getelementptr %struct.region, ptr %4, i64 -1, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !1514
  %10 = load i32, ptr %7, align 4, !tbaa !1327
  %11 = add nsw i32 %10, %9
  br label %12

12:                                               ; preds = %0, %6
  %13 = phi i32 [ %11, %6 ], [ 0, %0 ]
  %14 = getelementptr inbounds %struct.region, ptr %2, i64 %3, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr %struct.region, ptr %4, i64 1, i32 1
  store i32 %13, ptr %15, align 4, !tbaa !1514
  %16 = load i32, ptr @nr_regions, align 4, !tbaa !786
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @nr_regions, align 4, !tbaa !786
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sel_add_block_to_region(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #17 !prof !714 !PGOFuncName !1515 {
  %4 = load ptr, ptr @rgn_table, align 8, !tbaa !701
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds %struct.region, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !1327
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 4, !tbaa !1327
  %9 = getelementptr inbounds %struct.region, ptr %4, i64 %5, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, -2
  store i8 %11, ptr %9, align 4
  %12 = load ptr, ptr @rgn_table, align 8, !tbaa !701
  %13 = getelementptr inbounds %struct.region, ptr %12, i64 %5, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, -3
  store i8 %15, ptr %13, align 4
  %16 = load ptr, ptr @containing_rgn, align 8, !tbaa !701
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !827
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %16, i64 %19
  store i32 %2, ptr %20, align 4, !tbaa !786
  %21 = load i32, ptr %1, align 4, !tbaa !786
  %22 = load ptr, ptr @block_to_bb, align 8, !tbaa !701
  %23 = load i32, ptr %17, align 8, !tbaa !827
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %22, i64 %24
  store i32 %21, ptr %25, align 4, !tbaa !786
  %26 = load i32, ptr %17, align 8, !tbaa !827
  %27 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !701
  %28 = load ptr, ptr @rgn_table, align 8, !tbaa !701
  %29 = getelementptr inbounds %struct.region, ptr %28, i64 %5, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !1514
  %31 = add nsw i32 %21, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %27, i64 %32
  store i32 %26, ptr %33, align 4, !tbaa !786
  %34 = load i32, ptr %1, align 4, !tbaa !786
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %1, align 4, !tbaa !786
  %36 = getelementptr inbounds %struct.region, ptr %28, i64 %5
  %37 = load i32, ptr %29, align 4, !tbaa !1514
  %38 = load i32, ptr %36, align 4, !tbaa !1327
  %39 = add nsw i32 %38, %37
  %40 = getelementptr %struct.region, ptr %36, i64 1, i32 1
  store i32 %39, ptr %40, align 4, !tbaa !1514
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_init_pipelining() local_unnamed_addr #0 !prof !714 {
  tail call void @loop_optimizer_init(i32 noundef 141) #23
  store ptr null, ptr @current_loop_nest, align 8, !tbaa !701
  %1 = load ptr, ptr @cfun, align 8, !tbaa !701
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !801
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !1340
  %6 = tail call ptr @sbitmap_alloc(i32 noundef %5) #23
  store ptr %6, ptr @bbs_in_loop_rgns, align 8, !tbaa !701
  tail call void @sbitmap_zero(ptr noundef %6) #23
  tail call fastcc void @recompute_rev_top_order() #22
  ret void
}

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recompute_rev_top_order() unnamed_addr #0 !prof !714 !PGOFuncName !1516 {
  %1 = load ptr, ptr @rev_top_order_index, align 8, !tbaa !701
  %2 = icmp eq ptr %1, null
  %3 = load ptr, ptr @cfun, align 8, !tbaa !701
  br i1 %2, label %4, label %9

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !801
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !1340
  br label %16

9:                                                ; preds = %0
  %10 = load i32, ptr @rev_top_order_index_len, align 4, !tbaa !786
  %11 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !801
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !1340
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %8, %4 ], [ %14, %9 ]
  store i32 %17, ptr @rev_top_order_index_len, align 4, !tbaa !786
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 2
  %20 = tail call ptr @xrealloc(ptr noundef %1, i64 noundef %19) #23
  store ptr %20, ptr @rev_top_order_index, align 8, !tbaa !701
  %21 = load ptr, ptr @cfun, align 8, !tbaa !701
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !801
  br label %24

24:                                               ; preds = %16, %9
  %25 = phi ptr [ %23, %16 ], [ %12, %9 ]
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !1325
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 2
  %30 = tail call ptr @xmalloc(i64 noundef %29) #23
  %31 = tail call i32 @post_order_compute(ptr noundef %30, i8 noundef zeroext 1, i8 noundef zeroext 0) #23
  %32 = load ptr, ptr @cfun, align 8, !tbaa !701
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !801
  %35 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !1325
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
  %43 = load i32, ptr @rev_top_order_index_len, align 4, !tbaa !786
  br label %44

44:                                               ; preds = %41, %53
  %45 = phi i32 [ %43, %41 ], [ %55, %53 ]
  %46 = phi i64 [ 0, %41 ], [ %60, %53 ]
  %47 = getelementptr inbounds i32, ptr %30, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !786
  %49 = icmp slt i32 %48, %45
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4720, ptr noundef nonnull @.str.1) #23
  %51 = load i32, ptr @rev_top_order_index_len, align 4, !tbaa !786
  %52 = load i32, ptr %47, align 4, !tbaa !786
  br label %53

53:                                               ; preds = %44, %50
  %54 = phi i32 [ %48, %44 ], [ %52, %50 ]
  %55 = phi i32 [ %45, %44 ], [ %51, %50 ]
  %56 = load ptr, ptr @rev_top_order_index, align 8, !tbaa !701
  %57 = sext i32 %54 to i64
  %58 = getelementptr inbounds i32, ptr %56, i64 %57
  %59 = trunc i64 %46 to i32
  store i32 %59, ptr %58, align 4, !tbaa !786
  %60 = add nuw nsw i64 %46, 1
  %61 = icmp eq i64 %60, %42
  br i1 %61, label %62, label %44, !llvm.loop !1517

62:                                               ; preds = %53, %39
  tail call void @free(ptr noundef %30) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_loop_nest_for_rgn(i32 noundef %0) local_unnamed_addr #13 !prof !714 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !714 !PGOFuncName !1518 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1519
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !714 !PGOFuncName !1521 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !701
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @considered_for_pipelining_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !714 {
  %2 = tail call fastcc i32 @loop_depth(ptr noundef %0) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !1391
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @containing_rgn, align 8, !tbaa !701
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !1332
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !827
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %9, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !786
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !714 !PGOFuncName !1522 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !1523
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #22
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_finish_pipelining() local_unnamed_addr #0 !prof !714 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #22
  %3 = load ptr, ptr %2, align 8, !tbaa !701
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 10
  store ptr null, ptr %7, align 8, !tbaa !1391
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %8 = load ptr, ptr %2, align 8, !tbaa !701
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !1524

10:                                               ; preds = %5, %0
  tail call void @loop_optimizer_finalize() #23
  tail call fastcc void @VEC_loop_p_heap_free() #22
  %11 = load ptr, ptr @rev_top_order_index, align 8, !tbaa !701
  tail call void @free(ptr noundef %11) #22
  store ptr null, ptr @rev_top_order_index, align 8, !tbaa !701
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 !prof !714 !PGOFuncName !1525 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !1526
  %6 = load ptr, ptr @cfun, align 8, !tbaa !701
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !1479
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store ptr null, ptr %0, align 8, !tbaa !1528
  store ptr null, ptr %1, align 8, !tbaa !701
  br label %104

11:                                               ; preds = %3
  %12 = tail call fastcc i32 @number_of_loops() #22
  %13 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %12) #22
  store ptr %13, ptr %0, align 8, !tbaa !1528
  %14 = and i32 %2, 1
  %15 = xor i32 %14, 1
  %16 = and i32 %2, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr @cfun, align 8, !tbaa !701
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !1479
  %22 = getelementptr inbounds %struct.loops, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !1529
  %24 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %23, i32 noundef 0, ptr noundef nonnull %4) #22, !range !820
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %103, label %26

26:                                               ; preds = %18, %41
  %27 = phi ptr [ %42, %41 ], [ %19, %18 ]
  %28 = phi i32 [ %43, %41 ], [ 0, %18 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !701
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.loop, ptr %29, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !1531
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, ptr %29, align 8, !tbaa !1532
  %37 = icmp slt i32 %36, %15
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %0, align 8, !tbaa !1528
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %39, i32 noundef %36) #22
  %40 = load ptr, ptr @cfun, align 8, !tbaa !701
  br label %41

41:                                               ; preds = %26, %31, %35, %38
  %42 = phi ptr [ %27, %26 ], [ %27, %31 ], [ %27, %35 ], [ %40, %38 ]
  %43 = add i32 %28, 1
  %44 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !1479
  %46 = getelementptr inbounds %struct.loops, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !1529
  %48 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %47, i32 noundef %43, ptr noundef nonnull %4) #22, !range !820
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %103, label %26, !llvm.loop !1533

50:                                               ; preds = %11
  %51 = and i32 %2, 2
  %52 = icmp eq i32 %51, 0
  %53 = load ptr, ptr @cfun, align 8, !tbaa !701
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !1479
  %56 = getelementptr inbounds %struct.loops, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !1534
  br i1 %52, label %83, label %58

58:                                               ; preds = %50, %58
  %59 = phi ptr [ %61, %58 ], [ %57, %50 ]
  %60 = getelementptr inbounds %struct.loop, ptr %59, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !1531
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %58, !llvm.loop !1535

63:                                               ; preds = %58, %81
  %64 = phi ptr [ %82, %81 ], [ %59, %58 ]
  %65 = load i32, ptr %64, align 8, !tbaa !1532
  %66 = icmp slt i32 %65, %15
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %0, align 8, !tbaa !1528
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %68, i32 noundef %65) #22
  br label %69

69:                                               ; preds = %67, %63
  %70 = getelementptr inbounds %struct.loop, ptr %64, i64 0, i32 9
  %71 = load ptr, ptr %70, align 8, !tbaa !1536
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %69, %73
  %74 = phi ptr [ %76, %73 ], [ %71, %69 ]
  %75 = getelementptr inbounds %struct.loop, ptr %74, i64 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !1531
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %73, !llvm.loop !1537

78:                                               ; preds = %69
  %79 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %64) #22
  %80 = icmp eq ptr %79, null
  br i1 %80, label %103, label %81

81:                                               ; preds = %73, %78
  %82 = phi ptr [ %79, %78 ], [ %74, %73 ]
  br label %63

83:                                               ; preds = %50, %93
  %84 = phi ptr [ %94, %93 ], [ %57, %50 ]
  %85 = load i32, ptr %84, align 8, !tbaa !1532
  %86 = icmp slt i32 %85, %15
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %0, align 8, !tbaa !1528
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %88, i32 noundef %85) #22
  br label %89

89:                                               ; preds = %87, %83
  %90 = getelementptr inbounds %struct.loop, ptr %84, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !1531
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %95, %89
  %94 = phi ptr [ %91, %89 ], [ %98, %95 ]
  br label %83

95:                                               ; preds = %89, %100
  %96 = phi ptr [ %101, %100 ], [ %84, %89 ]
  %97 = getelementptr inbounds %struct.loop, ptr %96, i64 0, i32 9
  %98 = load ptr, ptr %97, align 8, !tbaa !1536
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %93

100:                                              ; preds = %95
  %101 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %96) #22
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %95, !llvm.loop !1538

103:                                              ; preds = %41, %78, %100, %18
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #22
  br label %104

104:                                              ; preds = %103, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !714 !PGOFuncName !1539 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !1526
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !1528
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #22, !range !820
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !1526
  %13 = load i32, ptr %3, align 4, !tbaa !786
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #22
  store ptr %14, ptr %1, align 8, !tbaa !701
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !1540

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #22
  store ptr null, ptr %1, align 8, !tbaa !701
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_loop_p_heap_free() unnamed_addr #10 !prof !714 !PGOFuncName !1541 {
  %1 = load ptr, ptr @loop_nests, align 8, !tbaa !701
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #22
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @loop_nests, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_find_rgns() local_unnamed_addr #0 !prof !714 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.loop_iterator, align 8
  tail call void @sel_init_pipelining() #22
  tail call void @extend_regions() #23
  %3 = load ptr, ptr @cfun, align 8, !tbaa !701
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !1479
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  %8 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !786
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 4, i32 2
  call fastcc void @fel_init(ptr noundef nonnull %2, ptr noundef nonnull %1, i32 noundef %10) #22
  %11 = load ptr, ptr %1, align 8, !tbaa !701
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %7, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %7 ]
  tail call fastcc void @make_regions_from_loop_nest(ptr noundef nonnull %14) #22
  call fastcc void @fel_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #22
  %15 = load ptr, ptr %1, align 8, !tbaa !701
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %13, !llvm.loop !1542

17:                                               ; preds = %13, %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  br label %18

18:                                               ; preds = %17, %0
  tail call fastcc void @make_regions_from_the_rest() #22
  %19 = load ptr, ptr @bbs_in_loop_rgns, align 8, !tbaa !701
  %20 = load ptr, ptr %19, align 8, !tbaa !1543
  tail call void @free(ptr noundef %20) #22
  tail call void @free(ptr noundef %19) #22
  store ptr null, ptr @bbs_in_loop_rgns, align 8, !tbaa !701
  ret void
}

; Function Attrs: optsize
declare void @extend_regions() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_regions_from_loop_nest(ptr noundef %0) unnamed_addr #0 !prof !714 !PGOFuncName !1545 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !701
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @bbs_in_loop_rgns, align 8, !tbaa !701
  br label %11

7:                                                ; preds = %11
  %8 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !701
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11, !llvm.loop !1546

11:                                               ; preds = %5, %7
  %12 = phi ptr [ %3, %5 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !1320
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !827
  %17 = lshr i32 %16, 6
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds %struct.simple_bitmap_def, ptr %6, i64 0, i32 3, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !1012
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
define internal fastcc void @make_regions_from_the_rest() unnamed_addr #0 !prof !714 !PGOFuncName !1547 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %4 = load i32, ptr @nr_regions, align 4, !tbaa !786
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr @rgn_table, align 8, !tbaa !701
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds %struct.region, ptr %7, i64 %8, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !1514
  br label %11

11:                                               ; preds = %0, %6
  %12 = phi i32 [ %10, %6 ], [ 0, %0 ]
  store i32 %12, ptr %1, align 4, !tbaa !786
  %13 = load ptr, ptr @cfun, align 8, !tbaa !701
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !801
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !1340
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 2
  %20 = tail call ptr @xmalloc(i64 noundef %19) #23
  %21 = load ptr, ptr @cfun, align 8, !tbaa !701
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !801
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !1340
  %26 = sext i32 %25 to i64
  %27 = tail call ptr @xcalloc(i64 noundef %26, i64 noundef 4) #23
  %28 = load ptr, ptr @cfun, align 8, !tbaa !701
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !801
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !1340
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %11, %34
  %35 = phi i64 [ %37, %34 ], [ 0, %11 ]
  %36 = getelementptr inbounds i32, ptr %20, i64 %35
  store i32 -1, ptr %36, align 4, !tbaa !786
  %37 = add nuw nsw i64 %35, 1
  %38 = load i32, ptr %31, align 8, !tbaa !1340
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %34, label %41, !llvm.loop !1548

41:                                               ; preds = %34, %11
  %42 = load ptr, ptr %30, align 8, !tbaa !1344
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !803
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !1276
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
  %54 = load ptr, ptr %53, align 8, !tbaa !844
  %55 = icmp eq ptr %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %54, align 8, !tbaa !1532
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 13
  %61 = load i32, ptr %60, align 8, !tbaa !1549
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !827
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %20, i64 %67
  store i32 %57, ptr %68, align 4, !tbaa !786
  br label %69

69:                                               ; preds = %51, %56, %59, %64
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !1276
  %72 = icmp eq ptr %71, %44
  br i1 %72, label %48, label %51, !llvm.loop !1550

73:                                               ; preds = %49, %123
  %74 = phi ptr [ %46, %49 ], [ %125, %123 ]
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !827
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %27, i64 %77
  store i32 0, ptr %78, align 4, !tbaa !786
  %79 = load ptr, ptr @bbs_in_loop_rgns, align 8, !tbaa !701
  %80 = load i32, ptr %75, align 8, !tbaa !827
  %81 = lshr i32 %80, 6
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds %struct.simple_bitmap_def, ptr %79, i64 0, i32 3, i64 %82
  %84 = load i64, ptr %83, align 8, !tbaa !1012
  %85 = and i32 %80, 63
  %86 = zext nneg i32 %85 to i64
  %87 = shl nuw i64 1, %86
  %88 = and i64 %87, %84
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %73
  %91 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %74) #22
  store i32 0, ptr %3, align 8, !tbaa.struct !812
  store ptr %91, ptr %50, align 8, !tbaa.struct !813
  %92 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %91, ptr noundef nonnull %2) #22, !range !726
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %123, label %94

94:                                               ; preds = %90, %115
  %95 = load ptr, ptr @bbs_in_loop_rgns, align 8, !tbaa !701
  %96 = load ptr, ptr %2, align 8, !tbaa !701
  %97 = load ptr, ptr %96, align 8, !tbaa !839
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %97, i64 0, i32 9
  %99 = load i32, ptr %98, align 8, !tbaa !827
  %100 = lshr i32 %99, 6
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds %struct.simple_bitmap_def, ptr %95, i64 0, i32 3, i64 %101
  %103 = load i64, ptr %102, align 8, !tbaa !1012
  %104 = and i32 %99, 63
  %105 = zext nneg i32 %104 to i64
  %106 = shl nuw i64 1, %105
  %107 = and i64 %106, %103
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %94
  %110 = load i32, ptr %75, align 8, !tbaa !827
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, ptr %27, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !786
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr %112, align 4, !tbaa !786
  br label %115

115:                                              ; preds = %94, %109
  call fastcc void @ei_next(ptr noundef nonnull %3) #22
  %116 = load i32, ptr %3, align 8
  %117 = load ptr, ptr %50, align 8
  %118 = call fastcc zeroext i8 @ei_cond(i32 %116, ptr %117, ptr noundef nonnull %2) #22, !range !726
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %123, label %94, !llvm.loop !1551

120:                                              ; preds = %73
  %121 = sext i32 %80 to i64
  %122 = getelementptr inbounds i32, ptr %27, i64 %121
  store i32 -1, ptr %122, align 4, !tbaa !786
  br label %123

123:                                              ; preds = %115, %90, %120
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 6
  %125 = load ptr, ptr %124, align 8, !tbaa !1276
  %126 = load ptr, ptr @cfun, align 8, !tbaa !701
  %127 = getelementptr inbounds %struct.function, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !801
  %129 = getelementptr inbounds %struct.control_flow_graph, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !803
  %131 = icmp eq ptr %125, %130
  br i1 %131, label %132, label %73, !llvm.loop !1552

132:                                              ; preds = %123, %41, %48
  %133 = load ptr, ptr @bbs_in_loop_rgns, align 8, !tbaa !701
  call void @extend_rgns(ptr noundef %27, ptr noundef nonnull %1, ptr noundef %133, ptr noundef %20) #23
  %134 = load ptr, ptr @cfun, align 8, !tbaa !701
  %135 = getelementptr inbounds %struct.function, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !801
  %137 = load ptr, ptr %136, align 8, !tbaa !1344
  %138 = getelementptr inbounds %struct.basic_block_def, ptr %137, i64 0, i32 6
  %139 = load ptr, ptr %138, align 8, !tbaa !1276
  %140 = getelementptr inbounds %struct.control_flow_graph, ptr %136, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !803
  %142 = icmp eq ptr %139, %141
  br i1 %142, label %197, label %143

143:                                              ; preds = %132, %188
  %144 = phi ptr [ %189, %188 ], [ %134, %132 ]
  %145 = phi ptr [ %191, %188 ], [ %139, %132 ]
  %146 = getelementptr inbounds %struct.basic_block_def, ptr %145, i64 0, i32 9
  %147 = load i32, ptr %146, align 8, !tbaa !827
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, ptr %27, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !786
  %151 = icmp sgt i32 %150, -1
  br i1 %151, label %152, label %188

152:                                              ; preds = %143
  %153 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !701
  %154 = load i32, ptr %1, align 4, !tbaa !786
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, ptr %153, i64 %155
  store i32 %147, ptr %156, align 4, !tbaa !786
  %157 = load ptr, ptr @rgn_table, align 8, !tbaa !701
  %158 = load i32, ptr @nr_regions, align 4, !tbaa !786
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.region, ptr %157, i64 %159
  store i32 1, ptr %160, align 4, !tbaa !1327
  %161 = load i32, ptr %1, align 4, !tbaa !786
  %162 = add nsw i32 %161, 1
  store i32 %162, ptr %1, align 4, !tbaa !786
  %163 = load i32, ptr @nr_regions, align 4, !tbaa !786
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.region, ptr %157, i64 %164, i32 1
  store i32 %161, ptr %165, align 4, !tbaa !1514
  %166 = load i32, ptr @nr_regions, align 4, !tbaa !786
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.region, ptr %157, i64 %167, i32 2
  %169 = load i8, ptr %168, align 4
  %170 = and i8 %169, -2
  store i8 %170, ptr %168, align 4
  %171 = load ptr, ptr @rgn_table, align 8, !tbaa !701
  %172 = load i32, ptr @nr_regions, align 4, !tbaa !786
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.region, ptr %171, i64 %173, i32 2
  %175 = load i8, ptr %174, align 4
  %176 = and i8 %175, -3
  store i8 %176, ptr %174, align 4
  %177 = load i32, ptr @nr_regions, align 4, !tbaa !786
  %178 = add nsw i32 %177, 1
  store i32 %178, ptr @nr_regions, align 4, !tbaa !786
  %179 = load ptr, ptr @containing_rgn, align 8, !tbaa !701
  %180 = load i32, ptr %146, align 8, !tbaa !827
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, ptr %179, i64 %181
  store i32 %177, ptr %182, align 4, !tbaa !786
  %183 = load ptr, ptr @block_to_bb, align 8, !tbaa !701
  %184 = load i32, ptr %146, align 8, !tbaa !827
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, ptr %183, i64 %185
  store i32 0, ptr %186, align 4, !tbaa !786
  %187 = load ptr, ptr @cfun, align 8, !tbaa !701
  br label %188

188:                                              ; preds = %143, %152
  %189 = phi ptr [ %144, %143 ], [ %187, %152 ]
  %190 = getelementptr inbounds %struct.basic_block_def, ptr %145, i64 0, i32 6
  %191 = load ptr, ptr %190, align 8, !tbaa !1276
  %192 = getelementptr inbounds %struct.function, ptr %189, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !801
  %194 = getelementptr inbounds %struct.control_flow_graph, ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !803
  %196 = icmp eq ptr %191, %195
  br i1 %196, label %197, label %143, !llvm.loop !1553

197:                                              ; preds = %188, %132
  call void @free(ptr noundef %27) #22
  call void @free(ptr noundef %20) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_add_loop_preheaders() local_unnamed_addr #0 !prof !714 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = load ptr, ptr @current_loop_nest, align 8, !tbaa !701
  %4 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !1391
  %6 = icmp eq ptr %5, inttoptr (i64 1 to ptr)
  %7 = select i1 %6, ptr null, ptr %5
  store ptr %7, ptr %2, align 8, !tbaa !701
  %8 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %1) #22, !range !820
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %0, %10
  %11 = phi i32 [ %13, %10 ], [ 0, %0 ]
  %12 = load ptr, ptr %1, align 8, !tbaa !701
  tail call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull @last_added_blocks, ptr noundef %12) #22
  tail call fastcc void @sel_add_bb(ptr noundef %12) #22
  %13 = add nuw nsw i32 %11, 1
  %14 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %7, i32 noundef %13, ptr noundef nonnull %1) #22, !range !820
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %10, !llvm.loop !1554

16:                                               ; preds = %10, %0
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !714 !PGOFuncName !1555 {
  tail call fastcc void @VEC_basic_block_heap_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !701
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !714 !PGOFuncName !1556 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !1523
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

; Function Attrs: optsize
declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @_list_alloc() unnamed_addr #0 !prof !721 !PGOFuncName !1557 {
  %1 = load ptr, ptr @sched_lists_pool, align 8, !tbaa !701
  %2 = tail call ptr @pool_alloc(ptr noundef %1) #23
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fence_clear(ptr nocapture noundef %0) unnamed_addr #0 !prof !756 !PGOFuncName !1558 {
  %2 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !849
  %4 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !852
  %6 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !853
  %8 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 4
  tail call fastcc void @_list_clear(ptr noundef nonnull %8) #22
  %9 = icmp ne ptr %3, null
  %10 = icmp ne ptr %5, null
  %11 = select i1 %9, i1 %10, i1 false
  %12 = icmp ne ptr %7, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %21, label %14, !prof !1559

14:                                               ; preds = %1
  %15 = icmp eq ptr %3, null
  %16 = icmp eq ptr %5, null
  %17 = select i1 %15, i1 %16, i1 false
  %18 = icmp eq ptr %7, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 579, ptr noundef nonnull @.str.1) #23
  br i1 %9, label %21, label %22, !prof !1197

21:                                               ; preds = %1, %20
  tail call void @free(ptr noundef nonnull %3) #22
  br label %22

22:                                               ; preds = %21, %20
  br i1 %10, label %23, label %24, !prof !1197

23:                                               ; preds = %22
  tail call fastcc void @delete_deps_context(ptr noundef nonnull %5) #22
  br label %24

24:                                               ; preds = %23, %22
  br i1 %12, label %25, label %26, !prof !1197

25:                                               ; preds = %24
  tail call fastcc void @delete_target_context(ptr noundef nonnull %7) #22
  br label %26

26:                                               ; preds = %14, %25, %24
  %27 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 7
  tail call fastcc void @VEC_rtx_gc_free(ptr noundef nonnull %27) #22
  %28 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !857
  tail call void @free(ptr noundef %29) #22
  store ptr null, ptr %28, align 8, !tbaa !857
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_deps_context(ptr noundef %0) unnamed_addr #0 !prof !756 !PGOFuncName !1560 {
  tail call fastcc void @clear_deps_context(ptr noundef %0) #22
  tail call void @free(ptr noundef %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_target_context(ptr noundef %0) unnamed_addr #0 !prof !757 !PGOFuncName !1561 {
  tail call fastcc void @clear_target_context(ptr noundef %0) #22
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 27), align 8, !tbaa !1562
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !773

4:                                                ; preds = %1
  tail call void %2(ptr noundef %0) #23
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_free(ptr nocapture noundef %0) unnamed_addr #0 !prof !756 !PGOFuncName !1563 {
  %2 = load ptr, ptr %0, align 8, !tbaa !701
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !848

4:                                                ; preds = %1
  tail call void @ggc_free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_deps_context(ptr noundef %0) unnamed_addr #0 !prof !756 !PGOFuncName !1564 {
  tail call void @free_deps(ptr noundef %0) #23
  ret void
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @haifa_note_reg_set(i32 noundef) #4

; Function Attrs: optsize
declare void @haifa_note_reg_clobber(i32 noundef) #4

; Function Attrs: optsize
declare void @haifa_note_reg_use(i32 noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !714 !PGOFuncName !1565 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1314
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !701
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !701
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !714 !PGOFuncName !1566 {
  %2 = load ptr, ptr %0, align 8, !tbaa !701
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_all_loop_exits(ptr noundef %0) unnamed_addr #0 !prof !714 !PGOFuncName !1567 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %5 = tail call fastcc zeroext i8 @sel_bb_empty_or_nop_p(ptr noundef %0) #22, !range !726
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1, %16
  %8 = phi ptr [ %12, %16 ], [ %0, %1 ]
  %9 = tail call zeroext i8 @in_current_region_p(ptr noundef %8) #22, !range !726
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @single_succ(ptr noundef %8) #22
  %13 = tail call zeroext i8 @in_current_region_p(ptr noundef %12) #22, !range !726
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1127, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %11, %15
  %17 = tail call fastcc zeroext i8 @sel_bb_empty_or_nop_p(ptr noundef %12) #22, !range !726
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %7, !llvm.loop !1568

19:                                               ; preds = %7, %16, %1
  %20 = phi ptr [ %0, %1 ], [ %12, %16 ], [ %8, %7 ]
  %21 = tail call fastcc zeroext i8 @inner_loop_header_p(ptr noundef %20) #22, !range !726
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %81, label %23

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !844
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
  br i1 %35, label %30, label %37, !llvm.loop !1569

36:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1144, ptr noundef nonnull @.str.1) #23
  br label %37

37:                                               ; preds = %30, %36
  %38 = phi ptr [ null, %36 ], [ %31, %30 ]
  %39 = tail call fastcc ptr @get_loop_exit_edges_unique_dests(ptr noundef %38) #22
  store ptr %39, ptr %2, align 8, !tbaa !701
  %40 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %39, i32 noundef 0, ptr noundef nonnull %3) #22, !range !820
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %79, label %42

42:                                               ; preds = %37, %73
  %43 = phi ptr [ %74, %73 ], [ %39, %37 ]
  %44 = phi i32 [ %76, %73 ], [ 0, %37 ]
  %45 = load ptr, ptr %3, align 8, !tbaa !701
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !824
  %48 = tail call zeroext i8 @in_current_region_p(ptr noundef %47) #22, !range !726
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = tail call fastcc zeroext i8 @inner_loop_header_p(ptr noundef %47) #22, !range !726
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %46, align 8, !tbaa !824
  br label %55

55:                                               ; preds = %53, %42
  %56 = phi ptr [ %54, %53 ], [ %47, %42 ]
  %57 = tail call fastcc ptr @get_all_loop_exits(ptr noundef %56) #22
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %60 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef nonnull %57, i32 noundef 0, ptr noundef nonnull %4) #22, !range !820
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %59, %62
  %63 = phi i32 [ %65, %62 ], [ 0, %59 ]
  %64 = load ptr, ptr %4, align 8, !tbaa !701
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %2, ptr noundef %64) #22
  %65 = add nuw nsw i32 %63, 1
  %66 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef nonnull %57, i32 noundef %65, ptr noundef nonnull %4) #22, !range !820
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %62, !llvm.loop !1570

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
  %77 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %74, i32 noundef %76, ptr noundef nonnull %3) #22, !range !820
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %42, !llvm.loop !1571

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
define internal fastcc zeroext i8 @sel_bb_empty_or_nop_p(ptr noundef %0) unnamed_addr #0 !prof !837 !PGOFuncName !1572 {
  %2 = tail call ptr @sel_bb_head(ptr noundef %0) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4, !prof !829

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !706
  %7 = load ptr, ptr @nop_pattern, align 8, !tbaa !701
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %20, !prof !1573

9:                                                ; preds = %4
  %10 = load ptr, ptr @cfun, align 8, !tbaa !701
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !801
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !803
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %20, label %16, !prof !1574

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
define internal fastcc noundef zeroext i8 @inner_loop_header_p(ptr noundef %0) unnamed_addr #0 !prof !714 !PGOFuncName !1575 {
  %2 = load ptr, ptr @current_loop_nest, align 8, !tbaa !701
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !701
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !801
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !803
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %28, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !844
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.loop, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !1320
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %2, ptr noundef nonnull %0) #23
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %13) #22
  %24 = load ptr, ptr @current_loop_nest, align 8, !tbaa !701
  %25 = tail call fastcc i32 @loop_depth(ptr noundef %24) #22
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1052, ptr noundef nonnull @.str.1) #23
  br label %28

28:                                               ; preds = %15, %19, %27, %22, %11, %4, %1
  %29 = phi i8 [ 0, %1 ], [ 0, %4 ], [ 0, %11 ], [ 1, %22 ], [ 1, %27 ], [ 0, %19 ], [ 0, %15 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_loop_exit_edges_unique_dests(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !714 !PGOFuncName !1576 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !701
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !1332
  %6 = load ptr, ptr @cfun, align 8, !tbaa !701
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !801
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !803
  %11 = icmp eq ptr %5, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !1479
  %15 = load i32, ptr %14, align 8, !tbaa !1577
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1067, ptr noundef nonnull @.str.1) #23
  br label %19

19:                                               ; preds = %12, %18
  %20 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 18
  %21 = load ptr, ptr %20, align 8, !tbaa !1578
  %22 = getelementptr inbounds %struct.loop_exit, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !1579
  %24 = load ptr, ptr %23, align 8, !tbaa !1581
  %25 = icmp eq ptr %24, null
  br i1 %25, label %53, label %26

26:                                               ; preds = %19, %46
  %27 = phi ptr [ %49, %46 ], [ %24, %19 ]
  %28 = phi ptr [ %48, %46 ], [ %23, %19 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %29 = load ptr, ptr %2, align 8
  %30 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %29, i32 noundef 0, ptr noundef nonnull %3) #22, !range !820
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !824
  br label %39

35:                                               ; preds = %39
  %36 = add nuw nsw i32 %40, 1
  %37 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %29, i32 noundef %36, ptr noundef nonnull %3) #22, !range !820
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39, !llvm.loop !1582

39:                                               ; preds = %32, %35
  %40 = phi i32 [ 0, %32 ], [ %36, %35 ]
  %41 = load ptr, ptr %3, align 8, !tbaa !701
  %42 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !824
  %44 = icmp eq ptr %43, %34
  br i1 %44, label %46, label %35

45:                                               ; preds = %35, %26
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %27) #22
  br label %46

46:                                               ; preds = %39, %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  %47 = getelementptr inbounds %struct.loop_exit, ptr %28, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !1579
  %49 = load ptr, ptr %48, align 8, !tbaa !1581
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %26, !llvm.loop !1583

51:                                               ; preds = %46
  %52 = load ptr, ptr %2, align 8, !tbaa !701
  br label %53

53:                                               ; preds = %51, %19
  %54 = phi ptr [ %52, %51 ], [ null, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !714 !PGOFuncName !1584 {
  tail call fastcc void @VEC_edge_heap_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !701
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_ordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !prof !714 !PGOFuncName !1585 {
  %3 = load i32, ptr %0, align 8, !tbaa !1314
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = add i32 %3, -1
  store i32 %7, ptr %0, align 8, !tbaa !1314
  %8 = sub i32 %7, %1
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %6, i64 %10, i1 false)
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !714 !PGOFuncName !1586 {
  %2 = load ptr, ptr %0, align 8, !tbaa !701
  %3 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !701
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !714 !PGOFuncName !1587 {
  %3 = load i32, ptr %0, align 8, !tbaa !1314
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1314
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !701
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !714 !PGOFuncName !1588 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1589
  %6 = load i32, ptr %0, align 8, !tbaa !1314
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @state_alloc() unnamed_addr #0 !prof !756 !PGOFuncName !1590 {
  %1 = load i64, ptr @dfa_state_size, align 8, !tbaa !1012
  %2 = tail call ptr @xmalloc(i64 noundef %1) #23
  ret ptr %2
}

; Function Attrs: optsize
declare void @state_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @advance_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_deps_context() unnamed_addr #0 !prof !756 !PGOFuncName !1591 {
  %1 = tail call ptr @xmalloc(i64 noundef 184) #23
  ret ptr %1
}

; Function Attrs: optsize
declare void @init_deps(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @state_free(ptr nocapture noundef %0) unnamed_addr #18 !prof !714 !PGOFuncName !1592 {
  tail call void @free(ptr noundef %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reset_deps_context(ptr noundef %0) unnamed_addr #0 !prof !714 !PGOFuncName !1593 {
  tail call fastcc void @clear_deps_context(ptr noundef %0) #22
  tail call void @init_deps(ptr noundef %0, i8 noundef zeroext 0) #23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: optsize
declare ptr @find_fallthru_edge(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @state_copy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !prof !875 !PGOFuncName !1594 {
  %3 = load i64, ptr @dfa_state_size, align 8, !tbaa !1012
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %3, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_deps_context(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !875 !PGOFuncName !1595 {
  tail call void @init_deps(ptr noundef %0, i8 noundef zeroext 0) #23
  tail call void @deps_join(ptr noundef %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: optsize
declare void @deps_join(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_target_context(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !875 !PGOFuncName !1596 {
  %3 = tail call ptr @create_target_context(i8 noundef zeroext 0) #22
  tail call void @set_target_context(ptr noundef %1) #22
  tail call fastcc void @init_target_context(ptr noundef %0, i8 noundef zeroext 0) #22
  tail call void @set_target_context(ptr noundef %3) #22
  tail call fastcc void @delete_target_context(ptr noundef %3) #22
  ret void
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @insn_default_latency(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_expr_history_def_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !990 !PGOFuncName !1597 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !992

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1057
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_expr_history_def_base_address(ptr noundef readnone %0) unnamed_addr #8 !prof !1598 !PGOFuncName !1599 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_expr_history_def_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !1600
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_expr_history_def_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1027 !PGOFuncName !1601 {
  %2 = load ptr, ptr %0, align 8, !tbaa !701
  %3 = tail call fastcc i32 @VEC_expr_history_def_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1028

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 32) #23
  store ptr %6, ptr %0, align 8, !tbaa !701
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_expr_history_def_base_quick_insert(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #6 !prof !1027 !PGOFuncName !1602 {
  %4 = load i32, ptr %0, align 8, !tbaa !1057
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %struct.VEC_expr_history_def_base, ptr %0, i64 0, i32 2, i64 %5
  %7 = getelementptr inbounds %struct.expr_history_def_1, ptr %6, i64 1
  %8 = add i32 %4, 1
  store i32 %8, ptr %0, align 8, !tbaa !1057
  %9 = sub i32 %4, %1
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %6, i64 %11, i1 false)
  %12 = icmp eq ptr %2, null
  br i1 %12, label %14, label %13, !prof !1603

13:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !1604
  br label %14

14:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_expr_history_def_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !1027 !PGOFuncName !1605 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1028

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_expr_history_def_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1606
  %6 = load i32, ptr %0, align 8, !tbaa !1057
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ds_get_max_dep_weak(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ds_get_speculation_types(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_expr_history_def_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !1607 !PGOFuncName !1608 {
  %2 = load ptr, ptr %0, align 8, !tbaa !701
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1609

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_list_iter_remove_nofree(ptr nocapture noundef %0) unnamed_addr #0 !prof !714 !PGOFuncName !1610 {
  %2 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !1099
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !1098
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 456, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %5, %9
  %11 = load ptr, ptr %0, align 8, !tbaa !724
  tail call fastcc void @_list_remove_nofree(ptr noundef %11) #22
  store i8 1, ptr %2, align 1, !tbaa !1099
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_list_remove_nofree(ptr nocapture noundef %0) unnamed_addr #11 !prof !714 !PGOFuncName !1611 {
  %2 = load ptr, ptr %0, align 8, !tbaa !701
  %3 = load ptr, ptr %2, align 8, !tbaa !707
  store ptr %3, ptr %0, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @invalidate_av_set(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1184 !PGOFuncName !1612 {
  %2 = load ptr, ptr @sel_region_bb_info, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !827
  %5 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %2, i32 noundef %4) #22
  %6 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !932
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %13, !prof !1186

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1365
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !1186

13:                                               ; preds = %9, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4156, ptr noundef nonnull @.str.1) #23
  %14 = load ptr, ptr @sel_region_bb_info, align 8
  %15 = load i32, ptr %3, align 8, !tbaa !827
  %16 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %14, i32 noundef %15) #22
  br label %17

17:                                               ; preds = %9, %13
  %18 = phi ptr [ %5, %9 ], [ %16, %13 ]
  %19 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %18, i64 0, i32 2
  store i32 -1, ptr %19, align 8, !tbaa !932
  ret void
}

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @prologue_epilogue_contains(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_haifa_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #8 !prof !975 !PGOFuncName !1613 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_first_time_insn_data(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1614 !PGOFuncName !1615 {
  %2 = tail call fastcc zeroext i8 @first_time_insn_init(ptr noundef %0) #22, !range !726
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !1616

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2756, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call ptr @get_regset_from_pool() #22
  %7 = load ptr, ptr @s_i_d, align 8
  %8 = load ptr, ptr @sched_luids, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !706
  %11 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %8, i32 noundef %10) #22
  %12 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %7, i32 noundef %11) #22
  %13 = getelementptr inbounds %struct._sel_insn_data, ptr %12, i64 0, i32 3
  store ptr %6, ptr %13, align 8, !tbaa !1183
  %14 = load i32, ptr %9, align 8, !tbaa !706
  %15 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %8, i32 noundef %14) #22
  %16 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %7, i32 noundef %15) #22
  %17 = getelementptr inbounds %struct._sel_insn_data, ptr %16, i64 0, i32 13
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, -2
  store i8 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !706
  %22 = load ptr, ptr @nop_pattern, align 8, !tbaa !701
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %50, label %24, !prof !1617

24:                                               ; preds = %5
  %25 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  %26 = load ptr, ptr @s_i_d, align 8
  %27 = load ptr, ptr @sched_luids, align 8
  %28 = load i32, ptr %9, align 8, !tbaa !706
  %29 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %27, i32 noundef %28) #22
  %30 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %26, i32 noundef %29) #22
  %31 = getelementptr inbounds %struct._sel_insn_data, ptr %30, i64 0, i32 4
  store ptr %25, ptr %31, align 8, !tbaa !1176
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  %33 = load ptr, ptr @s_i_d, align 8
  %34 = load ptr, ptr @sched_luids, align 8
  %35 = load i32, ptr %9, align 8, !tbaa !706
  %36 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %34, i32 noundef %35) #22
  %37 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %33, i32 noundef %36) #22
  %38 = getelementptr inbounds %struct._sel_insn_data, ptr %37, i64 0, i32 5
  store ptr %32, ptr %38, align 8, !tbaa !1178
  %39 = tail call ptr @htab_create(i64 noundef 16, ptr noundef nonnull @hash_transformed_insns, ptr noundef nonnull @eq_transformed_insns, ptr noundef nonnull @free_transformed_insns) #23
  %40 = load ptr, ptr @s_i_d, align 8
  %41 = load ptr, ptr @sched_luids, align 8
  %42 = load i32, ptr %9, align 8, !tbaa !706
  %43 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %41, i32 noundef %42) #22
  %44 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %40, i32 noundef %43) #22
  %45 = getelementptr inbounds %struct._sel_insn_data, ptr %44, i64 0, i32 7
  store ptr %39, ptr %45, align 8, !tbaa !1179
  %46 = load i32, ptr %9, align 8, !tbaa !706
  %47 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %41, i32 noundef %46) #22
  %48 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %40, i32 noundef %47) #22
  %49 = getelementptr inbounds %struct._sel_insn_data, ptr %48, i64 0, i32 8
  tail call void @init_deps(ptr noundef nonnull %49, i8 noundef zeroext 1) #23
  br label %50

50:                                               ; preds = %24, %5
  ret void
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @hash_transformed_insns(ptr nocapture noundef readonly %0) #13 !prof !714 !PGOFuncName !1618 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1619
  %3 = getelementptr inbounds %struct.vinsn_def, ptr %2, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !1621
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @eq_transformed_insns(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !1622 !PGOFuncName !1623 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1619
  %4 = load ptr, ptr %3, align 8, !tbaa !935
  %5 = load ptr, ptr %1, align 8, !tbaa !1619
  %6 = load ptr, ptr %5, align 8, !tbaa !935
  %7 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !706
  %9 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !706
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %18, label %12, !prof !1624

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !706
  %15 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !706
  %17 = tail call i32 @rtx_equal_p(ptr noundef %14, ptr noundef %16) #23
  br label %18

18:                                               ; preds = %2, %12
  %19 = phi i32 [ %17, %12 ], [ 1, %2 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_transformed_insns(ptr nocapture noundef %0) #0 !prof !947 !PGOFuncName !1625 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1619
  tail call void @vinsn_detach(ptr noundef %2) #22
  %3 = getelementptr inbounds %struct.transformed_insns, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1626
  tail call void @vinsn_detach(ptr noundef %4) #22
  tail call void @free(ptr noundef %0) #22
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_first_time_insn_data(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1627 !PGOFuncName !1628 {
  %2 = tail call fastcc zeroext i8 @first_time_insn_init(ptr noundef %0) #22, !range !726
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !1180

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2803, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  tail call void @free_data_for_scheduled_insn(ptr noundef %0) #22
  %6 = load ptr, ptr @s_i_d, align 8
  %7 = load ptr, ptr @sched_luids, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !706
  %10 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %7, i32 noundef %9) #22
  %11 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %6, i32 noundef %10) #22
  %12 = getelementptr inbounds %struct._sel_insn_data, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !1183
  tail call void @return_regset_to_pool(ptr noundef %13) #22
  %14 = load ptr, ptr @s_i_d, align 8
  %15 = load ptr, ptr @sched_luids, align 8
  %16 = load i32, ptr %8, align 8, !tbaa !706
  %17 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %16) #22
  %18 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %14, i32 noundef %17) #22
  %19 = getelementptr inbounds %struct._sel_insn_data, ptr %18, i64 0, i32 3
  store ptr null, ptr %19, align 8, !tbaa !1183
  %20 = load i32, ptr %8, align 8, !tbaa !706
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %20) #22
  %22 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %14, i32 noundef %21) #22
  %23 = getelementptr inbounds %struct._sel_insn_data, ptr %22, i64 0, i32 13
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, -2
  store i8 %25, ptr %23, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_start_insn(ptr nocapture readnone %0) #0 !prof !1235 !PGOFuncName !1629 {
  %2 = load i32, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %5, label %4, !prof !1248

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3006, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  store i32 0, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_finish_insn() #0 !prof !1235 !PGOFuncName !1630 {
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !1248

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3015, ptr noundef nonnull @.str.1) #23
  br label %4

4:                                                ; preds = %0, %3
  store i32 3, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_start_lhs(ptr nocapture readnone %0) #0 !prof !1631 !PGOFuncName !1632 {
  %2 = load i32, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !1633

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3024, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !1232
  %7 = getelementptr inbounds %struct.vinsn_def, ptr %6, i64 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1086
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !1634

10:                                               ; preds = %5
  store i32 1, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  br label %11

11:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @has_dependence_finish_lhs() #15 !prof !1631 !PGOFuncName !1635 {
  store i32 0, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_start_rhs(ptr nocapture readnone %0) #0 !prof !1631 !PGOFuncName !1636 {
  %2 = load i32, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !1633

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3041, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !1232
  %7 = getelementptr inbounds %struct.vinsn_def, ptr %6, i64 0, i32 1, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1041
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !1634

10:                                               ; preds = %5
  store i32 2, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  br label %11

11:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_finish_rhs() #0 !prof !1631 !PGOFuncName !1637 {
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  switch i32 %1, label %2 [
    i32 2, label %3
    i32 0, label %3
  ], !prof !1638

2:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3052, ptr noundef nonnull @.str.1) #23
  br label %3

3:                                                ; preds = %0, %0, %2
  store i32 0, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_note_reg_set(i32 noundef %0) #0 !prof !1639 !PGOFuncName !1640 {
  %2 = load ptr, ptr @has_dependence_data, align 8, !tbaa !1230
  %3 = getelementptr inbounds %struct.deps, ptr %2, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !1237
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.deps_reg, ptr %4, i64 %5
  %7 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 2), align 8, !tbaa !1239
  %8 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !1232
  %9 = load ptr, ptr %8, align 8, !tbaa !935
  %10 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %7, ptr noundef %9) #23
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %34, !prof !1641

12:                                               ; preds = %1
  %13 = load i32, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.anon.1, ptr @has_dependence_data, i64 0, i32 4, i64 %14
  %16 = getelementptr inbounds %struct.deps_reg, ptr %4, i64 %5, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !1642
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23, !prof !1644

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.deps_reg, ptr %4, i64 %5, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !1645
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23, !prof !1646

23:                                               ; preds = %19, %12
  %24 = load i32, ptr %15, align 4, !tbaa !786
  %25 = and i32 %24, -50331648
  %26 = or disjoint i32 %25, 33554432
  store i32 %26, ptr %15, align 4, !tbaa !786
  br label %27

27:                                               ; preds = %23, %19
  %28 = load ptr, ptr %6, align 8, !tbaa !1647
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30, !prof !1648

30:                                               ; preds = %27
  %31 = load i32, ptr %15, align 4, !tbaa !786
  %32 = and i32 %31, -83886080
  %33 = or disjoint i32 %32, 67108864
  store i32 %33, ptr %15, align 4, !tbaa !786
  br label %34

34:                                               ; preds = %27, %30, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_note_reg_clobber(i32 noundef %0) #0 !prof !1649 !PGOFuncName !1650 {
  %2 = load ptr, ptr @has_dependence_data, align 8, !tbaa !1230
  %3 = getelementptr inbounds %struct.deps, ptr %2, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !1237
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.deps_reg, ptr %4, i64 %5
  %7 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 2), align 8, !tbaa !1239
  %8 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !1232
  %9 = load ptr, ptr %8, align 8, !tbaa !935
  %10 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %7, ptr noundef %9) #23
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %30, !prof !1651

12:                                               ; preds = %1
  %13 = load i32, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.anon.1, ptr @has_dependence_data, i64 0, i32 4, i64 %14
  %16 = getelementptr inbounds %struct.deps_reg, ptr %4, i64 %5, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !1642
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19, !prof !1652

19:                                               ; preds = %12
  %20 = load i32, ptr %15, align 4, !tbaa !786
  %21 = and i32 %20, -50331648
  %22 = or disjoint i32 %21, 33554432
  store i32 %22, ptr %15, align 4, !tbaa !786
  br label %23

23:                                               ; preds = %19, %12
  %24 = load ptr, ptr %6, align 8, !tbaa !1647
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26, !prof !1653

26:                                               ; preds = %23
  %27 = load i32, ptr %15, align 4, !tbaa !786
  %28 = and i32 %27, -83886080
  %29 = or disjoint i32 %28, 67108864
  store i32 %29, ptr %15, align 4, !tbaa !786
  br label %30

30:                                               ; preds = %23, %26, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_note_reg_use(i32 noundef %0) #0 !prof !1654 !PGOFuncName !1655 {
  %2 = load ptr, ptr @has_dependence_data, align 8, !tbaa !1230
  %3 = getelementptr inbounds %struct.deps, ptr %2, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !1237
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.deps_reg, ptr %4, i64 %5
  %7 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 2), align 8, !tbaa !1239
  %8 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !1232
  %9 = load ptr, ptr %8, align 8, !tbaa !935
  %10 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %7, ptr noundef %9) #23
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %49, !prof !1656

12:                                               ; preds = %1
  %13 = load i32, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.anon.1, ptr @has_dependence_data, i64 0, i32 4, i64 %14
  %16 = getelementptr inbounds %struct.deps_reg, ptr %4, i64 %5, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !1642
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19, !prof !1657

19:                                               ; preds = %12
  %20 = load i32, ptr %15, align 4, !tbaa !786
  %21 = and i32 %20, -33554432
  %22 = or disjoint i32 %21, 16777216
  store i32 %22, ptr %15, align 4, !tbaa !786
  br label %23

23:                                               ; preds = %19, %12
  %24 = getelementptr inbounds %struct.deps_reg, ptr %4, i64 %5, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !1645
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27, !prof !1658

27:                                               ; preds = %23
  %28 = load i32, ptr %15, align 4, !tbaa !786
  %29 = and i32 %28, -83886080
  %30 = or disjoint i32 %29, 67108864
  store i32 %30, ptr %15, align 4, !tbaa !786
  br label %31

31:                                               ; preds = %27, %23
  %32 = load ptr, ptr %6, align 8, !tbaa !1647
  %33 = icmp eq ptr %32, null
  br i1 %33, label %49, label %34, !prof !1659

34:                                               ; preds = %31
  %35 = load ptr, ptr @s_i_d, align 8
  %36 = load ptr, ptr @sched_luids, align 8
  %37 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 2), align 8, !tbaa !1239
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !706
  %40 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %36, i32 noundef %39) #22
  %41 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %35, i32 noundef %40) #22
  %42 = getelementptr inbounds %struct._sel_insn_data, ptr %41, i64 0, i32 12
  %43 = load i32, ptr %42, align 8, !tbaa !1251
  %44 = tail call i32 @ds_get_max_dep_weak(i32 noundef %43) #23
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46, !prof !1660

46:                                               ; preds = %34
  %47 = load i32, ptr %15, align 4, !tbaa !786
  %48 = tail call i32 @ds_full_merge(i32 noundef %47, i32 noundef %44, ptr noundef null, ptr noundef null) #23
  store i32 %48, ptr %15, align 4, !tbaa !786
  br label %49

49:                                               ; preds = %31, %46, %34, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_note_mem_dep(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, i32 noundef %3) #0 !prof !1661 !PGOFuncName !1662 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 2), align 8, !tbaa !1239
  %6 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !1232
  %7 = load ptr, ptr %6, align 8, !tbaa !935
  %8 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %5, ptr noundef %7) #23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %16, !prof !1663

10:                                               ; preds = %4
  %11 = load i32, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.anon.1, ptr @has_dependence_data, i64 0, i32 4, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !786
  %15 = tail call i32 @ds_full_merge(i32 noundef %3, i32 noundef %14, ptr noundef %1, ptr noundef %0) #23
  store i32 %15, ptr %13, align 4, !tbaa !786
  br label %16

16:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @has_dependence_note_dep(ptr nocapture readnone %0, i32 noundef %1) #0 !prof !1664 !PGOFuncName !1665 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 2), align 8, !tbaa !1239
  %4 = load ptr, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 3), align 8, !tbaa !1232
  %5 = load ptr, ptr %4, align 8, !tbaa !935
  %6 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %3, ptr noundef %5) #23
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %14, !prof !1666

8:                                                ; preds = %2
  %9 = load i32, ptr getelementptr inbounds (%struct.anon.1, ptr @has_dependence_data, i64 0, i32 1), align 8, !tbaa !1233
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.anon.1, ptr @has_dependence_data, i64 0, i32 4, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !786
  %13 = tail call i32 @ds_full_merge(i32 noundef %1, i32 noundef %12, ptr noundef null, ptr noundef null) #23
  store i32 %13, ptr %11, align 4, !tbaa !786
  br label %14

14:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tick_check_note_mem_dep(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !prof !1667 !PGOFuncName !1668 {
  %5 = tail call i32 @ds_to_dt(i32 noundef %3) #23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9, !prof !1669

7:                                                ; preds = %4
  %8 = tail call i32 @estimate_dep_weak(ptr noundef %0, ptr noundef %1) #23
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %4 ]
  tail call fastcc void @tick_check_dep_with_dw(ptr noundef %2, i32 noundef %3, i32 noundef %10) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tick_check_note_dep(ptr noundef %0, i32 noundef %1) #0 !prof !1670 !PGOFuncName !1671 {
  tail call fastcc void @tick_check_dep_with_dw(ptr noundef %0, i32 noundef %1, i32 noundef 0) #22
  ret void
}

; Function Attrs: optsize
declare i32 @ds_to_dt(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @estimate_dep_weak(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tick_check_dep_with_dw(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1672 !PGOFuncName !1673 {
  %4 = alloca %struct._dep, align 8
  %5 = load ptr, ptr @tick_check_data.0, align 8, !tbaa !1253
  %6 = load ptr, ptr %5, align 8, !tbaa !934
  %7 = load ptr, ptr %6, align 8, !tbaa !935
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %61, label %9, !prof !1674

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !706
  %13 = icmp eq ptr %12, null
  br i1 %13, label %61, label %14, !prof !1674

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !706
  %17 = icmp eq ptr %16, null
  br i1 %17, label %61, label %18, !prof !1674

18:                                               ; preds = %14
  %19 = load ptr, ptr @s_i_d, align 8
  %20 = load ptr, ptr @sched_luids, align 8
  %21 = load i32, ptr %10, align 8, !tbaa !706
  %22 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %20, i32 noundef %21) #22
  %23 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %19, i32 noundef %22) #22
  %24 = getelementptr inbounds %struct._expr, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !1278
  %26 = getelementptr inbounds %struct._expr, ptr %5, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !1052
  %28 = sub nsw i32 %25, %27
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %61, label %30, !prof !1674

30:                                               ; preds = %18
  %31 = tail call i32 @ds_to_dt(i32 noundef %1) #23
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34, !prof !1675

33:                                               ; preds = %30
  store i1 true, ptr @tick_check_data.2, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load ptr, ptr @s_i_d, align 8
  %36 = load ptr, ptr @sched_luids, align 8
  %37 = load i32, ptr %10, align 8, !tbaa !706
  %38 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %36, i32 noundef %37) #22
  %39 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %35, i32 noundef %38) #22
  %40 = getelementptr inbounds %struct._sel_insn_data, ptr %39, i64 0, i32 10
  %41 = load i32, ptr %40, align 8, !tbaa !1676
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %44, label %43, !prof !1677

43:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3338, ptr noundef nonnull @.str.1) #23
  br label %44

44:                                               ; preds = %34, %43
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call void @init_dep(ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef %7, i32 noundef %31) #23
  %45 = load ptr, ptr @s_i_d, align 8
  %46 = load ptr, ptr @sched_luids, align 8
  %47 = load i32, ptr %10, align 8, !tbaa !706
  %48 = call fastcc i32 @VEC_int_base_index(ptr noundef %46, i32 noundef %47) #22
  %49 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %45, i32 noundef %48) #22
  %50 = getelementptr inbounds %struct._sel_insn_data, ptr %49, i64 0, i32 10
  %51 = load i32, ptr %50, align 8, !tbaa !1676
  %52 = call i32 @dep_cost_1(ptr noundef nonnull %4, i32 noundef %2) #23
  %53 = add nsw i32 %52, %51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %54 = load i32, ptr @tick_check_data.1, align 8, !tbaa !1255
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %61, !prof !1678

56:                                               ; preds = %44
  %57 = icmp ne i32 %31, 0
  %58 = load i1, ptr @tick_check_data.2, align 4
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %61, label %60, !prof !1679

60:                                               ; preds = %56
  store i32 %53, ptr @tick_check_data.1, align 8, !tbaa !1255
  br label %61

61:                                               ; preds = %18, %14, %9, %3, %44, %60, %56
  ret void
}

; Function Attrs: optsize
declare void @init_dep(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @dep_cost_1(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !714 !PGOFuncName !1680 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #22, !range !726
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !1272
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #22
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @can_merge_blocks_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1316 !PGOFuncName !1681 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #22, !range !726
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !1682

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !840
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #22
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @post_order_compute(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_sel_global_bb_info_def_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !1683 !PGOFuncName !1684 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1685

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1686
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sel_global_bb_info_def_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !1339 !PGOFuncName !1688 {
  %2 = load ptr, ptr @sel_global_bb_info, align 8, !tbaa !701
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !1689

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !1686
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_sel_global_bb_info_def_heap_reserve_exact(i32 noundef %8) #22
  %9 = load ptr, ptr @sel_global_bb_info, align 8, !tbaa !701, !nonnull !1690, !noundef !1690
  store i32 %0, ptr %9, align 8, !tbaa !1686
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_sel_global_bb_info_def_base_address(ptr noundef readnone %0) unnamed_addr #8 !prof !1339 !PGOFuncName !1691 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_sel_global_bb_info_def_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !1692
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sel_global_bb_info_def_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !1339 !PGOFuncName !1693 {
  %2 = load ptr, ptr @sel_global_bb_info, align 8, !tbaa !701
  %3 = tail call fastcc i32 @VEC_sel_global_bb_info_def_base_space(ptr noundef %2, i32 noundef %0) #22, !range !820
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1689

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 16) #23
  store ptr %6, ptr @sel_global_bb_info, align 8, !tbaa !701
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_sel_global_bb_info_def_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !1339 !PGOFuncName !1694 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !1689

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_sel_global_bb_info_def_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !1695
  %7 = load i32, ptr %0, align 8, !tbaa !1686
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_sel_insn_data_def_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !1696 !PGOFuncName !1697 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1698

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1699
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_sel_insn_data_def_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !1701 !PGOFuncName !1702 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !1703

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_sel_insn_data_def_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !1704
  %7 = load i32, ptr %0, align 8, !tbaa !1699
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
define internal fastcc void @VEC_sel_insn_data_def_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !1705 !PGOFuncName !1706 {
  %2 = load ptr, ptr @s_i_d, align 8, !tbaa !701
  %3 = tail call fastcc i32 @VEC_sel_insn_data_def_base_length(ptr noundef %2) #22
  tail call fastcc void @VEC_sel_insn_data_def_heap_safe_grow(i32 noundef %0) #22
  %4 = load ptr, ptr @s_i_d, align 8, !tbaa !701
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
define internal fastcc void @VEC_sel_insn_data_def_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !1705 !PGOFuncName !1707 {
  %2 = load ptr, ptr @s_i_d, align 8, !tbaa !701
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !1708

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !1699
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_sel_insn_data_def_heap_reserve_exact(i32 noundef %8) #22
  %9 = load ptr, ptr @s_i_d, align 8, !tbaa !701, !nonnull !1690, !noundef !1690
  store i32 %0, ptr %9, align 8, !tbaa !1699
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_sel_insn_data_def_base_address(ptr noundef readnone %0) unnamed_addr #8 !prof !1705 !PGOFuncName !1709 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_sel_insn_data_def_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !1191
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sel_insn_data_def_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !1705 !PGOFuncName !1710 {
  %2 = load ptr, ptr @s_i_d, align 8, !tbaa !701
  %3 = tail call fastcc i32 @VEC_sel_insn_data_def_base_space(ptr noundef %2, i32 noundef %0) #22, !range !820
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1190

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 320) #23
  store ptr %6, ptr @s_i_d, align 8, !tbaa !701
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_sel_insn_data_def_heap_free() unnamed_addr #10 !prof !784 !PGOFuncName !1711 {
  %1 = load ptr, ptr @s_i_d, align 8, !tbaa !701
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1223

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #22
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @s_i_d, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @insn_is_the_only_one_in_bb_p(ptr noundef %0) unnamed_addr #0 !prof !916 !PGOFuncName !1712 {
  %2 = tail call zeroext i8 @sel_bb_head_p(ptr noundef %0) #22, !range !726
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4, !prof !1713

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @sel_bb_end_p(ptr noundef %0) #22, !range !726
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i8 [ 0, %1 ], [ %5, %4 ]
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_initial_data_sets(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !714 !PGOFuncName !1714 {
  %2 = load ptr, ptr @sel_global_bb_info, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !827
  %5 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %2, i32 noundef %4) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !1352
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %5, i64 0, i32 1
  store i8 0, ptr %9, align 8, !tbaa !1349
  br label %15

10:                                               ; preds = %1
  %11 = tail call ptr @get_regset_from_pool() #22
  %12 = load ptr, ptr @sel_global_bb_info, align 8
  %13 = load i32, ptr %3, align 8, !tbaa !827
  %14 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %12, i32 noundef %13) #22
  store ptr %11, ptr %14, align 8, !tbaa !1352
  br label %15

15:                                               ; preds = %10, %8
  tail call fastcc void @invalidate_av_set(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_insn_data(ptr noundef %0) unnamed_addr #0 !prof !916 !PGOFuncName !1715 {
  %2 = load i8, ptr getelementptr inbounds (%struct._sel_insn_data, ptr @_insn_init_ssid, i64 0, i32 13), align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct._sel_insn_data, ptr @_insn_init_ssid, i64 0, i32 9), align 8
  %4 = icmp eq ptr %3, null
  %5 = and i8 %2, 6
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i1 %4, i1 false
  %8 = load i32, ptr getelementptr inbounds (%struct._sel_insn_data, ptr @_insn_init_ssid, i64 0, i32 10), align 8
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %12, label %11, !prof !1716

11:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4026, ptr noundef nonnull @.str.1) #23
  br label %12

12:                                               ; preds = %1, %11
  %13 = load i32, ptr %0, align 8
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -7
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %17, label %23, !prof !924

17:                                               ; preds = %12
  %18 = load ptr, ptr @sched_luids, align 8
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !706
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %18, i32 noundef %20) #22
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %27, label %23, !prof !926

23:                                               ; preds = %12, %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4027, ptr noundef nonnull @.str.1) #23
  %24 = load ptr, ptr @sched_luids, align 8
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !706
  br label %27

27:                                               ; preds = %17, %23
  %28 = phi i32 [ %20, %17 ], [ %26, %23 ]
  %29 = phi ptr [ %18, %17 ], [ %24, %23 ]
  %30 = load ptr, ptr @s_i_d, align 8
  %31 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %29, i32 noundef %28) #22
  %32 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %30, i32 noundef %31) #22
  tail call void @copy_expr(ptr noundef nonnull %32, ptr noundef nonnull @_insn_init_ssid) #22
  %33 = load i32, ptr getelementptr inbounds (%struct._sel_insn_data, ptr @_insn_init_ssid, i64 0, i32 2), align 4, !tbaa !911
  tail call fastcc void @prepare_insn_expr(ptr noundef nonnull %0, i32 noundef %33) #22
  %34 = load i1, ptr @insn_init_create_new_vinsn_p, align 1
  br i1 %34, label %35, label %39, !prof !918

35:                                               ; preds = %27
  %36 = load i1, ptr @init_insn_force_unique_p, align 1
  %37 = zext i1 %36 to i8
  %38 = tail call fastcc ptr @vinsn_create(ptr noundef nonnull %0, i8 noundef zeroext %37) #22
  tail call void @change_vinsn_in_expr(ptr noundef nonnull %32, ptr noundef %38) #22
  br label %39

39:                                               ; preds = %35, %27
  %40 = tail call fastcc zeroext i8 @first_time_insn_init(ptr noundef nonnull %0) #22, !range !726
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %43, label %42, !prof !927

42:                                               ; preds = %39
  tail call fastcc void @init_first_time_insn_data(ptr noundef nonnull %0) #22
  br label %43

43:                                               ; preds = %42, %39
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_simplejump_data(ptr noundef %0) unnamed_addr #0 !prof !714 !PGOFuncName !1717 {
  %2 = load ptr, ptr @s_i_d, align 8
  %3 = load ptr, ptr @sched_luids, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !706
  %6 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %3, i32 noundef %5) #22
  %7 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %2, i32 noundef %6) #22
  %8 = tail call fastcc ptr @vinsn_create(ptr noundef %0, i8 noundef zeroext 0) #22
  tail call fastcc void @init_expr(ptr noundef nonnull %7, ptr noundef %8, i32 noundef 0, i32 noundef 10000, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #22
  %9 = tail call fastcc i32 @get_seqno_of_a_pred(ptr noundef %0) #22
  %10 = load ptr, ptr @s_i_d, align 8
  %11 = load ptr, ptr @sched_luids, align 8
  %12 = load i32, ptr %4, align 8, !tbaa !706
  %13 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %11, i32 noundef %12) #22
  %14 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %10, i32 noundef %13) #22
  %15 = getelementptr inbounds %struct._sel_insn_data, ptr %14, i64 0, i32 2
  store i32 %9, ptr %15, align 4, !tbaa !911
  tail call fastcc void @init_first_time_insn_data(ptr noundef %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_seqno_of_a_pred(ptr noundef %0) unnamed_addr #0 !prof !714 !PGOFuncName !1718 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.succ_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = load ptr, ptr @s_i_d, align 8
  %7 = load ptr, ptr @sched_luids, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !706
  %10 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %7, i32 noundef %9) #22
  %11 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %6, i32 noundef %10) #22
  %12 = load ptr, ptr %11, align 8, !tbaa !976
  %13 = getelementptr inbounds %struct.vinsn_def, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !946
  %15 = icmp eq i32 %14, 36
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3812, ptr noundef nonnull @.str.1) #23
  br label %17

17:                                               ; preds = %1, %16
  %18 = tail call zeroext i8 @sel_bb_head_p(ptr noundef nonnull %0) #22, !range !726
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load ptr, ptr @s_i_d, align 8
  %22 = load ptr, ptr @sched_luids, align 8
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !706
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !706
  %27 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %22, i32 noundef %26) #22
  %28 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %21, i32 noundef %27) #22
  %29 = getelementptr inbounds %struct._sel_insn_data, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !911
  br label %87

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !706
  %34 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %33) #22, !range !726
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %71, label %36

36:                                               ; preds = %31
  %37 = tail call fastcc ptr @single_pred(ptr noundef %33) #22
  %38 = tail call zeroext i8 @in_current_region_p(ptr noundef %37) #22, !range !726
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %32, align 8, !tbaa !706
  br label %71

42:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !701
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %43 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !786
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
  br i1 %54, label %58, label %55, !llvm.loop !1719

55:                                               ; preds = %52, %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3835, ptr noundef nonnull @.str.1) #23
  call fastcc void @_succ_iter_next(ptr noundef nonnull %3) #22
  %56 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %0) #22
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %55, !llvm.loop !1719

58:                                               ; preds = %55, %52, %49
  %59 = load ptr, ptr %2, align 8, !tbaa !701
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3839, ptr noundef nonnull @.str.1) #23
  br label %62

62:                                               ; preds = %58, %61
  %63 = load ptr, ptr @s_i_d, align 8
  %64 = load ptr, ptr @sched_luids, align 8
  %65 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !706
  %67 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %64, i32 noundef %66) #22
  %68 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %63, i32 noundef %67) #22
  %69 = getelementptr inbounds %struct._sel_insn_data, ptr %68, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !911
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  br label %87

71:                                               ; preds = %40, %31
  %72 = phi ptr [ %41, %40 ], [ %33, %31 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call fastcc void @cfg_preds(ptr noundef %72, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %73 = load i32, ptr %5, align 4, !tbaa !786
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3848, ptr noundef nonnull @.str.1) #23
  br label %76

76:                                               ; preds = %71, %75
  %77 = load ptr, ptr @s_i_d, align 8
  %78 = load ptr, ptr @sched_luids, align 8
  %79 = load ptr, ptr %4, align 8, !tbaa !701
  %80 = load ptr, ptr %79, align 8, !tbaa !701
  %81 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !706
  %83 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %78, i32 noundef %82) #22
  %84 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %77, i32 noundef %83) #22
  %85 = getelementptr inbounds %struct._sel_insn_data, ptr %84, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !911
  tail call void @free(ptr noundef %79) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %87

87:                                               ; preds = %62, %76, %20
  %88 = phi i32 [ %30, %20 ], [ %86, %76 ], [ %70, %62 ]
  ret i32 %88
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !714 !PGOFuncName !1720 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #22
  %3 = load ptr, ptr %2, align 8, !tbaa !839
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #13 !prof !1347 !PGOFuncName !1721 {
  %2 = load ptr, ptr @df, align 8, !tbaa !701
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !701
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !1722
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !1351

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !1724
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !701
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extend_region_bb_info() unnamed_addr #0 !prof !784 !PGOFuncName !1725 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !701
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !801
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !1340
  tail call fastcc void @VEC_sel_region_bb_info_def_heap_safe_grow_cleared(i32 noundef %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sel_region_bb_info_def_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !784 !PGOFuncName !1726 {
  %2 = load ptr, ptr @sel_region_bb_info, align 8, !tbaa !701
  %3 = tail call fastcc i32 @VEC_sel_region_bb_info_def_base_length(ptr noundef %2) #22
  tail call fastcc void @VEC_sel_region_bb_info_def_heap_safe_grow(i32 noundef %0) #22
  %4 = load ptr, ptr @sel_region_bb_info, align 8, !tbaa !701
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
define internal fastcc i32 @VEC_sel_region_bb_info_def_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !1330 !PGOFuncName !1727 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1331

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1728
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sel_region_bb_info_def_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !784 !PGOFuncName !1730 {
  %2 = load ptr, ptr @sel_region_bb_info, align 8, !tbaa !701
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !792

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !1728
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_sel_region_bb_info_def_heap_reserve_exact(i32 noundef %8) #22
  %9 = load ptr, ptr @sel_region_bb_info, align 8, !tbaa !701, !nonnull !1690, !noundef !1690
  store i32 %0, ptr %9, align 8, !tbaa !1728
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_sel_region_bb_info_def_base_address(ptr noundef readnone %0) unnamed_addr #8 !prof !784 !PGOFuncName !1731 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_sel_region_bb_info_def_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !1223
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_sel_region_bb_info_def_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !784 !PGOFuncName !1732 {
  %2 = load ptr, ptr @sel_region_bb_info, align 8, !tbaa !701
  %3 = tail call fastcc i32 @VEC_sel_region_bb_info_def_base_space(ptr noundef %2, i32 noundef %0) #22, !range !820
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !792

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 24) #23
  store ptr %6, ptr @sel_region_bb_info, align 8, !tbaa !701
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_sel_region_bb_info_def_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !784 !PGOFuncName !1733 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !792

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_sel_region_bb_info_def_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !1734
  %7 = load i32, ptr %0, align 8, !tbaa !1728
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
declare void @remove_notes(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @restore_other_notes(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @reemit_notes(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_sel_region_bb_info_def_heap_free() unnamed_addr #10 !prof !784 !PGOFuncName !1735 {
  %1 = load ptr, ptr @sel_region_bb_info, align 8, !tbaa !701
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1223

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #22
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @sel_region_bb_info, align 8, !tbaa !701
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_rtx_heap_alloc() unnamed_addr #0 !prof !1736 !PGOFuncName !1737 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #23
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1738 !PGOFuncName !1739 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !837 !PGOFuncName !1740 {
  %2 = load ptr, ptr %0, align 8, !tbaa !701
  %3 = tail call fastcc i32 @VEC_rtx_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1741

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !701
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !837 !PGOFuncName !1742 {
  %3 = load i32, ptr %0, align 8, !tbaa !883
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !883
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !701
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !837 !PGOFuncName !1743 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !829

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1744
  %6 = load i32, ptr %0, align 8, !tbaa !883
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1164 !PGOFuncName !1745 {
  %2 = load ptr, ptr %0, align 8, !tbaa !701
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !843

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #23
  store ptr %6, ptr %0, align 8, !tbaa !701
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #6 !prof !1164 !PGOFuncName !1746 {
  %3 = load i32, ptr %0, align 4, !tbaa !1416
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !1416
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !786
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !1164 !PGOFuncName !1747 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !843

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1748
  %6 = load i32, ptr %0, align 4, !tbaa !1416
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cfg_preds_1(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !714 !PGOFuncName !1749 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  %7 = load ptr, ptr @block_to_bb, align 8, !tbaa !701
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !827
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %7, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !786
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4579, ptr noundef nonnull @.str.1) #23
  br label %15

15:                                               ; preds = %4, %14
  %16 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #22
  store i32 0, ptr %6, align 8, !tbaa.struct !812
  %17 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %16, ptr %17, align 8, !tbaa.struct !813
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %16, ptr noundef nonnull %5) #22, !range !726
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %57, label %20

20:                                               ; preds = %15, %52
  %21 = load ptr, ptr %5, align 8, !tbaa !701
  %22 = load ptr, ptr %21, align 8, !tbaa !839
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !706
  %25 = getelementptr inbounds %struct.rtl_bb_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !806
  %27 = tail call zeroext i8 @in_current_region_p(ptr noundef %22) #22, !range !726
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4587, ptr noundef nonnull @.str.1) #23
  br label %30

30:                                               ; preds = %20, %29
  %31 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef nonnull %22) #22, !range !726
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call fastcc void @cfg_preds_1(ptr noundef nonnull %22, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  br label %52

34:                                               ; preds = %30
  %35 = load i32, ptr %2, align 4, !tbaa !786
  %36 = load i32, ptr %3, align 4, !tbaa !786
  %37 = icmp eq i32 %35, %36
  %38 = load ptr, ptr %1, align 8, !tbaa !701
  br i1 %37, label %39, label %46

39:                                               ; preds = %34
  %40 = shl nsw i32 %35, 1
  %41 = or disjoint i32 %40, 1
  store i32 %41, ptr %3, align 4, !tbaa !786
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 3
  %44 = tail call ptr @xrealloc(ptr noundef %38, i64 noundef %43) #23
  store ptr %44, ptr %1, align 8, !tbaa !701
  %45 = load i32, ptr %2, align 4, !tbaa !786
  br label %46

46:                                               ; preds = %39, %34
  %47 = phi i32 [ %45, %39 ], [ %35, %34 ]
  %48 = phi ptr [ %44, %39 ], [ %38, %34 ]
  %49 = add nsw i32 %47, 1
  store i32 %49, ptr %2, align 4, !tbaa !786
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %48, i64 %50
  store ptr %26, ptr %51, align 8, !tbaa !701
  br label %52

52:                                               ; preds = %46, %33
  call fastcc void @ei_next(ptr noundef nonnull %6) #22
  %53 = load i32, ptr %6, align 8
  %54 = load ptr, ptr %17, align 8
  %55 = call fastcc zeroext i8 @ei_cond(i32 %53, ptr %54, ptr noundef nonnull %5) #22, !range !726
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %20, !llvm.loop !1750

57:                                               ; preds = %52, %15
  %58 = load i32, ptr %2, align 4, !tbaa !786
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
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1445 !PGOFuncName !1751 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1752

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1753 !PGOFuncName !1754 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1755

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #22
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #22
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1756 !PGOFuncName !1757 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1758

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.1) #23
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !701
  ret ptr %5
}

; Function Attrs: optsize
declare void @concat_note_lists(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @redirect_edge_succ_nodup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @redirect_edge_pred(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_remove_bb(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1361 !PGOFuncName !1759 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4, !prof !1284

4:                                                ; preds = %2
  %5 = load ptr, ptr @sel_region_bb_info, align 8
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !827
  %8 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %5, i32 noundef %7) #22
  %9 = load ptr, ptr %8, align 8, !tbaa !1382
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !1282

11:                                               ; preds = %4, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5026, ptr noundef nonnull @.str.1) #23
  br label %12

12:                                               ; preds = %4, %11
  tail call fastcc void @remove_bb_from_region(ptr noundef %0) #22
  tail call fastcc void @return_bb_to_pool(ptr noundef %0) #22
  %13 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !701
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !827
  %16 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %13, i32 noundef %15) #23
  %17 = icmp eq i8 %1, 0
  br i1 %17, label %19, label %18, !prof !1284

18:                                               ; preds = %12
  tail call fastcc void @delete_and_free_basic_block(ptr noundef nonnull %0) #22
  br label %19

19:                                               ; preds = %18, %12
  %20 = load ptr, ptr @containing_rgn, align 8, !tbaa !701
  %21 = load i32, ptr %14, align 8, !tbaa !827
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %20, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !786
  tail call void @rgn_setup_region(i32 noundef %24) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_bb_from_region(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1361 !PGOFuncName !1760 {
  %2 = load ptr, ptr @containing_rgn, align 8, !tbaa !701
  %3 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !701
  %4 = load ptr, ptr @ebb_head, align 8, !tbaa !701
  %5 = load i32, ptr %4, align 4, !tbaa !786
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !786
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !786
  %12 = load ptr, ptr @block_to_bb, align 8, !tbaa !701
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !827
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %12, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !786
  %18 = load ptr, ptr @rgn_table, align 8, !tbaa !701
  %19 = sext i32 %11 to i64
  %20 = getelementptr inbounds %struct.region, ptr %18, i64 %19, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !1514
  %22 = add nsw i32 %21, %17
  %23 = getelementptr inbounds %struct.region, ptr %18, i64 %19, i32 2
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, 2
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %32, !prof !1282

27:                                               ; preds = %1
  %28 = sext i32 %17 to i64
  %29 = getelementptr inbounds i32, ptr %4, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !786
  %31 = icmp eq i32 %30, %22
  br i1 %31, label %35, label %32, !prof !1282

32:                                               ; preds = %27, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4954, ptr noundef nonnull @.str.1) #23
  %33 = load ptr, ptr @rgn_table, align 8, !tbaa !701
  %34 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !701
  br label %35

35:                                               ; preds = %27, %32
  %36 = phi ptr [ %3, %27 ], [ %34, %32 ]
  %37 = phi ptr [ %18, %27 ], [ %33, %32 ]
  %38 = add nsw i32 %11, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.region, ptr %37, i64 %39, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !1514
  %42 = icmp sgt i32 %41, %22
  br i1 %42, label %45, label %43, !prof !1289

43:                                               ; preds = %35
  %44 = sext i32 %22 to i64
  br label %59

45:                                               ; preds = %35
  %46 = load ptr, ptr @block_to_bb, align 8, !tbaa !701
  %47 = sext i32 %41 to i64
  %48 = sext i32 %22 to i64
  br label %49

49:                                               ; preds = %45, %49
  %50 = phi i64 [ %47, %45 ], [ %51, %49 ]
  %51 = add nsw i64 %50, -1
  %52 = getelementptr inbounds i32, ptr %36, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !786
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %46, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !786
  %57 = add nsw i32 %56, -1
  store i32 %57, ptr %55, align 4, !tbaa !786
  %58 = icmp sgt i64 %51, %48
  br i1 %58, label %49, label %59, !prof !1288, !llvm.loop !1761

59:                                               ; preds = %49, %43
  %60 = phi i64 [ %44, %43 ], [ %48, %49 ]
  %61 = getelementptr inbounds i32, ptr %36, i64 %60
  %62 = getelementptr inbounds i32, ptr %61, i64 1
  %63 = load i32, ptr @nr_regions, align 4, !tbaa !786
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.region, ptr %37, i64 %64, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !1514
  %67 = sub nsw i32 %66, %22
  %68 = sext i32 %67 to i64
  %69 = shl nsw i64 %68, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %61, ptr nonnull align 4 %62, i64 %69, i1 false)
  %70 = load ptr, ptr @rgn_table, align 8, !tbaa !701
  %71 = getelementptr inbounds %struct.region, ptr %70, i64 %19
  %72 = load i32, ptr %71, align 4, !tbaa !1327
  %73 = add nsw i32 %72, -1
  store i32 %73, ptr %71, align 4, !tbaa !1327
  %74 = load i32, ptr @nr_regions, align 4, !tbaa !786
  %75 = icmp slt i32 %11, %74
  br i1 %75, label %76, label %85, !prof !1289

76:                                               ; preds = %59, %76
  %77 = phi i64 [ %78, %76 ], [ %19, %59 ]
  %78 = add nsw i64 %77, 1
  %79 = getelementptr inbounds %struct.region, ptr %70, i64 %78, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !1514
  %81 = add nsw i32 %80, -1
  store i32 %81, ptr %79, align 4, !tbaa !1514
  %82 = load i32, ptr @nr_regions, align 4, !tbaa !786
  %83 = sext i32 %82 to i64
  %84 = icmp slt i64 %78, %83
  br i1 %84, label %76, label %85, !prof !1762, !llvm.loop !1763

85:                                               ; preds = %76, %59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @return_bb_to_pool(ptr noundef %0) unnamed_addr #0 !prof !1361 !PGOFuncName !1764 {
  %2 = tail call ptr @bb_note(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !706
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %10, !prof !1282

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1490
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !1282

10:                                               ; preds = %6, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4755, ptr noundef nonnull @.str.1) #23
  br label %11

11:                                               ; preds = %6, %10
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_and_free_basic_block(ptr noundef %0) unnamed_addr #0 !prof !1361 !PGOFuncName !1765 {
  %2 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %0) #22, !range !726
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !1284

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4890, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @sel_global_bb_info, align 8
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !827
  %9 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %6, i32 noundef %8) #22
  %10 = load ptr, ptr %9, align 8, !tbaa !1352
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !1282

12:                                               ; preds = %5
  tail call fastcc void @free_lv_set(ptr noundef nonnull %0) #22
  %13 = load i32, ptr %7, align 8, !tbaa !827
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi i32 [ %13, %12 ], [ %8, %5 ]
  %16 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !701
  %17 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %16, i32 noundef %15) #23
  %18 = load ptr, ptr @sel_global_bb_info, align 8
  %19 = load i32, ptr %7, align 8, !tbaa !827
  %20 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %18, i32 noundef %19) #22
  %21 = load ptr, ptr %20, align 8, !tbaa !1352
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %37, !prof !1282

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %20, i64 0, i32 1
  %25 = load i8, ptr %24, align 8, !tbaa !1349
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %37, !prof !1282

27:                                               ; preds = %23
  %28 = load ptr, ptr @sel_region_bb_info, align 8
  %29 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %28, i32 noundef %19) #22
  %30 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !932
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37, !prof !1282

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %29, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !1365
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !1282

37:                                               ; preds = %33, %27, %23, %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4903, ptr noundef nonnull @.str.1) #23
  br label %38

38:                                               ; preds = %33, %37
  tail call void @delete_basic_block(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: optsize
declare void @rgn_setup_region(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sched_init_bbs() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !714 !PGOFuncName !1766 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1212
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_block_to_current_region(ptr noundef %0) unnamed_addr #0 !prof !714 !PGOFuncName !1767 {
  %2 = load ptr, ptr @containing_rgn, align 8, !tbaa !701
  %3 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !701
  %4 = load ptr, ptr @ebb_head, align 8, !tbaa !701
  %5 = load i32, ptr %4, align 4, !tbaa !786
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !786
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !786
  %12 = tail call fastcc i32 @find_place_to_insert_bb(ptr noundef %0, i32 noundef %11) #22
  %13 = add nsw i32 %12, 1
  %14 = load ptr, ptr @rgn_table, align 8, !tbaa !701
  %15 = sext i32 %11 to i64
  %16 = getelementptr inbounds %struct.region, ptr %14, i64 %15, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !1514
  %18 = add nsw i32 %17, %13
  %19 = getelementptr inbounds %struct.region, ptr %14, i64 %15, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load ptr, ptr @ebb_head, align 8, !tbaa !701
  %25 = sext i32 %13 to i64
  %26 = getelementptr inbounds i32, ptr %24, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !786
  %28 = icmp eq i32 %27, %18
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4920, ptr noundef nonnull @.str.1) #23
  br label %30

30:                                               ; preds = %23, %29
  tail call void @extend_regions() #23
  %31 = load ptr, ptr @rgn_table, align 8, !tbaa !701
  %32 = add nsw i32 %11, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.region, ptr %31, i64 %33, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !1514
  %36 = icmp sgt i32 %35, %18
  %37 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !701
  br i1 %36, label %40, label %38

38:                                               ; preds = %30
  %39 = sext i32 %18 to i64
  br label %54

40:                                               ; preds = %30
  %41 = load ptr, ptr @block_to_bb, align 8, !tbaa !701
  %42 = sext i32 %35 to i64
  %43 = sext i32 %18 to i64
  br label %44

44:                                               ; preds = %40, %44
  %45 = phi i64 [ %42, %40 ], [ %46, %44 ]
  %46 = add nsw i64 %45, -1
  %47 = getelementptr inbounds i32, ptr %37, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !786
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %41, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !786
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %50, align 4, !tbaa !786
  %53 = icmp sgt i64 %46, %43
  br i1 %53, label %44, label %54, !llvm.loop !1768

54:                                               ; preds = %44, %38
  %55 = phi i64 [ %39, %38 ], [ %43, %44 ]
  %56 = getelementptr inbounds i32, ptr %37, i64 %55
  %57 = getelementptr inbounds i32, ptr %56, i64 1
  %58 = load i32, ptr @nr_regions, align 4, !tbaa !786
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.region, ptr %31, i64 %59, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !1514
  %62 = sub nsw i32 %61, %18
  %63 = sext i32 %62 to i64
  %64 = shl nsw i64 %63, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %57, ptr align 4 %56, i64 %64, i1 false)
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !827
  %67 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !701
  %68 = getelementptr inbounds i32, ptr %67, i64 %55
  store i32 %66, ptr %68, align 4, !tbaa !786
  %69 = load ptr, ptr @block_to_bb, align 8, !tbaa !701
  %70 = sext i32 %66 to i64
  %71 = getelementptr inbounds i32, ptr %69, i64 %70
  store i32 %13, ptr %71, align 4, !tbaa !786
  %72 = load ptr, ptr @containing_rgn, align 8, !tbaa !701
  %73 = load i32, ptr %65, align 8, !tbaa !827
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %72, i64 %74
  store i32 %11, ptr %75, align 4, !tbaa !786
  %76 = load ptr, ptr @rgn_table, align 8, !tbaa !701
  %77 = getelementptr inbounds %struct.region, ptr %76, i64 %15
  %78 = load i32, ptr %77, align 4, !tbaa !1327
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %77, align 4, !tbaa !1327
  %80 = load i32, ptr @nr_regions, align 4, !tbaa !786
  %81 = icmp slt i32 %11, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %54, %82
  %83 = phi i64 [ %84, %82 ], [ %15, %54 ]
  %84 = add nsw i64 %83, 1
  %85 = getelementptr inbounds %struct.region, ptr %76, i64 %84, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !1514
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %85, align 4, !tbaa !1514
  %88 = load i32, ptr @nr_regions, align 4, !tbaa !786
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %84, %89
  br i1 %90, label %82, label %91, !llvm.loop !1769

91:                                               ; preds = %82, %54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_place_to_insert_bb(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !714 !PGOFuncName !1770 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #22
  store i32 0, ptr %4, align 8, !tbaa.struct !812
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !813
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %3) #22, !range !726
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2, %14
  %10 = load ptr, ptr %3, align 8, !tbaa !701
  %11 = load ptr, ptr %10, align 8, !tbaa !839
  %12 = tail call zeroext i8 @in_current_region_p(ptr noundef %11) #22, !range !726
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %4) #22
  %15 = load i32, ptr %4, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %3) #22, !range !726
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %9, !llvm.loop !1771

19:                                               ; preds = %14, %2
  %20 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !786
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %81, label %25

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !786
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %61, label %29

25:                                               ; preds = %19
  %26 = load ptr, ptr %0, align 8, !tbaa !1272
  %27 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %26) #22
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %81

29:                                               ; preds = %22, %25
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !827
  tail call fastcc void @recompute_rev_top_order() #22
  %32 = load ptr, ptr @rgn_table, align 8, !tbaa !701
  %33 = sext i32 %1 to i64
  %34 = getelementptr inbounds %struct.region, ptr %32, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !1327
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
  %52 = load i32, ptr %51, align 4, !tbaa !786
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, ptr %36, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !786
  %56 = load i32, ptr %40, align 4, !tbaa !786
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, ptr %38, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !786
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %105, label %44, !llvm.loop !1772

61:                                               ; preds = %22
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !840
  %64 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %63) #22
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %63, i32 noundef 0) #22
  %68 = getelementptr inbounds %struct.edge_def, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !824
  %70 = tail call zeroext i8 @in_current_region_p(ptr noundef %69) #22, !range !726
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr @block_to_bb, align 8, !tbaa !701
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 9
  %75 = load i32, ptr %74, align 8, !tbaa !827
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, ptr %73, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !786
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %107, label %80

80:                                               ; preds = %72, %66, %61
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4864, ptr noundef nonnull @.str.1) #23
  br label %107

81:                                               ; preds = %19, %25
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !840
  %84 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %83) #22
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %102, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr %0, align 8, !tbaa !1272
  %88 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %87) #22
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4876, ptr noundef nonnull @.str.1) #23
  %91 = load ptr, ptr %0, align 8, !tbaa !1272
  br label %92

92:                                               ; preds = %86, %90
  %93 = phi ptr [ %87, %86 ], [ %91, %90 ]
  %94 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %93, i32 noundef 0) #22
  %95 = load ptr, ptr %94, align 8, !tbaa !839
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 9
  %97 = load i32, ptr %96, align 8, !tbaa !827
  %98 = load ptr, ptr @block_to_bb, align 8, !tbaa !701
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, ptr %98, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !786
  br label %107

102:                                              ; preds = %81
  %103 = load i32, ptr @current_nr_blocks, align 4, !tbaa !786
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @check_for_new_jump(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !714 !PGOFuncName !1773 {
  %3 = tail call ptr @sel_bb_end(ptr noundef %0) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !706
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %2
  br label %10

10:                                               ; preds = %5, %9
  %11 = phi ptr [ null, %9 ], [ %3, %5 ]
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @sched_split_block_1(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_bb_note_from_pool() unnamed_addr #17 !prof !714 !PGOFuncName !1774 {
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
declare ptr @create_basic_block_structure(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_rtx_base_pop(ptr nocapture noundef %0) unnamed_addr #6 !prof !714 !PGOFuncName !1775 {
  %2 = load i32, ptr %0, align 8, !tbaa !883
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !883
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !701
  ret ptr %6
}

; Function Attrs: optsize
declare void @rgn_make_new_region_out_of_new_block(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @sched_create_empty_bb_1(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vinsn_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !954 !PGOFuncName !1776 {
  store ptr %1, ptr %0, align 8, !tbaa !935
  %4 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 4
  store i32 0, ptr %4, align 8, !tbaa !945
  %5 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 5
  store i32 -1, ptr %5, align 4, !tbaa !964
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !706
  %8 = load ptr, ptr @df, align 8, !tbaa !701
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 11
  %10 = load i32, ptr %9, align 8, !tbaa !1777
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %21, !prof !956

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !1780
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !701
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !1781

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  tail call fastcc void @init_id_from_df(ptr noundef nonnull %20, ptr noundef nonnull %1, i8 noundef zeroext %2) #22
  br label %23

21:                                               ; preds = %3, %12
  %22 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  tail call fastcc void @deps_init_id(ptr noundef nonnull %22, ptr noundef nonnull %1, i8 noundef zeroext %2) #22
  br label %23

23:                                               ; preds = %21, %19
  %24 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 35), align 8, !tbaa !1039
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr null, ptr @hash_with_unspec_callback
  %27 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !946
  %29 = icmp eq i32 %28, 23
  br i1 %29, label %30, label %42, !prof !1782

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !1041
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = tail call i32 @hash_rtx_cb(ptr noundef nonnull %32, i32 noundef %35, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, ptr noundef %26) #23
  %37 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 2
  store i32 %36, ptr %37, align 8, !tbaa !1037
  %38 = load ptr, ptr %0, align 8, !tbaa !935
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !706
  %41 = tail call i32 @hash_rtx_cb(ptr noundef %40, i32 noundef 0, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, ptr noundef %26) #23
  br label %48

42:                                               ; preds = %23
  %43 = load ptr, ptr %0, align 8, !tbaa !935
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !706
  %46 = tail call i32 @hash_rtx_cb(ptr noundef %45, i32 noundef 0, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, ptr noundef %26) #23
  %47 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 2
  store i32 %46, ptr %47, align 8, !tbaa !1037
  br label %48

48:                                               ; preds = %42, %30
  %49 = phi i32 [ %41, %30 ], [ %46, %42 ]
  %50 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 3
  store i32 %49, ptr %50, align 4
  %51 = tail call i32 @haifa_classify_insn(ptr noundef nonnull %1) #23
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %60, !prof !1783

53:                                               ; preds = %48
  %54 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 33), align 8, !tbaa !1204
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56, !prof !1784

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
  store i8 %62, ptr %63, align 8, !tbaa !1785
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_id_from_df(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !1627 !PGOFuncName !1786 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !706
  %6 = load ptr, ptr @df, align 8, !tbaa !701
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !1777
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %17, !prof !1180

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !1780
  %13 = sext i32 %5 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !701
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !1787

17:                                               ; preds = %3, %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2666, ptr noundef nonnull @.str.1) #23
  br label %18

18:                                               ; preds = %10, %17
  tail call fastcc void @setup_id_for_insn(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #22
  tail call fastcc void @setup_id_lhs_rhs(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #22
  %19 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !706
  %21 = load ptr, ptr @nop_pattern, align 8, !tbaa !701
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %24, label %23, !prof !1787

23:                                               ; preds = %18
  tail call fastcc void @maybe_downgrade_id_to_use(ptr noundef %0, ptr noundef nonnull %1) #22
  tail call fastcc void @setup_id_reg_sets(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %24

24:                                               ; preds = %18, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @deps_init_id(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !1788 !PGOFuncName !1789 {
  %4 = alloca %struct.deps, align 8
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %4) #21
  store i32 3, ptr @deps_init_id_data.0, align 8, !tbaa !1790
  store ptr %0, ptr @deps_init_id_data.1, align 8, !tbaa !1792
  store i8 %2, ptr @deps_init_id_data.2, align 8, !tbaa !1793
  store i1 false, ptr @deps_init_id_data.3, align 8
  call void @init_deps(ptr noundef nonnull %4, i8 noundef zeroext 0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) @deps_init_id_sched_deps_info, ptr noundef nonnull align 8 dereferenceable(104) @const_deps_init_id_sched_deps_info, i64 104, i1 false)
  %5 = load ptr, ptr @spec_info, align 8, !tbaa !701
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !1794

7:                                                ; preds = %3
  store i8 4, ptr getelementptr inbounds (%struct.sched_deps_info_def, ptr @deps_init_id_sched_deps_info, i64 0, i32 12), align 8
  br label %8

8:                                                ; preds = %7, %3
  store ptr @deps_init_id_sched_deps_info, ptr @sched_deps_info, align 8, !tbaa !701
  call void @deps_analyze_insn(ptr noundef nonnull %4, ptr noundef %1) #23
  call void @free_deps(ptr noundef nonnull %4) #23
  store ptr null, ptr @deps_init_id_data.1, align 8, !tbaa !1792
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @hash_with_unspec_callback(ptr noundef %0, i32 %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 !prof !714 !PGOFuncName !1795 {
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
  %16 = load ptr, ptr %15, align 8, !tbaa !706
  %17 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !701
  store ptr %18, ptr %2, align 8, !tbaa !701
  store i32 0, ptr %3, align 4, !tbaa !786
  br label %19

19:                                               ; preds = %4, %11, %14
  %20 = phi i32 [ 1, %14 ], [ 0, %11 ], [ 0, %4 ]
  ret i32 %20
}

; Function Attrs: optsize
declare i32 @hash_rtx_cb(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @haifa_classify_insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_id_for_insn(ptr nocapture noundef writeonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !954 !PGOFuncName !1796 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp ne i32 %5, 8
  %7 = icmp ne i8 %2, 0
  %8 = or i1 %7, %6
  br i1 %8, label %9, label %17, !prof !1797

9:                                                ; preds = %3
  %10 = trunc i32 %4 to i16
  switch i16 %10, label %17 [
    i16 9, label %11
    i16 7, label %15
  ], !prof !1798

11:                                               ; preds = %9
  %12 = tail call i32 @simplejump_p(ptr noundef nonnull %1) #23
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 9, i32 36, !prof !1799
  br label %17

15:                                               ; preds = %9
  %16 = select i1 %7, i32 8, i32 24
  br label %17

17:                                               ; preds = %11, %9, %3, %15
  %18 = phi i32 [ %16, %15 ], [ 23, %3 ], [ %5, %9 ], [ %14, %11 ]
  store i32 %18, ptr %0, align 8, !tbaa !1800
  %19 = tail call ptr @get_clear_regset_from_pool() #22
  %20 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !1801
  %21 = tail call ptr @get_clear_regset_from_pool() #22
  %22 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 5
  store ptr %21, ptr %22, align 8, !tbaa !1802
  %23 = tail call ptr @get_clear_regset_from_pool() #22
  %24 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 4
  store ptr %23, ptr %24, align 8, !tbaa !1803
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @setup_id_lhs_rhs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #11 !prof !1627 !PGOFuncName !1804 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !706
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 8
  br i1 %8, label %9, label %22, !prof !1805

9:                                                ; preds = %3
  %10 = load i32, ptr %5, align 8
  %11 = and i32 %10, 65535
  %12 = icmp ne i32 %11, 23
  %13 = icmp ne i8 %2, 0
  %14 = or i1 %13, %12
  br i1 %14, label %22, label %15, !prof !1806

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %17 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !706
  %19 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !1807
  %20 = load ptr, ptr %16, align 8, !tbaa !706
  %21 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !1808
  br label %24

22:                                               ; preds = %9, %3
  %23 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  br label %24

24:                                               ; preds = %22, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_downgrade_id_to_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1627 !PGOFuncName !1809 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !706
  %5 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1808
  %7 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1807
  %9 = load i32, ptr %0, align 8, !tbaa !1800
  %10 = icmp eq i32 %9, 23
  br i1 %10, label %11, label %58, !prof !1810

11:                                               ; preds = %2
  %12 = icmp eq ptr %6, null
  br i1 %12, label %57, label %13, !prof !1811

13:                                               ; preds = %11
  %14 = tail call fastcc zeroext i8 @lhs_and_rhs_separable_p(ptr noundef nonnull %6, ptr noundef %8) #22, !range !726
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %57, label %16, !prof !1812

16:                                               ; preds = %13
  %17 = load ptr, ptr @df, align 8, !tbaa !701
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !1780
  %20 = zext i32 %4 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !701
  %23 = getelementptr inbounds %struct.df_insn_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !1813
  %25 = load ptr, ptr %24, align 8, !tbaa !701
  %26 = icmp eq ptr %25, null
  br i1 %26, label %58, label %31, !prof !1815

27:                                               ; preds = %52
  %28 = getelementptr inbounds ptr, ptr %33, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !701
  %30 = icmp eq ptr %29, null
  br i1 %30, label %58, label %31, !prof !1816, !llvm.loop !1817

31:                                               ; preds = %16, %27
  %32 = phi ptr [ %29, %27 ], [ %25, %16 ]
  %33 = phi ptr [ %28, %27 ], [ %24, %16 ]
  %34 = getelementptr inbounds %struct.df_base_ref, ptr %32, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !706
  %36 = load ptr, ptr %35, align 8, !tbaa !1818
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38, !prof !1819

38:                                               ; preds = %31
  %39 = load i32, ptr %32, align 8
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %52, label %41, !prof !1820

41:                                               ; preds = %38
  %42 = and i32 %39, 254
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.df_regular_ref, ptr %32, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !706
  br label %47

47:                                               ; preds = %41, %44
  %48 = phi ptr [ %46, %44 ], [ null, %41 ]
  %49 = load ptr, ptr %7, align 8, !tbaa !1807
  %50 = tail call i32 @loc_mentioned_in_p(ptr noundef %48, ptr noundef %49) #23
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47, %38, %31
  %53 = getelementptr inbounds %struct.df_base_ref, ptr %32, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !706
  %55 = and i32 %54, -8
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %57, label %27, !prof !1819

57:                                               ; preds = %52, %47, %11, %13
  store i32 24, ptr %0, align 8, !tbaa !1800
  br label %58

58:                                               ; preds = %27, %57, %16, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_id_reg_sets(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1627 !PGOFuncName !1821 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !706
  %5 = tail call ptr @get_clear_regset_from_pool() #22
  %6 = load ptr, ptr @df, align 8, !tbaa !701
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !1780
  %9 = zext i32 %4 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !701
  %12 = getelementptr inbounds %struct.df_insn_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1813
  %14 = load ptr, ptr %13, align 8, !tbaa !701
  %15 = icmp eq ptr %14, null
  br i1 %15, label %58, label %16, !prof !1822

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 4
  br label %18

18:                                               ; preds = %16, %48
  %19 = phi ptr [ %14, %16 ], [ %50, %48 ]
  %20 = phi ptr [ %13, %16 ], [ %49, %48 ]
  %21 = getelementptr inbounds %struct.df_base_ref, ptr %19, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !706
  %23 = load i32, ptr %19, align 8
  %24 = and i32 %23, -2139095040
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35, !prof !1823

26:                                               ; preds = %18
  %27 = and i32 %23, 4194304
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40, !prof !1824

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !1801
  %32 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %31, i32 noundef %22) #23
  %33 = and i32 %22, -8
  %34 = icmp eq i32 %33, 8
  br i1 %34, label %35, label %40, !prof !1825

35:                                               ; preds = %29, %18
  %36 = phi ptr [ %17, %18 ], [ %30, %29 ]
  %37 = phi i32 [ %22, %18 ], [ 8, %29 ]
  %38 = load ptr, ptr %36, align 8, !tbaa !701
  %39 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %38, i32 noundef %37) #23
  br label %40

40:                                               ; preds = %35, %26, %29
  %41 = load i32, ptr %19, align 8
  %42 = and i32 %41, 65536
  %43 = icmp ne i32 %42, 0
  %44 = icmp eq i32 %22, 7
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %46, label %48, !prof !1826

46:                                               ; preds = %40
  %47 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %22) #23
  br label %48

48:                                               ; preds = %40, %46
  %49 = getelementptr inbounds ptr, ptr %20, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !701
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %18, !prof !1827, !llvm.loop !1828

52:                                               ; preds = %48
  %53 = load ptr, ptr @df, align 8, !tbaa !701
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 10
  %55 = load ptr, ptr %54, align 8, !tbaa !1780
  %56 = getelementptr inbounds ptr, ptr %55, i64 %9
  %57 = load ptr, ptr %56, align 8, !tbaa !701
  br label %58

58:                                               ; preds = %52, %2
  %59 = phi ptr [ %57, %52 ], [ %11, %2 ]
  %60 = getelementptr inbounds %struct.df_insn_info, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !1829
  %62 = load ptr, ptr %61, align 8, !tbaa !701
  %63 = icmp eq ptr %62, null
  br i1 %63, label %90, label %64, !prof !1830

64:                                               ; preds = %58, %86
  %65 = phi ptr [ %88, %86 ], [ %62, %58 ]
  %66 = phi ptr [ %87, %86 ], [ %61, %58 ]
  %67 = getelementptr inbounds %struct.df_base_ref, ptr %65, i64 0, i32 6
  %68 = load i32, ptr %67, align 8, !tbaa !706
  %69 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %68) #23
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71, !prof !1831

71:                                               ; preds = %64
  %72 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %5, i32 noundef %68) #23
  br label %86

73:                                               ; preds = %64
  %74 = load i32, ptr %65, align 8
  %75 = and i32 %74, 536870912
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %86, !prof !1832

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.idata_def, ptr %0, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !1802
  %80 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %79, i32 noundef %68) #23
  %81 = and i32 %68, -8
  %82 = icmp eq i32 %81, 8
  br i1 %82, label %83, label %86, !prof !1833

83:                                               ; preds = %77
  %84 = load ptr, ptr %78, align 8, !tbaa !1802
  %85 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %84, i32 noundef 8) #23
  br label %86

86:                                               ; preds = %73, %83, %77, %71
  %87 = getelementptr inbounds ptr, ptr %66, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !701
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %64, !prof !1834, !llvm.loop !1835

90:                                               ; preds = %86, %58
  tail call void @return_regset_to_pool(ptr noundef %5) #22
  ret void
}

; Function Attrs: optsize
declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @lhs_and_rhs_separable_p(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #9 !prof !1836 !PGOFuncName !1837 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4, !prof !1838

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8
  %6 = freeze i32 %5
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !786
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
declare i32 @loc_mentioned_in_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deps_init_id_start_insn(ptr noundef %0) #0 !prof !1788 !PGOFuncName !1839 {
  %2 = load i32, ptr @deps_init_id_data.0, align 8, !tbaa !1790
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %5, label %4, !prof !1794

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2391, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !1792
  %7 = load i8, ptr @deps_init_id_data.2, align 8, !tbaa !1793
  tail call fastcc void @setup_id_for_insn(ptr noundef %6, ptr noundef %0, i8 noundef zeroext %7) #22
  store i32 0, ptr @deps_init_id_data.0, align 8, !tbaa !1790
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deps_init_id_finish_insn() #0 !prof !1788 !PGOFuncName !1840 {
  %1 = load i32, ptr @deps_init_id_data.0, align 8, !tbaa !1790
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !1794

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2489, ptr noundef nonnull @.str.1) #23
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !1792
  %6 = load i32, ptr %5, align 8, !tbaa !1800
  %7 = icmp eq i32 %6, 23
  br i1 %7, label %8, label %28, !prof !1794

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.idata_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !1808
  %11 = getelementptr inbounds %struct.idata_def, ptr %5, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !1807
  %13 = icmp eq ptr %10, null
  %14 = icmp eq ptr %12, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %21, label %16, !prof !1841

16:                                               ; preds = %8
  %17 = tail call fastcc zeroext i8 @lhs_and_rhs_separable_p(ptr noundef nonnull %10, ptr noundef nonnull %12) #22, !range !726
  %18 = icmp eq i8 %17, 0
  %19 = load i1, ptr @deps_init_id_data.3, align 8
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %28, !prof !1842

21:                                               ; preds = %8, %16
  %22 = icmp ne ptr %12, null
  %23 = xor i1 %13, %22
  br i1 %23, label %26, label %24, !prof !1843

24:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2504, ptr noundef nonnull @.str.1) #23
  %25 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !1792
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi ptr [ %5, %21 ], [ %25, %24 ]
  store i32 24, ptr %27, align 8, !tbaa !1800
  br label %28

28:                                               ; preds = %26, %16, %4
  store i32 3, ptr @deps_init_id_data.0, align 8, !tbaa !1790
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deps_init_id_start_lhs(ptr noundef %0) #0 !prof !949 !PGOFuncName !1844 {
  %2 = load i32, ptr @deps_init_id_data.0, align 8, !tbaa !1790
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !951

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2402, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !1792
  %7 = getelementptr inbounds %struct.idata_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1808
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !951

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2403, ptr noundef nonnull @.str.1) #23
  %11 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !1792
  br label %12

12:                                               ; preds = %5, %10
  %13 = phi ptr [ %6, %5 ], [ %11, %10 ]
  %14 = load i32, ptr %13, align 8, !tbaa !1800
  %15 = icmp eq i32 %14, 23
  br i1 %15, label %16, label %18, !prof !951

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.idata_def, ptr %13, i64 0, i32 1
  store ptr %0, ptr %17, align 8, !tbaa !1808
  store i32 1, ptr @deps_init_id_data.0, align 8, !tbaa !1790
  br label %18

18:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @deps_init_id_finish_lhs() #15 !prof !949 !PGOFuncName !1845 {
  store i32 0, ptr @deps_init_id_data.0, align 8, !tbaa !1790
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deps_init_id_start_rhs(ptr noundef %0) #0 !prof !949 !PGOFuncName !1846 {
  %2 = load i32, ptr @deps_init_id_data.0, align 8, !tbaa !1790
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !951

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2466, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !1792
  %7 = getelementptr inbounds %struct.idata_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1808
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1847

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.idata_def, ptr %6, i64 0, i32 2
  store ptr %0, ptr %11, align 8, !tbaa !1807
  store i32 2, ptr @deps_init_id_data.0, align 8, !tbaa !1790
  br label %12

12:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deps_init_id_finish_rhs() #0 !prof !949 !PGOFuncName !1848 {
  %1 = load i32, ptr @deps_init_id_data.0, align 8, !tbaa !1790
  switch i32 %1, label %2 [
    i32 2, label %3
    i32 0, label %3
  ], !prof !1849

2:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2481, ptr noundef nonnull @.str.1) #23
  br label %3

3:                                                ; preds = %0, %0, %2
  store i32 0, ptr @deps_init_id_data.0, align 8, !tbaa !1790
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deps_init_id_note_reg_set(i32 noundef %0) #0 !prof !1850 !PGOFuncName !1851 {
  tail call void @haifa_note_reg_set(i32 noundef %0) #23
  %2 = load i32, ptr @deps_init_id_data.0, align 8, !tbaa !1790
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %4, label %5, !prof !1852

4:                                                ; preds = %1
  store i1 true, ptr @deps_init_id_data.3, align 8
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !1792
  %7 = load i32, ptr %6, align 8, !tbaa !1800
  %8 = icmp eq i32 %7, 36
  br i1 %8, label %13, label %9, !prof !1852

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.idata_def, ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !1801
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %0) #23
  br label %13

13:                                               ; preds = %9, %5
  %14 = and i32 %0, -8
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %16, label %17, !prof !1852

16:                                               ; preds = %13
  store i1 true, ptr @deps_init_id_data.3, align 8
  br label %17

17:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deps_init_id_note_reg_clobber(i32 noundef %0) #0 !prof !714 !PGOFuncName !1853 {
  tail call void @haifa_note_reg_clobber(i32 noundef %0) #23
  %2 = load i32, ptr @deps_init_id_data.0, align 8, !tbaa !1790
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i1 true, ptr @deps_init_id_data.3, align 8
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !1792
  %7 = load i32, ptr %6, align 8, !tbaa !1800
  %8 = icmp eq i32 %7, 36
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.idata_def, ptr %6, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !1803
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %0) #23
  br label %13

13:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deps_init_id_note_reg_use(i32 noundef %0) #0 !prof !1854 !PGOFuncName !1855 {
  tail call void @haifa_note_reg_use(i32 noundef %0) #23
  %2 = load ptr, ptr @deps_init_id_data.1, align 8, !tbaa !1792
  %3 = load i32, ptr %2, align 8, !tbaa !1800
  %4 = icmp eq i32 %3, 36
  br i1 %4, label %9, label %5, !prof !1856

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.idata_def, ptr %2, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !1802
  %8 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef %0) #23
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @sel_print_insn(ptr noundef, i32 noundef) #4

; Function Attrs: optsize
declare i32 @contributes_to_priority(ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #13 !prof !714 !PGOFuncName !1857 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !701
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !1479
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1529
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #22
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !714 !PGOFuncName !1858 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1519
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !701
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !701
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !714 !PGOFuncName !1859 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !1416
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !786
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !786
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #13 !prof !714 !PGOFuncName !1860 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !701
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !1479
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1529
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #22
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @make_region_from_loop(ptr noundef %0) unnamed_addr #0 !prof !714 !PGOFuncName !1861 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !tbaa !786
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !1862
  %5 = load ptr, ptr @compiler_params, align 8, !tbaa !701
  %6 = getelementptr inbounds %struct.param_info, ptr %5, i64 79, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !1460
  %8 = icmp ugt i32 %4, %7
  br i1 %8, label %96, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %9, %16
  %12 = phi ptr [ %14, %16 ], [ %0, %9 ]
  %13 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !1531
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %10, align 8, !tbaa !1332
  %18 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %14, ptr noundef %17) #23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %11, label %96, !llvm.loop !1863

20:                                               ; preds = %11
  %21 = tail call i32 @num_loop_insns(ptr noundef nonnull %0) #23
  %22 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 1
  store i32 %21, ptr %22, align 4, !tbaa !1864
  %23 = load ptr, ptr @compiler_params, align 8, !tbaa !701
  %24 = getelementptr inbounds %struct.param_info, ptr %23, i64 80, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !1460
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %96, label %27

27:                                               ; preds = %20
  %28 = tail call ptr @get_loop_body_in_custom_order(ptr noundef nonnull %0, ptr noundef nonnull @bb_top_order_comparator) #23
  %29 = load i32, ptr %3, align 4, !tbaa !1862
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = zext i32 %29 to i64
  br label %36

33:                                               ; preds = %36
  %34 = add nuw nsw i64 %37, 1
  %35 = icmp eq i64 %34, %32
  br i1 %35, label %45, label %36, !llvm.loop !1865

36:                                               ; preds = %31, %33
  %37 = phi i64 [ 0, %31 ], [ %34, %33 ]
  %38 = getelementptr inbounds ptr, ptr %28, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !701
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 13
  %41 = load i32, ptr %40, align 8, !tbaa !1549
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %33, label %44

44:                                               ; preds = %36
  tail call void @free(ptr noundef nonnull %28) #22
  br label %96

45:                                               ; preds = %33, %27
  %46 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %0) #23
  %47 = load ptr, ptr %46, align 8, !tbaa !839
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5784, ptr noundef nonnull @.str.1) #23
  br label %50

50:                                               ; preds = %45, %49
  %51 = load ptr, ptr %28, align 8, !tbaa !701
  %52 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !1320
  %54 = icmp eq ptr %51, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5785, ptr noundef nonnull @.str.1) #23
  br label %56

56:                                               ; preds = %50, %55
  %57 = tail call fastcc i32 @sel_create_new_region() #22
  call fastcc void @sel_add_block_to_region(ptr noundef %47, ptr noundef nonnull %2, i32 noundef %57) #22
  %58 = load ptr, ptr @bbs_in_loop_rgns, align 8, !tbaa !701
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !827
  tail call fastcc void @SET_BIT(ptr noundef %58, i32 noundef %60) #22
  %61 = load i32, ptr %3, align 4, !tbaa !1862
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
  %69 = load ptr, ptr @bbs_in_loop_rgns, align 8, !tbaa !701
  br label %70

70:                                               ; preds = %65, %68
  %71 = phi ptr [ %66, %65 ], [ %69, %68 ]
  %72 = getelementptr inbounds ptr, ptr %28, i64 %67
  %73 = load ptr, ptr %72, align 8, !tbaa !701
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 9
  %75 = load i32, ptr %74, align 8, !tbaa !827
  %76 = lshr i32 %75, 6
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds %struct.simple_bitmap_def, ptr %71, i64 0, i32 3, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !1012
  %80 = and i32 %75, 63
  %81 = zext nneg i32 %80 to i64
  %82 = shl nuw i64 1, %81
  %83 = and i64 %82, %79
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %70
  call fastcc void @sel_add_block_to_region(ptr noundef nonnull %73, ptr noundef nonnull %2, i32 noundef %57) #22
  %86 = load ptr, ptr %72, align 8, !tbaa !701
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 9
  %88 = load i32, ptr %87, align 8, !tbaa !827
  tail call fastcc void @SET_BIT(ptr noundef nonnull %71, i32 noundef %88) #22
  br label %89

89:                                               ; preds = %70, %85
  %90 = add nuw nsw i64 %67, 1
  %91 = load i32, ptr %3, align 4, !tbaa !1862
  %92 = zext i32 %91 to i64
  %93 = icmp ult i64 %90, %92
  br i1 %93, label %65, label %94, !llvm.loop !1866

94:                                               ; preds = %89, %56
  tail call void @free(ptr noundef nonnull %28) #22
  %95 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  store ptr inttoptr (i64 1 to ptr), ptr %95, align 8, !tbaa !1391
  br label %96

96:                                               ; preds = %16, %20, %1, %94, %44
  %97 = phi i32 [ -1, %44 ], [ %57, %94 ], [ -1, %1 ], [ -1, %20 ], [ -1, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  ret i32 %97
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !714 !PGOFuncName !1867 {
  tail call fastcc void @VEC_loop_p_heap_reserve() #22
  %2 = load ptr, ptr @loop_nests, align 8, !tbaa !701
  tail call fastcc void @VEC_loop_p_base_quick_push(ptr noundef %2, ptr noundef %0) #22
  ret void
}

; Function Attrs: optsize
declare i32 @num_loop_insns(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_loop_body_in_custom_order(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @bb_top_order_comparator(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !714 !PGOFuncName !1868 {
  %3 = load ptr, ptr %0, align 8, !tbaa !701
  %4 = load ptr, ptr %1, align 8, !tbaa !701
  %5 = icmp eq ptr %3, %4
  %6 = load ptr, ptr @rev_top_order_index, align 8, !tbaa !701
  br i1 %5, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !827
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %6, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !786
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !827
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %6, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !786
  %18 = icmp eq i32 %12, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5737, ptr noundef nonnull @.str.1) #23
  %20 = load ptr, ptr @rev_top_order_index, align 8, !tbaa !701
  br label %21

21:                                               ; preds = %2, %7, %19
  %22 = phi ptr [ %6, %2 ], [ %6, %7 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !827
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %22, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !786
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !827
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %22, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !786
  %33 = icmp sgt i32 %27, %32
  %34 = select i1 %33, i32 -1, i32 1
  ret i32 %34
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #17 !prof !714 !PGOFuncName !1869 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1543
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
  %15 = load i64, ptr %14, align 8, !tbaa !1012
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !706
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !706
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !1012
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !1012
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_heap_reserve() unnamed_addr #0 !prof !714 !PGOFuncName !1870 {
  %1 = load ptr, ptr @loop_nests, align 8, !tbaa !701
  %2 = tail call fastcc i32 @VEC_loop_p_base_space(ptr noundef %1) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #23
  store ptr %5, ptr @loop_nests, align 8, !tbaa !701
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_loop_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !714 !PGOFuncName !1871 {
  %3 = load i32, ptr %0, align 8, !tbaa !1519
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1519
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !701
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !714 !PGOFuncName !1872 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1873
  %6 = load i32, ptr %0, align 8, !tbaa !1519
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @extend_rgns(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !714 !PGOFuncName !1874 {
  %2 = load ptr, ptr %0, align 8, !tbaa !701
  %3 = tail call fastcc i32 @VEC_basic_block_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !701
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !714 !PGOFuncName !1875 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1876
  %6 = load i32, ptr %0, align 8, !tbaa !1212
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { optsize }
attributes #23 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!699}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!35 = !{ptr @ilist_copy, ptr @_xlist_add, i64 345843}
!36 = !{ptr @_xlist_add, ptr @_list_add, i64 345843}
!37 = !{ptr @blist_add, ptr @_list_add, i64 855005}
!38 = !{ptr @_list_add, ptr @_list_alloc, i64 10532980}
!39 = !{ptr @blist_remove, ptr @av_set_clear, i64 1710010}
!40 = !{ptr @blist_remove, ptr @_list_clear, i64 855005}
!41 = !{ptr @blist_remove, ptr @_list_remove, i64 855005}
!42 = !{ptr @av_set_clear, ptr @_list_iter_start, i64 7619166}
!43 = !{ptr @av_set_clear, ptr @_list_iter_cond_expr, i64 14290060}
!44 = !{ptr @av_set_clear, ptr @av_set_iter_remove, i64 6670894}
!45 = !{ptr @av_set_clear, ptr @_list_iter_next, i64 6670894}
!46 = !{ptr @av_set_clear, ptr @fancy_abort, i64 1}
!47 = !{ptr @_list_clear, ptr @_list_remove, i64 848588}
!48 = !{ptr @_list_remove, ptr @pool_free, i64 10855068}
!49 = !{ptr @flist_clear, ptr @flist_remove, i64 401184}
!50 = !{ptr @flist_remove, ptr @fence_clear, i64 187023}
!51 = !{ptr @flist_remove, ptr @_list_remove, i64 401184}
!52 = !{ptr @def_list_add, ptr @_list_add, i64 180657}
!53 = !{ptr @create_target_context, ptr @alloc_target_context, i64 187023}
!54 = !{ptr @create_target_context, ptr @init_target_context, i64 187023}
!55 = !{ptr @reset_target_context, ptr @clear_target_context, i64 401184}
!56 = !{ptr @reset_target_context, ptr @init_target_context, i64 401184}
!57 = !{ptr @advance_deps_context, ptr @deps_analyze_insn, i64 929314}
!58 = !{ptr @init_fences, ptr @get_max_uid, i64 138099}
!59 = !{ptr @init_fences, ptr @_succ_iter_start, i64 138099}
!60 = !{ptr @init_fences, ptr @_succ_iter_cond, i64 276198}
!61 = !{ptr @init_fences, ptr @state_create, i64 138099}
!62 = !{ptr @init_fences, ptr @create_deps_context, i64 138099}
!63 = !{ptr @init_fences, ptr @create_target_context, i64 138099}
!64 = !{ptr @init_fences, ptr @xcalloc, i64 138099}
!65 = !{ptr @init_fences, ptr @flist_add, i64 138099}
!66 = !{ptr @init_fences, ptr @_succ_iter_next, i64 138099}
!67 = !{ptr @_succ_iter_start, ptr @fancy_abort, i64 2}
!68 = !{ptr @_succ_iter_start, ptr @ei_start_1, i64 1100204}
!69 = !{ptr @_succ_iter_cond, ptr @VEC_edge_base_iterate, i64 35193235}
!70 = !{ptr @_succ_iter_cond, ptr @_eligible_successor_edge_p, i64 36258653}
!71 = !{ptr @_succ_iter_cond, ptr @VEC_edge_heap_free, i64 1099789}
!72 = !{ptr @_succ_iter_cond, ptr @ei_cond, i64 4330416}
!73 = !{ptr @_succ_iter_cond, ptr @in_current_region_p, i64 1}
!74 = !{ptr @_succ_iter_cond, ptr @ei_next, i64 1}
!75 = !{ptr @_succ_iter_cond, ptr @sel_bb_head, i64 2492614}
!76 = !{ptr @_succ_iter_cond, ptr @bb_note, i64 1}
!77 = !{ptr @_succ_iter_cond, ptr @fancy_abort, i64 2}
!78 = !{ptr @_eligible_successor_edge_p, ptr @in_current_region_p, i64 4260851}
!79 = !{ptr @_eligible_successor_edge_p, ptr @fancy_abort, i64 1}
!80 = !{ptr @_eligible_successor_edge_p, ptr @sel_bb_empty_p, i64 2130426}
!81 = !{ptr @_eligible_successor_edge_p, ptr @sel_bb_empty_or_nop_p, i64 2130425}
!82 = !{ptr @_eligible_successor_edge_p, ptr @VEC_edge_base_index, i64 2}
!83 = !{ptr @_eligible_successor_edge_p, ptr @VEC_edge_base_length, i64 1}
!84 = !{ptr @flist_add, ptr @_list_add, i64 187023}
!85 = !{ptr @flist_add, ptr @fancy_abort, i64 3}
!86 = !{ptr @flist_add, ptr @init_fence_for_scheduling, i64 187023}
!87 = !{ptr @state_create, ptr @state_alloc, i64 138099}
!88 = !{ptr @state_create, ptr @state_reset, i64 138099}
!89 = !{ptr @state_create, ptr @advance_state, i64 138099}
!90 = !{ptr @create_deps_context, ptr @alloc_deps_context, i64 138099}
!91 = !{ptr @create_deps_context, ptr @init_deps, i64 138099}
!92 = !{ptr @_succ_iter_next, ptr @fancy_abort, i64 1}
!93 = !{ptr @_succ_iter_next, ptr @ei_next, i64 2130422}
!94 = !{ptr @move_fence_to_fences, ptr @flist_lookup, i64 214161}
!95 = !{ptr @move_fence_to_fences, ptr @merge_fences, i64 1}
!96 = !{ptr @move_fence_to_fences, ptr @_list_add, i64 214160}
!97 = !{ptr @move_fence_to_fences, ptr @init_fence_for_scheduling, i64 214160}
!98 = !{ptr @add_to_fences, ptr @flist_lookup, i64 48924}
!99 = !{ptr @add_to_fences, ptr @flist_add, i64 48923}
!100 = !{ptr @add_to_fences, ptr @merge_fences, i64 1}
!101 = !{ptr @add_dirty_fence_to_fences, ptr @xmalloc, i64 48924}
!102 = !{ptr @add_dirty_fence_to_fences, ptr @state_create_copy, i64 48924}
!103 = !{ptr @add_dirty_fence_to_fences, ptr @create_copy_of_deps_context, i64 48924}
!104 = !{ptr @add_dirty_fence_to_fences, ptr @create_copy_of_target_context, i64 48924}
!105 = !{ptr @add_dirty_fence_to_fences, ptr @VEC_rtx_gc_copy, i64 48924}
!106 = !{ptr @add_dirty_fence_to_fences, ptr @add_to_fences, i64 48924}
!107 = !{ptr @state_create_copy, ptr @state_alloc, i64 48924}
!108 = !{ptr @state_create_copy, ptr @state_copy, i64 48924}
!109 = !{ptr @create_copy_of_deps_context, ptr @alloc_deps_context, i64 48924}
!110 = !{ptr @create_copy_of_deps_context, ptr @copy_deps_context, i64 48924}
!111 = !{ptr @create_copy_of_target_context, ptr @alloc_target_context, i64 48924}
!112 = !{ptr @create_copy_of_target_context, ptr @copy_target_context, i64 48924}
!113 = !{ptr @VEC_rtx_gc_copy, ptr @vec_gc_p_reserve_exact, i64 48923}
!114 = !{ptr @get_regset_from_pool, ptr @bitmap_obstack_alloc_stat, i64 192295}
!115 = !{ptr @get_regset_from_pool, ptr @xrealloc, i64 349}
!116 = !{ptr @get_clear_regset_from_pool, ptr @get_regset_from_pool, i64 3258970}
!117 = !{ptr @get_clear_regset_from_pool, ptr @bitmap_clear, i64 3258970}
!118 = !{ptr @return_regset_to_pool, ptr @xrealloc, i64 349}
!119 = !{ptr @free_regset_pool, ptr @fancy_abort, i64 1}
!120 = !{ptr @free_regset_pool, ptr @bitmap_obstack_free, i64 187364}
!121 = !{ptr @free_regset_pool, ptr @free, i64 76}
!122 = !{ptr @get_nop_from_pool, ptr @emit_insn_before, i64 354461}
!123 = !{ptr @get_nop_from_pool, ptr @VEC_int_base_index, i64 354461}
!124 = !{ptr @get_nop_from_pool, ptr @VEC_sel_insn_data_def_base_index, i64 354461}
!125 = !{ptr @get_nop_from_pool, ptr @set_insn_init, i64 354461}
!126 = !{ptr @get_nop_from_pool, ptr @sel_init_new_insn, i64 354461}
!127 = !{ptr @set_insn_init, ptr @copy_expr_onside, i64 357361}
!128 = !{ptr @set_insn_init, ptr @change_vinsn_in_expr, i64 355910}
!129 = !{ptr @sel_init_new_insn, ptr @insn_is_the_only_one_in_bb_p, i64 357359}
!130 = !{ptr @sel_init_new_insn, ptr @extend_bb_info, i64 1}
!131 = !{ptr @sel_init_new_insn, ptr @create_initial_data_sets, i64 1}
!132 = !{ptr @sel_init_new_insn, ptr @sched_init_luids, i64 174643}
!133 = !{ptr @sel_init_new_insn, ptr @extend_insn_data, i64 357361}
!134 = !{ptr @sel_init_new_insn, ptr @init_insn_data, i64 357360}
!135 = !{ptr @sel_init_new_insn, ptr @clear_expr, i64 357360}
!136 = !{ptr @sel_init_new_insn, ptr @init_simplejump_data, i64 1}
!137 = !{ptr @sel_init_new_insn, ptr @fancy_abort, i64 1}
!138 = !{ptr @return_nop_to_pool, ptr @fancy_abort, i64 2}
!139 = !{ptr @return_nop_to_pool, ptr @sel_remove_insn, i64 354461}
!140 = !{ptr @return_nop_to_pool, ptr @xrealloc, i64 171743}
!141 = !{ptr @sel_remove_insn, ptr @fancy_abort, i64 3}
!142 = !{ptr @sel_remove_insn, ptr @VEC_sel_region_bb_info_def_base_index, i64 1}
!143 = !{ptr @sel_remove_insn, ptr @_list_iter_next, i64 5}
!144 = !{ptr @sel_remove_insn, ptr @_list_iter_cond_expr, i64 5}
!145 = !{ptr @sel_remove_insn, ptr @remove_insn, i64 355911}
!146 = !{ptr @sel_remove_insn, ptr @VEC_int_base_index, i64 355911}
!147 = !{ptr @sel_remove_insn, ptr @VEC_sel_insn_data_def_base_index, i64 355911}
!148 = !{ptr @sel_remove_insn, ptr @clear_expr, i64 355911}
!149 = !{ptr @sel_remove_insn, ptr @tidy_control_flow, i64 946381}
!150 = !{ptr @free_nop_pool, ptr @free, i64 138099}
!151 = !{ptr @vinsn_attach, ptr @fancy_abort, i64 1}
!152 = !{ptr @create_copy_of_insn_rtx, ptr @copy_rtx, i64 1589}
!153 = !{ptr @create_copy_of_insn_rtx, ptr @create_insn_rtx_from_pattern, i64 1589}
!154 = !{ptr @create_copy_of_insn_rtx, ptr @fancy_abort, i64 1}
!155 = !{ptr @create_vinsn_from_insn_rtx, ptr @fancy_abort, i64 1}
!156 = !{ptr @create_vinsn_from_insn_rtx, ptr @vinsn_create, i64 6158}
!157 = !{ptr @vinsn_detach, ptr @fancy_abort, i64 1}
!158 = !{ptr @vinsn_detach, ptr @vinsn_delete, i64 736178}
!159 = !{ptr @vinsn_delete, ptr @fancy_abort, i64 1}
!160 = !{ptr @vinsn_delete, ptr @return_regset_to_pool, i64 2208531}
!161 = !{ptr @vinsn_delete, ptr @free, i64 736177}
!162 = !{ptr @vinsn_cond_branch_p, ptr @control_flow_insn_p, i64 186874}
!163 = !{ptr @sel_vinsn_cost, ptr @sel_insn_rtx_cost, i64 1513}
!164 = !{ptr @sel_insn_rtx_cost, ptr @recog_memoized, i64 1514}
!165 = !{ptr @sel_insn_rtx_cost, ptr @insn_default_latency, i64 1513}
!166 = !{ptr @sel_gen_insn_from_rtx_after, ptr @fancy_abort, i64 1}
!167 = !{ptr @sel_gen_insn_from_rtx_after, ptr @emit_insn_after, i64 1450}
!168 = !{ptr @sel_gen_insn_from_rtx_after, ptr @set_insn_init, i64 1450}
!169 = !{ptr @sel_gen_insn_from_rtx_after, ptr @sel_init_new_insn, i64 1450}
!170 = !{ptr @sel_gen_insn_from_expr_after, ptr @set_insn_init, i64 1450}
!171 = !{ptr @sel_gen_insn_from_expr_after, ptr @add_insn_after, i64 1450}
!172 = !{ptr @sel_gen_insn_from_expr_after, ptr @VEC_int_base_index, i64 1450}
!173 = !{ptr @sel_gen_insn_from_expr_after, ptr @sel_init_new_insn, i64 1450}
!174 = !{ptr @sel_move_insn, ptr @VEC_int_base_index, i64 590470}
!175 = !{ptr @sel_move_insn, ptr @VEC_sel_insn_data_def_base_index, i64 590470}
!176 = !{ptr @sel_move_insn, ptr @fancy_abort, i64 1}
!177 = !{ptr @sel_move_insn, ptr @df_insn_change_bb, i64 590470}
!178 = !{ptr @sel_move_insn, ptr @prepare_insn_expr, i64 590470}
!179 = !{ptr @prepare_insn_expr, ptr @VEC_int_base_index, i64 1895662}
!180 = !{ptr @prepare_insn_expr, ptr @VEC_sel_insn_data_def_base_index, i64 1895662}
!181 = !{ptr @prepare_insn_expr, ptr @ds_get_max_dep_weak, i64 1}
!182 = !{ptr @prepare_insn_expr, ptr @free_history_vect, i64 947831}
!183 = !{ptr @find_in_history_vect, ptr @find_in_history_vect_1, i64 601603}
!184 = !{ptr @find_in_history_vect, ptr @VEC_int_base_index, i64 594145}
!185 = !{ptr @find_in_history_vect, ptr @VEC_sel_insn_data_def_base_index, i64 594145}
!186 = !{ptr @find_in_history_vect, ptr @bmp_iter_set_init, i64 1}
!187 = !{ptr @find_in_history_vect, ptr @bmp_iter_set, i64 7}
!188 = !{ptr @find_in_history_vect, ptr @bmp_iter_next, i64 6}
!189 = !{ptr @find_in_history_vect_1, ptr @VEC_expr_history_def_base_length, i64 607372}
!190 = !{ptr @find_in_history_vect_1, ptr @VEC_expr_history_def_base_address, i64 31653}
!191 = !{ptr @find_in_history_vect_1, ptr @vinsn_equal_p, i64 1}
!192 = !{ptr @insert_in_history_vect, ptr @find_in_history_vect_1, i64 5775}
!193 = !{ptr @insert_in_history_vect, ptr @VEC_expr_history_def_base_index, i64 1}
!194 = !{ptr @insert_in_history_vect, ptr @vinsn_attach, i64 11548}
!195 = !{ptr @insert_in_history_vect, ptr @VEC_expr_history_def_heap_safe_insert, i64 5774}
!196 = !{ptr @VEC_expr_history_def_heap_safe_insert, ptr @VEC_expr_history_def_heap_reserve, i64 5775}
!197 = !{ptr @VEC_expr_history_def_heap_safe_insert, ptr @VEC_expr_history_def_base_quick_insert, i64 5775}
!198 = !{ptr @vinsn_equal_p, ptr @fancy_abort, i64 2}
!199 = !{ptr @vinsn_equal_p, ptr @rtx_equal_p_cb, i64 7807}
!200 = !{ptr @copy_expr, ptr @VEC_expr_history_def_heap_copy, i64 69846}
!201 = !{ptr @copy_expr, ptr @VEC_expr_history_def_base_iterate, i64 139692}
!202 = !{ptr @copy_expr, ptr @vinsn_attach, i64 139692}
!203 = !{ptr @copy_expr, ptr @init_expr, i64 9115103}
!204 = !{ptr @VEC_expr_history_def_heap_copy, ptr @vec_heap_o_reserve_exact, i64 69844}
!205 = !{ptr @init_expr, ptr @vinsn_attach, i64 11770523}
!206 = !{ptr @copy_expr_onside, ptr @init_expr, i64 2064950}
!207 = !{ptr @change_vinsn_in_expr, ptr @vinsn_detach, i64 375156}
!208 = !{ptr @change_vinsn_in_expr, ptr @vinsn_attach, i64 375156}
!209 = !{ptr @clear_expr, ptr @vinsn_detach, i64 11770523}
!210 = !{ptr @clear_expr, ptr @free_history_vect, i64 11770523}
!211 = !{ptr @free_history_vect, ptr @VEC_expr_history_def_base_iterate, i64 151242}
!212 = !{ptr @free_history_vect, ptr @vinsn_detach, i64 151242}
!213 = !{ptr @free_history_vect, ptr @VEC_expr_history_def_heap_free, i64 75621}
!214 = !{ptr @create_insn_rtx_from_pattern, ptr @fancy_abort, i64 4}
!215 = !{ptr @create_insn_rtx_from_pattern, ptr @start_sequence, i64 7608}
!216 = !{ptr @create_insn_rtx_from_pattern, ptr @emit_insn, i64 7607}
!217 = !{ptr @create_insn_rtx_from_pattern, ptr @end_sequence, i64 7608}
!218 = !{ptr @create_insn_rtx_from_pattern, ptr @sched_init_luids, i64 7608}
!219 = !{ptr @create_insn_rtx_from_pattern, ptr @sched_extend_target, i64 7608}
!220 = !{ptr @create_insn_rtx_from_pattern, ptr @sched_deps_init, i64 7608}
!221 = !{ptr @create_insn_rtx_from_pattern, ptr @recog_memoized, i64 7608}
!222 = !{ptr @expr_dest_regno, ptr @expr_dest_reg, i64 525376}
!223 = !{ptr @expr_dest_regno, ptr @fancy_abort, i64 1}
!224 = !{ptr @expr_dest_regno, ptr @rhs_regno, i64 525376}
!225 = !{ptr @mark_unavailable_targets, ptr @_list_iter_start, i64 1713459}
!226 = !{ptr @mark_unavailable_targets, ptr @_list_iter_cond_expr, i64 2412594}
!227 = !{ptr @mark_unavailable_targets, ptr @av_set_lookup, i64 699135}
!228 = !{ptr @mark_unavailable_targets, ptr @set_unavailable_target_for_expr, i64 699134}
!229 = !{ptr @mark_unavailable_targets, ptr @_list_iter_next, i64 699135}
!230 = !{ptr @av_set_lookup, ptr @_list_iter_start, i64 7872137}
!231 = !{ptr @av_set_lookup, ptr @_list_iter_cond_expr, i64 12087221}
!232 = !{ptr @av_set_lookup, ptr @vinsn_equal_p, i64 7885183}
!233 = !{ptr @av_set_lookup, ptr @_list_iter_next, i64 4215084}
!234 = !{ptr @set_unavailable_target_for_expr, ptr @rhs_regno, i64 260134}
!235 = !{ptr @set_unavailable_target_for_expr, ptr @bitmap_bit_p, i64 578063}
!236 = !{ptr @set_unavailable_target_for_expr, ptr @bmp_iter_set_init, i64 878620}
!237 = !{ptr @set_unavailable_target_for_expr, ptr @bmp_iter_set, i64 1025732}
!238 = !{ptr @set_unavailable_target_for_expr, ptr @bmp_iter_next, i64 147112}
!239 = !{ptr @av_set_add, ptr @fancy_abort, i64 1}
!240 = !{ptr @av_set_add, ptr @av_set_add_element, i64 8750291}
!241 = !{ptr @av_set_add, ptr @copy_expr, i64 8750291}
!242 = !{ptr @av_set_add_element, ptr @_list_add, i64 8750291}
!243 = !{ptr @av_set_iter_remove, ptr @clear_expr, i64 8750291}
!244 = !{ptr @av_set_iter_remove, ptr @_list_iter_remove, i64 8750291}
!245 = !{ptr @_list_iter_remove, ptr @fancy_abort, i64 2}
!246 = !{ptr @_list_iter_remove, ptr @_list_remove, i64 8750291}
!247 = !{ptr @merge_with_other_exprs, ptr @av_set_lookup_other_equiv_expr, i64 5775}
!248 = !{ptr @merge_with_other_exprs, ptr @merge_expr, i64 1}
!249 = !{ptr @merge_with_other_exprs, ptr @av_set_iter_remove, i64 1}
!250 = !{ptr @av_set_lookup_other_equiv_expr, ptr @_list_iter_start, i64 5775}
!251 = !{ptr @av_set_lookup_other_equiv_expr, ptr @_list_iter_cond_expr, i64 14382}
!252 = !{ptr @av_set_lookup_other_equiv_expr, ptr @vinsn_equal_p, i64 2834}
!253 = !{ptr @av_set_lookup_other_equiv_expr, ptr @_list_iter_next, i64 8607}
!254 = !{ptr @av_set_is_in_p, ptr @av_set_lookup, i64 1925532}
!255 = !{ptr @av_set_copy, ptr @_list_iter_start, i64 3654747}
!256 = !{ptr @av_set_copy, ptr @_list_iter_cond_expr, i64 8612467}
!257 = !{ptr @av_set_copy, ptr @av_set_add, i64 4957720}
!258 = !{ptr @av_set_copy, ptr @_list_iter_next, i64 4957720}
!259 = !{ptr @av_set_union_and_clear, ptr @_list_iter_start, i64 1821810}
!260 = !{ptr @av_set_union_and_clear, ptr @_list_iter_cond_expr, i64 2423408}
!261 = !{ptr @av_set_union_and_clear, ptr @av_set_lookup, i64 601598}
!262 = !{ptr @av_set_union_and_clear, ptr @merge_expr, i64 1}
!263 = !{ptr @av_set_union_and_clear, ptr @av_set_iter_remove, i64 1}
!264 = !{ptr @av_set_union_and_clear, ptr @_list_iter_next, i64 601598}
!265 = !{ptr @av_set_union_and_clear, ptr @join_distinct_sets, i64 1821810}
!266 = !{ptr @join_distinct_sets, ptr @fancy_abort, i64 1}
!267 = !{ptr @av_set_leave_one_nonspec, ptr @_list_iter_start, i64 1021630}
!268 = !{ptr @av_set_leave_one_nonspec, ptr @_list_iter_cond_expr, i64 2043260}
!269 = !{ptr @av_set_leave_one_nonspec, ptr @av_set_iter_remove, i64 1}
!270 = !{ptr @av_set_leave_one_nonspec, ptr @_list_iter_next, i64 1021630}
!271 = !{ptr @av_set_substract_cond_branches, ptr @_list_iter_start, i64 1027755}
!272 = !{ptr @av_set_substract_cond_branches, ptr @_list_iter_cond_expr, i64 1726889}
!273 = !{ptr @av_set_substract_cond_branches, ptr @vinsn_cond_branch_p, i64 699134}
!274 = !{ptr @av_set_substract_cond_branches, ptr @av_set_iter_remove, i64 91}
!275 = !{ptr @av_set_substract_cond_branches, ptr @_list_iter_next, i64 699134}
!276 = !{ptr @av_set_split_usefulness, ptr @_list_iter_start, i64 416966}
!277 = !{ptr @av_set_split_usefulness, ptr @_list_iter_cond_expr, i64 1116099}
!278 = !{ptr @av_set_split_usefulness, ptr @_list_iter_next, i64 699133}
!279 = !{ptr @av_set_intersect, ptr @_list_iter_start, i64 261291}
!280 = !{ptr @av_set_intersect, ptr @_list_iter_cond_expr, i64 523398}
!281 = !{ptr @av_set_intersect, ptr @av_set_lookup, i64 262107}
!282 = !{ptr @av_set_intersect, ptr @av_set_iter_remove, i64 817}
!283 = !{ptr @av_set_intersect, ptr @_list_iter_next, i64 262107}
!284 = !{ptr @free_data_for_scheduled_insn, ptr @first_time_insn_init, i64 1183840}
!285 = !{ptr @free_data_for_scheduled_insn, ptr @fancy_abort, i64 1}
!286 = !{ptr @free_data_for_scheduled_insn, ptr @VEC_int_base_index, i64 5919201}
!287 = !{ptr @free_data_for_scheduled_insn, ptr @VEC_sel_insn_data_def_base_index, i64 5919201}
!288 = !{ptr @free_data_for_scheduled_insn, ptr @bitmap_obstack_free, i64 1183841}
!289 = !{ptr @free_data_for_scheduled_insn, ptr @htab_delete, i64 591920}
!290 = !{ptr @free_data_for_scheduled_insn, ptr @free_deps, i64 591920}
!291 = !{ptr @first_time_insn_init, ptr @VEC_int_base_index, i64 2898234}
!292 = !{ptr @first_time_insn_init, ptr @VEC_sel_insn_data_def_base_index, i64 2898234}
!293 = !{ptr @sel_init_global_and_expr, ptr @sched_scan, i64 138099}
!294 = !{ptr @init_global_and_expr_for_bb, ptr @sel_bb_empty_p, i64 187028}
!295 = !{ptr @init_global_and_expr_for_bb, ptr @invalidate_av_set, i64 187027}
!296 = !{ptr @extend_insn_data, ptr @sched_extend_target, i64 495460}
!297 = !{ptr @extend_insn_data, ptr @sched_deps_init, i64 495460}
!298 = !{ptr @extend_insn_data, ptr @VEC_sel_insn_data_def_base_length, i64 495460}
!299 = !{ptr @extend_insn_data, ptr @VEC_sel_insn_data_def_base_space, i64 235626}
!300 = !{ptr @extend_insn_data, ptr @VEC_sel_insn_data_def_heap_safe_grow_cleared, i64 235625}
!301 = !{ptr @init_global_and_expr_for_insn, ptr @fancy_abort, i64 1}
!302 = !{ptr @init_global_and_expr_for_insn, ptr @VEC_int_base_index, i64 1771413}
!303 = !{ptr @init_global_and_expr_for_insn, ptr @VEC_sel_insn_data_def_base_index, i64 1112215}
!304 = !{ptr @init_global_and_expr_for_insn, ptr @asm_noperands, i64 590469}
!305 = !{ptr @init_global_and_expr_for_insn, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 1180940}
!306 = !{ptr @init_global_and_expr_for_insn, ptr @prologue_epilogue_contains, i64 521740}
!307 = !{ptr @init_global_and_expr_for_insn, ptr @can_throw_internal, i64 1}
!308 = !{ptr @init_global_and_expr_for_insn, ptr @control_flow_insn_p, i64 521221}
!309 = !{ptr @init_global_and_expr_for_insn, ptr @ds_get_max_dep_weak, i64 1}
!310 = !{ptr @init_global_and_expr_for_insn, ptr @vinsn_create, i64 590470}
!311 = !{ptr @init_global_and_expr_for_insn, ptr @VEC_haifa_insn_data_def_base_index, i64 590470}
!312 = !{ptr @init_global_and_expr_for_insn, ptr @init_expr, i64 590470}
!313 = !{ptr @init_global_and_expr_for_insn, ptr @init_first_time_insn_data, i64 590470}
!314 = !{ptr @sel_finish_global_and_expr, ptr @VEC_basic_block_heap_alloc, i64 138099}
!315 = !{ptr @sel_finish_global_and_expr, ptr @VEC_basic_block_base_index, i64 187023}
!316 = !{ptr @sel_finish_global_and_expr, ptr @VEC_basic_block_base_quick_push, i64 187023}
!317 = !{ptr @sel_finish_global_and_expr, ptr @sched_scan, i64 138099}
!318 = !{ptr @sel_finish_global_and_expr, ptr @VEC_basic_block_heap_free, i64 138099}
!319 = !{ptr @sel_finish_global_and_expr, ptr @finish_insns, i64 138099}
!320 = !{ptr @VEC_basic_block_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 138099}
!321 = !{ptr @finish_global_and_expr_for_bb, ptr @VEC_sel_region_bb_info_def_base_index, i64 374046}
!322 = !{ptr @finish_global_and_expr_for_bb, ptr @av_set_clear, i64 187023}
!323 = !{ptr @finish_global_and_expr_insn, ptr @fancy_abort, i64 1}
!324 = !{ptr @finish_global_and_expr_insn, ptr @VEC_int_base_index, i64 2367677}
!325 = !{ptr @finish_global_and_expr_insn, ptr @free_first_time_insn_data, i64 591919}
!326 = !{ptr @finish_global_and_expr_insn, ptr @VEC_sel_insn_data_def_base_index, i64 1183838}
!327 = !{ptr @finish_global_and_expr_insn, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 591919}
!328 = !{ptr @finish_global_and_expr_insn, ptr @clear_expr, i64 591919}
!329 = !{ptr @VEC_basic_block_heap_free, ptr @free, i64 138098}
!330 = !{ptr @finish_insns, ptr @VEC_sel_insn_data_def_base_length, i64 1362768}
!331 = !{ptr @finish_insns, ptr @VEC_sel_insn_data_def_base_index, i64 1224669}
!332 = !{ptr @finish_insns, ptr @return_regset_to_pool, i64 173193}
!333 = !{ptr @finish_insns, ptr @bitmap_obstack_free, i64 2902}
!334 = !{ptr @finish_insns, ptr @htab_delete, i64 1451}
!335 = !{ptr @finish_insns, ptr @free_deps, i64 1451}
!336 = !{ptr @finish_insns, ptr @clear_expr, i64 1}
!337 = !{ptr @finish_insns, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 1}
!338 = !{ptr @finish_insns, ptr @VEC_sel_insn_data_def_heap_free, i64 138099}
!339 = !{ptr @has_dependence_p, ptr @VEC_int_base_index, i64 599120}
!340 = !{ptr @has_dependence_p, ptr @VEC_sel_insn_data_def_base_index, i64 599120}
!341 = !{ptr @has_dependence_p, ptr @init_deps_reg_last, i64 337393}
!342 = !{ptr @has_dependence_p, ptr @advance_deps_context, i64 337393}
!343 = !{ptr @has_dependence_p, ptr @sel_clear_has_dependence, i64 599119}
!344 = !{ptr @has_dependence_p, ptr @setup_has_dependence_sched_deps_info, i64 599119}
!345 = !{ptr @has_dependence_p, ptr @deps_analyze_insn, i64 599119}
!346 = !{ptr @has_dependence_p, ptr @sel_insn_is_speculation_check, i64 52671}
!347 = !{ptr @has_dependence_p, ptr @ds_full_merge, i64 1797355}
!348 = !{ptr @sel_insn_is_speculation_check, ptr @VEC_int_base_index, i64 3228134}
!349 = !{ptr @sel_insn_is_speculation_check, ptr @VEC_sel_insn_data_def_base_index, i64 3228134}
!350 = !{ptr @tick_check_p, ptr @fancy_abort, i64 1}
!351 = !{ptr @tick_check_p, ptr @deps_analyze_insn, i64 1075708}
!352 = !{ptr @lhs_of_insn_equals_to_dest_p, ptr @VEC_int_base_index, i64 123805}
!353 = !{ptr @lhs_of_insn_equals_to_dest_p, ptr @VEC_sel_insn_data_def_base_index, i64 123805}
!354 = !{ptr @lhs_of_insn_equals_to_dest_p, ptr @rtx_equal_p, i64 62933}
!355 = !{ptr @get_dest_and_mode, ptr @fancy_abort, i64 4}
!356 = !{ptr @bookkeeping_can_be_created_if_moved_through_p, ptr @_succ_iter_start, i64 158556}
!357 = !{ptr @bookkeeping_can_be_created_if_moved_through_p, ptr @_succ_iter_cond, i64 317111}
!358 = !{ptr @bookkeeping_can_be_created_if_moved_through_p, ptr @sel_num_cfg_preds_gt_1, i64 158556}
!359 = !{ptr @bookkeeping_can_be_created_if_moved_through_p, ptr @_succ_iter_next, i64 158555}
!360 = !{ptr @sel_num_cfg_preds_gt_1, ptr @sel_bb_head_p, i64 177608}
!361 = !{ptr @sel_num_cfg_preds_gt_1, ptr @VEC_edge_base_length, i64 19053}
!362 = !{ptr @sel_num_cfg_preds_gt_1, ptr @VEC_edge_base_index, i64 38104}
!363 = !{ptr @sel_num_cfg_preds_gt_1, ptr @fancy_abort, i64 1}
!364 = !{ptr @sel_num_cfg_preds_gt_1, ptr @sel_bb_empty_p, i64 19052}
!365 = !{ptr @tidy_control_flow, ptr @maybe_tidy_empty_bb, i64 965433}
!366 = !{ptr @tidy_control_flow, ptr @jump_leads_only_to_bb_p, i64 373511}
!367 = !{ptr @tidy_control_flow, ptr @VEC_int_base_index, i64 1}
!368 = !{ptr @tidy_control_flow, ptr @VEC_sel_insn_data_def_base_index, i64 1}
!369 = !{ptr @tidy_control_flow, ptr @sel_bb_head, i64 373508}
!370 = !{ptr @tidy_control_flow, ptr @sel_bb_end, i64 373508}
!371 = !{ptr @tidy_control_flow, ptr @sel_bb_empty_p, i64 33954}
!372 = !{ptr @tidy_control_flow, ptr @VEC_edge_base_length, i64 6}
!373 = !{ptr @tidy_control_flow, ptr @VEC_edge_base_index, i64 5}
!374 = !{ptr @tidy_control_flow, ptr @single_succ, i64 4}
!375 = !{ptr @tidy_control_flow, ptr @in_current_region_p, i64 4}
!376 = !{ptr @maybe_tidy_empty_bb, ptr @sel_bb_empty_p, i64 1152461}
!377 = !{ptr @maybe_tidy_empty_bb, ptr @single_succ_p, i64 9}
!378 = !{ptr @maybe_tidy_empty_bb, ptr @single_succ, i64 8}
!379 = !{ptr @maybe_tidy_empty_bb, ptr @single_pred_p, i64 1}
!380 = !{ptr @maybe_tidy_empty_bb, ptr @VEC_edge_base_length, i64 10}
!381 = !{ptr @maybe_tidy_empty_bb, ptr @ei_start_1, i64 4}
!382 = !{ptr @maybe_tidy_empty_bb, ptr @ei_cond, i64 13}
!383 = !{ptr @maybe_tidy_empty_bb, ptr @ei_next, i64 6}
!384 = !{ptr @maybe_tidy_empty_bb, ptr @free_data_sets, i64 3}
!385 = !{ptr @maybe_tidy_empty_bb, ptr @can_merge_blocks_p, i64 3}
!386 = !{ptr @maybe_tidy_empty_bb, ptr @in_current_region_p, i64 3}
!387 = !{ptr @maybe_tidy_empty_bb, ptr @move_bb_info, i64 2}
!388 = !{ptr @maybe_tidy_empty_bb, ptr @remove_empty_bb, i64 3}
!389 = !{ptr @jump_leads_only_to_bb_p, ptr @onlyjump_p, i64 373513}
!390 = !{ptr @jump_leads_only_to_bb_p, ptr @any_uncondjump_p, i64 339481}
!391 = !{ptr @jump_leads_only_to_bb_p, ptr @VEC_edge_base_length, i64 43347}
!392 = !{ptr @jump_leads_only_to_bb_p, ptr @VEC_edge_base_index, i64 43346}
!393 = !{ptr @sel_bb_head, ptr @fancy_abort, i64 1}
!394 = !{ptr @sel_bb_head, ptr @bb_note, i64 30790846}
!395 = !{ptr @sel_bb_head, ptr @next_nonnote_insn, i64 30790846}
!396 = !{ptr @sel_bb_end, ptr @sel_bb_empty_p, i64 6627911}
!397 = !{ptr @sel_bb_end, ptr @fancy_abort, i64 1}
!398 = !{ptr @sel_bb_empty_p, ptr @sel_bb_head, i64 11752686}
!399 = !{ptr @single_succ, ptr @single_succ_edge, i64 43950}
!400 = !{ptr @purge_empty_blocks, ptr @VEC_basic_block_base_index, i64 325127}
!401 = !{ptr @purge_empty_blocks, ptr @sel_is_loop_preheader_p, i64 138099}
!402 = !{ptr @purge_empty_blocks, ptr @maybe_tidy_empty_bb, i64 187028}
!403 = !{ptr @sel_is_loop_preheader_p, ptr @considered_for_pipelining_p, i64 5}
!404 = !{ptr @sel_is_loop_preheader_p, ptr @fancy_abort, i64 1}
!405 = !{ptr @sel_is_loop_preheader_p, ptr @loop_outer, i64 5}
!406 = !{ptr @sel_extend_global_bb_info, ptr @VEC_sel_global_bb_info_def_heap_safe_grow_cleared, i64 138137}
!407 = !{ptr @VEC_sel_global_bb_info_def_heap_safe_grow_cleared, ptr @VEC_sel_global_bb_info_def_base_length, i64 138137}
!408 = !{ptr @VEC_sel_global_bb_info_def_heap_safe_grow_cleared, ptr @VEC_sel_global_bb_info_def_heap_safe_grow, i64 138137}
!409 = !{ptr @VEC_sel_global_bb_info_def_heap_safe_grow_cleared, ptr @VEC_sel_global_bb_info_def_base_address, i64 138137}
!410 = !{ptr @sel_finish_global_bb_info, ptr @VEC_sel_global_bb_info_def_heap_free, i64 38}
!411 = !{ptr @VEC_sel_global_bb_info_def_heap_free, ptr @free, i64 37}
!412 = !{ptr @init_lv_sets, ptr @init_lv_set, i64 182271}
!413 = !{ptr @init_lv_set, ptr @VEC_sel_global_bb_info_def_base_index, i64 748264}
!414 = !{ptr @init_lv_set, ptr @fancy_abort, i64 1}
!415 = !{ptr @init_lv_set, ptr @get_regset_from_pool, i64 187066}
!416 = !{ptr @init_lv_set, ptr @df_lr_get_bb_info, i64 187066}
!417 = !{ptr @init_lv_set, ptr @bitmap_copy, i64 187066}
!418 = !{ptr @free_lv_sets, ptr @free_lv_set, i64 182265}
!419 = !{ptr @free_lv_sets, ptr @VEC_sel_global_bb_info_def_base_index, i64 182228}
!420 = !{ptr @free_lv_set, ptr @VEC_sel_global_bb_info_def_base_index, i64 561199}
!421 = !{ptr @free_lv_set, ptr @fancy_abort, i64 1}
!422 = !{ptr @free_lv_set, ptr @return_regset_to_pool, i64 187066}
!423 = !{ptr @free_data_sets, ptr @free_lv_set, i64 5}
!424 = !{ptr @free_data_sets, ptr @free_av_set, i64 5}
!425 = !{ptr @free_av_set, ptr @VEC_sel_region_bb_info_def_base_index, i64 10}
!426 = !{ptr @free_av_set, ptr @av_set_clear, i64 5}
!427 = !{ptr @get_av_set, ptr @get_av_level, i64 261291}
!428 = !{ptr @get_av_set, ptr @fancy_abort, i64 1}
!429 = !{ptr @get_av_set, ptr @sel_bb_head_p, i64 261291}
!430 = !{ptr @get_av_set, ptr @VEC_sel_region_bb_info_def_base_index, i64 261290}
!431 = !{ptr @get_av_level, ptr @fancy_abort, i64 1}
!432 = !{ptr @get_av_level, ptr @sel_bb_head_p, i64 6060901}
!433 = !{ptr @get_av_level, ptr @VEC_sel_region_bb_info_def_base_index, i64 2150128}
!434 = !{ptr @get_av_level, ptr @VEC_int_base_index, i64 3910773}
!435 = !{ptr @get_av_level, ptr @VEC_sel_insn_data_def_base_index, i64 3910773}
!436 = !{ptr @sel_bb_head_p, ptr @sel_bb_head, i64 11724310}
!437 = !{ptr @sel_bb_end_p, ptr @sel_bb_end, i64 3149701}
!438 = !{ptr @fallthru_bb_of_jump, ptr @any_uncondjump_p, i64 158512}
!439 = !{ptr @fallthru_bb_of_jump, ptr @single_succ, i64 5096}
!440 = !{ptr @fallthru_bb_of_jump, ptr @any_condjump_p, i64 153416}
!441 = !{ptr @fallthru_bb_of_jump, ptr @single_succ_p, i64 153346}
!442 = !{ptr @fallthru_bb_of_jump, ptr @VEC_edge_base_index, i64 229352}
!443 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 197309}
!444 = !{ptr @sel_init_bbs, ptr @sched_scan, i64 138099}
!445 = !{ptr @extend_bb_info, ptr @sel_extend_global_bb_info, i64 138099}
!446 = !{ptr @extend_bb_info, ptr @extend_region_bb_info, i64 138099}
!447 = !{ptr @init_bb, ptr @bb_note, i64 187028}
!448 = !{ptr @init_bb, ptr @remove_notes, i64 187028}
!449 = !{ptr @init_bb, ptr @VEC_sel_region_bb_info_def_base_index, i64 187028}
!450 = !{ptr @sel_finish_bbs, ptr @sel_restore_notes, i64 138099}
!451 = !{ptr @sel_finish_bbs, ptr @sel_remove_loop_preheader, i64 1}
!452 = !{ptr @sel_finish_bbs, ptr @finish_region_bb_info, i64 138099}
!453 = !{ptr @sel_restore_notes, ptr @VEC_basic_block_base_index, i64 374046}
!454 = !{ptr @sel_restore_notes, ptr @VEC_sel_region_bb_info_def_base_index, i64 374048}
!455 = !{ptr @sel_restore_notes, ptr @restore_other_notes, i64 187024}
!456 = !{ptr @sel_restore_notes, ptr @reemit_notes, i64 587293}
!457 = !{ptr @finish_region_bb_info, ptr @VEC_sel_region_bb_info_def_heap_free, i64 138099}
!458 = !{ptr @sel_insn_has_single_succ_p, ptr @_succ_iter_start, i64 118}
!459 = !{ptr @sel_insn_has_single_succ_p, ptr @_succ_iter_cond, i64 234}
!460 = !{ptr @sel_insn_has_single_succ_p, ptr @_succ_iter_next, i64 116}
!461 = !{ptr @free_succs_info, ptr @fancy_abort, i64 2}
!462 = !{ptr @free_succs_info, ptr @VEC_rtx_base_length, i64 2200408}
!463 = !{ptr @free_succs_info, ptr @VEC_rtx_base_block_remove, i64 2200408}
!464 = !{ptr @free_succs_info, ptr @VEC_int_base_length, i64 1100204}
!465 = !{ptr @free_succs_info, ptr @VEC_int_base_block_remove, i64 1100204}
!466 = !{ptr @compute_succs_info, ptr @alloc_succs_info, i64 1100204}
!467 = !{ptr @compute_succs_info, ptr @_succ_iter_start, i64 1100204}
!468 = !{ptr @compute_succs_info, ptr @_succ_iter_cond, i64 3230628}
!469 = !{ptr @compute_succs_info, ptr @VEC_rtx_heap_safe_push, i64 2130424}
!470 = !{ptr @compute_succs_info, ptr @VEC_int_heap_safe_push, i64 416966}
!471 = !{ptr @compute_succs_info, ptr @_succ_iter_next, i64 2130424}
!472 = !{ptr @alloc_succs_info, ptr @fancy_abort, i64 1}
!473 = !{ptr @alloc_succs_info, ptr @VEC_rtx_heap_alloc, i64 444}
!474 = !{ptr @alloc_succs_info, ptr @VEC_int_heap_alloc, i64 222}
!475 = !{ptr @VEC_rtx_heap_safe_push, ptr @VEC_rtx_heap_reserve, i64 2130425}
!476 = !{ptr @VEC_rtx_heap_safe_push, ptr @VEC_rtx_base_quick_push, i64 2130425}
!477 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_heap_reserve, i64 416966}
!478 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_base_quick_push, i64 416966}
!479 = !{ptr @bb_ends_ebb_p, ptr @bb_next_bb, i64 235947}
!480 = !{ptr @bb_ends_ebb_p, ptr @bitmap_bit_p, i64 235862}
!481 = !{ptr @bb_ends_ebb_p, ptr @single_pred_p, i64 85068}
!482 = !{ptr @bb_ends_ebb_p, ptr @in_current_region_p, i64 152522}
!483 = !{ptr @bb_ends_ebb_p, ptr @ei_start_1, i64 97847}
!484 = !{ptr @bb_ends_ebb_p, ptr @ei_cond, i64 154453}
!485 = !{ptr @bb_ends_ebb_p, ptr @fancy_abort, i64 1}
!486 = !{ptr @bb_ends_ebb_p, ptr @ei_next, i64 56606}
!487 = !{ptr @bb_next_bb, ptr @VEC_edge_base_length, i64 284871}
!488 = !{ptr @bb_next_bb, ptr @single_succ, i64 38840}
!489 = !{ptr @bb_next_bb, ptr @VEC_edge_base_index, i64 376471}
!490 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 85068}
!491 = !{ptr @ei_cond, ptr @ei_end_p, i64 3385549}
!492 = !{ptr @ei_cond, ptr @ei_edge, i64 2285335}
!493 = !{ptr @ei_next, ptr @ei_container, i64 4374973}
!494 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 2187487}
!495 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!496 = !{ptr @in_same_ebb_p, ptr @bb_ends_ebb_p, i64 48924}
!497 = !{ptr @in_same_ebb_p, ptr @bb_next_bb, i64 48923}
!498 = !{ptr @free_bb_note_pool, ptr @VEC_rtx_heap_free, i64 38}
!499 = !{ptr @VEC_rtx_heap_free, ptr @free, i64 365}
!500 = !{ptr @alloc_sched_pools, ptr @xcalloc, i64 38}
!501 = !{ptr @alloc_sched_pools, ptr @create_alloc_pool, i64 38}
!502 = !{ptr @free_sched_pools, ptr @free_alloc_pool, i64 38}
!503 = !{ptr @free_sched_pools, ptr @fancy_abort, i64 1}
!504 = !{ptr @free_sched_pools, ptr @VEC_rtx_heap_free, i64 358}
!505 = !{ptr @free_sched_pools, ptr @VEC_int_heap_free, i64 179}
!506 = !{ptr @free_sched_pools, ptr @free, i64 38}
!507 = !{ptr @VEC_int_heap_free, ptr @free, i64 182}
!508 = !{ptr @move_bb_info, ptr @in_current_region_p, i64 5}
!509 = !{ptr @move_bb_info, ptr @fancy_abort, i64 1}
!510 = !{ptr @move_bb_info, ptr @VEC_sel_region_bb_info_def_base_index, i64 15}
!511 = !{ptr @move_bb_info, ptr @concat_note_lists, i64 5}
!512 = !{ptr @remove_empty_bb, ptr @VEC_edge_base_length, i64 17}
!513 = !{ptr @remove_empty_bb, ptr @fancy_abort, i64 2}
!514 = !{ptr @remove_empty_bb, ptr @VEC_edge_base_index, i64 13}
!515 = !{ptr @remove_empty_bb, ptr @redirect_edge_succ_nodup, i64 3}
!516 = !{ptr @remove_empty_bb, ptr @find_edge, i64 3}
!517 = !{ptr @remove_empty_bb, ptr @sel_remove_bb, i64 5}
!518 = !{ptr @sel_register_cfg_hooks, ptr @get_cfg_hooks, i64 138099}
!519 = !{ptr @sel_register_cfg_hooks, ptr @set_cfg_hooks, i64 138099}
!520 = !{ptr @sel_unregister_cfg_hooks, ptr @set_cfg_hooks, i64 138099}
!521 = !{ptr @recog_memoized, ptr @recog, i64 7607}
!522 = !{ptr @vinsn_create, ptr @xcalloc, i64 736177}
!523 = !{ptr @vinsn_create, ptr @vinsn_init, i64 736177}
!524 = !{ptr @setup_nop_and_exit_insns, ptr @fancy_abort, i64 2}
!525 = !{ptr @setup_nop_and_exit_insns, ptr @gen_nop, i64 38}
!526 = !{ptr @setup_nop_and_exit_insns, ptr @start_sequence, i64 38}
!527 = !{ptr @setup_nop_and_exit_insns, ptr @emit_insn, i64 38}
!528 = !{ptr @setup_nop_and_exit_insns, ptr @get_insns, i64 38}
!529 = !{ptr @setup_nop_and_exit_insns, ptr @end_sequence, i64 38}
!530 = !{ptr @setup_nop_vinsn, ptr @vinsn_create, i64 138099}
!531 = !{ptr @setup_nop_vinsn, ptr @vinsn_attach, i64 138099}
!532 = !{ptr @free_nop_vinsn, ptr @fancy_abort, i64 1}
!533 = !{ptr @free_nop_vinsn, ptr @vinsn_detach, i64 138099}
!534 = !{ptr @sel_setup_sched_infos, ptr @rgn_setup_common_sched_info, i64 138137}
!535 = !{ptr @sel_setup_sched_infos, ptr @get_rgn_sched_max_insns_priority, i64 138137}
!536 = !{ptr @sel_setup_sched_infos, ptr @sel_set_sched_flags, i64 138137}
!537 = !{ptr @sel_luid_for_non_insn, ptr @fancy_abort, i64 1}
!538 = !{ptr @_list_alloc, ptr @pool_alloc, i64 10532980}
!539 = !{ptr @fence_clear, ptr @_list_clear, i64 187023}
!540 = !{ptr @fence_clear, ptr @fancy_abort, i64 1}
!541 = !{ptr @fence_clear, ptr @free, i64 374045}
!542 = !{ptr @fence_clear, ptr @delete_deps_context, i64 187021}
!543 = !{ptr @fence_clear, ptr @delete_target_context, i64 187021}
!544 = !{ptr @fence_clear, ptr @VEC_rtx_gc_free, i64 187023}
!545 = !{ptr @delete_deps_context, ptr @clear_deps_context, i64 187023}
!546 = !{ptr @delete_deps_context, ptr @free, i64 187023}
!547 = !{ptr @delete_target_context, ptr @clear_target_context, i64 235947}
!548 = !{ptr @VEC_rtx_gc_free, ptr @ggc_free, i64 187022}
!549 = !{ptr @clear_deps_context, ptr @free_deps, i64 187023}
!550 = !{ptr @sel_bb_empty_or_nop_p, ptr @sel_bb_head, i64 2130425}
!551 = !{ptr @sel_bb_empty_or_nop_p, ptr @sel_bb_end, i64 1}
!552 = !{ptr @state_alloc, ptr @xmalloc, i64 187023}
!553 = !{ptr @alloc_deps_context, ptr @xmalloc, i64 187023}
!554 = !{ptr @copy_deps_context, ptr @init_deps, i64 48924}
!555 = !{ptr @copy_deps_context, ptr @deps_join, i64 48924}
!556 = !{ptr @copy_target_context, ptr @create_target_context, i64 48924}
!557 = !{ptr @copy_target_context, ptr @set_target_context, i64 97848}
!558 = !{ptr @copy_target_context, ptr @init_target_context, i64 48924}
!559 = !{ptr @copy_target_context, ptr @delete_target_context, i64 48924}
!560 = !{ptr @VEC_expr_history_def_heap_reserve, ptr @VEC_expr_history_def_base_space, i64 5775}
!561 = !{ptr @VEC_expr_history_def_heap_reserve, ptr @vec_heap_o_reserve, i64 5774}
!562 = !{ptr @VEC_expr_history_def_heap_free, ptr @free, i64 75619}
!563 = !{ptr @invalidate_av_set, ptr @VEC_sel_region_bb_info_def_base_index, i64 187030}
!564 = !{ptr @invalidate_av_set, ptr @fancy_abort, i64 2}
!565 = !{ptr @init_first_time_insn_data, ptr @first_time_insn_init, i64 765113}
!566 = !{ptr @init_first_time_insn_data, ptr @fancy_abort, i64 1}
!567 = !{ptr @init_first_time_insn_data, ptr @get_regset_from_pool, i64 765113}
!568 = !{ptr @init_first_time_insn_data, ptr @VEC_int_base_index, i64 3903702}
!569 = !{ptr @init_first_time_insn_data, ptr @VEC_sel_insn_data_def_base_index, i64 3903702}
!570 = !{ptr @init_first_time_insn_data, ptr @bitmap_obstack_alloc_stat, i64 1186738}
!571 = !{ptr @init_first_time_insn_data, ptr @htab_create, i64 593369}
!572 = !{ptr @init_first_time_insn_data, ptr @init_deps, i64 593369}
!573 = !{ptr @eq_transformed_insns, ptr @rtx_equal_p, i64 8}
!574 = !{ptr @free_transformed_insns, ptr @vinsn_detach, i64 3178}
!575 = !{ptr @free_transformed_insns, ptr @free, i64 1589}
!576 = !{ptr @free_first_time_insn_data, ptr @first_time_insn_init, i64 591920}
!577 = !{ptr @free_first_time_insn_data, ptr @fancy_abort, i64 1}
!578 = !{ptr @free_first_time_insn_data, ptr @free_data_for_scheduled_insn, i64 591920}
!579 = !{ptr @free_first_time_insn_data, ptr @VEC_int_base_index, i64 1775760}
!580 = !{ptr @free_first_time_insn_data, ptr @VEC_sel_insn_data_def_base_index, i64 1775760}
!581 = !{ptr @free_first_time_insn_data, ptr @return_regset_to_pool, i64 591920}
!582 = !{ptr @has_dependence_start_insn, ptr @fancy_abort, i64 1}
!583 = !{ptr @has_dependence_finish_insn, ptr @fancy_abort, i64 1}
!584 = !{ptr @has_dependence_start_lhs, ptr @fancy_abort, i64 1}
!585 = !{ptr @has_dependence_start_rhs, ptr @fancy_abort, i64 1}
!586 = !{ptr @has_dependence_finish_rhs, ptr @fancy_abort, i64 1}
!587 = !{ptr @has_dependence_note_reg_set, ptr @sched_insns_conditions_mutex_p, i64 544556}
!588 = !{ptr @has_dependence_note_reg_clobber, ptr @sched_insns_conditions_mutex_p, i64 37964}
!589 = !{ptr @has_dependence_note_reg_use, ptr @sched_insns_conditions_mutex_p, i64 418751}
!590 = !{ptr @has_dependence_note_reg_use, ptr @VEC_int_base_index, i64 28173}
!591 = !{ptr @has_dependence_note_reg_use, ptr @VEC_sel_insn_data_def_base_index, i64 28173}
!592 = !{ptr @has_dependence_note_reg_use, ptr @ds_get_max_dep_weak, i64 28173}
!593 = !{ptr @has_dependence_note_reg_use, ptr @ds_full_merge, i64 1}
!594 = !{ptr @has_dependence_note_mem_dep, ptr @sched_insns_conditions_mutex_p, i64 301}
!595 = !{ptr @has_dependence_note_mem_dep, ptr @ds_full_merge, i64 300}
!596 = !{ptr @has_dependence_note_dep, ptr @sched_insns_conditions_mutex_p, i64 125916}
!597 = !{ptr @has_dependence_note_dep, ptr @ds_full_merge, i64 125915}
!598 = !{ptr @tick_check_note_mem_dep, ptr @ds_to_dt, i64 1011}
!599 = !{ptr @tick_check_note_mem_dep, ptr @estimate_dep_weak, i64 489}
!600 = !{ptr @tick_check_note_mem_dep, ptr @tick_check_dep_with_dw, i64 1011}
!601 = !{ptr @tick_check_note_dep, ptr @tick_check_dep_with_dw, i64 1617278}
!602 = !{ptr @tick_check_dep_with_dw, ptr @VEC_int_base_index, i64 4854856}
!603 = !{ptr @tick_check_dep_with_dw, ptr @VEC_sel_insn_data_def_base_index, i64 4854856}
!604 = !{ptr @tick_check_dep_with_dw, ptr @ds_to_dt, i64 1618285}
!605 = !{ptr @tick_check_dep_with_dw, ptr @fancy_abort, i64 1}
!606 = !{ptr @tick_check_dep_with_dw, ptr @init_dep, i64 1618285}
!607 = !{ptr @tick_check_dep_with_dw, ptr @dep_cost_1, i64 1618285}
!608 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 43950}
!609 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!610 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 43950}
!611 = !{ptr @VEC_sel_global_bb_info_def_heap_safe_grow, ptr @VEC_sel_global_bb_info_def_heap_reserve_exact, i64 138137}
!612 = !{ptr @VEC_sel_global_bb_info_def_heap_reserve_exact, ptr @VEC_sel_global_bb_info_def_base_space, i64 138137}
!613 = !{ptr @VEC_sel_global_bb_info_def_heap_reserve_exact, ptr @vec_heap_o_reserve_exact, i64 39}
!614 = !{ptr @VEC_sel_insn_data_def_heap_safe_grow_cleared, ptr @VEC_sel_insn_data_def_base_length, i64 235626}
!615 = !{ptr @VEC_sel_insn_data_def_heap_safe_grow_cleared, ptr @VEC_sel_insn_data_def_heap_safe_grow, i64 235626}
!616 = !{ptr @VEC_sel_insn_data_def_heap_safe_grow_cleared, ptr @VEC_sel_insn_data_def_base_address, i64 235626}
!617 = !{ptr @VEC_sel_insn_data_def_heap_safe_grow, ptr @VEC_sel_insn_data_def_heap_reserve_exact, i64 235626}
!618 = !{ptr @VEC_sel_insn_data_def_heap_reserve_exact, ptr @VEC_sel_insn_data_def_base_space, i64 235626}
!619 = !{ptr @VEC_sel_insn_data_def_heap_reserve_exact, ptr @vec_heap_o_reserve_exact, i64 235625}
!620 = !{ptr @VEC_sel_insn_data_def_heap_free, ptr @free, i64 138098}
!621 = !{ptr @insn_is_the_only_one_in_bb_p, ptr @sel_bb_head_p, i64 357361}
!622 = !{ptr @insn_is_the_only_one_in_bb_p, ptr @sel_bb_end_p, i64 187118}
!623 = !{ptr @init_insn_data, ptr @fancy_abort, i64 5}
!624 = !{ptr @init_insn_data, ptr @VEC_int_base_index, i64 714722}
!625 = !{ptr @init_insn_data, ptr @VEC_sel_insn_data_def_base_index, i64 357361}
!626 = !{ptr @init_insn_data, ptr @copy_expr, i64 357361}
!627 = !{ptr @init_insn_data, ptr @prepare_insn_expr, i64 357361}
!628 = !{ptr @init_insn_data, ptr @vinsn_create, i64 1451}
!629 = !{ptr @init_insn_data, ptr @change_vinsn_in_expr, i64 1451}
!630 = !{ptr @init_insn_data, ptr @first_time_insn_init, i64 357361}
!631 = !{ptr @init_insn_data, ptr @init_first_time_insn_data, i64 174643}
!632 = !{ptr @extend_region_bb_info, ptr @VEC_sel_region_bb_info_def_heap_safe_grow_cleared, i64 138099}
!633 = !{ptr @VEC_sel_region_bb_info_def_heap_safe_grow_cleared, ptr @VEC_sel_region_bb_info_def_base_length, i64 138099}
!634 = !{ptr @VEC_sel_region_bb_info_def_heap_safe_grow_cleared, ptr @VEC_sel_region_bb_info_def_heap_safe_grow, i64 138099}
!635 = !{ptr @VEC_sel_region_bb_info_def_heap_safe_grow_cleared, ptr @VEC_sel_region_bb_info_def_base_address, i64 138099}
!636 = !{ptr @VEC_sel_region_bb_info_def_heap_safe_grow, ptr @VEC_sel_region_bb_info_def_heap_reserve_exact, i64 138099}
!637 = !{ptr @VEC_sel_region_bb_info_def_heap_reserve_exact, ptr @VEC_sel_region_bb_info_def_base_space, i64 138099}
!638 = !{ptr @VEC_sel_region_bb_info_def_heap_reserve_exact, ptr @vec_heap_o_reserve_exact, i64 138098}
!639 = !{ptr @VEC_sel_region_bb_info_def_heap_free, ptr @free, i64 138098}
!640 = !{ptr @VEC_rtx_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 442}
!641 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 221}
!642 = !{ptr @VEC_rtx_heap_reserve, ptr @VEC_rtx_base_space, i64 2130425}
!643 = !{ptr @VEC_rtx_heap_reserve, ptr @vec_heap_p_reserve, i64 107}
!644 = !{ptr @VEC_int_heap_reserve, ptr @VEC_int_base_space, i64 416966}
!645 = !{ptr @VEC_int_heap_reserve, ptr @vec_heap_o_reserve, i64 1}
!646 = !{ptr @ei_end_p, ptr @ei_container, i64 6771097}
!647 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 3385549}
!648 = !{ptr @ei_edge, ptr @ei_container, i64 4570669}
!649 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 2285335}
!650 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!651 = !{ptr @sel_remove_bb, ptr @VEC_sel_region_bb_info_def_base_index, i64 4}
!652 = !{ptr @sel_remove_bb, ptr @fancy_abort, i64 1}
!653 = !{ptr @sel_remove_bb, ptr @remove_bb_from_region, i64 5}
!654 = !{ptr @sel_remove_bb, ptr @return_bb_to_pool, i64 5}
!655 = !{ptr @sel_remove_bb, ptr @bitmap_clear_bit, i64 5}
!656 = !{ptr @sel_remove_bb, ptr @delete_and_free_basic_block, i64 4}
!657 = !{ptr @sel_remove_bb, ptr @rgn_setup_region, i64 5}
!658 = !{ptr @remove_bb_from_region, ptr @fancy_abort, i64 1}
!659 = !{ptr @return_bb_to_pool, ptr @bb_note, i64 5}
!660 = !{ptr @return_bb_to_pool, ptr @fancy_abort, i64 1}
!661 = !{ptr @delete_and_free_basic_block, ptr @sel_bb_empty_p, i64 5}
!662 = !{ptr @delete_and_free_basic_block, ptr @fancy_abort, i64 3}
!663 = !{ptr @delete_and_free_basic_block, ptr @VEC_sel_global_bb_info_def_base_index, i64 10}
!664 = !{ptr @delete_and_free_basic_block, ptr @free_lv_set, i64 1}
!665 = !{ptr @delete_and_free_basic_block, ptr @bitmap_clear_bit, i64 5}
!666 = !{ptr @delete_and_free_basic_block, ptr @VEC_sel_region_bb_info_def_base_index, i64 4}
!667 = !{ptr @delete_and_free_basic_block, ptr @delete_basic_block, i64 5}
!668 = !{ptr @vinsn_init, ptr @init_id_from_df, i64 591919}
!669 = !{ptr @vinsn_init, ptr @deps_init_id, i64 144258}
!670 = !{ptr @vinsn_init, ptr @hash_rtx_cb, i64 912909}
!671 = !{ptr @vinsn_init, ptr @haifa_classify_insn, i64 736177}
!672 = !{ptr @init_id_from_df, ptr @fancy_abort, i64 2}
!673 = !{ptr @init_id_from_df, ptr @setup_id_for_insn, i64 591920}
!674 = !{ptr @init_id_from_df, ptr @setup_id_lhs_rhs, i64 591920}
!675 = !{ptr @init_id_from_df, ptr @maybe_downgrade_id_to_use, i64 591919}
!676 = !{ptr @init_id_from_df, ptr @setup_id_reg_sets, i64 591919}
!677 = !{ptr @deps_init_id, ptr @init_deps, i64 144257}
!678 = !{ptr @deps_init_id, ptr @deps_analyze_insn, i64 144257}
!679 = !{ptr @deps_init_id, ptr @free_deps, i64 144257}
!680 = !{ptr @setup_id_for_insn, ptr @simplejump_p, i64 186735}
!681 = !{ptr @setup_id_for_insn, ptr @get_clear_regset_from_pool, i64 2208531}
!682 = !{ptr @maybe_downgrade_id_to_use, ptr @lhs_and_rhs_separable_p, i64 310499}
!683 = !{ptr @maybe_downgrade_id_to_use, ptr @loc_mentioned_in_p, i64 1}
!684 = !{ptr @setup_id_reg_sets, ptr @get_clear_regset_from_pool, i64 591920}
!685 = !{ptr @setup_id_reg_sets, ptr @bitmap_set_bit, i64 787970}
!686 = !{ptr @setup_id_reg_sets, ptr @bitmap_bit_p, i64 509671}
!687 = !{ptr @setup_id_reg_sets, ptr @bitmap_clear_bit, i64 341}
!688 = !{ptr @setup_id_reg_sets, ptr @return_regset_to_pool, i64 591920}
!689 = !{ptr @deps_init_id_start_insn, ptr @fancy_abort, i64 1}
!690 = !{ptr @deps_init_id_start_insn, ptr @setup_id_for_insn, i64 144257}
!691 = !{ptr @deps_init_id_finish_insn, ptr @fancy_abort, i64 2}
!692 = !{ptr @deps_init_id_finish_insn, ptr @lhs_and_rhs_separable_p, i64 6158}
!693 = !{ptr @deps_init_id_start_lhs, ptr @fancy_abort, i64 2}
!694 = !{ptr @deps_init_id_start_rhs, ptr @fancy_abort, i64 1}
!695 = !{ptr @deps_init_id_note_reg_set, ptr @haifa_note_reg_set, i64 5931}
!696 = !{ptr @deps_init_id_note_reg_set, ptr @bitmap_set_bit, i64 5930}
!697 = !{ptr @deps_init_id_note_reg_use, ptr @haifa_note_reg_use, i64 2436}
!698 = !{ptr @deps_init_id_note_reg_use, ptr @bitmap_set_bit, i64 2435}
!699 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!700 = !{!"function_entry_count", i64 453821}
!701 = !{!702, !702, i64 0}
!702 = !{!"any pointer", !703, i64 0}
!703 = !{!"omnipotent char", !704, i64 0}
!704 = !{!"Simple C/C++ TBAA"}
!705 = !{!"branch_weights", i32 107978, i32 345844}
!706 = !{!703, !703, i64 0}
!707 = !{!708, !702, i64 0}
!708 = !{!"_list_node", !702, i64 0, !703, i64 8}
!709 = !{!"branch_weights", i32 345844, i32 0}
!710 = distinct !{!710, !711}
!711 = !{!"llvm.loop.mustprogress"}
!712 = !{!"function_entry_count", i64 345843}
!713 = !{!"sel-sched-ir.c:_xlist_add"}
!714 = !{!"function_entry_count", i64 0}
!715 = distinct !{!715, !711}
!716 = !{!"function_entry_count", i64 855005}
!717 = !{!718, !702, i64 0}
!718 = !{!"_bnd", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !702, i64 32}
!719 = !{!718, !702, i64 8}
!720 = !{!718, !702, i64 32}
!721 = !{!"function_entry_count", i64 10532980}
!722 = !{!"sel-sched-ir.c:_list_add"}
!723 = !{!"function_entry_count", i64 7619166}
!724 = !{!725, !702, i64 0}
!725 = !{!"", !702, i64 0, !703, i64 8, !703, i64 9}
!726 = !{i8 0, i8 2}
!727 = !{!"branch_weights", i32 948272, i32 6670895}
!728 = !{!"branch_weights", i32 6670895, i32 0}
!729 = distinct !{!729, !711}
!730 = !{!"branch_weights", i32 7619167, i32 1}
!731 = !{!"function_entry_count", i64 1042028}
!732 = !{!"sel-sched-ir.c:_list_clear"}
!733 = !{!"branch_weights", i32 193440, i32 848589}
!734 = !{!"branch_weights", i32 848589, i32 0}
!735 = distinct !{!735, !711}
!736 = !{!"function_entry_count", i64 10855068}
!737 = !{!"sel-sched-ir.c:_list_remove"}
!738 = !{!"function_entry_count", i64 401184}
!739 = !{!740, !702, i64 0}
!740 = !{!"flist_tail_def", !702, i64 0, !702, i64 8}
!741 = !{!740, !702, i64 8}
!742 = !{!"function_entry_count", i64 3348145}
!743 = !{!"branch_weights", i32 263085, i32 3085061}
!744 = !{!"branch_weights", i32 1, i32 3085061}
!745 = !{!"branch_weights", i32 3085061, i32 0}
!746 = distinct !{!746, !711}
!747 = !{!"branch_weights", i32 1, i32 401184}
!748 = !{!"branch_weights", i32 401184, i32 1}
!749 = distinct !{!749, !711}
!750 = !{!"sel-sched-ir.c:flist_remove"}
!751 = !{!"branch_weights", i32 214162, i32 187024}
!752 = !{!"function_entry_count", i64 180657}
!753 = !{!754, !702, i64 0}
!754 = !{!"_def", !702, i64 0, !703, i64 8}
!755 = !{!754, !703, i64 8}
!756 = !{!"function_entry_count", i64 187023}
!757 = !{!"function_entry_count", i64 235947}
!758 = !{!"sel-sched-ir.c:alloc_target_context"}
!759 = !{!760, !702, i64 552}
!760 = !{!"gcc_target", !761, i64 0, !763, i64 368, !764, i64 664, !765, i64 744, !702, i64 752, !702, i64 760, !702, i64 768, !702, i64 776, !702, i64 784, !702, i64 792, !702, i64 800, !702, i64 808, !702, i64 816, !702, i64 824, !702, i64 832, !702, i64 840, !702, i64 848, !702, i64 856, !702, i64 864, !702, i64 872, !702, i64 880, !702, i64 888, !702, i64 896, !702, i64 904, !702, i64 912, !702, i64 920, !702, i64 928, !702, i64 936, !702, i64 944, !702, i64 952, !702, i64 960, !702, i64 968, !702, i64 976, !702, i64 984, !702, i64 992, !702, i64 1000, !702, i64 1008, !702, i64 1016, !702, i64 1024, !702, i64 1032, !702, i64 1040, !702, i64 1048, !702, i64 1056, !766, i64 1064, !766, i64 1072, !702, i64 1080, !702, i64 1088, !702, i64 1096, !702, i64 1104, !702, i64 1112, !702, i64 1120, !702, i64 1128, !702, i64 1136, !702, i64 1144, !702, i64 1152, !702, i64 1160, !702, i64 1168, !767, i64 1176, !702, i64 1232, !702, i64 1240, !702, i64 1248, !702, i64 1256, !702, i64 1264, !702, i64 1272, !702, i64 1280, !702, i64 1288, !702, i64 1296, !702, i64 1304, !702, i64 1312, !702, i64 1320, !702, i64 1328, !702, i64 1336, !702, i64 1344, !702, i64 1352, !702, i64 1360, !702, i64 1368, !702, i64 1376, !702, i64 1384, !702, i64 1392, !702, i64 1400, !702, i64 1408, !702, i64 1416, !702, i64 1424, !702, i64 1432, !702, i64 1440, !702, i64 1448, !702, i64 1456, !766, i64 1464, !768, i64 1472, !702, i64 1664, !702, i64 1672, !702, i64 1680, !702, i64 1688, !702, i64 1696, !702, i64 1704, !702, i64 1712, !702, i64 1720, !702, i64 1728, !702, i64 1736, !702, i64 1744, !702, i64 1752, !702, i64 1760, !702, i64 1768, !702, i64 1776, !769, i64 1784, !770, i64 1792, !771, i64 1896, !772, i64 1968, !702, i64 2016, !703, i64 2024, !703, i64 2025, !703, i64 2026, !703, i64 2027, !703, i64 2028, !703, i64 2029, !703, i64 2030, !703, i64 2031, !703, i64 2032, !703, i64 2033, !703, i64 2034, !703, i64 2035}
!761 = !{!"asm_out", !702, i64 0, !702, i64 8, !702, i64 16, !762, i64 24, !762, i64 56, !702, i64 88, !702, i64 96, !702, i64 104, !702, i64 112, !702, i64 120, !702, i64 128, !702, i64 136, !702, i64 144, !702, i64 152, !702, i64 160, !702, i64 168, !702, i64 176, !702, i64 184, !702, i64 192, !702, i64 200, !702, i64 208, !702, i64 216, !702, i64 224, !702, i64 232, !702, i64 240, !702, i64 248, !702, i64 256, !702, i64 264, !702, i64 272, !702, i64 280, !702, i64 288, !702, i64 296, !702, i64 304, !702, i64 312, !702, i64 320, !702, i64 328, !702, i64 336, !702, i64 344, !702, i64 352, !702, i64 360}
!762 = !{!"asm_int_op", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24}
!763 = !{!"sched", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !702, i64 32, !702, i64 40, !702, i64 48, !702, i64 56, !702, i64 64, !702, i64 72, !702, i64 80, !702, i64 88, !702, i64 96, !702, i64 104, !702, i64 112, !702, i64 120, !702, i64 128, !702, i64 136, !702, i64 144, !702, i64 152, !702, i64 160, !702, i64 168, !702, i64 176, !702, i64 184, !702, i64 192, !702, i64 200, !702, i64 208, !702, i64 216, !702, i64 224, !702, i64 232, !702, i64 240, !702, i64 248, !702, i64 256, !702, i64 264, !702, i64 272, !702, i64 280, !702, i64 288}
!764 = !{!"vectorize", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !702, i64 32, !702, i64 40, !702, i64 48, !702, i64 56, !702, i64 64, !702, i64 72}
!765 = !{!"int", !703, i64 0}
!766 = !{!"long", !703, i64 0}
!767 = !{!"addr_space", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !702, i64 32, !702, i64 40, !702, i64 48}
!768 = !{!"calls", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !702, i64 32, !702, i64 40, !702, i64 48, !702, i64 56, !702, i64 64, !702, i64 72, !702, i64 80, !702, i64 88, !702, i64 96, !702, i64 104, !702, i64 112, !702, i64 120, !702, i64 128, !702, i64 136, !702, i64 144, !702, i64 152, !702, i64 160, !702, i64 168, !702, i64 176, !702, i64 184}
!769 = !{!"c", !702, i64 0}
!770 = !{!"cxx", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !702, i64 32, !702, i64 40, !702, i64 48, !702, i64 56, !702, i64 64, !702, i64 72, !702, i64 80, !702, i64 88, !702, i64 96}
!771 = !{!"emutls", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !702, i64 32, !702, i64 40, !702, i64 48, !702, i64 56, !703, i64 64, !703, i64 65}
!772 = !{!"target_option_hooks", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !702, i64 32, !702, i64 40}
!773 = !{!"branch_weights", i32 235948, i32 1}
!774 = !{!"function_entry_count", i64 637131}
!775 = !{!"sel-sched-ir.c:init_target_context"}
!776 = !{!760, !702, i64 560}
!777 = !{!"branch_weights", i32 637132, i32 1}
!778 = !{!"function_entry_count", i64 499032}
!779 = !{!760, !702, i64 568}
!780 = !{!"branch_weights", i32 499033, i32 1}
!781 = !{!"sel-sched-ir.c:clear_target_context"}
!782 = !{!760, !702, i64 576}
!783 = !{!"function_entry_count", i64 929314}
!784 = !{!"function_entry_count", i64 138099}
!785 = !{!"branch_weights", i32 1, i32 138099}
!786 = !{!765, !765, i64 0}
!787 = !{!"branch_weights", i32 138099, i32 1}
!788 = distinct !{!788, !711}
!789 = !{!"function_entry_count", i64 1396977}
!790 = !{!"sel-sched-ir.c:_succ_iter_start"}
!791 = !{!"branch_weights", i32 3174, i32 505029916, i32 3172, i32 -804213212, i32 844475, i32 438426105}
!792 = !{!"branch_weights", i32 138100, i32 1}
!793 = !{!794, !796, i64 48}
!794 = !{!"", !703, i64 0, !702, i64 8, !702, i64 16, !795, i64 24, !702, i64 40, !796, i64 48, !796, i64 50, !765, i64 52, !702, i64 56}
!795 = !{!"", !765, i64 0, !702, i64 8}
!796 = !{!"short", !703, i64 0}
!797 = !{!794, !702, i64 40}
!798 = !{!794, !796, i64 50}
!799 = !{!794, !765, i64 52}
!800 = !{!794, !702, i64 56}
!801 = !{!802, !702, i64 8}
!802 = !{!"function", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !702, i64 32, !702, i64 40, !702, i64 48, !702, i64 56, !702, i64 64, !702, i64 72, !702, i64 80, !702, i64 88, !702, i64 96, !765, i64 104, !765, i64 108, !765, i64 112, !765, i64 116, !765, i64 120, !765, i64 124, !702, i64 128, !765, i64 136, !765, i64 137, !765, i64 138, !765, i64 138, !765, i64 138, !765, i64 138, !765, i64 138, !765, i64 138, !765, i64 138, !765, i64 139, !765, i64 139, !765, i64 139, !765, i64 139, !765, i64 139, !765, i64 139, !765, i64 139}
!803 = !{!804, !702, i64 8}
!804 = !{!"control_flow_graph", !702, i64 0, !702, i64 8, !702, i64 16, !765, i64 24, !765, i64 28, !765, i64 32, !702, i64 40, !765, i64 48, !703, i64 52, !703, i64 60, !765, i64 68, !765, i64 72}
!805 = !{!"branch_weights", i32 1, i32 1396978}
!806 = !{!807, !702, i64 8}
!807 = !{!"rtl_bb_info", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !765, i64 32}
!808 = !{!"branch_weights", i32 1100205, i32 296774}
!809 = !{!794, !703, i64 0}
!810 = !{!794, !765, i64 24}
!811 = !{!794, !702, i64 32}
!812 = !{i64 0, i64 4, !786, i64 8, i64 8, !701}
!813 = !{i64 0, i64 8, !701}
!814 = !{!"function_entry_count", i64 3824175}
!815 = !{!"sel-sched-ir.c:_succ_iter_cond"}
!816 = !{!"branch_weights", i32 593547, i32 3230630}
!817 = !{!"branch_weights", i32 3230630, i32 1}
!818 = !{!"branch_weights", i32 296774, i32 296774}
!819 = !{!"branch_weights", i32 1, i32 296774}
!820 = !{i32 0, i32 2}
!821 = distinct !{!821, !711}
!822 = !{!"branch_weights", i32 1, i32 1100204}
!823 = !{!794, !702, i64 8}
!824 = !{!825, !702, i64 8}
!825 = !{!"edge_def", !702, i64 0, !702, i64 8, !703, i64 16, !702, i64 24, !702, i64 32, !765, i64 40, !765, i64 44, !765, i64 48, !765, i64 52, !766, i64 56}
!826 = !{!"branch_weights", i32 2130426, i32 1}
!827 = !{!828, !765, i64 80}
!828 = !{!"basic_block_def", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !703, i64 32, !702, i64 48, !702, i64 56, !703, i64 64, !766, i64 72, !765, i64 80, !765, i64 84, !765, i64 88, !765, i64 92, !765, i64 96}
!829 = !{!"branch_weights", i32 1, i32 2130426}
!830 = !{!"branch_weights", i32 1100204, i32 1030222}
!831 = !{!"branch_weights", i32 2147482983, i32 665}
!832 = !{!"branch_weights", i32 731338171, i32 1416145477}
!833 = !{!794, !702, i64 16}
!834 = !{!"branch_weights", i32 568869, i32 -2079931616}
!835 = !{!"branch_weights", i32 1, i32 2129881}
!836 = !{!"branch_weights", i32 2129881, i32 1}
!837 = !{!"function_entry_count", i64 2130425}
!838 = !{!"sel-sched-ir.c:_eligible_successor_edge_p"}
!839 = !{!825, !702, i64 0}
!840 = !{!828, !702, i64 8}
!841 = !{!"branch_weights", i32 1713460, i32 416967}
!842 = !{!"branch_weights", i32 416967, i32 1}
!843 = !{!"branch_weights", i32 1, i32 416967}
!844 = !{!828, !702, i64 24}
!845 = !{!"sel-sched-ir.c:flist_add"}
!846 = !{!847, !702, i64 0}
!847 = !{!"_fence", !702, i64 0, !702, i64 8, !765, i64 16, !765, i64 20, !702, i64 24, !702, i64 32, !702, i64 40, !702, i64 48, !702, i64 56, !765, i64 64, !702, i64 72, !765, i64 80, !702, i64 88, !765, i64 96, !765, i64 96, !765, i64 96, !765, i64 96}
!848 = !{!"branch_weights", i32 1, i32 187024}
!849 = !{!847, !702, i64 8}
!850 = !{!847, !765, i64 16}
!851 = !{!847, !765, i64 20}
!852 = !{!847, !702, i64 32}
!853 = !{!847, !702, i64 40}
!854 = !{!847, !702, i64 72}
!855 = !{!847, !765, i64 80}
!856 = !{!847, !702, i64 48}
!857 = !{!847, !702, i64 56}
!858 = !{!847, !765, i64 64}
!859 = !{!847, !702, i64 88}
!860 = !{!"sel-sched-ir.c:state_create"}
!861 = !{!"sel-sched-ir.c:create_deps_context"}
!862 = !{!"function_entry_count", i64 2427198}
!863 = !{!"sel-sched-ir.c:_succ_iter_next"}
!864 = !{!"branch_weights", i32 296774, i32 2130426}
!865 = !{!"function_entry_count", i64 214161}
!866 = !{!"branch_weights", i32 214162, i32 1}
!867 = !{i64 0, i64 8, !701, i64 8, i64 8, !701, i64 16, i64 4, !786, i64 20, i64 4, !786, i64 24, i64 8, !701, i64 32, i64 8, !701, i64 40, i64 8, !701, i64 48, i64 8, !701, i64 56, i64 8, !701, i64 64, i64 4, !786, i64 72, i64 8, !701, i64 80, i64 4, !786, i64 88, i64 8, !701, i64 96, i64 4, !786, i64 96, i64 4, !786, i64 96, i64 4, !786, i64 96, i64 4, !786}
!868 = !{!"sel-sched-ir.c:merge_fences"}
!869 = !{!828, !702, i64 48}
!870 = distinct !{!870, !711}
!871 = distinct !{!871, !711}
!872 = !{!825, !765, i64 52}
!873 = !{!"sel-sched-ir.c:init_fence_for_scheduling"}
!874 = !{!847, !702, i64 24}
!875 = !{!"function_entry_count", i64 48924}
!876 = !{!"sel-sched-ir.c:add_to_fences"}
!877 = !{!"branch_weights", i32 48925, i32 1}
!878 = !{!"sel-sched-ir.c:state_create_copy"}
!879 = !{!"sel-sched-ir.c:create_copy_of_deps_context"}
!880 = !{!"sel-sched-ir.c:create_copy_of_target_context"}
!881 = !{!"sel-sched-ir.c:VEC_rtx_gc_copy"}
!882 = !{!"branch_weights", i32 1, i32 48925}
!883 = !{!884, !765, i64 0}
!884 = !{!"VEC_rtx_base", !765, i64 0, !765, i64 4, !703, i64 8}
!885 = !{!"branch_weights", i32 0, i32 -2147483648}
!886 = !{!887, !765, i64 0}
!887 = !{!"VEC_rtx_gc", !884, i64 0}
!888 = !{!"function_entry_count", i64 4859661}
!889 = !{!890, !765, i64 8}
!890 = !{!"", !702, i64 0, !765, i64 8, !765, i64 12, !702, i64 16, !765, i64 24, !765, i64 28, !765, i64 32}
!891 = !{!"branch_weights", i32 192295, i32 4667368}
!892 = !{!890, !702, i64 0}
!893 = !{!890, !765, i64 24}
!894 = !{!890, !765, i64 28}
!895 = !{!890, !702, i64 16}
!896 = !{!"branch_weights", i32 349, i32 191947}
!897 = !{!890, !765, i64 32}
!898 = !{!"function_entry_count", i64 3258970}
!899 = !{!890, !765, i64 12}
!900 = !{!"branch_weights", i32 349, i32 4859314}
!901 = !{!"function_entry_count", i64 38}
!902 = !{!"branch_weights", i32 39, i32 1}
!903 = !{!"branch_weights", i32 1, i32 155}
!904 = !{!"branch_weights", i32 155, i32 769025}
!905 = distinct !{!905, !711}
!906 = !{!"function_entry_count", i64 354461}
!907 = !{!908, !765, i64 8}
!908 = !{!"", !702, i64 0, !765, i64 8, !765, i64 12}
!909 = !{!"branch_weights", i32 171744, i32 182719}
!910 = !{!908, !702, i64 0}
!911 = !{!912, !765, i64 68}
!912 = !{!"_sel_insn_data", !913, i64 0, !765, i64 64, !765, i64 68, !702, i64 72, !702, i64 80, !702, i64 88, !702, i64 96, !702, i64 104, !914, i64 112, !702, i64 296, !765, i64 304, !765, i64 308, !765, i64 312, !765, i64 316, !765, i64 316, !765, i64 316}
!913 = !{!"_expr", !702, i64 0, !765, i64 8, !765, i64 12, !765, i64 16, !765, i64 20, !765, i64 24, !765, i64 28, !765, i64 32, !765, i64 36, !765, i64 40, !702, i64 48, !703, i64 56, !765, i64 57, !765, i64 57, !765, i64 57, !765, i64 57}
!914 = !{!"deps", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !765, i64 32, !765, i64 36, !765, i64 40, !702, i64 48, !702, i64 56, !702, i64 64, !702, i64 72, !765, i64 80, !702, i64 88, !765, i64 96, !702, i64 104, !915, i64 112, !915, i64 144, !765, i64 176, !765, i64 180}
!915 = !{!"bitmap_head_def", !702, i64 0, !702, i64 8, !765, i64 16, !702, i64 24}
!916 = !{!"function_entry_count", i64 357361}
!917 = !{!"sel-sched-ir.c:set_insn_init"}
!918 = !{!"branch_weights", i32 1451, i32 355912}
!919 = !{!"function_entry_count", i64 37403845}
!920 = !{!"sel-sched-ir.c:VEC_sel_insn_data_def_base_index"}
!921 = !{!"function_entry_count", i64 38902759}
!922 = !{!"sel-sched-ir.c:VEC_int_base_index"}
!923 = !{!"sel-sched-ir.c:sel_init_new_insn"}
!924 = !{!"branch_weights", i32 2858903, i32 1}
!925 = !{!"branch_weights", i32 1, i32 357362}
!926 = !{!"branch_weights", i32 357362, i32 1}
!927 = !{!"branch_weights", i32 182719, i32 174644}
!928 = !{!"branch_weights", i32 1, i32 354462}
!929 = !{!908, !765, i64 12}
!930 = !{!"function_entry_count", i64 946381}
!931 = !{!"branch_weights", i32 1, i32 946382}
!932 = !{!933, !765, i64 16}
!933 = !{!"", !702, i64 0, !702, i64 8, !765, i64 16}
!934 = !{!913, !702, i64 0}
!935 = !{!936, !702, i64 0}
!936 = !{!"vinsn_def", !702, i64 0, !937, i64 8, !765, i64 56, !765, i64 60, !765, i64 64, !765, i64 68, !703, i64 72}
!937 = !{!"idata_def", !765, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !702, i64 32, !702, i64 40}
!938 = distinct !{!938, !711}
!939 = !{!"branch_weights", i32 355912, i32 590471}
!940 = !{!807, !702, i64 0}
!941 = !{!"branch_weights", i32 1, i32 590471}
!942 = !{!"branch_weights", i32 187033, i32 403439}
!943 = !{!"function_entry_count", i64 13197322}
!944 = !{!"branch_weights", i32 1, i32 13197323}
!945 = !{!936, !765, i64 64}
!946 = !{!936, !765, i64 8}
!947 = !{!"function_entry_count", i64 1589}
!948 = !{!"branch_weights", i32 1590, i32 1591, i32 2528100}
!949 = !{!"function_entry_count", i64 6158}
!950 = !{!"branch_weights", i32 49279, i32 1}
!951 = !{!"branch_weights", i32 6159, i32 1}
!952 = !{!"branch_weights", i32 13197323, i32 1}
!953 = !{!"branch_weights", i32 736178, i32 12461146}
!954 = !{!"function_entry_count", i64 736177}
!955 = !{!"sel-sched-ir.c:vinsn_delete"}
!956 = !{!"branch_weights", i32 736178, i32 1}
!957 = !{!936, !702, i64 32}
!958 = !{!936, !702, i64 48}
!959 = !{!936, !702, i64 40}
!960 = !{!"function_entry_count", i64 1291054}
!961 = !{!"branch_weights", i32 -816088473, i32 860441083}
!962 = !{!"branch_weights", i32 186875, i32 69129}
!963 = !{!"function_entry_count", i64 1963}
!964 = !{!936, !765, i64 68}
!965 = !{!"branch_weights", i32 1515, i32 450}
!966 = !{i32 0, i32 -2147483648}
!967 = !{!"function_entry_count", i64 1514}
!968 = !{!"sel-sched-ir.c:sel_insn_rtx_cost"}
!969 = !{!"branch_weights", i32 1, i32 1515}
!970 = !{!"function_entry_count", i64 1450}
!971 = !{!913, !703, i64 56}
!972 = !{!"branch_weights", i32 1451, i32 1}
!973 = !{!"function_entry_count", i64 1772860}
!974 = !{!"sel-sched-ir.c:VEC_haifa_deps_insn_data_def_base_index"}
!975 = !{!"function_entry_count", i64 590470}
!976 = !{!912, !702, i64 0}
!977 = !{!"branch_weights", i32 101922, i32 488550}
!978 = !{!"function_entry_count", i64 947831}
!979 = !{!"sel-sched-ir.c:prepare_insn_expr"}
!980 = !{!913, !765, i64 28}
!981 = !{!913, !765, i64 8}
!982 = !{!913, !765, i64 40}
!983 = !{!913, !765, i64 32}
!984 = !{!"branch_weights", i32 947832, i32 1}
!985 = !{!"function_entry_count", i64 601597}
!986 = !{!"branch_weights", i32 594147, i32 7452}
!987 = !{!912, !702, i64 96}
!988 = !{!"branch_weights", i32 594147, i32 1}
!989 = distinct !{!989, !711}
!990 = !{!"function_entry_count", i64 607372}
!991 = !{!"sel-sched-ir.c:find_in_history_vect_1"}
!992 = !{!"branch_weights", i32 575721, i32 31653}
!993 = !{!"branch_weights", i32 127, i32 1}
!994 = !{!995, !765, i64 0}
!995 = !{!"expr_history_def_1", !765, i64 0, !702, i64 8, !702, i64 16, !765, i64 24, !765, i64 28}
!996 = !{!995, !702, i64 16}
!997 = !{!"branch_weights", i32 7452, i32 24202}
!998 = !{!"branch_weights", i32 7452, i32 1}
!999 = !{!"branch_weights", i32 24202, i32 1}
!1000 = !{!"branch_weights", i32 127, i32 4051457}
!1001 = !{!"function_entry_count", i64 878620}
!1002 = !{!"sel-sched-ir.c:bmp_iter_set_init"}
!1003 = !{!915, !702, i64 0}
!1004 = !{!1005, !702, i64 0}
!1005 = !{!"", !702, i64 0, !702, i64 8, !765, i64 16, !766, i64 24}
!1006 = !{!1005, !702, i64 8}
!1007 = !{!"branch_weights", i32 646873, i32 231749}
!1008 = !{!1009, !765, i64 16}
!1009 = !{!"bitmap_element_def", !702, i64 0, !702, i64 8, !765, i64 16, !703, i64 24}
!1010 = !{!"branch_weights", i32 878621, i32 1}
!1011 = !{!1005, !765, i64 16}
!1012 = !{!766, !766, i64 0}
!1013 = !{!1005, !766, i64 24}
!1014 = !{!"function_entry_count", i64 987375}
!1015 = !{!"sel-sched-ir.c:bmp_iter_set"}
!1016 = !{!"branch_weights", i32 755628, i32 231749}
!1017 = !{!"branch_weights", i32 231748, i32 1}
!1018 = !{!"branch_weights", i32 569080, i32 231748}
!1019 = distinct !{!1019, !711}
!1020 = !{!"branch_weights", i32 1, i32 755627}
!1021 = !{!"branch_weights", i32 755628, i32 1}
!1022 = !{!"branch_weights", i32 755627, i32 1}
!1023 = distinct !{!1023, !711}
!1024 = !{!1009, !702, i64 0}
!1025 = !{!"function_entry_count", i64 108755}
!1026 = !{!"sel-sched-ir.c:bmp_iter_next"}
!1027 = !{!"function_entry_count", i64 5775}
!1028 = !{!"branch_weights", i32 5776, i32 1}
!1029 = !{!995, !765, i64 24}
!1030 = !{!995, !702, i64 8}
!1031 = !{!995, !765, i64 28}
!1032 = !{!"sel-sched-ir.c:VEC_expr_history_def_base_index"}
!1033 = !{!"sel-sched-ir.c:VEC_expr_history_def_heap_safe_insert"}
!1034 = !{!"function_entry_count", i64 5745741}
!1035 = !{!"branch_weights", i32 2508221, i32 3237522}
!1036 = !{!"branch_weights", i32 1212283, i32 2025240}
!1037 = !{!936, !765, i64 56}
!1038 = !{!"branch_weights", i32 7807, i32 1204477}
!1039 = !{!760, !702, i64 648}
!1040 = !{!"branch_weights", i32 7353, i32 455}
!1041 = !{!936, !702, i64 24}
!1042 = !{!"branch_weights", i32 1, i32 7353}
!1043 = !{!"sel-sched-ir.c:skip_unspecs_callback"}
!1044 = !{!"function_entry_count", i64 9115103}
!1045 = !{!913, !702, i64 48}
!1046 = !{!"branch_weights", i32 9045259, i32 69846}
!1047 = !{!"branch_weights", i32 1, i32 69845}
!1048 = !{!"branch_weights", i32 69845, i32 1}
!1049 = distinct !{!1049, !711}
!1050 = !{!913, !765, i64 12}
!1051 = !{!913, !765, i64 16}
!1052 = !{!913, !765, i64 24}
!1053 = !{!913, !765, i64 36}
!1054 = !{!"function_entry_count", i64 69845}
!1055 = !{!"sel-sched-ir.c:VEC_expr_history_def_heap_copy"}
!1056 = !{!"branch_weights", i32 1, i32 69846}
!1057 = !{!1058, !765, i64 0}
!1058 = !{!"VEC_expr_history_def_base", !765, i64 0, !765, i64 4, !703, i64 8}
!1059 = !{!1060, !765, i64 0}
!1060 = !{!"VEC_expr_history_def_heap", !1058, i64 0}
!1061 = !{!"function_entry_count", i64 290930}
!1062 = !{!"sel-sched-ir.c:VEC_expr_history_def_base_iterate"}
!1063 = !{!"branch_weights", i32 1, i32 290931}
!1064 = !{!"branch_weights", i32 145466, i32 145466}
!1065 = !{!"function_entry_count", i64 11770523}
!1066 = !{!"sel-sched-ir.c:init_expr"}
!1067 = !{!913, !765, i64 20}
!1068 = !{!"function_entry_count", i64 2064950}
!1069 = distinct !{!1069, !711}
!1070 = !{!"sel-sched-ir.c:update_target_availability"}
!1071 = !{!"sel-sched-ir.c:update_speculative_bits"}
!1072 = !{i32 -1, i32 3}
!1073 = !{!"function_entry_count", i64 375156}
!1074 = !{!"function_entry_count", i64 12718354}
!1075 = !{!"sel-sched-ir.c:free_history_vect"}
!1076 = !{!"branch_weights", i32 12642735, i32 75621}
!1077 = !{!"branch_weights", i32 1, i32 75620}
!1078 = !{!"branch_weights", i32 75620, i32 1}
!1079 = distinct !{!1079, !711}
!1080 = !{!"function_entry_count", i64 7608}
!1081 = !{!"branch_weights", i32 1680845, i32 -1098204421}
!1082 = !{!"branch_weights", i32 7609, i32 1}
!1083 = !{!"function_entry_count", i64 525376}
!1084 = !{!"branch_weights", i32 1, i32 525377}
!1085 = !{!"function_entry_count", i64 696176}
!1086 = !{!936, !702, i64 16}
!1087 = !{!"branch_weights", i32 1, i32 696177}
!1088 = !{!"branch_weights", i32 696177, i32 1}
!1089 = !{!"function_entry_count", i64 785510}
!1090 = !{!"sel-sched-ir.c:rhs_regno"}
!1091 = !{!"function_entry_count", i64 1713459}
!1092 = !{!"branch_weights", i32 1014325, i32 699135}
!1093 = !{!"branch_weights", i32 699135, i32 1}
!1094 = !{!"branch_weights", i32 699135, i32 0}
!1095 = distinct !{!1095, !711}
!1096 = !{!"function_entry_count", i64 25414736}
!1097 = !{!"sel-sched-ir.c:_list_iter_start"}
!1098 = !{!725, !703, i64 8}
!1099 = !{!725, !703, i64 9}
!1100 = !{!"function_entry_count", i64 43912336}
!1101 = !{!"sel-sched-ir.c:_list_iter_cond_expr"}
!1102 = !{!"branch_weights", i32 22909158, i32 21003180}
!1103 = !{!"function_entry_count", i64 7872137}
!1104 = !{!"branch_weights", i32 1, i32 5366558}
!1105 = !{!"branch_weights", i32 2877642, i32 2505580}
!1106 = !{!"branch_weights", i32 5366558, i32 16663}
!1107 = distinct !{!1107, !711}
!1108 = !{!"function_entry_count", i64 699134}
!1109 = !{!"sel-sched-ir.c:set_unavailable_target_for_expr"}
!1110 = !{!"branch_weights", i32 259825, i32 439311}
!1111 = !{!"branch_weights", i32 259825, i32 1}
!1112 = !{!"branch_weights", i32 259515, i32 311}
!1113 = !{!"branch_weights", i32 311, i32 1}
!1114 = !{!"branch_weights", i32 94677, i32 221641}
!1115 = !{!"branch_weights", i32 98648, i32 122994}
!1116 = !{!"branch_weights", i32 221641, i32 0}
!1117 = distinct !{!1117, !711}
!1118 = !{!"branch_weights", i32 429202, i32 10109}
!1119 = !{!"branch_weights", i32 10109, i32 1}
!1120 = !{!"branch_weights", i32 10109, i32 0}
!1121 = distinct !{!1121, !711}
!1122 = !{!"function_entry_count", i64 18497600}
!1123 = !{!"sel-sched-ir.c:_list_iter_next"}
!1124 = !{!"branch_weights", i32 11825801, i32 6671801}
!1125 = !{!"function_entry_count", i64 8750291}
!1126 = !{!"branch_weights", i32 1, i32 8750292}
!1127 = !{!"sel-sched-ir.c:av_set_add_element"}
!1128 = !{!"sel-sched-ir.c:_list_iter_remove"}
!1129 = !{!"branch_weights", i32 8750292, i32 1}
!1130 = !{!"sel-sched-ir.c:av_set_lookup_other_equiv_expr"}
!1131 = !{!"branch_weights", i32 1, i32 5775}
!1132 = !{!"branch_weights", i32 5776, i32 2835}
!1133 = !{!"branch_weights", i32 2835, i32 1}
!1134 = !{!"branch_weights", i32 5775, i32 2835}
!1135 = distinct !{!1135, !711}
!1136 = !{!"function_entry_count", i64 1925532}
!1137 = !{!"function_entry_count", i64 3654747}
!1138 = !{!"branch_weights", i32 1, i32 3654747}
!1139 = !{!"branch_weights", i32 3654747, i32 1302974}
!1140 = distinct !{!1140, !711}
!1141 = !{!"function_entry_count", i64 1821810}
!1142 = !{!"branch_weights", i32 1220213, i32 601598}
!1143 = !{!"branch_weights", i32 601598, i32 1}
!1144 = !{!"branch_weights", i32 601598, i32 0}
!1145 = distinct !{!1145, !711}
!1146 = !{!"sel-sched-ir.c:join_distinct_sets"}
!1147 = !{!"branch_weights", i32 1821811, i32 1}
!1148 = distinct !{!1148, !711}
!1149 = distinct !{!1149, !711}
!1150 = !{!"sel-sched-ir.c:av_set_lookup_and_remove"}
!1151 = distinct !{!1151, !711}
!1152 = !{!"sel-sched-ir.c:av_set_add_nocopy"}
!1153 = !{i64 0, i64 8, !701, i64 8, i64 4, !786, i64 12, i64 4, !786, i64 16, i64 4, !786, i64 20, i64 4, !786, i64 24, i64 4, !786, i64 28, i64 4, !786, i64 32, i64 4, !786, i64 36, i64 4, !786, i64 40, i64 4, !786, i64 48, i64 8, !701, i64 56, i64 1, !706, i64 57, i64 4, !786, i64 57, i64 4, !786, i64 57, i64 4, !786, i64 57, i64 4, !786}
!1154 = !{!"function_entry_count", i64 1021630}
!1155 = !{!"branch_weights", i32 1, i32 1021630}
!1156 = !{!"branch_weights", i32 1021631, i32 1}
!1157 = !{!"branch_weights", i32 1021630, i32 1}
!1158 = distinct !{!1158, !711}
!1159 = distinct !{!1159, !711}
!1160 = !{!"function_entry_count", i64 1027755}
!1161 = !{!"branch_weights", i32 328621, i32 699135}
!1162 = !{!"branch_weights", i32 699045, i32 91}
!1163 = distinct !{!1163, !711}
!1164 = !{!"function_entry_count", i64 416966}
!1165 = !{!"branch_weights", i32 1, i32 416966}
!1166 = !{!"branch_weights", i32 1, i32 699135}
!1167 = !{!"branch_weights", i32 416966, i32 282169}
!1168 = distinct !{!1168, !711}
!1169 = !{!"function_entry_count", i64 261291}
!1170 = !{!"branch_weights", i32 1, i32 261291}
!1171 = !{!"branch_weights", i32 817, i32 261292}
!1172 = !{!"branch_weights", i32 261291, i32 817}
!1173 = distinct !{!1173, !711}
!1174 = !{!"function_entry_count", i64 1183840}
!1175 = !{!"branch_weights", i32 1183841, i32 1}
!1176 = !{!912, !702, i64 80}
!1177 = !{!"branch_weights", i32 591921, i32 591921}
!1178 = !{!912, !702, i64 88}
!1179 = !{!912, !702, i64 104}
!1180 = !{!"branch_weights", i32 591921, i32 1}
!1181 = !{!"function_entry_count", i64 2898234}
!1182 = !{!"sel-sched-ir.c:first_time_insn_init"}
!1183 = !{!912, !702, i64 72}
!1184 = !{!"function_entry_count", i64 187028}
!1185 = !{!"sel-sched-ir.c:init_global_and_expr_for_bb"}
!1186 = !{!"branch_weights", i32 187029, i32 1}
!1187 = !{!"function_entry_count", i64 495460}
!1188 = !{!"sel-sched-ir.c:extend_insn_data"}
!1189 = !{!"branch_weights", i32 235627, i32 259835}
!1190 = !{!"branch_weights", i32 235627, i32 1}
!1191 = !{!"branch_weights", i32 1, i32 235627}
!1192 = !{!"function_entry_count", i64 862612}
!1193 = !{!"sel-sched-ir.c:init_global_and_expr_for_insn"}
!1194 = !{!"branch_weights", i32 -708321890, i32 517007128, i32 1136053597}
!1195 = !{!1196, !702, i64 0}
!1196 = !{!"", !702, i64 0}
!1197 = !{!"branch_weights", i32 -2147483648, i32 0}
!1198 = !{!"branch_weights", i32 590471, i32 1}
!1199 = !{!912, !702, i64 296}
!1200 = !{!"branch_weights", i32 521744, i32 68728}
!1201 = !{!"branch_weights", i32 521744, i32 1}
!1202 = !{!"branch_weights", i32 521227, i32 518}
!1203 = !{!"branch_weights", i32 521227, i32 1}
!1204 = !{!760, !702, i64 632}
!1205 = !{!1206, !765, i64 4}
!1206 = !{!"_haifa_insn_data", !765, i64 0, !765, i64 4, !765, i64 8, !765, i64 12, !765, i64 16, !796, i64 20, !765, i64 22, !765, i64 22, !703, i64 23, !765, i64 24, !765, i64 28, !765, i64 32, !702, i64 40, !702, i64 48, !702, i64 56, !702, i64 64, !702, i64 72, !702, i64 80, !765, i64 88}
!1207 = !{!804, !702, i64 16}
!1208 = !{!"branch_weights", i32 48925, i32 138099}
!1209 = distinct !{!1209, !711}
!1210 = !{!"sel-sched-ir.c:VEC_basic_block_heap_alloc"}
!1211 = !{!"sel-sched-ir.c:VEC_basic_block_base_quick_push"}
!1212 = !{!1213, !765, i64 0}
!1213 = !{!"VEC_basic_block_base", !765, i64 0, !765, i64 4, !703, i64 8}
!1214 = !{!"function_entry_count", i64 886196}
!1215 = !{!"sel-sched-ir.c:VEC_basic_block_base_index"}
!1216 = !{!"sel-sched-ir.c:finish_global_and_expr_for_bb"}
!1217 = !{!"function_entry_count", i64 864057}
!1218 = !{!"sel-sched-ir.c:finish_global_and_expr_insn"}
!1219 = !{!"branch_weights", i32 -692832051, i32 517967997, i32 1138134552}
!1220 = !{!"branch_weights", i32 187024, i32 1}
!1221 = !{!912, !765, i64 64}
!1222 = !{!"sel-sched-ir.c:VEC_basic_block_heap_free"}
!1223 = !{!"branch_weights", i32 1, i32 138100}
!1224 = !{!"sel-sched-ir.c:finish_insns"}
!1225 = !{!"branch_weights", i32 1051485, i32 173194}
!1226 = !{!"branch_weights", i32 1223228, i32 1451}
!1227 = !{!"branch_weights", i32 1224678, i32 1}
!1228 = !{!"branch_weights", i32 1086579, i32 138099}
!1229 = distinct !{!1229, !711}
!1230 = !{!1231, !702, i64 0}
!1231 = !{!"", !702, i64 0, !765, i64 8, !702, i64 16, !702, i64 24, !703, i64 32}
!1232 = !{!1231, !702, i64 24}
!1233 = !{!1231, !765, i64 8}
!1234 = distinct !{!1234, !711}
!1235 = !{!"function_entry_count", i64 599120}
!1236 = !{!"branch_weights", i32 1, i32 599121}
!1237 = !{!914, !702, i64 104}
!1238 = !{!"branch_weights", i32 337395, i32 261727}
!1239 = !{!1231, !702, i64 16}
!1240 = !{!914, !765, i64 176}
!1241 = !{!"branch_weights", i32 -1490701885, i32 4680, i32 4680}
!1242 = !{!"branch_weights", i32 107843, i32 491279}
!1243 = !{!"branch_weights", i32 52671, i32 438609}
!1244 = !{!"branch_weights", i32 52671, i32 1}
!1245 = !{!"branch_weights", i32 599121, i32 1198240}
!1246 = distinct !{!1246, !711}
!1247 = !{!"sel-sched-ir.c:setup_has_dependence_sched_deps_info"}
!1248 = !{!"branch_weights", i32 599121, i32 1}
!1249 = !{!"function_entry_count", i64 3453486}
!1250 = !{!"branch_weights", i32 225352, i32 3228136}
!1251 = !{!912, !765, i64 312}
!1252 = !{!"function_entry_count", i64 1075708}
!1253 = !{!1254, !702, i64 0}
!1254 = !{!"", !702, i64 0, !765, i64 8, !703, i64 12}
!1255 = !{!1254, !765, i64 8}
!1256 = !{!"branch_weights", i32 1075709, i32 1}
!1257 = !{!"function_entry_count", i64 123805}
!1258 = !{!"branch_weights", i32 -394348345, i32 -262281301}
!1259 = !{i64 0, i64 8, !701, i64 8, i64 4, !786, i64 12, i64 4, !786, i64 16, i64 4, !786, i64 20, i64 4, !786, i64 24, i64 4, !786, i64 28, i64 4, !786, i64 32, i64 4, !786, i64 36, i64 4, !786, i64 40, i64 4, !786, i64 48, i64 8, !701, i64 56, i64 1, !706, i64 57, i64 4, !786, i64 57, i64 4, !786, i64 57, i64 4, !786, i64 57, i64 4, !786, i64 64, i64 4, !786, i64 68, i64 4, !786, i64 72, i64 8, !701, i64 80, i64 8, !701, i64 88, i64 8, !701, i64 96, i64 8, !701, i64 104, i64 8, !701, i64 112, i64 8, !701, i64 120, i64 8, !701, i64 128, i64 8, !701, i64 136, i64 8, !701, i64 144, i64 4, !786, i64 148, i64 4, !786, i64 152, i64 4, !786, i64 160, i64 8, !701, i64 168, i64 8, !701, i64 176, i64 8, !701, i64 184, i64 8, !701, i64 192, i64 4, !786, i64 200, i64 8, !701, i64 208, i64 4, !786, i64 216, i64 8, !701, i64 224, i64 8, !701, i64 232, i64 8, !701, i64 240, i64 4, !786, i64 248, i64 8, !701, i64 256, i64 8, !701, i64 264, i64 8, !701, i64 272, i64 4, !786, i64 280, i64 8, !701, i64 288, i64 4, !786, i64 292, i64 4, !786, i64 296, i64 8, !701, i64 304, i64 4, !786, i64 308, i64 4, !786, i64 312, i64 4, !786, i64 316, i64 4, !786, i64 316, i64 4, !786, i64 316, i64 4, !786}
!1260 = !{!"function_entry_count", i64 1669}
!1261 = !{!"branch_weights", i32 1, i32 1670}
!1262 = !{!"branch_weights", i32 1670, i32 1}
!1263 = !{!"branch_weights", i32 1670, i32 1671, i32 2788900}
!1264 = !{!"function_entry_count", i64 158556}
!1265 = !{!"branch_weights", i32 1, i32 158556}
!1266 = !{!"branch_weights", i32 158557, i32 1}
!1267 = !{!"branch_weights", i32 158556, i32 1}
!1268 = distinct !{!1268, !711}
!1269 = !{!"function_entry_count", i64 177608}
!1270 = !{!"branch_weights", i32 158557, i32 19053}
!1271 = !{!"branch_weights", i32 1, i32 19053}
!1272 = !{!828, !702, i64 0}
!1273 = !{!"branch_weights", i32 19053, i32 1}
!1274 = !{!"function_entry_count", i64 965433}
!1275 = !{!"branch_weights", i32 1408579767, i32 -2062688032}
!1276 = !{!828, !702, i64 56}
!1277 = !{!"branch_weights", i32 373509, i32 1}
!1278 = !{!912, !765, i64 24}
!1279 = !{!"branch_weights", i32 195214177, i32 1952269471}
!1280 = !{!"branch_weights", i32 33954, i32 1}
!1281 = !{!"branch_weights", i32 6, i32 33949}
!1282 = !{!"branch_weights", i32 6, i32 1}
!1283 = !{!825, !765, i64 48}
!1284 = !{!"branch_weights", i32 1, i32 6}
!1285 = !{!"function_entry_count", i64 1152461}
!1286 = !{!"sel-sched-ir.c:maybe_tidy_empty_bb"}
!1287 = !{!"branch_weights", i32 1152457, i32 6}
!1288 = !{!"branch_weights", i32 1, i32 191}
!1289 = !{!"branch_weights", i32 191, i32 1}
!1290 = distinct !{!1290, !711}
!1291 = !{!"branch_weights", i32 1, i32 127}
!1292 = distinct !{!1292, !711}
!1293 = !{!"branch_weights", i32 127, i32 24321}
!1294 = distinct !{!1294, !711}
!1295 = !{!"function_entry_count", i64 373513}
!1296 = !{!"branch_weights", i32 34032, i32 339483}
!1297 = !{!"branch_weights", i32 296137, i32 43347}
!1298 = !{!"branch_weights", i32 43347, i32 1}
!1299 = !{!"branch_weights", i32 1, i32 43347}
!1300 = !{!"function_entry_count", i64 3252738}
!1301 = !{!"sel-sched-ir.c:VEC_edge_base_index"}
!1302 = !{!"function_entry_count", i64 30792313}
!1303 = !{!"branch_weights", i32 1467, i32 30790848}
!1304 = !{!"branch_weights", i32 1, i32 1467}
!1305 = !{!"branch_weights", i32 1, i32 30790848}
!1306 = !{!"branch_weights", i32 30790838, i32 11}
!1307 = !{!"function_entry_count", i64 6627911}
!1308 = !{!"branch_weights", i32 6627912, i32 1}
!1309 = !{!"branch_weights", i32 1, i32 6627912}
!1310 = !{!"function_entry_count", i64 11752686}
!1311 = !{!"function_entry_count", i64 6202732}
!1312 = !{!"sel-sched-ir.c:VEC_edge_base_length"}
!1313 = !{!"branch_weights", i32 1, i32 6202733}
!1314 = !{!1315, !765, i64 0}
!1315 = !{!"VEC_edge_base", !765, i64 0, !765, i64 4, !703, i64 8}
!1316 = !{!"function_entry_count", i64 43950}
!1317 = !{!"sel-sched-ir.c:single_succ"}
!1318 = !{!"function_entry_count", i64 7511246}
!1319 = !{!"branch_weights", i32 684, i32 7510564}
!1320 = !{!1321, !702, i64 8}
!1321 = !{!"loop", !765, i64 0, !765, i64 4, !702, i64 8, !702, i64 16, !1322, i64 24, !765, i64 32, !765, i64 36, !702, i64 40, !702, i64 48, !702, i64 56, !702, i64 64, !702, i64 72, !1323, i64 80, !1323, i64 96, !703, i64 112, !703, i64 113, !765, i64 116, !702, i64 120, !702, i64 128, !703, i64 136, !702, i64 144}
!1322 = !{!"lpt_decision", !765, i64 0, !765, i64 4}
!1323 = !{!"", !766, i64 0, !766, i64 8}
!1324 = !{!"sel-sched-ir.c:sel_recompute_toporder"}
!1325 = !{!804, !765, i64 24}
!1326 = distinct !{!1326, !711}
!1327 = !{!1328, !765, i64 0}
!1328 = !{!"", !765, i64 0, !765, i64 4, !765, i64 8, !765, i64 8}
!1329 = !{!"branch_weights", i32 48930, i32 138099}
!1330 = !{!"function_entry_count", i64 276198}
!1331 = !{!"branch_weights", i32 276199, i32 1}
!1332 = !{!1321, !702, i64 16}
!1333 = distinct !{!1333, !711}
!1334 = !{!"function_entry_count", i64 3907663}
!1335 = !{!"sel-sched-ir.c:VEC_sel_region_bb_info_def_base_index"}
!1336 = distinct !{!1336, !711}
!1337 = distinct !{!1337, !711}
!1338 = !{!"sel-sched-ir.c:cfg_preds"}
!1339 = !{!"function_entry_count", i64 138137}
!1340 = !{!804, !765, i64 32}
!1341 = !{!"sel-sched-ir.c:VEC_sel_global_bb_info_def_heap_safe_grow_cleared"}
!1342 = !{!"sel-sched-ir.c:VEC_sel_global_bb_info_def_heap_free"}
!1343 = !{!"branch_weights", i32 1, i32 39}
!1344 = !{!804, !702, i64 0}
!1345 = !{!"branch_weights", i32 155, i32 747961}
!1346 = distinct !{!1346, !711}
!1347 = !{!"function_entry_count", i64 187066}
!1348 = !{!"sel-sched-ir.c:init_lv_set"}
!1349 = !{!1350, !703, i64 8}
!1350 = !{!"", !702, i64 0, !703, i64 8}
!1351 = !{!"branch_weights", i32 187067, i32 1}
!1352 = !{!1350, !702, i64 0}
!1353 = !{!1354, !702, i64 16}
!1354 = !{!"df_lr_bb_info", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24}
!1355 = !{!"branch_weights", i32 155, i32 747941}
!1356 = distinct !{!1356, !711}
!1357 = !{!"sel-sched-ir.c:free_lv_set"}
!1358 = !{!"branch_weights", i32 1, i32 187067}
!1359 = !{!"function_entry_count", i64 1683566}
!1360 = !{!"sel-sched-ir.c:VEC_sel_global_bb_info_def_base_index"}
!1361 = !{!"function_entry_count", i64 5}
!1362 = !{!"sel-sched-ir.c:free_av_set"}
!1363 = !{!"sel-sched-ir.c:exchange_lv_sets"}
!1364 = !{!"sel-sched-ir.c:exchange_av_sets"}
!1365 = !{!933, !702, i64 8}
!1366 = !{!"branch_weights", i32 261292, i32 1}
!1367 = !{!"branch_weights", i32 1, i32 261292}
!1368 = !{!"function_entry_count", i64 6060901}
!1369 = !{!"branch_weights", i32 -996745672, i32 544}
!1370 = !{!"branch_weights", i32 3910774, i32 2150129}
!1371 = !{!"function_entry_count", i64 11724310}
!1372 = !{!"function_entry_count", i64 3149701}
!1373 = !{!"branch_weights", i32 158514, i32 44}
!1374 = !{!"branch_weights", i32 153419, i32 5096}
!1375 = !{!"branch_weights", i32 70, i32 153350}
!1376 = !{!"branch_weights", i32 153350, i32 1}
!1377 = !{!"branch_weights", i32 76010, i32 77341}
!1378 = !{!"function_entry_count", i64 197309}
!1379 = !{!"sel-sched-ir.c:single_succ_p"}
!1380 = !{!"sel-sched-ir.c:extend_bb_info"}
!1381 = !{!"sel-sched-ir.c:init_bb"}
!1382 = !{!933, !702, i64 0}
!1383 = !{!"sel-sched-ir.c:sel_restore_notes"}
!1384 = !{!"branch_weights", i32 187024, i32 924089}
!1385 = !{!"branch_weights", i32 1475524026, i32 -1665590101}
!1386 = !{!"branch_weights", i32 127, i32 142222209}
!1387 = distinct !{!1387, !711}
!1388 = distinct !{!1388, !711}
!1389 = distinct !{!1389, !711}
!1390 = !{!"sel-sched-ir.c:sel_remove_loop_preheader"}
!1391 = !{!1321, !702, i64 64}
!1392 = distinct !{!1392, !711}
!1393 = distinct !{!1393, !711}
!1394 = distinct !{!1394, !711}
!1395 = distinct !{!1395, !711}
!1396 = !{!"sel-sched-ir.c:finish_region_bb_info"}
!1397 = !{!"function_entry_count", i64 118}
!1398 = !{!"branch_weights", i32 238, i32 14161}
!1399 = !{!"function_entry_count", i64 1100204}
!1400 = !{!1401, !765, i64 12}
!1401 = !{!"", !702, i64 0, !765, i64 8, !765, i64 12, !765, i64 16}
!1402 = !{!"branch_weights", i32 1100205, i32 1}
!1403 = !{!1401, !702, i64 0}
!1404 = !{!1405, !702, i64 8}
!1405 = !{!"succs_info", !796, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !765, i64 32, !765, i64 36, !765, i64 40}
!1406 = !{!1405, !702, i64 24}
!1407 = !{!1405, !702, i64 16}
!1408 = !{!1405, !765, i64 32}
!1409 = !{!1405, !765, i64 40}
!1410 = !{!1405, !765, i64 36}
!1411 = !{!"function_entry_count", i64 2200408}
!1412 = !{!"sel-sched-ir.c:VEC_rtx_base_block_remove"}
!1413 = !{!"sel-sched-ir.c:VEC_rtx_base_length"}
!1414 = !{!"branch_weights", i32 1, i32 2200409}
!1415 = !{!"sel-sched-ir.c:VEC_int_base_block_remove"}
!1416 = !{!1417, !765, i64 0}
!1417 = !{!"VEC_int_base", !765, i64 0, !765, i64 4, !703, i64 8}
!1418 = !{!"sel-sched-ir.c:VEC_int_base_length"}
!1419 = !{!"branch_weights", i32 1, i32 1100205}
!1420 = distinct !{!1420, !711}
!1421 = !{!"sel-sched-ir.c:alloc_succs_info"}
!1422 = !{!1401, !765, i64 16}
!1423 = !{!"branch_weights", i32 222, i32 1099984}
!1424 = !{!1401, !765, i64 8}
!1425 = !{!"branch_weights", i32 222, i32 1}
!1426 = !{!"sel-sched-ir.c:VEC_rtx_heap_safe_push"}
!1427 = !{!"sel-sched-ir.c:VEC_int_heap_safe_push"}
!1428 = !{!"branch_weights", i32 85, i32 235864}
!1429 = !{!"branch_weights", i32 235864, i32 1}
!1430 = !{!"branch_weights", i32 85069, i32 150796}
!1431 = !{!"branch_weights", i32 83341, i32 1729}
!1432 = !{!"branch_weights", i32 54676, i32 97849}
!1433 = !{!"branch_weights", i32 57053, i32 97849}
!1434 = !{!"branch_weights", i32 97849, i32 1}
!1435 = !{!"branch_weights", i32 127, i32 19827201}
!1436 = distinct !{!1436, !711}
!1437 = !{!"function_entry_count", i64 284871}
!1438 = !{!"sel-sched-ir.c:bb_next_bb"}
!1439 = !{!"branch_weights", i32 24, i32 42, i32 38841, i32 245968}
!1440 = !{!"branch_weights", i32 130508, i32 115461}
!1441 = !{!"function_entry_count", i64 85068}
!1442 = !{!"sel-sched-ir.c:single_pred_p"}
!1443 = !{!"function_entry_count", i64 1198062}
!1444 = !{!"sel-sched-ir.c:ei_start_1"}
!1445 = !{!"function_entry_count", i64 3385549}
!1446 = !{!"sel-sched-ir.c:ei_cond"}
!1447 = !{!"branch_weights", i32 2285336, i32 1100215}
!1448 = !{!"function_entry_count", i64 2187487}
!1449 = !{!"sel-sched-ir.c:ei_next"}
!1450 = !{!"branch_weights", i32 1, i32 2187488}
!1451 = !{!"branch_weights", i32 2187488, i32 1}
!1452 = !{!795, !765, i64 0}
!1453 = !{!"branch_weights", i32 1, i32 48924}
!1454 = !{!"branch_weights", i32 48924, i32 1}
!1455 = !{!912, !765, i64 20}
!1456 = distinct !{!1456, !711}
!1457 = !{!"function_entry_count", i64 404}
!1458 = !{!"sel-sched-ir.c:VEC_rtx_heap_free"}
!1459 = !{!"branch_weights", i32 39, i32 367}
!1460 = !{!1461, !765, i64 8}
!1461 = !{!"param_info", !702, i64 0, !765, i64 8, !703, i64 12, !765, i64 16, !765, i64 20, !702, i64 24}
!1462 = !{!"branch_weights", i32 155, i32 1}
!1463 = !{!"branch_weights", i32 581, i32 155}
!1464 = distinct !{!1464, !711}
!1465 = !{!"function_entry_count", i64 183}
!1466 = !{!"sel-sched-ir.c:VEC_int_heap_free"}
!1467 = !{!"branch_weights", i32 1, i32 184}
!1468 = distinct !{!1468, !711}
!1469 = !{!"sel-sched-ir.c:ei_safe_edge"}
!1470 = !{!"sel-sched-ir.c:move_bb_info"}
!1471 = !{!"sel-sched-ir.c:remove_empty_bb"}
!1472 = !{!"branch_weights", i32 6, i32 7, i32 36}
!1473 = !{!"branch_weights", i32 36, i32 13}
!1474 = distinct !{!1474, !711}
!1475 = !{!"sel-sched-ir.c:VEC_basic_block_base_iterate"}
!1476 = !{!"sel-sched-ir.c:sel_add_bb"}
!1477 = distinct !{!1477, !711}
!1478 = !{!"sel-sched-ir.c:find_new_jump"}
!1479 = !{!802, !702, i64 32}
!1480 = !{!"sel-sched-ir.c:copy_lv_set_from"}
!1481 = !{!"sel-sched-ir.c:change_loops_latches"}
!1482 = distinct !{!1482, !711}
!1483 = !{i64 0, i64 8, !701, i64 8, i64 8, !701, i64 16, i64 8, !701, i64 24, i64 8, !701, i64 32, i64 8, !701, i64 40, i64 8, !701, i64 48, i64 8, !701, i64 56, i64 8, !701, i64 64, i64 8, !701, i64 72, i64 8, !701, i64 80, i64 8, !701, i64 88, i64 8, !701, i64 96, i64 8, !701, i64 104, i64 8, !701, i64 112, i64 8, !701, i64 120, i64 8, !701, i64 128, i64 8, !701, i64 136, i64 8, !701, i64 144, i64 8, !701, i64 152, i64 8, !701, i64 160, i64 8, !701, i64 168, i64 8, !701, i64 176, i64 8, !701, i64 184, i64 8, !701, i64 192, i64 8, !701, i64 200, i64 8, !701, i64 208, i64 8, !701, i64 216, i64 8, !701, i64 224, i64 8, !701}
!1484 = !{!1485, !702, i64 24}
!1485 = !{!"cfg_hooks", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !702, i64 32, !702, i64 40, !702, i64 48, !702, i64 56, !702, i64 64, !702, i64 72, !702, i64 80, !702, i64 88, !702, i64 96, !702, i64 104, !702, i64 112, !702, i64 120, !702, i64 128, !702, i64 136, !702, i64 144, !702, i64 152, !702, i64 160, !702, i64 168, !702, i64 176, !702, i64 184, !702, i64 192, !702, i64 200, !702, i64 208, !702, i64 216, !702, i64 224}
!1486 = !{!"sel-sched-ir.c:sel_split_block"}
!1487 = !{!912, !765, i64 28}
!1488 = distinct !{!1488, !711}
!1489 = !{!"sel-sched-ir.c:sel_create_basic_block"}
!1490 = !{!828, !702, i64 16}
!1491 = !{!"sel-sched-ir.c:sel_init_only_bb"}
!1492 = !{!"sel-sched-ir.c:sel_create_empty_bb"}
!1493 = !{!"function_entry_count", i64 9122}
!1494 = !{!"sel-sched-ir.c:recog_memoized"}
!1495 = !{!"branch_weights", i32 7609, i32 1515}
!1496 = !{!"sel-sched-ir.c:vinsn_create"}
!1497 = !{!"branch_weights", i32 1521, i32 79}
!1498 = !{!"function_entry_count", i64 276236}
!1499 = !{!"branch_weights", i32 276237, i32 1}
!1500 = !{!760, !702, i64 624}
!1501 = !{!1502, !702, i64 16}
!1502 = !{!"common_sched_info_def", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !765, i64 32}
!1503 = !{!1502, !702, i64 24}
!1504 = !{!1502, !765, i64 32}
!1505 = !{!1506, !765, i64 100}
!1506 = !{!"haifa_sched_info", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !702, i64 32, !702, i64 40, !702, i64 48, !702, i64 56, !702, i64 64, !702, i64 72, !702, i64 80, !702, i64 88, !765, i64 96, !765, i64 100, !702, i64 104, !702, i64 112, !702, i64 120, !765, i64 128}
!1507 = !{!"sel-sched-ir.c:sel_estimate_number_of_insns"}
!1508 = distinct !{!1508, !711}
!1509 = !{!"function_entry_count", i64 272142}
!1510 = !{!"sel-sched-ir.c:sel_luid_for_non_insn"}
!1511 = !{!"branch_weights", i32 -1399501848, i32 10639}
!1512 = distinct !{!1512, !711}
!1513 = !{!"sel-sched-ir.c:sel_create_new_region"}
!1514 = !{!1328, !765, i64 4}
!1515 = !{!"sel-sched-ir.c:sel_add_block_to_region"}
!1516 = !{!"sel-sched-ir.c:recompute_rev_top_order"}
!1517 = distinct !{!1517, !711}
!1518 = !{!"sel-sched-ir.c:VEC_loop_p_base_length"}
!1519 = !{!1520, !765, i64 0}
!1520 = !{!"VEC_loop_p_base", !765, i64 0, !765, i64 4, !703, i64 8}
!1521 = !{!"sel-sched-ir.c:VEC_loop_p_base_index"}
!1522 = !{!"sel-sched-ir.c:loop_depth"}
!1523 = !{!1321, !702, i64 40}
!1524 = distinct !{!1524, !711}
!1525 = !{!"sel-sched-ir.c:fel_init"}
!1526 = !{!1527, !765, i64 8}
!1527 = !{!"", !702, i64 0, !765, i64 8}
!1528 = !{!1527, !702, i64 0}
!1529 = !{!1530, !702, i64 8}
!1530 = !{!"loops", !765, i64 0, !702, i64 8, !702, i64 16, !702, i64 24}
!1531 = !{!1321, !702, i64 48}
!1532 = !{!1321, !765, i64 0}
!1533 = distinct !{!1533, !711}
!1534 = !{!1530, !702, i64 24}
!1535 = distinct !{!1535, !711}
!1536 = !{!1321, !702, i64 56}
!1537 = distinct !{!1537, !711}
!1538 = distinct !{!1538, !711}
!1539 = !{!"sel-sched-ir.c:fel_next"}
!1540 = distinct !{!1540, !711}
!1541 = !{!"sel-sched-ir.c:VEC_loop_p_heap_free"}
!1542 = distinct !{!1542, !711}
!1543 = !{!1544, !702, i64 0}
!1544 = !{!"simple_bitmap_def", !702, i64 0, !765, i64 8, !765, i64 12, !703, i64 16}
!1545 = !{!"sel-sched-ir.c:make_regions_from_loop_nest"}
!1546 = distinct !{!1546, !711}
!1547 = !{!"sel-sched-ir.c:make_regions_from_the_rest"}
!1548 = distinct !{!1548, !711}
!1549 = !{!828, !765, i64 96}
!1550 = distinct !{!1550, !711}
!1551 = distinct !{!1551, !711}
!1552 = distinct !{!1552, !711}
!1553 = distinct !{!1553, !711}
!1554 = distinct !{!1554, !711}
!1555 = !{!"sel-sched-ir.c:VEC_basic_block_heap_safe_push"}
!1556 = !{!"sel-sched-ir.c:loop_outer"}
!1557 = !{!"sel-sched-ir.c:_list_alloc"}
!1558 = !{!"sel-sched-ir.c:fence_clear"}
!1559 = !{!"branch_weights", i32 -1175631602, i32 50036}
!1560 = !{!"sel-sched-ir.c:delete_deps_context"}
!1561 = !{!"sel-sched-ir.c:delete_target_context"}
!1562 = !{!760, !702, i64 584}
!1563 = !{!"sel-sched-ir.c:VEC_rtx_gc_free"}
!1564 = !{!"sel-sched-ir.c:clear_deps_context"}
!1565 = !{!"sel-sched-ir.c:VEC_edge_base_iterate"}
!1566 = !{!"sel-sched-ir.c:VEC_edge_heap_free"}
!1567 = !{!"sel-sched-ir.c:get_all_loop_exits"}
!1568 = distinct !{!1568, !711}
!1569 = distinct !{!1569, !711}
!1570 = distinct !{!1570, !711}
!1571 = distinct !{!1571, !711}
!1572 = !{!"sel-sched-ir.c:sel_bb_empty_or_nop_p"}
!1573 = !{!"branch_weights", i32 546, i32 2129881}
!1574 = !{!"branch_weights", i32 546, i32 1}
!1575 = !{!"sel-sched-ir.c:inner_loop_header_p"}
!1576 = !{!"sel-sched-ir.c:get_loop_exit_edges_unique_dests"}
!1577 = !{!1530, !765, i64 0}
!1578 = !{!1321, !702, i64 128}
!1579 = !{!1580, !702, i64 16}
!1580 = !{!"loop_exit", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24}
!1581 = !{!1580, !702, i64 0}
!1582 = distinct !{!1582, !711}
!1583 = distinct !{!1583, !711}
!1584 = !{!"sel-sched-ir.c:VEC_edge_heap_safe_push"}
!1585 = !{!"sel-sched-ir.c:VEC_edge_base_ordered_remove"}
!1586 = !{!"sel-sched-ir.c:VEC_edge_heap_reserve"}
!1587 = !{!"sel-sched-ir.c:VEC_edge_base_quick_push"}
!1588 = !{!"sel-sched-ir.c:VEC_edge_base_space"}
!1589 = !{!1315, !765, i64 4}
!1590 = !{!"sel-sched-ir.c:state_alloc"}
!1591 = !{!"sel-sched-ir.c:alloc_deps_context"}
!1592 = !{!"sel-sched-ir.c:state_free"}
!1593 = !{!"sel-sched-ir.c:reset_deps_context"}
!1594 = !{!"sel-sched-ir.c:state_copy"}
!1595 = !{!"sel-sched-ir.c:copy_deps_context"}
!1596 = !{!"sel-sched-ir.c:copy_target_context"}
!1597 = !{!"sel-sched-ir.c:VEC_expr_history_def_base_length"}
!1598 = !{!"function_entry_count", i64 31652}
!1599 = !{!"sel-sched-ir.c:VEC_expr_history_def_base_address"}
!1600 = !{!"branch_weights", i32 1, i32 31653}
!1601 = !{!"sel-sched-ir.c:VEC_expr_history_def_heap_reserve"}
!1602 = !{!"sel-sched-ir.c:VEC_expr_history_def_base_quick_insert"}
!1603 = !{!"branch_weights", i32 1, i32 5776}
!1604 = !{i64 0, i64 4, !786, i64 8, i64 8, !701, i64 16, i64 8, !701, i64 24, i64 4, !786, i64 28, i64 4, !786}
!1605 = !{!"sel-sched-ir.c:VEC_expr_history_def_base_space"}
!1606 = !{!1058, !765, i64 4}
!1607 = !{!"function_entry_count", i64 75620}
!1608 = !{!"sel-sched-ir.c:VEC_expr_history_def_heap_free"}
!1609 = !{!"branch_weights", i32 1, i32 75621}
!1610 = !{!"sel-sched-ir.c:_list_iter_remove_nofree"}
!1611 = !{!"sel-sched-ir.c:_list_remove_nofree"}
!1612 = !{!"sel-sched-ir.c:invalidate_av_set"}
!1613 = !{!"sel-sched-ir.c:VEC_haifa_insn_data_def_base_index"}
!1614 = !{!"function_entry_count", i64 765113}
!1615 = !{!"sel-sched-ir.c:init_first_time_insn_data"}
!1616 = !{!"branch_weights", i32 1, i32 765114}
!1617 = !{!"branch_weights", i32 171744, i32 593371}
!1618 = !{!"sel-sched-ir.c:hash_transformed_insns"}
!1619 = !{!1620, !702, i64 0}
!1620 = !{!"transformed_insns", !702, i64 0, !702, i64 8, !765, i64 16, !765, i64 20, !765, i64 24, !765, i64 24}
!1621 = !{!936, !765, i64 60}
!1622 = !{!"function_entry_count", i64 4193}
!1623 = !{!"sel-sched-ir.c:eq_transformed_insns"}
!1624 = !{!"branch_weights", i32 4187, i32 8}
!1625 = !{!"sel-sched-ir.c:free_transformed_insns"}
!1626 = !{!1620, !702, i64 8}
!1627 = !{!"function_entry_count", i64 591920}
!1628 = !{!"sel-sched-ir.c:free_first_time_insn_data"}
!1629 = !{!"sel-sched-ir.c:has_dependence_start_insn"}
!1630 = !{!"sel-sched-ir.c:has_dependence_finish_insn"}
!1631 = !{!"function_entry_count", i64 491546}
!1632 = !{!"sel-sched-ir.c:has_dependence_start_lhs"}
!1633 = !{!"branch_weights", i32 491547, i32 1}
!1634 = !{!"branch_weights", i32 269, i32 491279}
!1635 = !{!"sel-sched-ir.c:has_dependence_finish_lhs"}
!1636 = !{!"sel-sched-ir.c:has_dependence_start_rhs"}
!1637 = !{!"sel-sched-ir.c:has_dependence_finish_rhs"}
!1638 = !{!"branch_weights", i32 269, i32 132645330, i32 72361}
!1639 = !{!"function_entry_count", i64 544556}
!1640 = !{!"sel-sched-ir.c:has_dependence_note_reg_set"}
!1641 = !{!"branch_weights", i32 544557, i32 1}
!1642 = !{!1643, !702, i64 8}
!1643 = !{!"deps_reg", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !765, i64 32, !765, i64 36}
!1644 = !{!"branch_weights", i32 498509, i32 46049}
!1645 = !{!1643, !702, i64 24}
!1646 = !{!"branch_weights", i32 413630, i32 84880}
!1647 = !{!1643, !702, i64 0}
!1648 = !{!"branch_weights", i32 492142, i32 52416}
!1649 = !{!"function_entry_count", i64 37964}
!1650 = !{!"sel-sched-ir.c:has_dependence_note_reg_clobber"}
!1651 = !{!"branch_weights", i32 37965, i32 1}
!1652 = !{!"branch_weights", i32 21438, i32 16528}
!1653 = !{!"branch_weights", i32 35030, i32 2936}
!1654 = !{!"function_entry_count", i64 418751}
!1655 = !{!"sel-sched-ir.c:has_dependence_note_reg_use"}
!1656 = !{!"branch_weights", i32 418752, i32 1}
!1657 = !{!"branch_weights", i32 285965, i32 132788}
!1658 = !{!"branch_weights", i32 418664, i32 89}
!1659 = !{!"branch_weights", i32 390580, i32 28173}
!1660 = !{!"branch_weights", i32 28173, i32 1}
!1661 = !{!"function_entry_count", i64 301}
!1662 = !{!"sel-sched-ir.c:has_dependence_note_mem_dep"}
!1663 = !{!"branch_weights", i32 302, i32 1}
!1664 = !{!"function_entry_count", i64 125916}
!1665 = !{!"sel-sched-ir.c:has_dependence_note_dep"}
!1666 = !{!"branch_weights", i32 125917, i32 1}
!1667 = !{!"function_entry_count", i64 1011}
!1668 = !{!"sel-sched-ir.c:tick_check_note_mem_dep"}
!1669 = !{!"branch_weights", i32 490, i32 523}
!1670 = !{!"function_entry_count", i64 1617278}
!1671 = !{!"sel-sched-ir.c:tick_check_note_dep"}
!1672 = !{!"function_entry_count", i64 1618289}
!1673 = !{!"sel-sched-ir.c:tick_check_dep_with_dw"}
!1674 = !{!"branch_weights", i32 1, i32 1618290}
!1675 = !{!"branch_weights", i32 531460, i32 1086831}
!1676 = !{!912, !765, i64 304}
!1677 = !{!"branch_weights", i32 1618290, i32 1}
!1678 = !{!"branch_weights", i32 1137684, i32 480607}
!1679 = !{!"branch_weights", i32 13245753, i32 -1580204407}
!1680 = !{!"sel-sched-ir.c:single_pred_edge"}
!1681 = !{!"sel-sched-ir.c:single_succ_edge"}
!1682 = !{!"branch_weights", i32 1, i32 43951}
!1683 = !{!"function_entry_count", i64 276274}
!1684 = !{!"sel-sched-ir.c:VEC_sel_global_bb_info_def_base_length"}
!1685 = !{!"branch_weights", i32 77, i32 276199}
!1686 = !{!1687, !765, i64 0}
!1687 = !{!"VEC_sel_global_bb_info_def_base", !765, i64 0, !765, i64 4, !703, i64 8}
!1688 = !{!"sel-sched-ir.c:VEC_sel_global_bb_info_def_heap_safe_grow"}
!1689 = !{!"branch_weights", i32 39, i32 138100}
!1690 = !{}
!1691 = !{!"sel-sched-ir.c:VEC_sel_global_bb_info_def_base_address"}
!1692 = !{!"branch_weights", i32 1, i32 138138}
!1693 = !{!"sel-sched-ir.c:VEC_sel_global_bb_info_def_heap_reserve_exact"}
!1694 = !{!"sel-sched-ir.c:VEC_sel_global_bb_info_def_base_space"}
!1695 = !{!1687, !765, i64 4}
!1696 = !{!"function_entry_count", i64 2329488}
!1697 = !{!"sel-sched-ir.c:VEC_sel_insn_data_def_base_length"}
!1698 = !{!"branch_weights", i32 414298, i32 1915192}
!1699 = !{!1700, !765, i64 0}
!1700 = !{!"VEC_sel_insn_data_def_base", !765, i64 0, !765, i64 4, !703, i64 8}
!1701 = !{!"function_entry_count", i64 471252}
!1702 = !{!"sel-sched-ir.c:VEC_sel_insn_data_def_base_space"}
!1703 = !{!"branch_weights", i32 276199, i32 195055}
!1704 = !{!1700, !765, i64 4}
!1705 = !{!"function_entry_count", i64 235626}
!1706 = !{!"sel-sched-ir.c:VEC_sel_insn_data_def_heap_safe_grow_cleared"}
!1707 = !{!"sel-sched-ir.c:VEC_sel_insn_data_def_heap_safe_grow"}
!1708 = !{!"branch_weights", i32 138100, i32 97528}
!1709 = !{!"sel-sched-ir.c:VEC_sel_insn_data_def_base_address"}
!1710 = !{!"sel-sched-ir.c:VEC_sel_insn_data_def_heap_reserve_exact"}
!1711 = !{!"sel-sched-ir.c:VEC_sel_insn_data_def_heap_free"}
!1712 = !{!"sel-sched-ir.c:insn_is_the_only_one_in_bb_p"}
!1713 = !{!"branch_weights", i32 170244, i32 187119}
!1714 = !{!"sel-sched-ir.c:create_initial_data_sets"}
!1715 = !{!"sel-sched-ir.c:init_insn_data"}
!1716 = !{!"branch_weights", i32 -586677535, i32 41506}
!1717 = !{!"sel-sched-ir.c:init_simplejump_data"}
!1718 = !{!"sel-sched-ir.c:get_seqno_of_a_pred"}
!1719 = distinct !{!1719, !711}
!1720 = !{!"sel-sched-ir.c:single_pred"}
!1721 = !{!"sel-sched-ir.c:df_lr_get_bb_info"}
!1722 = !{!1723, !765, i64 16}
!1723 = !{!"dataflow", !702, i64 0, !702, i64 8, !765, i64 16, !702, i64 24, !702, i64 32, !702, i64 40, !765, i64 48, !703, i64 52, !703, i64 53, !703, i64 54}
!1724 = !{!1723, !702, i64 8}
!1725 = !{!"sel-sched-ir.c:extend_region_bb_info"}
!1726 = !{!"sel-sched-ir.c:VEC_sel_region_bb_info_def_heap_safe_grow_cleared"}
!1727 = !{!"sel-sched-ir.c:VEC_sel_region_bb_info_def_base_length"}
!1728 = !{!1729, !765, i64 0}
!1729 = !{!"VEC_sel_region_bb_info_def_base", !765, i64 0, !765, i64 4, !703, i64 8}
!1730 = !{!"sel-sched-ir.c:VEC_sel_region_bb_info_def_heap_safe_grow"}
!1731 = !{!"sel-sched-ir.c:VEC_sel_region_bb_info_def_base_address"}
!1732 = !{!"sel-sched-ir.c:VEC_sel_region_bb_info_def_heap_reserve_exact"}
!1733 = !{!"sel-sched-ir.c:VEC_sel_region_bb_info_def_base_space"}
!1734 = !{!1729, !765, i64 4}
!1735 = !{!"sel-sched-ir.c:VEC_sel_region_bb_info_def_heap_free"}
!1736 = !{!"function_entry_count", i64 442}
!1737 = !{!"sel-sched-ir.c:VEC_rtx_heap_alloc"}
!1738 = !{!"function_entry_count", i64 221}
!1739 = !{!"sel-sched-ir.c:VEC_int_heap_alloc"}
!1740 = !{!"sel-sched-ir.c:VEC_rtx_heap_reserve"}
!1741 = !{!"branch_weights", i32 107, i32 2130320}
!1742 = !{!"sel-sched-ir.c:VEC_rtx_base_quick_push"}
!1743 = !{!"sel-sched-ir.c:VEC_rtx_base_space"}
!1744 = !{!884, !765, i64 4}
!1745 = !{!"sel-sched-ir.c:VEC_int_heap_reserve"}
!1746 = !{!"sel-sched-ir.c:VEC_int_base_quick_push"}
!1747 = !{!"sel-sched-ir.c:VEC_int_base_space"}
!1748 = !{!1417, !765, i64 4}
!1749 = !{!"sel-sched-ir.c:cfg_preds_1"}
!1750 = distinct !{!1750, !711}
!1751 = !{!"sel-sched-ir.c:ei_end_p"}
!1752 = !{!"branch_weights", i32 1, i32 3385550}
!1753 = !{!"function_entry_count", i64 2285335}
!1754 = !{!"sel-sched-ir.c:ei_edge"}
!1755 = !{!"branch_weights", i32 1, i32 2285336}
!1756 = !{!"function_entry_count", i64 15716742}
!1757 = !{!"sel-sched-ir.c:ei_container"}
!1758 = !{!"branch_weights", i32 1, i32 15716743}
!1759 = !{!"sel-sched-ir.c:sel_remove_bb"}
!1760 = !{!"sel-sched-ir.c:remove_bb_from_region"}
!1761 = distinct !{!1761, !711}
!1762 = !{!"branch_weights", i32 1553857, i32 191}
!1763 = distinct !{!1763, !711}
!1764 = !{!"sel-sched-ir.c:return_bb_to_pool"}
!1765 = !{!"sel-sched-ir.c:delete_and_free_basic_block"}
!1766 = !{!"sel-sched-ir.c:VEC_basic_block_base_length"}
!1767 = !{!"sel-sched-ir.c:add_block_to_current_region"}
!1768 = distinct !{!1768, !711}
!1769 = distinct !{!1769, !711}
!1770 = !{!"sel-sched-ir.c:find_place_to_insert_bb"}
!1771 = distinct !{!1771, !711}
!1772 = distinct !{!1772, !711}
!1773 = !{!"sel-sched-ir.c:check_for_new_jump"}
!1774 = !{!"sel-sched-ir.c:get_bb_note_from_pool"}
!1775 = !{!"sel-sched-ir.c:VEC_rtx_base_pop"}
!1776 = !{!"sel-sched-ir.c:vinsn_init"}
!1777 = !{!1778, !765, i64 256}
!1778 = !{!"df", !703, i64 0, !703, i64 64, !702, i64 128, !1779, i64 136, !1779, i64 176, !702, i64 216, !702, i64 224, !702, i64 232, !765, i64 240, !765, i64 244, !702, i64 248, !765, i64 256, !765, i64 260, !702, i64 264, !702, i64 272, !702, i64 280, !702, i64 288, !702, i64 296, !702, i64 304, !702, i64 312, !702, i64 320, !702, i64 328, !702, i64 336, !765, i64 344, !765, i64 348, !702, i64 352, !765, i64 360, !765, i64 364, !703, i64 365, !703, i64 366}
!1779 = !{!"df_ref_info", !702, i64 0, !702, i64 8, !702, i64 16, !765, i64 24, !765, i64 28, !765, i64 32, !765, i64 36}
!1780 = !{!1778, !702, i64 248}
!1781 = !{!"branch_weights", i32 144258, i32 591921}
!1782 = !{!"branch_weights", i32 176732, i32 559447}
!1783 = !{!"branch_weights", i32 367, i32 735812}
!1784 = !{!"branch_weights", i32 367, i32 1}
!1785 = !{!936, !703, i64 72}
!1786 = !{!"sel-sched-ir.c:init_id_from_df"}
!1787 = !{!"branch_weights", i32 1, i32 591921}
!1788 = !{!"function_entry_count", i64 144257}
!1789 = !{!"sel-sched-ir.c:deps_init_id"}
!1790 = !{!1791, !765, i64 0}
!1791 = !{!"", !765, i64 0, !702, i64 8, !703, i64 16, !703, i64 17}
!1792 = !{!1791, !702, i64 8}
!1793 = !{!1791, !703, i64 16}
!1794 = !{!"branch_weights", i32 144258, i32 1}
!1795 = !{!"sel-sched-ir.c:hash_with_unspec_callback"}
!1796 = !{!"sel-sched-ir.c:setup_id_for_insn"}
!1797 = !{!"branch_weights", i32 1922222029, i32 -687599321}
!1798 = !{!"branch_weights", i32 939899867, i32 -1757831948, i32 4323}
!1799 = !{!"branch_weights", i32 148210, i32 38527}
!1800 = !{!937, !765, i64 0}
!1801 = !{!937, !702, i64 24}
!1802 = !{!937, !702, i64 40}
!1803 = !{!937, !702, i64 32}
!1804 = !{!"sel-sched-ir.c:setup_id_lhs_rhs"}
!1805 = !{!"branch_weights", i32 336459, i32 255463}
!1806 = !{!"branch_weights", i32 252055368, i32 -1280206353}
!1807 = !{!937, !702, i64 16}
!1808 = !{!937, !702, i64 8}
!1809 = !{!"sel-sched-ir.c:maybe_downgrade_id_to_use"}
!1810 = !{!"branch_weights", i32 336009, i32 255913}
!1811 = !{!"branch_weights", i32 25509, i32 310501}
!1812 = !{!"branch_weights", i32 139701, i32 170801}
!1813 = !{!1814, !702, i64 8}
!1814 = !{!"df_insn_info", !702, i64 0, !702, i64 8, !702, i64 16, !702, i64 24, !702, i64 32, !765, i64 40}
!1815 = !{!"branch_weights", i32 1, i32 170800}
!1816 = !{!"branch_weights", i32 170800, i32 1}
!1817 = distinct !{!1817, !711}
!1818 = !{!1814, !702, i64 0}
!1819 = !{!"branch_weights", i32 1, i32 170801}
!1820 = !{!"branch_weights", i32 170801, i32 1}
!1821 = !{!"sel-sched-ir.c:setup_id_reg_sets"}
!1822 = !{!"branch_weights", i32 1, i32 591920}
!1823 = !{!"branch_weights", i32 3416373, i32 25483}
!1824 = !{!"branch_weights", i32 321541, i32 3094833}
!1825 = !{!"branch_weights", i32 1, i32 321541}
!1826 = !{!"branch_weights", i32 287381, i32 -1403073837}
!1827 = !{!"branch_weights", i32 591920, i32 2849935}
!1828 = distinct !{!1828, !711}
!1829 = !{!1814, !702, i64 16}
!1830 = !{!"branch_weights", i32 82249, i32 509672}
!1831 = !{!"branch_weights", i32 509332, i32 341}
!1832 = !{!"branch_weights", i32 440605, i32 68728}
!1833 = !{!"branch_weights", i32 1, i32 440605}
!1834 = !{!"branch_weights", i32 509672, i32 0}
!1835 = distinct !{!1835, !711}
!1836 = !{!"function_entry_count", i64 316658}
!1837 = !{!"sel-sched-ir.c:lhs_and_rhs_separable_p"}
!1838 = !{!"branch_weights", i32 19791, i32 -1161438475}
!1839 = !{!"sel-sched-ir.c:deps_init_id_start_insn"}
!1840 = !{!"sel-sched-ir.c:deps_init_id_finish_insn"}
!1841 = !{!"branch_weights", i32 850702159, i32 37933281}
!1842 = !{!"branch_weights", i32 1358656, i32 35188624}
!1843 = !{!"branch_weights", i32 138327, i32 1}
!1844 = !{!"sel-sched-ir.c:deps_init_id_start_lhs"}
!1845 = !{!"sel-sched-ir.c:deps_init_id_finish_lhs"}
!1846 = !{!"sel-sched-ir.c:deps_init_id_start_rhs"}
!1847 = !{!"branch_weights", i32 1, i32 6159}
!1848 = !{!"sel-sched-ir.c:deps_init_id_finish_rhs"}
!1849 = !{!"branch_weights", i32 1, i32 12318, i32 1}
!1850 = !{!"function_entry_count", i64 5931}
!1851 = !{!"sel-sched-ir.c:deps_init_id_note_reg_set"}
!1852 = !{!"branch_weights", i32 1, i32 5932}
!1853 = !{!"sel-sched-ir.c:deps_init_id_note_reg_clobber"}
!1854 = !{!"function_entry_count", i64 2436}
!1855 = !{!"sel-sched-ir.c:deps_init_id_note_reg_use"}
!1856 = !{!"branch_weights", i32 1, i32 2437}
!1857 = !{!"sel-sched-ir.c:number_of_loops"}
!1858 = !{!"sel-sched-ir.c:VEC_loop_p_base_iterate"}
!1859 = !{!"sel-sched-ir.c:VEC_int_base_iterate"}
!1860 = !{!"sel-sched-ir.c:get_loop"}
!1861 = !{!"sel-sched-ir.c:make_region_from_loop"}
!1862 = !{!1321, !765, i64 36}
!1863 = distinct !{!1863, !711}
!1864 = !{!1321, !765, i64 4}
!1865 = distinct !{!1865, !711}
!1866 = distinct !{!1866, !711}
!1867 = !{!"sel-sched-ir.c:VEC_loop_p_heap_safe_push"}
!1868 = !{!"sel-sched-ir.c:bb_top_order_comparator"}
!1869 = !{!"sel-sched-ir.c:SET_BIT"}
!1870 = !{!"sel-sched-ir.c:VEC_loop_p_heap_reserve"}
!1871 = !{!"sel-sched-ir.c:VEC_loop_p_base_quick_push"}
!1872 = !{!"sel-sched-ir.c:VEC_loop_p_base_space"}
!1873 = !{!1520, !765, i64 4}
!1874 = !{!"sel-sched-ir.c:VEC_basic_block_heap_reserve"}
!1875 = !{!"sel-sched-ir.c:VEC_basic_block_base_space"}
!1876 = !{!1213, !765, i64 4}
