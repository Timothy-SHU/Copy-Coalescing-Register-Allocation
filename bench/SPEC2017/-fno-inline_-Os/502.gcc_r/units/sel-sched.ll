; ModuleID = 'sel-sched.c'
source_filename = "sel-sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.code_motion_path_driver_info_def = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
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
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.ready_list = type { ptr, i32, i32, i32, i32 }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.hard_regs_data = type { [87 x i64], [87 x i8], [53 x i64], [87 x i64], i64, i64 }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.operand_alternative = type { ptr, i32, i32, i32, i32, i8 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.sel_global_bb_info_def = type { ptr, i8 }
%struct._sel_insn_data = type { %struct._expr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.deps, ptr, i32, i32, i32, i8 }
%struct._expr = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8 }
%struct.deps = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.bitmap_head_def, %struct.bitmap_head_def, i32, i8 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_sel_global_bb_info_def_base = type { i32, i32, [1 x %struct.sel_global_bb_info_def] }
%struct.VEC_sel_insn_data_def_base = type { i32, i32, [1 x %struct._sel_insn_data] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.moveop_static_params = type { ptr, ptr, i32, i8 }
%struct.cmpd_local_params = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.fur_static_params = type { ptr, ptr, i8 }
%struct._list_node = type { ptr, %union.anon }
%union.anon = type { %struct._fence }
%struct._fence = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i8 }
%struct.vinsn_def = type { ptr, %struct.idata_def, i32, i32, i32, i32, i8 }
%struct.idata_def = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct._list_iterator = type { ptr, i8, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.flist_tail_def = type { ptr, ptr }
%struct.succ_iterator = type { i8, ptr, ptr, %struct.edge_iterator, ptr, i16, i16, i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.spec_info_def = type { i32, ptr, i32, i32, i32 }
%struct.VEC_insn_t_base = type { i32, i32, [1 x ptr] }
%struct.transformed_insns = type { ptr, ptr, i32, i32, i8 }
%struct.rtx_search_arg = type { ptr, i32 }
%struct.sel_region_bb_info_def = type { ptr, ptr, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_sel_region_bb_info_def_base = type { i32, i32, [1 x %struct.sel_region_bb_info_def] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.succs_info = type { i16, ptr, ptr, ptr, i32, i32, i32 }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.VEC_vinsn_t_base = type { i32, i32, [1 x ptr] }
%struct.loop_exit = type { ptr, ptr, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct._bnd = type { ptr, ptr, ptr, ptr, ptr }
%struct.VEC_expr_t_base = type { i32, i32, [1 x ptr] }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hard_reg_set_iterator = type { ptr, i16, i16, i64 }
%struct._def = type { ptr, i8 }
%struct.expr_history_def_1 = type { i32, ptr, ptr, i32, i32 }
%struct.VEC_expr_history_def_base = type { i32, i32, [1 x %struct.expr_history_def_1] }
%struct.haifa_sched_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, i32 }

@_forced_ebb_heads = internal global %struct.bitmap_head_def zeroinitializer, align 8
@forced_ebb_heads = dso_local local_unnamed_addr global ptr @_forced_ebb_heads, align 8
@blocks_to_reschedule = dso_local local_unnamed_addr global ptr null, align 8
@ignore_first = internal unnamed_addr global i1 false, align 1
@sel_global_bb_info = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"sel-sched.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@s_i_d = external local_unnamed_addr global ptr, align 8
@sched_luids = external local_unnamed_addr global ptr, align 8
@sched_verbose = external local_unnamed_addr global i32, align 4
@sched_dump_to_dot_p = external local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"sel_add_to_insn_priority: insn %d, by %d (now %d+%d).\0A\00", align 1
@sched_dump = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"move_op\00", align 1
@move_op_hooks = dso_local global %struct.code_motion_path_driver_info_def { ptr @move_op_on_enter, ptr @move_op_orig_expr_found, ptr @move_op_orig_expr_not_found, ptr @move_op_merge_succs, ptr @move_op_after_merge_succs, ptr @move_op_ascend, ptr @move_op_at_first_insn, i32 1, ptr @.str.4 }, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"find_used_regs\00", align 1
@fur_hooks = dso_local global %struct.code_motion_path_driver_info_def { ptr @fur_on_enter, ptr @fur_orig_expr_found, ptr @fur_orig_expr_not_found, ptr @fur_merge_succs, ptr null, ptr null, ptr @fur_at_first_insn, i32 7, ptr @.str.5 }, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"Scheduling region %d\0A\00", align 1
@pipelining_p = dso_local local_unnamed_addr global i8 0, align 1
@cfun = external local_unnamed_addr global ptr, align 8
@nr_regions = external local_unnamed_addr global i32, align 4
@bookkeeping_p = dso_local local_unnamed_addr global i8 0, align 1
@max_insns_to_rename = dso_local local_unnamed_addr global i32 0, align 4
@code_motion_path_driver_info = dso_local local_unnamed_addr global ptr null, align 8
@sched_emulate_haifa_p = dso_local local_unnamed_addr global i32 0, align 4
@global_level = dso_local local_unnamed_addr global i32 0, align 4
@fences = dso_local local_unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@nop_pattern = external local_unnamed_addr global ptr, align 8
@current_originators = internal unnamed_addr global ptr null, align 8
@current_copies = internal unnamed_addr global ptr null, align 8
@first_emitted_uid = internal unnamed_addr global i32 0, align 4
@num_insns_scheduled = internal unnamed_addr global i32 0, align 4
@max_uid_before_move_op = internal unnamed_addr global i32 0, align 4
@stat_bookkeeping_copies = internal unnamed_addr global i32 0, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@spec_info = external local_unnamed_addr global ptr, align 8
@vec_temp_moveop_nops = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"Moving \00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c" through %d: \00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"removed\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"unchanged\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"unchanged (as RHS)\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"changed: \00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"removed (cached)\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"unchanged (cached)\0A\00", align 1
@enable_schedule_as_rhs_p = internal unnamed_addr global i1 false, align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"unchanged (as RHS, cached)\0A\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"removed (cached as RHS, but renaming is now disabled)\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"changed (cached): \00", align 1
@was_target_conflict = internal unnamed_addr global i1 false, align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"no bookkeeping required: \00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"only one pred edge: \00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"found existing block: \00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"would create bookkeeping block: \00", align 1
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@.str.25 = private unnamed_addr constant [38 x i8] c"Generating bookkeeping insn (%d->%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"New block is %i, split from bookkeeping block %i\0A\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"Pre-existing bookkeeping block is %i\0A\00", align 1
@current_loop_nest = external local_unnamed_addr global ptr, align 8
@sched_split_block = external local_unnamed_addr global ptr, align 8
@sel_region_bb_info = external local_unnamed_addr global ptr, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [30 x i8] c"Swapping block ids %i and %i\0A\00", align 1
@block_to_bb = external local_unnamed_addr global ptr, align 8
@containing_rgn = external local_unnamed_addr global ptr, align 8
@current_nr_blocks = external local_unnamed_addr global i32, align 4
@rgn_bb_table = external local_unnamed_addr global ptr, align 8
@ebb_head = external local_unnamed_addr global ptr, align 8
@code_motion_visited_blocks = internal unnamed_addr global ptr null, align 8
@.str.29 = private unnamed_addr constant [32 x i8] c"Swapping code labels %i and %i\0A\00", align 1
@reg_rename_this_tick = internal unnamed_addr global i32 0, align 4
@reg_rename_tick = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@.str.30 = private unnamed_addr constant [33 x i8] c"Insn %d is ineligible_successor\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"Insn %d has a valid av set: \00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"Insn %d has a valid empty av set\0A\00", align 1
@max_ws = internal unnamed_addr global i32 0, align 4
@.str.33 = private unnamed_addr constant [54 x i8] c"Insn %d is beyond the software lookahead window size\0A\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"Computed av set for insn %d: \00", align 1
@sched_lists_pool = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [28 x i8] c"successors of bb end (%d): \00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"real successors num: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"av_succs (%d): \00", align 1
@vec_bookkeeping_blocked_vinsns = internal global ptr null, align 8
@.str.38 = private unnamed_addr constant [17 x i8] c"./sel-sched-ir.h\00", align 1
@flag_sel_sched_pipelining_outer_loops = external local_unnamed_addr global i32, align 4
@after_recovery = external local_unnamed_addr global ptr, align 8
@exit_insn = external local_unnamed_addr global ptr, align 8
@flag_sel_sched_pipelining = external local_unnamed_addr global i32, align 4
@preheader_removed = external local_unnamed_addr global i8, align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@sched_max_luid = external local_unnamed_addr global i32, align 4
@issue_rate = external local_unnamed_addr global i32, align 4
@cur_seqno = internal unnamed_addr global i32 0, align 4
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@stat_insns_needed_bookkeeping = internal unnamed_addr global i32 0, align 4
@stat_renamed_scheduled = internal unnamed_addr global i32 0, align 4
@stat_substitutions_total = internal unnamed_addr global i32 0, align 4
@.str.39 = private unnamed_addr constant [102 x i8] c"Scheduled %d bookkeeping copies, %d insns needed bookkeeping, %d insns renamed, %d insns substituted\0A\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"\0AScheduling on fences: \00", align 1
@scheduled_something_on_previous_fence = internal unnamed_addr global i1 false, align 1
@vec_target_unavailable_vinsns = internal global ptr null, align 8
@.str.41 = private unnamed_addr constant [43 x i8] c"Starting fill_insns for insn %d, cycle %d\0A\00", align 1
@can_issue_more = internal unnamed_addr global i32 0, align 4
@target_bb = external local_unnamed_addr global i32, align 4
@.str.42 = private unnamed_addr constant [13 x i8] c"Boundaries: \00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"Available exprs (vliw form): \00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"Moving expressions up in the insn group...\0A\00", align 1
@.str.45 = private unnamed_addr constant [76 x i8] c"Expr %d removed because it would need bookkeeping, which cannot be created\0A\00", align 1
@ready = external global %struct.ready_list, align 8
@.str.46 = private unnamed_addr constant [30 x i8] c"Best expression (vliw form): \00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"; cycle %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"No best expr found!\0A\00", align 1
@fill_vec_av_set.av_max_prio = internal unnamed_addr global i32 0, align 4
@fill_vec_av_set.est_ticks_till_branch = internal unnamed_addr global i32 0, align 4
@vec_av_set = internal unnamed_addr global ptr null, align 8
@.str.49 = private unnamed_addr constant [52 x i8] c"Expr %d is blocked by bookkeeping inserted earlier\0A\00", align 1
@.str.50 = private unnamed_addr constant [41 x i8] c"Expr %d has no suitable target register\0A\00", align 1
@.str.51 = private unnamed_addr constant [44 x i8] c"Pipelining expr %d will likely cause stall\0A\00", align 1
@.str.52 = private unnamed_addr constant [51 x i8] c"Delaying speculation check %d until its first use\0A\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c"Expr %d is not ready until cycle %d (cached)\0A\00", align 1
@.str.54 = private unnamed_addr constant [41 x i8] c"Expr %d is not ready yet until cycle %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"Expr %d is ok\0A\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"Total ready exprs: %d, stalled: %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"Sorted av set (%d): \00", align 1
@.str.58 = private unnamed_addr constant [51 x i8] c"sel_target_adjust_priority: insn %d,  %d+%d = %d.\0A\00", align 1
@find_best_reg_for_expr.reg_rename_data.0 = internal unnamed_addr global i64 0, align 8
@find_best_reg_for_expr.reg_rename_data.1 = internal unnamed_addr global i64 0, align 8
@find_best_reg_for_expr.reg_rename_data.2 = internal unnamed_addr global i8 0, align 8
@reload_completed = external local_unnamed_addr global i32, align 4
@.str.59 = private unnamed_addr constant [39 x i8] c"Best expression(s) (sequential form): \00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"%s (\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"Insn %d is ineligible successor\0A\00", align 1
@.str.64 = private unnamed_addr constant [49 x i8] c"Returned from block %d as it had invalid av set\0A\00", align 1
@.str.65 = private unnamed_addr constant [44 x i8] c"Block %d already visited in this traversal\0A\00", align 1
@.str.66 = private unnamed_addr constant [41 x i8] c"No intersection with av set of block %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [37 x i8] c"Found original operation at insn %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [41 x i8] c"Expr %d removed due to use/set conflict\0A\00", align 1
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@sel_hrd = internal unnamed_addr global %struct.hard_regs_data zeroinitializer, align 8
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@which_alternative = external local_unnamed_addr global i32, align 4
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@recog_op_alt = external local_unnamed_addr global [30 x [30 x %struct.operand_alternative]], align 16
@reg_info_p = external local_unnamed_addr global ptr, align 8
@max_regno = external local_unnamed_addr global i32, align 4
@max_issue_size = internal unnamed_addr global i32 0, align 4
@ready_try = external local_unnamed_addr global ptr, align 8
@.str.69 = private unnamed_addr constant [22 x i8] c"ready after reorder: \00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c":%d; \00", align 1
@.str.71 = private unnamed_addr constant [37 x i8] c"privileged_n: %d insns with SPEC %d\0A\00", align 1
@dfa_lookahead = external local_unnamed_addr global i32, align 4
@cycle_issued_insns = external local_unnamed_addr global i32, align 4
@.str.72 = private unnamed_addr constant [56 x i8] c"max_issue: we can issue %d insns, already did %d insns\0A\00", align 1
@.str.73 = private unnamed_addr constant [37 x i8] c"using %dth insn from the ready list\0A\00", align 1
@estimate_insn_cost.temp = internal unnamed_addr global ptr null, align 8
@dfa_state_size = external local_unnamed_addr global i64, align 8
@curr_state = external local_unnamed_addr global ptr, align 8
@.str.74 = private unnamed_addr constant [39 x i8] c"Finished a cycle.  Current cycle = %d\0A\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"state (%u):\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"Moving jump %d\0A\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"Scheduling insn: \00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"Updating fence insn from %i to %i\0A\00", align 1
@.str.80 = private unnamed_addr constant [30 x i8] c"Fence %d[%d] has not changed\0A\00", align 1
@.str.81 = private unnamed_addr constant [47 x i8] c"Fence %d continues as %d[%d] (state continue)\0A\00", align 1
@.str.82 = private unnamed_addr constant [41 x i8] c"Fence %d continues as %d[%d] (state %s)\0A\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@current_sched_info = external local_unnamed_addr global ptr, align 8
@.str.85 = private unnamed_addr constant [28 x i8] c"Finishing schedule in bbs: \00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"%d; \00", align 1
@.str.87 = private unnamed_addr constant [34 x i8] c"advance_state (state_transition)\0A\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"Haifa cost for insn %d: %d\0A\00", align 1
@.str.89 = private unnamed_addr constant [31 x i8] c"advance_state (dfa_new_cycle)\0A\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"Cost for insn %d is %d\0A\00", align 1
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @compute_live(ptr noundef %0) local_unnamed_addr #0 !prof !939 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !940
  %5 = load i1, ptr @ignore_first, align 1
  br i1 %5, label %49, label %6, !prof !943

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @sel_bb_head_p(ptr noundef nonnull %0) #23
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9, !prof !944

9:                                                ; preds = %6
  %10 = load ptr, ptr @sel_global_bb_info, align 8
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !945
  %13 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %10, i32 noundef %12) #24
  %14 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %13, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !950
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %33, !prof !952

17:                                               ; preds = %9, %6
  %18 = tail call zeroext i8 @in_current_region_p(ptr noundef %4) #23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21, !prof !953

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3069, ptr noundef nonnull @.str.1) #23
  br label %21

21:                                               ; preds = %17, %20
  %22 = load ptr, ptr @s_i_d, align 8
  %23 = load ptr, ptr @sched_luids, align 8
  %24 = load i32, ptr %2, align 8, !tbaa !940
  %25 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %23, i32 noundef %24) #24
  %26 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %22, i32 noundef %25) #24
  %27 = getelementptr inbounds %struct._sel_insn_data, ptr %26, i64 0, i32 13
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %49, label %31, !prof !954

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct._sel_insn_data, ptr %26, i64 0, i32 3
  br label %33

33:                                               ; preds = %9, %31
  %34 = phi ptr [ %32, %31 ], [ %13, %9 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !955
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37, !prof !956

37:                                               ; preds = %33
  %38 = tail call ptr @get_regset_from_pool() #23
  tail call void @bitmap_copy(ptr noundef %38, ptr noundef nonnull %35) #23
  %39 = tail call zeroext i8 @sel_bb_head_p(ptr noundef nonnull %0) #23
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %135, label %41, !prof !957

41:                                               ; preds = %37
  %42 = load ptr, ptr @sel_global_bb_info, align 8
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !945
  %45 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %42, i32 noundef %44) #24
  %46 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %45, i64 0, i32 1
  %47 = load i8, ptr %46, align 8, !tbaa !950
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %126, label %135, !prof !952

49:                                               ; preds = %21, %33, %1
  store i1 false, ptr @ignore_first, align 1
  %50 = tail call zeroext i8 @in_current_region_p(ptr noundef %4) #23
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53, !prof !958

52:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3092, ptr noundef nonnull @.str.1) #23
  br label %53

53:                                               ; preds = %49, %52
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !940
  %56 = getelementptr inbounds %struct.rtl_bb_info, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !959
  %58 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 2
  %59 = load ptr, ptr %58, align 8, !tbaa !940
  br label %60

60:                                               ; preds = %65, %53
  %61 = phi ptr [ %0, %53 ], [ %63, %65 ]
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !940
  %64 = icmp eq ptr %63, %59
  br i1 %64, label %76, label %65, !prof !961

65:                                               ; preds = %60
  %66 = load ptr, ptr @s_i_d, align 8
  %67 = load ptr, ptr @sched_luids, align 8
  %68 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !940
  %70 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %67, i32 noundef %69) #24
  %71 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %66, i32 noundef %70) #24
  %72 = getelementptr inbounds %struct._sel_insn_data, ptr %71, i64 0, i32 13
  %73 = load i8, ptr %72, align 4
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %60, label %80, !prof !962, !llvm.loop !963

76:                                               ; preds = %60
  %77 = tail call fastcc ptr @compute_live_after_bb(ptr noundef %4) #24
  %78 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !940
  br label %90

80:                                               ; preds = %65
  %81 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %82 = tail call ptr @get_regset_from_pool() #23
  %83 = load ptr, ptr @s_i_d, align 8
  %84 = load ptr, ptr @sched_luids, align 8
  %85 = load i32, ptr %81, align 8, !tbaa !940
  %86 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %84, i32 noundef %85) #24
  %87 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %83, i32 noundef %86) #24
  %88 = getelementptr inbounds %struct._sel_insn_data, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !965
  tail call void @bitmap_copy(ptr noundef %82, ptr noundef %89) #23
  br label %90

90:                                               ; preds = %80, %76
  %91 = phi ptr [ %79, %76 ], [ %63, %80 ]
  %92 = phi ptr [ %77, %76 ], [ %82, %80 ]
  %93 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !940
  %95 = icmp eq ptr %91, %94
  br i1 %95, label %117, label %96, !prof !970

96:                                               ; preds = %90, %96
  %97 = phi ptr [ %115, %96 ], [ %91, %90 ]
  tail call fastcc void @propagate_lv_set(ptr noundef %92, ptr noundef %97) #24
  %98 = load ptr, ptr @s_i_d, align 8
  %99 = load ptr, ptr @sched_luids, align 8
  %100 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !940
  %102 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %99, i32 noundef %101) #24
  %103 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %98, i32 noundef %102) #24
  %104 = getelementptr inbounds %struct._sel_insn_data, ptr %103, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !965
  tail call void @bitmap_copy(ptr noundef %105, ptr noundef %92) #23
  %106 = load ptr, ptr @s_i_d, align 8
  %107 = load ptr, ptr @sched_luids, align 8
  %108 = load i32, ptr %100, align 8, !tbaa !940
  %109 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %107, i32 noundef %108) #24
  %110 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %106, i32 noundef %109) #24
  %111 = getelementptr inbounds %struct._sel_insn_data, ptr %110, i64 0, i32 13
  %112 = load i8, ptr %111, align 4
  %113 = or i8 %112, 1
  store i8 %113, ptr %111, align 4
  %114 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !940
  %116 = icmp eq ptr %115, %94
  br i1 %116, label %117, label %96, !prof !971, !llvm.loop !972

117:                                              ; preds = %96, %90
  %118 = tail call zeroext i8 @sel_bb_head_p(ptr noundef %0) #23
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %135, label %120, !prof !973

120:                                              ; preds = %117
  %121 = load ptr, ptr %3, align 8, !tbaa !940
  %122 = load ptr, ptr @sel_global_bb_info, align 8
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 9
  %124 = load i32, ptr %123, align 8, !tbaa !945
  %125 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %122, i32 noundef %124) #24
  br label %126

126:                                              ; preds = %41, %120
  %127 = phi ptr [ %125, %120 ], [ %45, %41 ]
  %128 = phi ptr [ %92, %120 ], [ %38, %41 ]
  %129 = phi ptr [ %123, %120 ], [ %43, %41 ]
  %130 = load ptr, ptr %127, align 8, !tbaa !974
  tail call void @bitmap_copy(ptr noundef %130, ptr noundef %128) #23
  %131 = load ptr, ptr @sel_global_bb_info, align 8
  %132 = load i32, ptr %129, align 8, !tbaa !945
  %133 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %131, i32 noundef %132) #24
  %134 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %133, i64 0, i32 1
  store i8 1, ptr %134, align 8, !tbaa !950
  br label %135

135:                                              ; preds = %126, %117, %41, %37
  %136 = phi ptr [ %38, %37 ], [ %38, %41 ], [ %92, %117 ], [ %128, %126 ]
  tail call void @return_regset_to_pool(ptr noundef %136) #23
  ret ptr %136
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @sel_bb_head_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #3 !prof !975 !PGOFuncName !976 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_global_bb_info_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @in_current_region_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_sel_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #3 !prof !977 !PGOFuncName !978 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !979 !PGOFuncName !980 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !981
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @get_regset_from_pool() local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @return_regset_to_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compute_live_after_bb(ptr noundef %0) unnamed_addr #0 !prof !982 !PGOFuncName !983 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  %4 = tail call ptr @get_clear_regset_from_pool() #23
  %5 = load i1, ptr @ignore_first, align 1
  br i1 %5, label %6, label %7, !prof !984

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3031, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %9 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %8) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !985
  %10 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %9, ptr %10, align 8, !tbaa.struct !986
  %11 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %9, ptr noundef nonnull %2) #24, !range !987
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %63, label %13, !prof !988

13:                                               ; preds = %7, %56
  %14 = load ptr, ptr %2, align 8, !tbaa !955
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !989
  %17 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %16) #23
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %52, label %19, !prof !991

19:                                               ; preds = %13
  %20 = load ptr, ptr @sel_global_bb_info, align 8
  %21 = load ptr, ptr %15, align 8, !tbaa !989
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !945
  %24 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %20, i32 noundef %23) #24
  %25 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %24, i64 0, i32 1
  %26 = load i8, ptr %25, align 8, !tbaa !950
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3038, ptr noundef nonnull @.str.1) #23
  %29 = load ptr, ptr @sel_global_bb_info, align 8
  %30 = load ptr, ptr %15, align 8, !tbaa !989
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !945
  %33 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %29, i32 noundef %32) #24
  %34 = load ptr, ptr %33, align 8, !tbaa !974
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3039, ptr noundef nonnull @.str.1) #23
  %37 = load ptr, ptr %15, align 8, !tbaa !989
  br label %38

38:                                               ; preds = %28, %36
  %39 = phi ptr [ %30, %28 ], [ %37, %36 ]
  %40 = tail call fastcc ptr @compute_live_after_bb(ptr noundef %39) #24
  %41 = load ptr, ptr @sel_global_bb_info, align 8
  %42 = load ptr, ptr %15, align 8, !tbaa !989
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !945
  %45 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %41, i32 noundef %44) #24
  store ptr %40, ptr %45, align 8, !tbaa !974
  %46 = load ptr, ptr @sel_global_bb_info, align 8
  %47 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %46, i32 noundef %44) #24
  %48 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %47, i64 0, i32 1
  store i8 1, ptr %48, align 8, !tbaa !950
  br label %49

49:                                               ; preds = %38, %19
  %50 = phi ptr [ %47, %38 ], [ %24, %19 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !974
  br label %56

52:                                               ; preds = %13
  %53 = load ptr, ptr %15, align 8, !tbaa !989
  %54 = tail call ptr @sel_bb_head(ptr noundef %53) #23
  %55 = tail call ptr @compute_live(ptr noundef %54) #24
  br label %56

56:                                               ; preds = %49, %52
  %57 = phi ptr [ %51, %49 ], [ %55, %52 ]
  %58 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %4, ptr noundef %57) #23
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %59 = load i32, ptr %3, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = call fastcc zeroext i8 @ei_cond(i32 %59, ptr %60, ptr noundef nonnull %2) #24, !range !987
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %13, !prof !992, !llvm.loop !993

63:                                               ; preds = %56, %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_lv_set(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !994 !PGOFuncName !995 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %8, label %7, !prof !996

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3015, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !940
  %11 = load ptr, ptr @nop_pattern, align 8, !tbaa !955
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %16, label %13, !prof !997

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !940
  tail call void @df_simulate_one_insn_backwards(ptr noundef %15, ptr noundef nonnull %1, ptr noundef %0) #23
  br label %16

16:                                               ; preds = %8, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_add_to_insn_priority(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !998 {
  %3 = load ptr, ptr @s_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !940
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %6) #24
  %8 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %7) #24
  %9 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !999
  %11 = add nsw i32 %10, %1
  store i32 %11, ptr %9, align 4, !tbaa !999
  %12 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %52

14:                                               ; preds = %2
  %15 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %5, align 8, !tbaa !940
  %19 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %18) #24
  %20 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %19) #24
  %21 = getelementptr inbounds %struct._expr, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !1000
  %23 = getelementptr inbounds %struct._expr, ptr %20, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !999
  %25 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %18, i32 noundef %1, i32 noundef %22, i32 noundef %24) #24
  %26 = shl nsw i32 %25, 1
  %27 = or disjoint i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  %30 = load i32, ptr %5, align 8, !tbaa !940
  %31 = load ptr, ptr @s_i_d, align 8
  %32 = load ptr, ptr @sched_luids, align 8
  %33 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %32, i32 noundef %30) #24
  %34 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %31, i32 noundef %33) #24
  %35 = getelementptr inbounds %struct._expr, ptr %34, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !1000
  %37 = getelementptr inbounds %struct._expr, ptr %34, i64 0, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !999
  %39 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %29, i64 noundef %28, ptr noundef nonnull @.str.2, i32 noundef %30, i32 noundef %1, i32 noundef %36, i32 noundef %38) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %29) #23
  %40 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %41 = call i32 @fputs(ptr nonnull %29, ptr %40)
  br label %52

42:                                               ; preds = %14
  %43 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %44 = load i32, ptr %5, align 8, !tbaa !940
  %45 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %44) #24
  %46 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %45) #24
  %47 = getelementptr inbounds %struct._expr, ptr %46, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !1000
  %49 = getelementptr inbounds %struct._expr, ptr %46, i64 0, i32 4
  %50 = load i32, ptr %49, align 4, !tbaa !999
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.2, i32 noundef %44, i32 noundef %1, i32 noundef %48, i32 noundef %50) #24
  br label %52

52:                                               ; preds = %42, %17, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare void @sel_prepare_string_for_dot_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @move_op_on_enter(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i8 noundef zeroext %3) #3 !prof !1001 !PGOFuncName !1002 {
  %5 = icmp eq i8 %3, 0
  %6 = select i1 %5, i32 1, i32 -1, !prof !1003
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @move_op_orig_expr_found(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture noundef %3) #0 !prof !1004 !PGOFuncName !1005 {
  %5 = getelementptr inbounds %struct.moveop_static_params, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1006
  %7 = load ptr, ptr @s_i_d, align 8
  %8 = load ptr, ptr @sched_luids, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !940
  %11 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %8, i32 noundef %10) #24
  %12 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %7, i32 noundef %11) #24
  tail call void @copy_expr_onside(ptr noundef %6, ptr noundef nonnull %12) #23
  tail call fastcc void @track_scheduled_insns_and_blocks(ptr noundef %0) #24
  %13 = tail call fastcc zeroext i8 @handle_emitting_transformations(ptr noundef %0, ptr noundef %1, ptr noundef %3) #24, !range !987
  %14 = getelementptr inbounds %struct.moveop_static_params, ptr %3, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !1008
  %16 = load i32, ptr %9, align 8, !tbaa !940
  %17 = icmp ne i32 %15, %16
  %18 = icmp ne i8 %13, 0
  %19 = or i1 %18, %17
  br i1 %19, label %26, label %20, !prof !1009

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !1010
  %23 = tail call fastcc i32 @VEC_expr_history_def_base_length(ptr noundef %22) #24
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26, !prof !1011

25:                                               ; preds = %20
  store i32 -1, ptr %14, align 8, !tbaa !1008
  br label %26

26:                                               ; preds = %4, %25, %20
  %27 = phi i8 [ 1, %25 ], [ 0, %20 ], [ 0, %4 ]
  tail call fastcc void @remove_insn_from_stream(ptr noundef nonnull %0, i8 noundef zeroext %27) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @move_op_orig_expr_not_found(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !prof !1012 !PGOFuncName !1013 {
  %4 = load ptr, ptr %2, align 8, !tbaa !1014
  %5 = tail call zeroext i8 @lhs_of_insn_equals_to_dest_p(ptr noundef %0, ptr noundef %4) #23
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @move_op_merge_succs(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 !prof !1015 !PGOFuncName !1016 {
  %6 = icmp eq i32 %2, 1
  br i1 %6, label %7, label %29, !prof !1017

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.cmpd_local_params, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !1018
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16, !prof !1017

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.moveop_static_params, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1006
  store ptr %13, ptr %8, align 8, !tbaa !1018
  %14 = getelementptr inbounds %struct.cmpd_local_params, ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !1020
  store ptr %15, ptr %12, align 8, !tbaa !1006
  br label %29

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct._expr, ptr %9, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !1021
  %19 = getelementptr inbounds %struct.moveop_static_params, ptr %4, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !1006
  tail call void @merge_expr_data(ptr noundef nonnull %9, ptr noundef %20, ptr noundef null) #23
  %21 = load ptr, ptr %19, align 8, !tbaa !1006
  %22 = getelementptr inbounds %struct._expr, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !1021
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load ptr, ptr %8, align 8, !tbaa !1018
  %27 = getelementptr inbounds %struct._expr, ptr %26, i64 0, i32 5
  store i32 %18, ptr %27, align 8, !tbaa !1021
  br label %28

28:                                               ; preds = %25, %16
  tail call void @clear_expr(ptr noundef nonnull %21) #23
  br label %29

29:                                               ; preds = %11, %28, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @move_op_after_merge_succs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 !prof !1015 !PGOFuncName !1022 {
  %3 = getelementptr inbounds %struct.cmpd_local_params, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1018
  %5 = getelementptr inbounds %struct.moveop_static_params, ptr %1, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !1006
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @move_op_ascend(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !prof !1012 !PGOFuncName !1023 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !940
  %5 = load ptr, ptr @nop_pattern, align 8, !tbaa !955
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %13, label %7, !prof !1024

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.moveop_static_params, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !1006
  %10 = tail call fastcc i32 @moveup_expr_cached(ptr noundef %9, ptr noundef nonnull %0) #24
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %13, !prof !1024

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6142, ptr noundef nonnull @.str.1) #23
  br label %13

13:                                               ; preds = %12, %7, %2
  tail call fastcc void @update_liveness_on_insn(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @move_op_at_first_insn(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !prof !1001 !PGOFuncName !1025 {
  %4 = getelementptr inbounds %struct.cmpd_local_params, ptr %1, i64 0, i32 5
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %27, !prof !1026

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !1027
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11, !prof !1028

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @sel_bb_head_p(ptr noundef %0) #23
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %27, label %14, !prof !1029

14:                                               ; preds = %11
  %15 = tail call zeroext i8 @sel_num_cfg_preds_gt_1(ptr noundef %0) #23
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18, !prof !1017

17:                                               ; preds = %14
  tail call fastcc void @update_data_sets(ptr noundef %0) #24
  br label %27

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.moveop_static_params, ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !1006
  %21 = load ptr, ptr %1, align 8, !tbaa !1027
  %22 = getelementptr inbounds %struct.cmpd_local_params, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !1030
  %24 = tail call fastcc ptr @generate_bookkeeping_insn(ptr noundef %20, ptr noundef %21, ptr noundef %23) #24
  tail call fastcc void @update_data_sets(ptr noundef %0) #24
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !956

26:                                               ; preds = %18
  tail call fastcc void @update_and_record_unavailable_insns(ptr noundef nonnull %24) #24
  br label %27

27:                                               ; preds = %8, %11, %3, %17, %26, %18
  %28 = load i8, ptr %4, align 8
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31, !prof !1026

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !940
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi ptr [ %33, %31 ], [ %0, %27 ]
  %36 = load ptr, ptr %1, align 8, !tbaa !1027
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38, !prof !1031

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !940
  %41 = tail call zeroext i8 @tidy_control_flow(ptr noundef %40, i8 noundef zeroext 1) #23
  br label %42

42:                                               ; preds = %38, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @fur_on_enter(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) #0 !prof !1032 !PGOFuncName !1033 {
  %5 = icmp eq i8 %3, 0
  %6 = getelementptr inbounds %struct.fur_static_params, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1034
  %8 = load ptr, ptr %7, align 8, !tbaa !955
  br i1 %5, label %21, label %9, !prof !1036

9:                                                ; preds = %4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6162, ptr noundef nonnull @.str.1) #23
  %12 = load ptr, ptr %6, align 8, !tbaa !1034
  %13 = load ptr, ptr %12, align 8, !tbaa !955
  br label %14

14:                                               ; preds = %9, %11
  %15 = phi ptr [ %8, %9 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.fur_static_params, ptr %2, i64 0, i32 2
  %17 = load i8, ptr %16, align 8, !tbaa !1037
  %18 = getelementptr inbounds %struct._list_node, ptr %15, i64 0, i32 1, i32 0, i32 1
  %19 = load i8, ptr %18, align 8, !tbaa !940
  %20 = or i8 %19, %17
  store i8 %20, ptr %18, align 8, !tbaa !940
  br label %23

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.cmpd_local_params, ptr %1, i64 0, i32 4
  store ptr %8, ptr %22, align 8, !tbaa !1038
  br label %23

23:                                               ; preds = %21, %14
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fur_orig_expr_found(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef %3) #0 !prof !1039 !PGOFuncName !1040 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 10
  %8 = getelementptr inbounds %struct.fur_static_params, ptr %3, i64 0, i32 2
  br i1 %7, label %11, label %9, !prof !1041

9:                                                ; preds = %4
  %10 = load i8, ptr %8, align 8, !tbaa !1037
  br label %12

11:                                               ; preds = %4
  store i8 1, ptr %8, align 8, !tbaa !1037
  br label %12

12:                                               ; preds = %9, %11
  %13 = phi i8 [ %10, %9 ], [ 1, %11 ]
  %14 = getelementptr inbounds %struct.fur_static_params, ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1034
  tail call void @def_list_add(ptr noundef %15, ptr noundef nonnull %0, i8 noundef zeroext %13) #23
  %16 = tail call ptr @get_clear_regset_from_pool() #23
  tail call fastcc void @compute_live_below_insn(ptr noundef nonnull %0, ptr noundef %16) #24
  %17 = load ptr, ptr @s_i_d, align 8
  %18 = load ptr, ptr @sched_luids, align 8
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !940
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %18, i32 noundef %20) #24
  %22 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %17, i32 noundef %21) #24
  %23 = load ptr, ptr %22, align 8, !tbaa !1042
  %24 = getelementptr inbounds %struct.vinsn_def, ptr %23, i64 0, i32 1, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !1043
  %26 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %16, ptr noundef %25) #23
  %27 = load ptr, ptr @s_i_d, align 8
  %28 = load ptr, ptr @sched_luids, align 8
  %29 = load i32, ptr %19, align 8, !tbaa !940
  %30 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %28, i32 noundef %29) #24
  %31 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %27, i32 noundef %30) #24
  %32 = load ptr, ptr %31, align 8, !tbaa !1042
  %33 = getelementptr inbounds %struct.vinsn_def, ptr %32, i64 0, i32 1, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !1046
  %35 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %16, ptr noundef %34) #23
  %36 = load ptr, ptr %3, align 8, !tbaa !1047
  %37 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %36, ptr noundef %16) #23
  tail call void @return_regset_to_pool(ptr noundef %16) #23
  %38 = load ptr, ptr @s_i_d, align 8
  %39 = load ptr, ptr @sched_luids, align 8
  %40 = load i32, ptr %19, align 8, !tbaa !940
  %41 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %40) #24
  %42 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %38, i32 noundef %41) #24
  %43 = load ptr, ptr %42, align 8, !tbaa !1042
  %44 = getelementptr inbounds %struct.vinsn_def, ptr %43, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !1048
  %46 = icmp eq i32 %45, 23
  br i1 %46, label %47, label %54, !prof !1049

47:                                               ; preds = %12
  %48 = getelementptr inbounds %struct.vinsn_def, ptr %43, i64 0, i32 1, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !1050
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 43
  br i1 %52, label %53, label %54, !prof !1041

53:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6034, ptr noundef nonnull @.str.1) #23
  br label %54

54:                                               ; preds = %12, %47, %53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @fur_orig_expr_not_found(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 !prof !1051 !PGOFuncName !1052 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._list_iterator, align 8
  store ptr %1, ptr %4, align 8, !tbaa !955
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #25
  %7 = load i32, ptr %0, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %11 [
    i16 10, label %9
    i16 7, label %59
  ], !prof !1053

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.fur_static_params, ptr %2, i64 0, i32 2
  store i8 1, ptr %10, align 8, !tbaa !1037
  br label %11

11:                                               ; preds = %3, %9
  call fastcc void @_list_iter_start(ptr noundef nonnull %6, ptr noundef nonnull %4, i8 noundef zeroext 0) #24
  %12 = load ptr, ptr %6, align 8, !tbaa !1054
  %13 = load ptr, ptr %12, align 8, !tbaa !955
  %14 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %13, ptr noundef nonnull %5) #24, !range !987
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %59, label %16, !prof !1056

16:                                               ; preds = %11, %22
  %17 = load ptr, ptr %5, align 8, !tbaa !955
  %18 = load ptr, ptr %17, align 8, !tbaa !1057
  %19 = load ptr, ptr %18, align 8, !tbaa !1058
  %20 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %0, ptr noundef %19) #23
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22, !prof !1059

22:                                               ; preds = %16
  call fastcc void @_list_iter_next(ptr noundef nonnull %6) #24
  %23 = load ptr, ptr %6, align 8, !tbaa !1054
  %24 = load ptr, ptr %23, align 8, !tbaa !955
  %25 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %24, ptr noundef nonnull %5) #24, !range !987
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %59, label %16, !prof !1060, !llvm.loop !1061

27:                                               ; preds = %16
  %28 = load ptr, ptr %2, align 8, !tbaa !1047
  %29 = load ptr, ptr @s_i_d, align 8
  %30 = load ptr, ptr @sched_luids, align 8
  %31 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !940
  %33 = call fastcc i32 @VEC_int_base_index(ptr noundef %30, i32 noundef %32) #24
  %34 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %29, i32 noundef %33) #24
  %35 = load ptr, ptr %34, align 8, !tbaa !1042
  %36 = getelementptr inbounds %struct.vinsn_def, ptr %35, i64 0, i32 1, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !1043
  %38 = call zeroext i8 @bitmap_ior_into(ptr noundef %28, ptr noundef %37) #23
  %39 = load ptr, ptr %2, align 8, !tbaa !1047
  %40 = load ptr, ptr @s_i_d, align 8
  %41 = load ptr, ptr @sched_luids, align 8
  %42 = load i32, ptr %31, align 8, !tbaa !940
  %43 = call fastcc i32 @VEC_int_base_index(ptr noundef %41, i32 noundef %42) #24
  %44 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %40, i32 noundef %43) #24
  %45 = load ptr, ptr %44, align 8, !tbaa !1042
  %46 = getelementptr inbounds %struct.vinsn_def, ptr %45, i64 0, i32 1, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !1062
  %48 = call zeroext i8 @bitmap_ior_into(ptr noundef %39, ptr noundef %47) #23
  %49 = load ptr, ptr %2, align 8, !tbaa !1047
  %50 = load ptr, ptr @s_i_d, align 8
  %51 = load ptr, ptr @sched_luids, align 8
  %52 = load i32, ptr %31, align 8, !tbaa !940
  %53 = call fastcc i32 @VEC_int_base_index(ptr noundef %51, i32 noundef %52) #24
  %54 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %50, i32 noundef %53) #24
  %55 = load ptr, ptr %54, align 8, !tbaa !1042
  %56 = getelementptr inbounds %struct.vinsn_def, ptr %55, i64 0, i32 1, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !1046
  %58 = call zeroext i8 @bitmap_ior_into(ptr noundef %49, ptr noundef %57) #23
  br label %59

59:                                               ; preds = %22, %11, %27, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fur_merge_succs(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 !prof !1063 !PGOFuncName !1064 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %11, !prof !1065

7:                                                ; preds = %5
  %8 = tail call ptr @compute_live(ptr noundef %1) #24
  %9 = load ptr, ptr %4, align 8, !tbaa !1047
  %10 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %9, ptr noundef %8) #23
  br label %11

11:                                               ; preds = %5, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fur_at_first_insn(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !prof !1032 !PGOFuncName !1066 {
  %4 = tail call zeroext i8 @sel_bb_head_p(ptr noundef %0) #23
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6, !prof !1067

6:                                                ; preds = %3
  %7 = tail call i32 @get_av_level(ptr noundef %0) #23
  %8 = load i32, ptr @global_level, align 4, !tbaa !981
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %14, label %10, !prof !1068

10:                                               ; preds = %6
  %11 = tail call i32 @get_av_level(ptr noundef %0) #23
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6128, ptr noundef nonnull @.str.1) #23
  br label %14

14:                                               ; preds = %3, %6, %10, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_sched_region(i32 noundef %0) local_unnamed_addr #0 !prof !1069 {
  %2 = tail call fastcc zeroext i8 @sel_region_init(i32 noundef %0) #24, !range !987
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %32, !prof !1070

4:                                                ; preds = %1
  %5 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %22, !prof !1071

7:                                                ; preds = %4
  %8 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.6, i32 noundef %0) #24
  %12 = shl nsw i32 %11, 1
  %13 = or disjoint i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  %16 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %15, i64 noundef %14, ptr noundef nonnull @.str.6, i32 noundef %0) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %15) #23
  %17 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %18 = call i32 @fputs(ptr nonnull %15, ptr %17)
  br label %22

19:                                               ; preds = %7
  %20 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.6, i32 noundef %0) #24
  br label %22

22:                                               ; preds = %10, %19, %4
  %23 = call zeroext i8 @sched_is_disabled_for_current_region_p() #23
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30, !prof !1070

25:                                               ; preds = %22
  %26 = call zeroext i8 @dbg_cnt(i32 noundef 32) #23
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28, !prof !1071

28:                                               ; preds = %25
  %29 = load i8, ptr @pipelining_p, align 1, !tbaa !940
  call fastcc void @sel_sched_region_1() #24
  br label %30

30:                                               ; preds = %25, %22, %28
  %31 = phi i8 [ %29, %28 ], [ 1, %22 ], [ 1, %25 ]
  call fastcc void @sel_region_finish(i8 noundef zeroext %31) #24
  br label %32

32:                                               ; preds = %1, %30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @sel_region_init(i32 noundef %0) unnamed_addr #0 !prof !1069 !PGOFuncName !1072 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  tail call void @rgn_setup_region(i32 noundef %0) #23
  %3 = tail call fastcc zeroext i8 @current_region_empty_p() #24, !range !987
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %85, !prof !1070

5:                                                ; preds = %1
  %6 = load i32, ptr @flag_sel_sched_pipelining, align 4, !tbaa !981
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !1070

8:                                                ; preds = %5
  tail call fastcc void @setup_current_loop_nest(i32 noundef %0) #24
  br label %9

9:                                                ; preds = %8, %5
  tail call fastcc void @sel_setup_region_sched_flags() #24
  %10 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  %11 = tail call fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %10) #24
  store ptr %11, ptr %2, align 8, !tbaa !955
  %12 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %33, !prof !1073

14:                                               ; preds = %9, %14
  %15 = phi i64 [ %29, %14 ], [ 0, %9 ]
  %16 = load ptr, ptr @cfun, align 8, !tbaa !955
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !1074
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !1076
  %21 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !955
  %22 = load ptr, ptr @ebb_head, align 8, !tbaa !955
  %23 = getelementptr inbounds i32, ptr %22, i64 %15
  %24 = load i32, ptr %23, align 4, !tbaa !981
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %21, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !981
  %28 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %20, i32 noundef %27) #24
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %11, ptr noundef %28) #24
  %29 = add nuw nsw i64 %15, 1
  %30 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %14, label %33, !prof !1078, !llvm.loop !1079

33:                                               ; preds = %14, %9
  tail call void @sel_init_bbs(ptr noundef %11, ptr noundef null) #23
  tail call void @sched_init_luids(ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef null) #23
  tail call void @sched_deps_init(i8 noundef zeroext 0) #23
  tail call void @rgn_setup_sched_infos() #23
  tail call void @sel_set_sched_flags() #23
  tail call void @haifa_init_h_i_d(ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef null) #23
  tail call fastcc void @sel_compute_priorities(i32 noundef %0) #24
  tail call void @init_deps_global() #23
  tail call void @sel_setup_sched_infos() #23
  tail call void @sel_init_global_and_expr(ptr noundef %11) #23
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %2) #24
  %34 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %34, ptr @blocks_to_reschedule, align 8, !tbaa !955
  %35 = load ptr, ptr @current_loop_nest, align 8, !tbaa !955
  %36 = icmp eq ptr %35, null
  br i1 %36, label %71, label %37, !prof !1070

37:                                               ; preds = %33
  %38 = load ptr, ptr @cfun, align 8, !tbaa !955
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !1074
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !1076
  %43 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !955
  %44 = load ptr, ptr @ebb_head, align 8, !tbaa !955
  %45 = load i32, ptr %44, align 4, !tbaa !981
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %43, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !981
  %49 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %42, i32 noundef %48) #24
  %50 = tail call zeroext i8 @sel_is_loop_preheader_p(ptr noundef %49) #23
  %51 = icmp ne i8 %50, 0
  %52 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  %53 = select i1 %51, i32 2, i32 1
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %37
  %56 = load ptr, ptr @cfun, align 8, !tbaa !955
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !1074
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !1076
  %61 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !955
  %62 = load ptr, ptr @ebb_head, align 8, !tbaa !955
  %63 = zext i1 %51 to i64
  %64 = getelementptr inbounds i32, ptr %62, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !981
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %61, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !981
  %69 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %60, i32 noundef %68) #24
  %70 = tail call ptr @sel_bb_head(ptr noundef %69) #23
  tail call fastcc void @update_liveness_on_insn(ptr noundef %70) #24
  br label %71

71:                                               ; preds = %37, %55, %33
  tail call void @sel_register_cfg_hooks() #23
  %72 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 4), align 8, !tbaa !1080
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74, !prof !1070

74:                                               ; preds = %71
  %75 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %76 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  tail call void %72(ptr noundef %75, i32 noundef %76, i32 noundef -1) #23
  br label %77

77:                                               ; preds = %74, %71
  %78 = tail call i32 @get_max_uid() #23
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr @first_emitted_uid, align 4, !tbaa !981
  store i8 0, ptr @preheader_removed, align 1, !tbaa !940
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @reg_rename_tick, i8 0, i64 212, i1 false)
  store i32 0, ptr @reg_rename_this_tick, align 4, !tbaa !981
  %80 = load ptr, ptr @forced_ebb_heads, align 8, !tbaa !955
  tail call fastcc void @bitmap_initialize_stat(ptr noundef %80) #24
  %81 = load ptr, ptr @forced_ebb_heads, align 8, !tbaa !955
  tail call void @bitmap_clear(ptr noundef %81) #23
  tail call void @setup_nop_vinsn() #23
  %82 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %82, ptr @current_copies, align 8, !tbaa !955
  %83 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %83, ptr @current_originators, align 8, !tbaa !955
  %84 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %84, ptr @code_motion_visited_blocks, align 8, !tbaa !955
  br label %85

85:                                               ; preds = %1, %77
  %86 = phi i8 [ 0, %77 ], [ 1, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret i8 %86
}

; Function Attrs: optsize
declare zeroext i8 @sched_is_disabled_for_current_region_p() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_sched_region_1() unnamed_addr #0 !prof !1069 !PGOFuncName !1092 {
  %1 = alloca %struct.flist_tail_def, align 8
  %2 = load i32, ptr @sched_max_luid, align 4, !tbaa !981
  %3 = add nsw i32 %2, -1
  tail call void @purge_empty_blocks() #23
  %4 = tail call fastcc i32 @init_seqno(i32 noundef %3, ptr noundef null, ptr noundef null) #24
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %7, label %6, !prof !1070

6:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7444, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %0, %6
  store ptr null, ptr @fences, align 8, !tbaa !955
  %8 = load ptr, ptr @current_loop_nest, align 8, !tbaa !955
  %9 = icmp eq ptr %8, null
  %10 = load ptr, ptr @cfun, align 8, !tbaa !955
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !1074
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !1076
  %15 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !955
  %16 = load ptr, ptr @ebb_head, align 8, !tbaa !955
  %17 = load i32, ptr %16, align 4, !tbaa !981
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %15, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !981
  %21 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %14, i32 noundef %20) #24
  br i1 %9, label %27, label %22, !prof !1070

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !940
  %25 = getelementptr inbounds %struct.rtl_bb_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !959
  br label %29

27:                                               ; preds = %7
  %28 = tail call ptr @bb_note(ptr noundef %21) #23
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi ptr [ %28, %27 ], [ %26, %22 ]
  tail call void @init_fences(ptr noundef %30) #23
  store i32 1, ptr @global_level, align 4, !tbaa !981
  tail call fastcc void @sel_sched_region_2(i32 noundef %4) #24
  %31 = load ptr, ptr @fences, align 8, !tbaa !955
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33, !prof !1070

33:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7457, ptr noundef nonnull @.str.1) #23
  br label %34

34:                                               ; preds = %29, %33
  %35 = load i8, ptr @pipelining_p, align 1, !tbaa !940
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %173, label %37, !prof !1070

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #25
  store i8 0, ptr @pipelining_p, align 1, !tbaa !940
  %38 = load i32, ptr @max_ws, align 4, !tbaa !981
  %39 = load i32, ptr @issue_rate, align 4, !tbaa !981
  %40 = mul nsw i32 %39, 3
  %41 = sdiv i32 %40, 2
  %42 = tail call i32 @llvm.smin.i32(i32 %38, i32 %41)
  store i32 %42, ptr @max_ws, align 4, !tbaa !981
  store i8 0, ptr @bookkeeping_p, align 1, !tbaa !940
  store i1 false, ptr @enable_schedule_as_rhs_p, align 1
  %43 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %47, label %172

45:                                               ; preds = %119
  %46 = icmp sgt i32 %121, 0
  br i1 %46, label %126, label %172

47:                                               ; preds = %37, %124
  %48 = phi i64 [ %125, %124 ], [ 0, %37 ]
  %49 = load ptr, ptr @cfun, align 8, !tbaa !955
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !1074
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !1076
  %54 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !955
  %55 = load ptr, ptr @ebb_head, align 8, !tbaa !955
  %56 = getelementptr inbounds i32, ptr %55, i64 %48
  %57 = load i32, ptr %56, align 4, !tbaa !981
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %54, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !981
  %61 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %53, i32 noundef %60) #24
  %62 = call zeroext i8 @sel_bb_empty_p(ptr noundef %61) #23
  %63 = icmp eq i8 %62, 0
  %64 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !955
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !945
  br i1 %63, label %69, label %67

67:                                               ; preds = %47
  %68 = call zeroext i8 @bitmap_clear_bit(ptr noundef %64, i32 noundef %66) #23
  br label %119

69:                                               ; preds = %47
  %70 = call i32 @bitmap_bit_p(ptr noundef %64, i32 noundef %66) #23
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %104, label %72

72:                                               ; preds = %69
  call void @clear_outdated_rtx_info(ptr noundef nonnull %61) #23
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 7
  %74 = load ptr, ptr %73, align 8, !tbaa !940
  %75 = getelementptr inbounds %struct.rtl_bb_info, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !959
  %77 = call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %76) #23
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %119, label %79

79:                                               ; preds = %72
  %80 = load ptr, ptr %73, align 8, !tbaa !940
  %81 = getelementptr inbounds %struct.rtl_bb_info, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !959
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 9
  br i1 %85, label %86, label %119

86:                                               ; preds = %79
  %87 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !955
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !1093
  %90 = call fastcc ptr @VEC_edge_base_index(ptr noundef %89, i32 noundef 0) #24
  %91 = getelementptr inbounds %struct.edge_def, ptr %90, i64 0, i32 7
  %92 = load i32, ptr %91, align 8, !tbaa !1094
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %86
  %96 = call fastcc ptr @VEC_edge_base_index(ptr noundef %89, i32 noundef 1) #24
  br label %97

97:                                               ; preds = %86, %95
  %98 = phi ptr [ %96, %95 ], [ %90, %86 ]
  %99 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !989
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 9
  %102 = load i32, ptr %101, align 8, !tbaa !945
  %103 = call zeroext i8 @bitmap_set_bit(ptr noundef %87, i32 noundef %102) #23
  br label %119

104:                                              ; preds = %69
  %105 = load ptr, ptr @s_i_d, align 8
  %106 = load ptr, ptr @sched_luids, align 8
  %107 = call ptr @sel_bb_head(ptr noundef nonnull %61) #23
  %108 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  %109 = load i32, ptr %108, align 8, !tbaa !940
  %110 = call fastcc i32 @VEC_int_base_index(ptr noundef %106, i32 noundef %109) #24
  %111 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %105, i32 noundef %110) #24
  %112 = getelementptr inbounds %struct._expr, ptr %111, i64 0, i32 5
  %113 = load i32, ptr %112, align 8, !tbaa !1095
  %114 = icmp slt i32 %113, 1
  br i1 %114, label %115, label %119

115:                                              ; preds = %104
  %116 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !955
  %117 = load i32, ptr %65, align 8, !tbaa !945
  %118 = call zeroext i8 @bitmap_set_bit(ptr noundef %116, i32 noundef %117) #23
  br label %119

119:                                              ; preds = %97, %79, %72, %115, %104, %67
  %120 = add nuw nsw i64 %48, 1
  %121 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  %122 = sext i32 %121 to i64
  %123 = icmp slt i64 %120, %122
  br i1 %123, label %124, label %45

124:                                              ; preds = %119, %168
  %125 = phi i64 [ %120, %119 ], [ 0, %168 ]
  br label %47, !llvm.loop !1096

126:                                              ; preds = %45, %163
  %127 = phi i64 [ %164, %163 ], [ 0, %45 ]
  %128 = load ptr, ptr @cfun, align 8, !tbaa !955
  %129 = getelementptr inbounds %struct.function, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !1074
  %131 = getelementptr inbounds %struct.control_flow_graph, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !1076
  %133 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !955
  %134 = load ptr, ptr @ebb_head, align 8, !tbaa !955
  %135 = getelementptr inbounds i32, ptr %134, i64 %127
  %136 = load i32, ptr %135, align 4, !tbaa !981
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, ptr %133, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !981
  %140 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %132, i32 noundef %139) #24
  %141 = call zeroext i8 @sel_is_loop_preheader_p(ptr noundef %140) #23
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %126
  call void @clear_outdated_rtx_info(ptr noundef %140) #23
  br label %163

144:                                              ; preds = %126
  %145 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !955
  %146 = getelementptr inbounds %struct.basic_block_def, ptr %140, i64 0, i32 9
  %147 = load i32, ptr %146, align 8, !tbaa !945
  %148 = call i32 @bitmap_bit_p(ptr noundef %145, i32 noundef %147) #23
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %163, label %150

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %140, i64 0, i32 9
  call void @flist_tail_init(ptr noundef nonnull %1) #23
  %152 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !955
  %153 = call fastcc i32 @init_seqno(i32 noundef 0, ptr noundef %152, ptr noundef nonnull %140) #24
  %154 = load ptr, ptr @forced_ebb_heads, align 8, !tbaa !955
  %155 = load i32, ptr %151, align 8, !tbaa !945
  %156 = call zeroext i8 @bitmap_set_bit(ptr noundef %154, i32 noundef %155) #23
  %157 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !955
  %158 = load i32, ptr %151, align 8, !tbaa !945
  %159 = call zeroext i8 @bitmap_clear_bit(ptr noundef %157, i32 noundef %158) #23
  %160 = load ptr, ptr @fences, align 8, !tbaa !955
  %161 = icmp eq ptr %160, null
  br i1 %161, label %168, label %162

162:                                              ; preds = %150
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7525, ptr noundef nonnull @.str.1) #23
  br label %168

163:                                              ; preds = %144, %143
  %164 = add nuw nsw i64 %127, 1
  %165 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  %166 = sext i32 %165 to i64
  %167 = icmp slt i64 %164, %166
  br i1 %167, label %126, label %172, !llvm.loop !1097

168:                                              ; preds = %162, %150
  %169 = call ptr @bb_note(ptr noundef nonnull %140) #23
  call void @init_fences(ptr noundef %169) #23
  call fastcc void @sel_sched_region_2(i32 noundef %153) #24
  %170 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %124, label %172

172:                                              ; preds = %45, %168, %163, %37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #25
  br label %173

173:                                              ; preds = %172, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_region_finish(i8 noundef zeroext %0) unnamed_addr #0 !prof !1069 !PGOFuncName !1098 {
  %2 = alloca %struct.succ_iterator, align 8
  %3 = alloca ptr, align 8
  tail call fastcc void @simplify_changed_insns() #24
  tail call void @sched_finish_ready_list() #23
  tail call void @free_nop_pool() #23
  %4 = load ptr, ptr @vec_av_set, align 8, !tbaa !955
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !1071

6:                                                ; preds = %1
  tail call fastcc void @VEC_expr_t_heap_free() #24
  br label %7

7:                                                ; preds = %6, %1
  %8 = load ptr, ptr @current_copies, align 8, !tbaa !955
  tail call void @bitmap_obstack_free(ptr noundef %8) #23
  store ptr null, ptr @current_copies, align 8, !tbaa !955
  %9 = load ptr, ptr @current_originators, align 8, !tbaa !955
  tail call void @bitmap_obstack_free(ptr noundef %9) #23
  store ptr null, ptr @current_originators, align 8, !tbaa !955
  %10 = load ptr, ptr @code_motion_visited_blocks, align 8, !tbaa !955
  tail call void @bitmap_obstack_free(ptr noundef %10) #23
  store ptr null, ptr @code_motion_visited_blocks, align 8, !tbaa !955
  tail call fastcc void @vinsn_vec_free(ptr noundef nonnull @vec_bookkeeping_blocked_vinsns) #24
  tail call fastcc void @vinsn_vec_free(ptr noundef nonnull @vec_target_unavailable_vinsns) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %11 = load ptr, ptr @cfun, align 8, !tbaa !955
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1074
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !1076
  %16 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !955
  %17 = load ptr, ptr @ebb_head, align 8, !tbaa !955
  %18 = load i32, ptr %17, align 4, !tbaa !981
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %16, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !981
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %15, i32 noundef %21) #24
  %23 = tail call ptr @bb_note(ptr noundef %22) #23
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %2, ptr noundef nonnull %3, ptr noundef %23, i32 noundef 9) #24
  br label %24

24:                                               ; preds = %53, %7
  %25 = load ptr, ptr @cfun, align 8, !tbaa !955
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !1074
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !1076
  %30 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !955
  %31 = load ptr, ptr @ebb_head, align 8, !tbaa !955
  %32 = load i32, ptr %31, align 4, !tbaa !981
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %30, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !981
  %36 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %29, i32 noundef %35) #24
  %37 = tail call ptr @bb_note(ptr noundef %36) #23
  %38 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %37) #24
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %54, label %40, !prof !1099

40:                                               ; preds = %24
  %41 = load ptr, ptr %3, align 8, !tbaa !955
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !940
  %44 = load ptr, ptr @sel_global_bb_info, align 8
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !945
  %47 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %44, i32 noundef %46) #24
  %48 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %47, i64 0, i32 1
  %49 = load i8, ptr %48, align 8, !tbaa !950
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %53, !prof !1071

51:                                               ; preds = %40
  %52 = tail call ptr @compute_live(ptr noundef nonnull %41) #24
  br label %53

53:                                               ; preds = %51, %40
  call fastcc void @_succ_iter_next(ptr noundef nonnull %2) #24
  br label %24, !llvm.loop !1100

54:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #25
  %55 = load i32, ptr @reload_completed, align 4, !tbaa !981
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57, !prof !1071

57:                                               ; preds = %54
  tail call fastcc void @sel_region_target_finish(i8 noundef zeroext %0) #24
  br label %58

58:                                               ; preds = %57, %54
  tail call void @sel_finish_global_and_expr() #23
  %59 = load ptr, ptr @forced_ebb_heads, align 8, !tbaa !955
  tail call void @bitmap_clear(ptr noundef %59) #23
  tail call void @free_nop_vinsn() #23
  tail call void @finish_deps_global() #23
  tail call void @sched_finish_luids() #23
  tail call void @sel_finish_bbs() #23
  %60 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !955
  tail call void @bitmap_obstack_free(ptr noundef %60) #23
  store ptr null, ptr @blocks_to_reschedule, align 8, !tbaa !955
  tail call void @sel_unregister_cfg_hooks() #23
  store i32 0, ptr @max_issue_size, align 4, !tbaa !981
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @maybe_skip_selective_scheduling() local_unnamed_addr #0 !prof !1101 {
  %1 = tail call zeroext i8 @dbg_cnt(i32 noundef 31) #23
  %2 = icmp eq i8 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @run_selective_scheduling() local_unnamed_addr #0 !prof !1101 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !955
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1074
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !1102
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %16, label %7, !prof !1103

7:                                                ; preds = %0
  tail call fastcc void @sel_global_init() #24
  %8 = load i32, ptr @nr_regions, align 4, !tbaa !981
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %15, !prof !1104

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %12, %10 ], [ 0, %7 ]
  tail call void @sel_sched_region(i32 noundef %11) #24
  %12 = add nuw nsw i32 %11, 1
  %13 = load i32, ptr @nr_regions, align 4, !tbaa !981
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %10, label %15, !prof !1105, !llvm.loop !1106

15:                                               ; preds = %10, %7
  tail call fastcc void @sel_global_finish() #24
  br label %16

16:                                               ; preds = %0, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_global_init() unnamed_addr #0 !prof !1101 !PGOFuncName !1107 {
  tail call void @calculate_dominance_info(i32 noundef 1) #23
  tail call void @alloc_sched_pools() #23
  tail call void @sel_setup_sched_infos() #23
  tail call void @setup_sched_dump() #23
  tail call void @sched_rgn_init(i8 noundef zeroext 0) #23
  tail call void @sched_init() #23
  tail call void @sched_init_bbs() #23
  store ptr null, ptr @after_recovery, align 8, !tbaa !955
  %1 = load i32, ptr @issue_rate, align 4, !tbaa !981
  store i32 %1, ptr @can_issue_more, align 4, !tbaa !981
  tail call void @sched_extend_target() #23
  tail call void @sched_deps_init(i8 noundef zeroext 1) #23
  tail call void @setup_nop_and_exit_insns() #23
  tail call void @sel_extend_global_bb_info() #23
  tail call void @init_lv_sets() #23
  tail call fastcc void @init_hard_regs_data() #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_global_finish() unnamed_addr #0 !prof !1101 !PGOFuncName !1108 {
  tail call void @free_bb_note_pool() #23
  tail call void @free_lv_sets() #23
  tail call void @sel_finish_global_bb_info() #23
  tail call void @free_regset_pool() #23
  tail call void @free_nop_and_exit_insns() #23
  tail call void @sched_rgn_finish() #23
  tail call void @sched_deps_finish() #23
  tail call void @sched_finish() #23
  %1 = load ptr, ptr @cfun, align 8, !tbaa !955
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !1109
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !1110

5:                                                ; preds = %0
  tail call void @sel_finish_pipelining() #23
  br label %6

6:                                                ; preds = %5, %0
  tail call void @free_sched_pools() #23
  tail call void @free_dominance_info(i32 noundef 1) #23
  ret void
}

; Function Attrs: optsize
declare ptr @get_clear_regset_from_pool() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #3 !prof !1111 !PGOFuncName !1112 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1113 !PGOFuncName !1114 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #24, !range !987
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1115

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #24
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !955
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @sel_bb_empty_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sel_bb_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !1116 !PGOFuncName !1117 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !1118

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #24
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #24
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !1119

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !1120
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !1120
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1113 !PGOFuncName !1122 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1123

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #24
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1116 !PGOFuncName !1124 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1118

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #24
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !1125 !PGOFuncName !1126 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1127

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1128
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1130 !PGOFuncName !1131 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1132

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 687, ptr noundef nonnull @.str.1) #23
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !955
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !1133 !PGOFuncName !1134 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !955
  ret ptr %5
}

; Function Attrs: optsize
declare void @df_simulate_one_insn_backwards(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_expr_onside(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @track_scheduled_insns_and_blocks(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1004 !PGOFuncName !1135 {
  %2 = load ptr, ptr @current_originators, align 8, !tbaa !955
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !940
  %5 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %4) #23
  %6 = load ptr, ptr @current_copies, align 8, !tbaa !955
  %7 = load i32, ptr %3, align 8, !tbaa !940
  %8 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %7) #23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %36, !prof !1136

10:                                               ; preds = %1
  %11 = load ptr, ptr @s_i_d, align 8
  %12 = load ptr, ptr @sched_luids, align 8
  %13 = load i32, ptr %3, align 8, !tbaa !940
  %14 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %12, i32 noundef %13) #24
  %15 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %11, i32 noundef %14) #24
  %16 = getelementptr inbounds %struct._expr, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !1095
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %26, !prof !1137

19:                                               ; preds = %10
  %20 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !955
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !940
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !945
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %20, i32 noundef %24) #23
  br label %40

26:                                               ; preds = %10
  %27 = load i32, ptr @first_emitted_uid, align 4, !tbaa !981
  %28 = icmp slt i32 %13, %27
  br i1 %28, label %29, label %40, !prof !1138

29:                                               ; preds = %26
  %30 = load i32, ptr %0, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 7
  br i1 %32, label %40, label %33, !prof !1139

33:                                               ; preds = %29
  %34 = load i32, ptr @num_insns_scheduled, align 4, !tbaa !981
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @num_insns_scheduled, align 4, !tbaa !981
  br label %40

36:                                               ; preds = %1
  %37 = load ptr, ptr @current_copies, align 8, !tbaa !955
  %38 = load i32, ptr %3, align 8, !tbaa !940
  %39 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %37, i32 noundef %38) #23
  br label %40

40:                                               ; preds = %19, %33, %29, %26, %36
  %41 = load i32, ptr %3, align 8, !tbaa !940
  %42 = load i32, ptr @max_uid_before_move_op, align 4, !tbaa !981
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47, !prof !1137

44:                                               ; preds = %40
  %45 = load i32, ptr @stat_bookkeeping_copies, align 4, !tbaa !981
  %46 = add nsw i32 %45, -1
  store i32 %46, ptr @stat_bookkeeping_copies, align 4, !tbaa !981
  br label %47

47:                                               ; preds = %44, %40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @handle_emitting_transformations(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !1004 !PGOFuncName !1140 {
  %4 = tail call fastcc zeroext i8 @maybe_emit_renaming_copy(ptr noundef %0, ptr noundef %2) #24, !range !987
  %5 = tail call fastcc zeroext i8 @maybe_emit_speculative_check(ptr noundef %0, ptr noundef %1, ptr noundef %2) #24, !range !987
  %6 = or i8 %5, %4
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_expr_history_def_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !1141 !PGOFuncName !1142 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1143

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1144
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_insn_from_stream(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1004 !PGOFuncName !1146 {
  %3 = tail call fastcc zeroext i8 @need_nop_to_preserve_insn_bb(ptr noundef %0) #24, !range !987
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !1147

5:                                                ; preds = %2
  %6 = tail call ptr @get_nop_from_pool(ptr noundef %0) #23
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !940
  %9 = load ptr, ptr @nop_pattern, align 8, !tbaa !955
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %12, label %11, !prof !1148

11:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5961, ptr noundef nonnull @.str.1) #23
  br label %12

12:                                               ; preds = %5, %11
  tail call fastcc void @VEC_insn_t_heap_safe_push(ptr noundef nonnull %6) #24
  br label %13

13:                                               ; preds = %12, %2
  %14 = tail call zeroext i8 @sel_remove_insn(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext 0) #23
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @maybe_emit_renaming_copy(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !1004 !PGOFuncName !1149 {
  %3 = getelementptr inbounds %struct.moveop_static_params, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1006
  %5 = load ptr, ptr %4, align 8, !tbaa !1057
  %6 = getelementptr inbounds %struct.vinsn_def, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !1048
  %8 = icmp eq i32 %7, 23
  br i1 %8, label %9, label %53, !prof !1150

9:                                                ; preds = %2
  %10 = tail call ptr @expr_dest_reg(ptr noundef nonnull %4) #23
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12, !prof !1151

12:                                               ; preds = %9
  %13 = load ptr, ptr %1, align 8, !tbaa !1014
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15, !prof !1151

15:                                               ; preds = %12
  %16 = load i32, ptr %13, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %21, label %19, !prof !1152

19:                                               ; preds = %15, %12, %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5835, ptr noundef nonnull @.str.1) #23
  %20 = load ptr, ptr %1, align 8, !tbaa !1014
  br label %21

21:                                               ; preds = %15, %19
  %22 = phi ptr [ %13, %15 ], [ %20, %19 ]
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef %22) #24
  %24 = tail call fastcc i32 @rhs_regno(ptr noundef %10) #24
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %53, label %26, !prof !1153

26:                                               ; preds = %21
  %27 = load ptr, ptr @s_i_d, align 8
  %28 = load ptr, ptr @sched_luids, align 8
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !940
  %31 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %28, i32 noundef %30) #24
  %32 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %27, i32 noundef %31) #24
  %33 = load ptr, ptr %32, align 8, !tbaa !1042
  %34 = tail call fastcc ptr @create_insn_rtx_with_rhs(ptr noundef %33, ptr noundef %22) #24
  %35 = load ptr, ptr @s_i_d, align 8
  %36 = load ptr, ptr @sched_luids, align 8
  %37 = load i32, ptr %29, align 8, !tbaa !940
  %38 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %36, i32 noundef %37) #24
  %39 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %35, i32 noundef %38) #24
  %40 = getelementptr inbounds %struct._sel_insn_data, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !1154
  %42 = tail call ptr @sel_gen_insn_from_rtx_after(ptr noundef %34, ptr noundef nonnull %39, i32 noundef %41, ptr noundef %0) #23
  %43 = load ptr, ptr @s_i_d, align 8
  %44 = load ptr, ptr @sched_luids, align 8
  %45 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !940
  %47 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %44, i32 noundef %46) #24
  %48 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %43, i32 noundef %47) #24
  %49 = getelementptr inbounds %struct._expr, ptr %48, i64 0, i32 7
  store i32 0, ptr %49, align 8, !tbaa !1155
  %50 = load ptr, ptr %3, align 8, !tbaa !1006
  %51 = load ptr, ptr %1, align 8, !tbaa !1014
  tail call fastcc void @replace_dest_with_reg_in_expr(ptr noundef %50, ptr noundef %51) #24
  %52 = getelementptr inbounds %struct.moveop_static_params, ptr %1, i64 0, i32 3
  store i8 1, ptr %52, align 4, !tbaa !1156
  br label %53

53:                                               ; preds = %21, %26, %2
  %54 = phi i8 [ 0, %2 ], [ 1, %26 ], [ 0, %21 ]
  ret i8 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @maybe_emit_speculative_check(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !1004 !PGOFuncName !1157 {
  %4 = tail call fastcc i32 @get_spec_check_type_for_insn(ptr noundef %0, ptr noundef %1) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6, !prof !1136

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.moveop_static_params, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1006
  %9 = tail call fastcc ptr @create_speculation_check(ptr noundef %8, i32 noundef %4, ptr noundef %0) #24
  %10 = load ptr, ptr @s_i_d, align 8
  %11 = load ptr, ptr @sched_luids, align 8
  br label %20

12:                                               ; preds = %3
  %13 = load ptr, ptr @s_i_d, align 8
  %14 = load ptr, ptr @sched_luids, align 8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !940
  %17 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %14, i32 noundef %16) #24
  %18 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %13, i32 noundef %17) #24
  %19 = getelementptr inbounds %struct._expr, ptr %18, i64 0, i32 7
  store i32 0, ptr %19, align 8, !tbaa !1155
  br label %20

20:                                               ; preds = %12, %6
  %21 = phi ptr [ %11, %6 ], [ %14, %12 ]
  %22 = phi ptr [ %10, %6 ], [ %13, %12 ]
  %23 = phi ptr [ %9, %6 ], [ %0, %12 ]
  %24 = phi i8 [ 1, %6 ], [ 0, %12 ]
  %25 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !940
  %27 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %21, i32 noundef %26) #24
  %28 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %22, i32 noundef %27) #24
  %29 = getelementptr inbounds %struct._expr, ptr %28, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !1155
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36, !prof !1136

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct._expr, ptr %28, i64 0, i32 8
  %34 = load i32, ptr %33, align 4, !tbaa !1158
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36, !prof !1136

36:                                               ; preds = %32, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5885, ptr noundef nonnull @.str.1) #23
  br label %37

37:                                               ; preds = %32, %36
  ret i8 %24
}

; Function Attrs: optsize
declare ptr @expr_dest_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1159 !PGOFuncName !1160 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !940
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_insn_rtx_with_rhs(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1161 !PGOFuncName !1162 {
  %3 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1050
  %5 = tail call ptr @copy_rtx(ptr noundef %4) #23
  %6 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %5, ptr noundef %1) #23
  %7 = tail call ptr @create_insn_rtx_from_pattern(ptr noundef %6, ptr noundef null) #23
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @sel_gen_insn_from_rtx_after(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_dest_with_reg_in_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1163 !PGOFuncName !1164 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1057
  %4 = tail call fastcc ptr @create_insn_rtx_with_lhs(ptr noundef %3, ptr noundef %1) #24
  %5 = tail call ptr @create_vinsn_from_insn_rtx(ptr noundef %4, i8 noundef zeroext 0) #23
  tail call void @change_vinsn_in_expr(ptr noundef nonnull %0, ptr noundef %5) #23
  %6 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 12
  %7 = load i8, ptr %6, align 1
  %8 = or i8 %7, 4
  store i8 %8, ptr %6, align 1
  %9 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 1, ptr %9, align 8, !tbaa !1165
  ret void
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_insn_rtx_from_pattern(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_insn_rtx_with_lhs(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1163 !PGOFuncName !1166 {
  %3 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1167
  %5 = tail call ptr @copy_rtx(ptr noundef %4) #23
  %6 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %1, ptr noundef %5) #23
  %7 = tail call ptr @create_insn_rtx_from_pattern(ptr noundef %6, ptr noundef null) #23
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @create_vinsn_from_insn_rtx(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @change_vinsn_in_expr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_spec_check_type_for_insn(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1004 !PGOFuncName !1168 {
  %3 = load ptr, ptr @s_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !940
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %6) #24
  %8 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %7) #24
  %9 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !1155
  %11 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 8
  %12 = load i32, ptr %11, align 4, !tbaa !1169
  %13 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 34), align 8, !tbaa !1170
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15, !prof !1136

15:                                               ; preds = %2
  %16 = tail call i32 %13(ptr noundef nonnull %0) #23
  %17 = or i32 %16, %10
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i32 [ %17, %15 ], [ %10, %2 ]
  %20 = load ptr, ptr @spec_info, align 8, !tbaa !955
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22, !prof !1136

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.spec_info_def, ptr %20, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !1171
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  %27 = or i32 %19, 258048
  %28 = select i1 %26, i32 %19, i32 %27
  br label %29

29:                                               ; preds = %22, %18
  %30 = phi i32 [ %19, %18 ], [ %28, %22 ]
  %31 = tail call i32 @ds_get_speculation_types(i32 noundef %30) #23
  %32 = xor i32 %31, -1
  %33 = and i32 %12, %32
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_speculation_check(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !998 !PGOFuncName !1173 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 29), align 8, !tbaa !1174
  %5 = tail call zeroext i8 %4(i32 noundef %1) #23
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = load ptr, ptr @s_i_d, align 8
  %9 = load ptr, ptr @sched_luids, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !940
  %12 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %9, i32 noundef %11) #24
  %13 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %8, i32 noundef %12) #24
  %14 = getelementptr inbounds %struct._expr, ptr %13, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !1155
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %7, %3
  %18 = tail call ptr @sel_create_recovery_block(ptr noundef %2) #23
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !940
  %21 = load ptr, ptr %20, align 8, !tbaa !1175
  br label %22

22:                                               ; preds = %7, %17
  %23 = phi ptr [ %18, %17 ], [ null, %7 ]
  %24 = phi ptr [ %21, %17 ], [ null, %7 ]
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 30), align 8, !tbaa !1176
  %26 = load ptr, ptr %0, align 8, !tbaa !1057
  %27 = load ptr, ptr %26, align 8, !tbaa !1058
  %28 = tail call ptr %25(ptr noundef %27, ptr noundef %24, i32 noundef %1) #23
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1847, ptr noundef nonnull @.str.1) #23
  br label %31

31:                                               ; preds = %22, %30
  %32 = tail call ptr @create_insn_rtx_from_pattern(ptr noundef %28, ptr noundef %24) #23
  %33 = load ptr, ptr @s_i_d, align 8
  %34 = load ptr, ptr @sched_luids, align 8
  %35 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !940
  %37 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %34, i32 noundef %36) #24
  %38 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %33, i32 noundef %37) #24
  %39 = getelementptr inbounds %struct._sel_insn_data, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !1154
  %41 = tail call ptr @sel_gen_insn_from_rtx_after(ptr noundef %32, ptr noundef nonnull %38, i32 noundef %40, ptr noundef %2) #23
  %42 = load ptr, ptr @s_i_d, align 8
  %43 = load ptr, ptr @sched_luids, align 8
  %44 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !940
  %46 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %43, i32 noundef %45) #24
  %47 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %42, i32 noundef %46) #24
  %48 = getelementptr inbounds %struct._expr, ptr %47, i64 0, i32 7
  store i32 0, ptr %48, align 8, !tbaa !1155
  %49 = load i32, ptr %44, align 8, !tbaa !940
  %50 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %43, i32 noundef %49) #24
  %51 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %42, i32 noundef %50) #24
  %52 = getelementptr inbounds %struct._sel_insn_data, ptr %51, i64 0, i32 12
  store i32 %1, ptr %52, align 8, !tbaa !1177
  %53 = load i32, ptr %35, align 8, !tbaa !940
  %54 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %43, i32 noundef %53) #24
  %55 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %42, i32 noundef %54) #24
  %56 = load ptr, ptr %55, align 8, !tbaa !1042
  %57 = tail call i32 @sel_vinsn_cost(ptr noundef %56) #23
  %58 = load ptr, ptr @s_i_d, align 8
  %59 = load ptr, ptr @sched_luids, align 8
  %60 = load i32, ptr %44, align 8, !tbaa !940
  %61 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %59, i32 noundef %60) #24
  %62 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %58, i32 noundef %61) #24
  %63 = load ptr, ptr %62, align 8, !tbaa !1042
  %64 = tail call i32 @sel_vinsn_cost(ptr noundef %63) #23
  %65 = sub i32 %64, %57
  %66 = load ptr, ptr @s_i_d, align 8
  %67 = load ptr, ptr @sched_luids, align 8
  %68 = load i32, ptr %44, align 8, !tbaa !940
  %69 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %67, i32 noundef %68) #24
  %70 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %66, i32 noundef %69) #24
  %71 = getelementptr inbounds %struct._expr, ptr %70, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !1000
  %73 = add i32 %65, %72
  store i32 %73, ptr %71, align 8, !tbaa !1000
  %74 = icmp eq ptr %23, null
  br i1 %74, label %94, label %75

75:                                               ; preds = %31
  %76 = load ptr, ptr %0, align 8, !tbaa !1057
  %77 = load ptr, ptr %76, align 8, !tbaa !1058
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !940
  %80 = tail call ptr @copy_rtx(ptr noundef %79) #23
  %81 = tail call ptr @create_insn_rtx_from_pattern(ptr noundef %80, ptr noundef null) #23
  %82 = load ptr, ptr @s_i_d, align 8
  %83 = load ptr, ptr @sched_luids, align 8
  %84 = load i32, ptr %35, align 8, !tbaa !940
  %85 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %83, i32 noundef %84) #24
  %86 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %82, i32 noundef %85) #24
  %87 = load i32, ptr %44, align 8, !tbaa !940
  %88 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %83, i32 noundef %87) #24
  %89 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %82, i32 noundef %88) #24
  %90 = getelementptr inbounds %struct._sel_insn_data, ptr %89, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !1154
  %92 = tail call ptr @bb_note(ptr noundef nonnull %23) #23
  %93 = tail call ptr @sel_gen_recovery_insn_from_rtx_after(ptr noundef %81, ptr noundef nonnull %86, i32 noundef %91, ptr noundef %92) #23
  br label %94

94:                                               ; preds = %75, %31
  %95 = tail call i32 @ds_get_max_dep_weak(i32 noundef %1) #23
  %96 = tail call i32 @speculate_expr(ptr noundef nonnull %0, i32 noundef %95) #23
  ret ptr %41
}

; Function Attrs: optsize
declare i32 @ds_get_speculation_types(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sel_create_recovery_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @sel_vinsn_cost(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sel_gen_recovery_insn_from_rtx_after(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bb_note(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ds_get_max_dep_weak(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @speculate_expr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @need_nop_to_preserve_insn_bb(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1004 !PGOFuncName !1178 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !940
  %4 = tail call ptr @sel_bb_head(ptr noundef %3) #23
  %5 = tail call ptr @sel_bb_end(ptr noundef %3) #23
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %51, label %7, !prof !1179

7:                                                ; preds = %1, %14
  %8 = phi ptr [ %16, %14 ], [ %4, %1 ]
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %14, label %12, !prof !1180

12:                                               ; preds = %7
  %13 = icmp eq ptr %8, %5
  br i1 %13, label %51, label %18, !prof !1056

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !940
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %51, label %7, !prof !1181, !llvm.loop !1182

18:                                               ; preds = %12, %23
  %19 = phi ptr [ %25, %23 ], [ %5, %12 ]
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %23, label %27, !prof !1180

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !940
  %26 = icmp eq ptr %8, %25
  br i1 %26, label %51, label %18, !prof !1183, !llvm.loop !1184

27:                                               ; preds = %18, %32
  %28 = phi ptr [ %30, %32 ], [ %8, %18 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !940
  %31 = icmp eq ptr %30, %19
  br i1 %31, label %36, label %32, !prof !1185

32:                                               ; preds = %27
  %33 = load i32, ptr %30, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 7
  br i1 %35, label %27, label %38, !prof !1180, !llvm.loop !1186

36:                                               ; preds = %27
  %37 = icmp eq i32 %21, 9
  br i1 %37, label %51, label %38, !prof !1187

38:                                               ; preds = %32, %36
  br label %39

39:                                               ; preds = %38, %39
  %40 = phi ptr [ %42, %39 ], [ %0, %38 ]
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !940
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 7
  br i1 %45, label %39, label %46, !prof !1188, !llvm.loop !1189

46:                                               ; preds = %39
  %47 = load ptr, ptr @fences, align 8, !tbaa !955
  %48 = tail call ptr @flist_lookup(ptr noundef %47, ptr noundef nonnull %42) #23
  %49 = icmp ne ptr %48, null
  %50 = zext i1 %49 to i8
  br label %51

51:                                               ; preds = %14, %23, %12, %46, %36, %1
  %52 = phi i8 [ 1, %1 ], [ 1, %36 ], [ %50, %46 ], [ 1, %12 ], [ 1, %23 ], [ 1, %14 ]
  ret i8 %52
}

; Function Attrs: optsize
declare ptr @get_nop_from_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_insn_t_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !1190 !PGOFuncName !1191 {
  tail call fastcc void @VEC_insn_t_heap_reserve() #24
  %2 = load ptr, ptr @vec_temp_moveop_nops, align 8, !tbaa !955
  tail call fastcc void @VEC_insn_t_base_quick_push(ptr noundef %2, ptr noundef %0) #24
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @sel_remove_insn(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sel_bb_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @flist_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_insn_t_heap_reserve() unnamed_addr #0 !prof !1190 !PGOFuncName !1192 {
  %1 = load ptr, ptr @vec_temp_moveop_nops, align 8, !tbaa !955
  %2 = tail call fastcc i32 @VEC_insn_t_base_space(ptr noundef %1) #24
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !1193

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #23
  store ptr %5, ptr @vec_temp_moveop_nops, align 8, !tbaa !955
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_insn_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !1190 !PGOFuncName !1194 {
  %3 = load i32, ptr %0, align 8, !tbaa !1195
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1195
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_insn_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !955
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_insn_t_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !1190 !PGOFuncName !1197 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1193

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_insn_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1198
  %6 = load i32, ptr %0, align 8, !tbaa !1195
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @lhs_of_insn_equals_to_dest_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @merge_expr_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @clear_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @moveup_expr_cached(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1199 !PGOFuncName !1200 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  %5 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %6 = icmp sgt i32 %5, 5
  br i1 %6, label %7, label %37, !prof !1201

7:                                                ; preds = %2
  %8 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = alloca [15 x i8], align 16
  store i64 9120923168173901, ptr %11, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %11) #23
  %12 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %13 = call i32 @fputs(ptr nonnull %11, ptr %12)
  br label %17

14:                                               ; preds = %7
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %16 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 7, i64 1, ptr %15)
  br label %17

17:                                               ; preds = %14, %10
  call void @dump_expr(ptr noundef %0) #23
  %18 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !940
  %23 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.9, i32 noundef %22) #24
  %24 = shl nsw i32 %23, 1
  %25 = or disjoint i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  %28 = load i32, ptr %21, align 8, !tbaa !940
  %29 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %27, i64 noundef %26, ptr noundef nonnull @.str.9, i32 noundef %28) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %27) #23
  %30 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %31 = call i32 @fputs(ptr nonnull %27, ptr %30)
  br label %37

32:                                               ; preds = %17
  %33 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %34 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !940
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.9, i32 noundef %35) #24
  br label %37

37:                                               ; preds = %20, %32, %2
  %38 = load ptr, ptr %0, align 8, !tbaa !1057
  %39 = load ptr, ptr %38, align 8, !tbaa !1058
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 7
  br i1 %42, label %43, label %50, !prof !1201

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !940
  %46 = call ptr @sel_bb_head(ptr noundef %45) #23
  %47 = load ptr, ptr %0, align 8, !tbaa !1057
  %48 = load ptr, ptr %47, align 8, !tbaa !1058
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %59, label %50

50:                                               ; preds = %43, %37
  %51 = call fastcc zeroext i8 @try_bitmap_cache(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3) #24
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %154, !prof !1202

53:                                               ; preds = %50
  %54 = call fastcc zeroext i8 @try_transformation_cache(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3) #24, !range !987
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %154, !prof !1203

56:                                               ; preds = %53
  %57 = load ptr, ptr %0, align 8, !tbaa !1057
  %58 = load ptr, ptr %57, align 8, !tbaa !1058
  br label %59

59:                                               ; preds = %56, %43
  %60 = phi ptr [ %58, %56 ], [ %46, %43 ]
  %61 = phi ptr [ %57, %56 ], [ %47, %43 ]
  %62 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  %63 = load i32, ptr %62, align 8, !tbaa !1204
  %64 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !940
  %66 = getelementptr inbounds %struct.vinsn_def, ptr %61, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !1048
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !tbaa !981
  call void @vinsn_attach(ptr noundef nonnull %61) #23
  %68 = call fastcc i32 @moveup_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4) #24
  store i32 %68, ptr %3, align 4, !tbaa !981
  switch i32 %68, label %152 [
    i32 2, label %69
    i32 0, label %82
    i32 1, label %95
    i32 3, label %112
  ], !prof !1205

69:                                               ; preds = %59
  call fastcc void @update_bitmap_cache(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2) #24
  %70 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %71 = icmp sgt i32 %70, 5
  br i1 %71, label %72, label %153, !prof !1206

72:                                               ; preds = %69
  %73 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = alloca [17 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %76, ptr noundef nonnull align 1 dereferenceable(9) @.str.10, i64 9, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %76) #23
  %77 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %78 = call i32 @fputs(ptr nonnull %76, ptr %77)
  br label %153

79:                                               ; preds = %72
  %80 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %81 = call i64 @fwrite(ptr nonnull @.str.10, i64 8, i64 1, ptr %80)
  br label %153

82:                                               ; preds = %59
  call fastcc void @update_bitmap_cache(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #24
  %83 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %84 = icmp sgt i32 %83, 5
  br i1 %84, label %85, label %153, !prof !1207

85:                                               ; preds = %82
  %86 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = alloca [21 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %89, ptr noundef nonnull align 1 dereferenceable(11) @.str.11, i64 11, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %89) #23
  %90 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %91 = call i32 @fputs(ptr nonnull %89, ptr %90)
  br label %153

92:                                               ; preds = %85
  %93 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %94 = call i64 @fwrite(ptr nonnull @.str.11, i64 10, i64 1, ptr %93)
  br label %153

95:                                               ; preds = %59
  %96 = add i32 %67, -23
  %97 = icmp ult i32 %96, 2
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2547, ptr noundef nonnull @.str.1) #23
  br label %99

99:                                               ; preds = %95, %98
  call fastcc void @update_bitmap_cache(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1) #24
  %100 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %101 = icmp sgt i32 %100, 5
  br i1 %101, label %102, label %153, !prof !1208

102:                                              ; preds = %99
  %103 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = alloca [39 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %106, ptr noundef nonnull align 1 dereferenceable(20) @.str.12, i64 20, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %106) #23
  %107 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %108 = call i32 @fputs(ptr nonnull %106, ptr %107)
  br label %153

109:                                              ; preds = %102
  %110 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %111 = call i64 @fwrite(ptr nonnull @.str.12, i64 19, i64 1, ptr %110)
  br label %153

112:                                              ; preds = %59
  %113 = load ptr, ptr %0, align 8, !tbaa !1057
  %114 = load ptr, ptr %113, align 8, !tbaa !1058
  %115 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !940
  %117 = icmp eq i32 %116, %65
  br i1 %117, label %118, label %123, !prof !1209

118:                                              ; preds = %112
  %119 = load i32, ptr %62, align 8, !tbaa !1204
  %120 = icmp eq i32 %119, %63
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2555, ptr noundef nonnull @.str.1) #23
  %122 = load ptr, ptr %0, align 8, !tbaa !1057
  br label %123

123:                                              ; preds = %112, %118, %121
  %124 = phi ptr [ %113, %112 ], [ %113, %118 ], [ %122, %121 ]
  %125 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 10
  %126 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !940
  %128 = load i32, ptr %4, align 4, !tbaa !981
  call void @insert_in_history_vect(ptr noundef nonnull %125, i32 noundef %127, i32 noundef %128, ptr noundef nonnull %61, ptr noundef %124, i32 noundef %63) #23
  %129 = load i32, ptr %4, align 4, !tbaa !981
  call fastcc void @update_transformation_cache(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %129, ptr noundef nonnull %61) #24
  %130 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %131 = icmp sgt i32 %130, 5
  br i1 %131, label %132, label %153, !prof !1209

132:                                              ; preds = %123
  %133 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %132
  %136 = alloca [19 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %136, ptr noundef nonnull align 1 dereferenceable(10) @.str.13, i64 10, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %136) #23
  %137 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %138 = call i32 @fputs(ptr nonnull %136, ptr %137)
  br label %142

139:                                              ; preds = %132
  %140 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %141 = call i64 @fwrite(ptr nonnull @.str.13, i64 9, i64 1, ptr %140)
  br label %142

142:                                              ; preds = %139, %135
  call void @dump_expr(ptr noundef nonnull %0) #23
  %143 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %142
  %146 = alloca [3 x i8], align 16
  store i16 10, ptr %146, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %146) #23
  %147 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %148 = call i32 @fputs(ptr nonnull %146, ptr %147)
  br label %153

149:                                              ; preds = %142
  %150 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %151 = call i32 @fputc(i32 10, ptr %150)
  br label %153

152:                                              ; preds = %59
  unreachable

153:                                              ; preds = %123, %149, %145, %99, %109, %105, %82, %92, %88, %69, %79, %75
  call void @vinsn_detach(ptr noundef nonnull %61) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  br label %154

154:                                              ; preds = %53, %50, %153
  %155 = load i32, ptr %3, align 4, !tbaa !981
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret i32 %155
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_liveness_on_insn(ptr noundef %0) unnamed_addr #0 !prof !1210 !PGOFuncName !1211 {
  store i1 true, ptr @ignore_first, align 1
  %2 = tail call ptr @compute_live(ptr noundef %0) #24
  ret void
}

; Function Attrs: optsize
declare void @dump_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_bitmap_cache(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1199 !PGOFuncName !1212 {
  %4 = load ptr, ptr %0, align 8, !tbaa !1057
  %5 = load ptr, ptr %4, align 8, !tbaa !1058
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !940
  %8 = load ptr, ptr @s_i_d, align 8
  %9 = load ptr, ptr @sched_luids, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !940
  %12 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %9, i32 noundef %11) #24
  %13 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %8, i32 noundef %12) #24
  %14 = getelementptr inbounds %struct._sel_insn_data, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !1213
  %16 = tail call i32 @bitmap_bit_p(ptr noundef %15, i32 noundef %7) #23
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr @s_i_d, align 8
  %19 = load ptr, ptr @sched_luids, align 8
  %20 = load i32, ptr %10, align 8, !tbaa !940
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %19, i32 noundef %20) #24
  %22 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %18, i32 noundef %21) #24
  %23 = getelementptr inbounds %struct._sel_insn_data, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !1214
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %24, i32 noundef %7) #23
  %26 = icmp eq i32 %25, 0
  br i1 %17, label %52, label %27, !prof !1215

27:                                               ; preds = %3
  %28 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %29 = icmp sgt i32 %28, 5
  br i1 %26, label %41, label %30, !prof !1216

30:                                               ; preds = %27
  br i1 %29, label %31, label %80, !prof !1217

31:                                               ; preds = %30
  %32 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = alloca [35 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %35, ptr noundef nonnull align 1 dereferenceable(18) @.str.15, i64 18, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %35) #23
  %36 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %37 = call i32 @fputs(ptr nonnull %35, ptr %36)
  br label %80

38:                                               ; preds = %31
  %39 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %40 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 17, i64 1, ptr %39)
  br label %80

41:                                               ; preds = %27
  br i1 %29, label %42, label %80, !prof !1218

42:                                               ; preds = %41
  %43 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = alloca [39 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %46, ptr noundef nonnull align 1 dereferenceable(20) @.str.16, i64 20, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %46) #23
  %47 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %48 = call i32 @fputs(ptr nonnull %46, ptr %47)
  br label %80

49:                                               ; preds = %42
  %50 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %51 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 19, i64 1, ptr %50)
  br label %80

52:                                               ; preds = %3
  br i1 %26, label %82, label %53, !prof !1219

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 0, ptr %54, align 8, !tbaa !1165
  %55 = load i1, ptr @enable_schedule_as_rhs_p, align 1
  %56 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %57 = icmp sgt i32 %56, 5
  br i1 %55, label %58, label %69, !prof !1220

58:                                               ; preds = %53
  br i1 %57, label %59, label %80, !prof !1221

59:                                               ; preds = %58
  %60 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = alloca [55 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %63, ptr noundef nonnull align 1 dereferenceable(28) @.str.18, i64 28, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %63) #23
  %64 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %65 = call i32 @fputs(ptr nonnull %63, ptr %64)
  br label %80

66:                                               ; preds = %59
  %67 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %68 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 27, i64 1, ptr %67)
  br label %80

69:                                               ; preds = %53
  br i1 %57, label %70, label %80

70:                                               ; preds = %69
  %71 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = alloca [109 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(55) %74, ptr noundef nonnull align 1 dereferenceable(55) @.str.19, i64 55, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %74) #23
  %75 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %76 = call i32 @fputs(ptr nonnull %74, ptr %75)
  br label %80

77:                                               ; preds = %70
  %78 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %79 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 54, i64 1, ptr %78)
  br label %80

80:                                               ; preds = %69, %77, %73, %58, %66, %62, %41, %49, %45, %30, %38, %34
  %81 = phi i32 [ 2, %34 ], [ 2, %38 ], [ 2, %30 ], [ 0, %45 ], [ 0, %49 ], [ 0, %41 ], [ 1, %62 ], [ 1, %66 ], [ 1, %58 ], [ 2, %73 ], [ 2, %77 ], [ 2, %69 ]
  store i32 %81, ptr %2, align 4, !tbaa !981
  br label %82

82:                                               ; preds = %80, %52
  %83 = phi i8 [ 0, %52 ], [ 1, %80 ]
  ret i8 %83
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_transformation_cache(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1222 !PGOFuncName !1223 {
  %4 = load ptr, ptr @s_i_d, align 8
  %5 = load ptr, ptr @sched_luids, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !940
  %8 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %5, i32 noundef %7) #24
  %9 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %4, i32 noundef %8) #24
  %10 = getelementptr inbounds %struct._sel_insn_data, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !1224
  %12 = load ptr, ptr %0, align 8, !tbaa !1057
  %13 = getelementptr inbounds %struct.vinsn_def, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !1225
  %15 = tail call ptr @htab_find_with_hash(ptr noundef %11, ptr noundef nonnull %0, i32 noundef %14) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %82, label %17, !prof !1203

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 10
  %19 = load i32, ptr %6, align 8, !tbaa !940
  %20 = getelementptr inbounds %struct.transformed_insns, ptr %15, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !1226
  %22 = load ptr, ptr %15, align 8, !tbaa !1228
  %23 = getelementptr inbounds %struct.transformed_insns, ptr %15, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !1229
  %25 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !1204
  tail call void @insert_in_history_vect(ptr noundef nonnull %18, i32 noundef %19, i32 noundef %21, ptr noundef %22, ptr noundef %24, i32 noundef %26) #23
  %27 = load ptr, ptr %23, align 8, !tbaa !1229
  %28 = load ptr, ptr %27, align 8, !tbaa !1058
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !940
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32, !prof !1230

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !940
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @vinsn_copy(ptr noundef nonnull %27, i8 noundef zeroext 1) #23
  store ptr %37, ptr %23, align 8, !tbaa !1229
  br label %38

38:                                               ; preds = %36, %32, %17
  %39 = phi ptr [ %37, %36 ], [ %27, %32 ], [ %27, %17 ]
  tail call void @change_vinsn_in_expr(ptr noundef nonnull %0, ptr noundef %39) #23
  %40 = getelementptr inbounds %struct.transformed_insns, ptr %15, i64 0, i32 4
  %41 = load i8, ptr %40, align 8
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44, !prof !1231

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 0, ptr %45, align 8, !tbaa !1165
  br label %46

46:                                               ; preds = %44, %38
  %47 = load i32, ptr %20, align 4, !tbaa !1226
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %58, !prof !1232

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.transformed_insns, ptr %15, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !1233
  store i32 %51, ptr %25, align 8, !tbaa !1204
  %52 = load i8, ptr %40, align 8
  %53 = lshr i8 %52, 1
  %54 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 12
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %53, 1
  %57 = or i8 %56, %55
  store i8 %57, ptr %54, align 1
  br label %58

58:                                               ; preds = %49, %46
  %59 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %60 = icmp sgt i32 %59, 5
  br i1 %60, label %61, label %81, !prof !1232

61:                                               ; preds = %58
  %62 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = alloca [37 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %65, ptr noundef nonnull align 1 dereferenceable(19) @.str.20, i64 19, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %65) #23
  %66 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %67 = call i32 @fputs(ptr nonnull %65, ptr %66)
  br label %71

68:                                               ; preds = %61
  %69 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %70 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 18, i64 1, ptr %69)
  br label %71

71:                                               ; preds = %68, %64
  call void @dump_expr(ptr noundef nonnull %0) #23
  %72 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = alloca [3 x i8], align 16
  store i16 10, ptr %75, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %75) #23
  %76 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %77 = call i32 @fputs(ptr nonnull %75, ptr %76)
  br label %81

78:                                               ; preds = %71
  %79 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %80 = call i32 @fputc(i32 10, ptr %79)
  br label %81

81:                                               ; preds = %74, %78, %58
  store i32 3, ptr %2, align 4, !tbaa !981
  br label %82

82:                                               ; preds = %3, %81
  %83 = phi i8 [ 1, %81 ], [ 0, %3 ]
  ret i8 %83
}

; Function Attrs: optsize
declare void @vinsn_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @moveup_expr(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) unnamed_addr #0 !prof !1234 !PGOFuncName !1235 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !1057
  %6 = load ptr, ptr %5, align 8, !tbaa !1058
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %7 = getelementptr inbounds %struct.vinsn_def, ptr %5, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !1048
  %9 = add i32 %8, -23
  %10 = icmp ult i32 %9, 2
  %11 = tail call zeroext i8 @control_flow_insn_p(ptr noundef %6) #23
  %12 = icmp eq i8 %11, 0
  br i1 %10, label %54, label %13, !prof !1236

13:                                               ; preds = %3
  br i1 %12, label %39, label %14, !prof !1237

14:                                               ; preds = %13
  %15 = tail call zeroext i8 @control_flow_insn_p(ptr noundef %1) #23
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %178, !prof !1238

17:                                               ; preds = %14
  %18 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %6) #23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %178, !prof !1238

20:                                               ; preds = %17
  %21 = tail call zeroext i8 @bookkeeping_can_be_created_if_moved_through_p(ptr noundef %1) #23
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %178, !prof !1238

23:                                               ; preds = %20
  %24 = tail call ptr @fallthru_bb_of_jump(ptr noundef %6) #23
  %25 = icmp eq ptr %24, null
  br i1 %25, label %178, label %26, !prof !1239

26:                                               ; preds = %23
  %27 = tail call zeroext i8 @in_current_region_p(ptr noundef nonnull %24) #23
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %178, label %29, !prof !1240

29:                                               ; preds = %26
  %30 = tail call i32 @any_uncondjump_p(ptr noundef %6) #23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39, !prof !1241

32:                                               ; preds = %29
  %33 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %6, ptr noundef %1) #23
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39, !prof !1241

35:                                               ; preds = %32
  %36 = load i32, ptr %1, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 7
  br i1 %38, label %39, label %178, !prof !1242

39:                                               ; preds = %29, %32, %35, %13
  %40 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 12
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44, !prof !1243

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !940
  %47 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !940
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %50, label %178, !prof !1244

50:                                               ; preds = %44, %39
  %51 = load i32, ptr %6, align 8
  %52 = and i32 %51, 268435456
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %178, !prof !1245

54:                                               ; preds = %3
  br i1 %12, label %56, label %55, !prof !1246

55:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2192, ptr noundef nonnull @.str.1) #23
  br label %56

56:                                               ; preds = %55, %54, %50
  %57 = load i32, ptr %6, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 7
  br i1 %59, label %60, label %69, !prof !1247

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !940
  %63 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !940
  %65 = icmp eq ptr %62, %64
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = tail call fastcc zeroext i8 @moving_insn_creates_bookkeeping_block_p(ptr noundef nonnull %6, ptr noundef nonnull %1) #24, !range !987
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %178

69:                                               ; preds = %66, %60, %56
  store i1 false, ptr @was_target_conflict, align 1
  %70 = call i32 @has_dependence_p(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4) #23
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %83, !prof !1248

72:                                               ; preds = %69
  %73 = load ptr, ptr %0, align 8, !tbaa !1057
  %74 = getelementptr inbounds %struct.vinsn_def, ptr %73, i64 0, i32 6
  %75 = load i8, ptr %74, align 8, !tbaa !1249
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %178, label %77, !prof !1250

77:                                               ; preds = %72
  %78 = call zeroext i8 @sel_insn_has_single_succ_p(ptr noundef %1, i32 noundef 7) #23
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %178, !prof !1251

80:                                               ; preds = %77
  %81 = call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %1) #23
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %102, label %178

83:                                               ; preds = %69
  %84 = load i32, ptr %7, align 8, !tbaa !1048
  %85 = add i32 %84, -23
  %86 = icmp ult i32 %85, 2
  br i1 %86, label %87, label %178, !prof !1252

87:                                               ; preds = %83
  %88 = call fastcc zeroext i8 @can_speculate_dep_p(i32 noundef %70) #24, !range !987
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %102, label %90, !prof !1253

90:                                               ; preds = %87
  %91 = call i32 @speculate_expr(ptr noundef nonnull %0, i32 noundef %70) #23
  %92 = icmp sgt i32 %91, -1
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = icmp ne i32 %91, 0
  %95 = zext i1 %94 to i8
  %96 = icmp eq i32 %91, 2
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i1 true, ptr @was_target_conflict, align 1
  br label %98

98:                                               ; preds = %97, %93
  %99 = icmp eq ptr %2, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %98
  store i32 1, ptr %2, align 4, !tbaa !981
  br label %101

101:                                              ; preds = %100, %98
  call void @sel_clear_has_dependence() #23
  br label %102

102:                                              ; preds = %80, %90, %101, %87
  %103 = phi i8 [ 0, %87 ], [ %95, %101 ], [ 0, %90 ], [ 0, %80 ]
  %104 = load ptr, ptr %4, align 8, !tbaa !955
  %105 = load i32, ptr %104, align 4, !tbaa !981
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %178, !prof !1254

107:                                              ; preds = %102
  %108 = getelementptr inbounds i32, ptr %104, i64 1
  %109 = load i32, ptr %108, align 4, !tbaa !981
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120, !prof !1255

111:                                              ; preds = %107
  %112 = load i1, ptr @enable_schedule_as_rhs_p, align 1
  br i1 %112, label %113, label %178, !prof !1256

113:                                              ; preds = %111
  %114 = load ptr, ptr %0, align 8, !tbaa !1057
  %115 = getelementptr inbounds %struct.vinsn_def, ptr %114, i64 0, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !1048
  %117 = icmp eq i32 %116, 23
  br i1 %117, label %118, label %178, !prof !1257

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 0, ptr %119, align 8, !tbaa !1165
  store i1 true, ptr @was_target_conflict, align 1
  br label %120

120:                                              ; preds = %118, %107
  %121 = getelementptr inbounds i32, ptr %104, i64 2
  %122 = load i32, ptr %121, align 4, !tbaa !981
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %162, label %124, !prof !1258

124:                                              ; preds = %120
  %125 = load i32, ptr %7, align 8, !tbaa !1048
  %126 = add i32 %125, -23
  %127 = icmp ult i32 %126, 2
  br i1 %127, label %130, label %128, !prof !1259

128:                                              ; preds = %124
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2271, ptr noundef nonnull @.str.1) #23
  %129 = load i32, ptr %121, align 4, !tbaa !981
  br label %130

130:                                              ; preds = %124, %128
  %131 = phi i32 [ %122, %124 ], [ %129, %128 ]
  %132 = call fastcc zeroext i8 @can_speculate_dep_p(i32 noundef %131) #24, !range !987
  %133 = icmp eq i8 %132, 0
  %134 = load i32, ptr %121, align 4, !tbaa !981
  br i1 %133, label %146, label %135, !prof !1260

135:                                              ; preds = %130
  %136 = call i32 @speculate_expr(ptr noundef nonnull %0, i32 noundef %134) #23
  %137 = icmp sgt i32 %136, -1
  br i1 %137, label %138, label %178

138:                                              ; preds = %135
  store i32 0, ptr %121, align 4, !tbaa !981
  %139 = icmp ne i32 %136, 0
  %140 = zext i1 %139 to i8
  %141 = icmp eq i32 %136, 2
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i1 true, ptr @was_target_conflict, align 1
  br label %143

143:                                              ; preds = %142, %138
  %144 = icmp eq ptr %2, null
  br i1 %144, label %162, label %145

145:                                              ; preds = %143
  store i32 1, ptr %2, align 4, !tbaa !981
  br label %162

146:                                              ; preds = %130
  %147 = call fastcc zeroext i8 @can_substitute_through_p(ptr noundef %1, i32 noundef %134) #24, !range !987
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %178, label %149, !prof !1261

149:                                              ; preds = %146
  %150 = call fastcc zeroext i8 @substitute_reg_in_expr(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext 0) #24, !range !987
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %178, label %152, !prof !1209

152:                                              ; preds = %149
  %153 = icmp eq i8 %103, 0
  br i1 %153, label %155, label %154, !prof !1262

154:                                              ; preds = %152
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2297, ptr noundef nonnull @.str.1) #23
  br label %155

155:                                              ; preds = %152, %154
  %156 = icmp eq ptr %2, null
  br i1 %156, label %158, label %157, !prof !1209

157:                                              ; preds = %155
  store i32 0, ptr %2, align 4, !tbaa !981
  br label %158

158:                                              ; preds = %157, %155
  %159 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 12
  %160 = load i8, ptr %159, align 1
  %161 = or i8 %160, 2
  store i8 %161, ptr %159, align 1
  br label %162

162:                                              ; preds = %143, %145, %158, %120
  %163 = phi i8 [ %103, %120 ], [ %140, %145 ], [ %140, %143 ], [ 1, %158 ]
  %164 = load ptr, ptr %0, align 8, !tbaa !1057
  %165 = getelementptr inbounds %struct.vinsn_def, ptr %164, i64 0, i32 6
  %166 = load i8, ptr %165, align 8, !tbaa !1249
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %174, label %168, !prof !1263

168:                                              ; preds = %162
  %169 = call zeroext i8 @sel_insn_has_single_succ_p(ptr noundef %1, i32 noundef 7) #23
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %174, !prof !1264

171:                                              ; preds = %168
  %172 = call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %1) #23
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %171, %168, %162
  %175 = icmp eq i8 %163, 0
  %176 = zext i1 %110 to i32
  %177 = select i1 %175, i32 %176, i32 3, !prof !1265
  br label %178

178:                                              ; preds = %149, %146, %135, %83, %171, %111, %113, %102, %72, %77, %80, %66, %50, %44, %17, %14, %20, %26, %23, %35, %174
  %179 = phi i32 [ %177, %174 ], [ 2, %35 ], [ 2, %23 ], [ 2, %26 ], [ 2, %20 ], [ 2, %14 ], [ 2, %17 ], [ 2, %44 ], [ 2, %50 ], [ 2, %66 ], [ 0, %80 ], [ 0, %77 ], [ 0, %72 ], [ 2, %83 ], [ 2, %102 ], [ 2, %113 ], [ 2, %111 ], [ 2, %171 ], [ 2, %135 ], [ 2, %146 ], [ 2, %149 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret i32 %179
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_bitmap_cache(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1266 !PGOFuncName !1267 {
  %4 = load ptr, ptr %0, align 8, !tbaa !1057
  %5 = load ptr, ptr %4, align 8, !tbaa !1058
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !940
  switch i32 %2, label %62 [
    i32 2, label %8
    i32 0, label %26
    i32 1, label %44
  ], !prof !1268

8:                                                ; preds = %3
  %9 = load ptr, ptr @s_i_d, align 8
  %10 = load ptr, ptr @sched_luids, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !940
  %13 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %10, i32 noundef %12) #24
  %14 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %9, i32 noundef %13) #24
  %15 = getelementptr inbounds %struct._sel_insn_data, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !1213
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %7) #23
  %18 = load ptr, ptr @s_i_d, align 8
  %19 = load ptr, ptr @sched_luids, align 8
  %20 = load i32, ptr %11, align 8, !tbaa !940
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %19, i32 noundef %20) #24
  %22 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %18, i32 noundef %21) #24
  %23 = getelementptr inbounds %struct._sel_insn_data, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !1214
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %24, i32 noundef %7) #23
  br label %63

26:                                               ; preds = %3
  %27 = load ptr, ptr @s_i_d, align 8
  %28 = load ptr, ptr @sched_luids, align 8
  %29 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !940
  %31 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %28, i32 noundef %30) #24
  %32 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %27, i32 noundef %31) #24
  %33 = getelementptr inbounds %struct._sel_insn_data, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !1213
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %34, i32 noundef %7) #23
  %36 = load ptr, ptr @s_i_d, align 8
  %37 = load ptr, ptr @sched_luids, align 8
  %38 = load i32, ptr %29, align 8, !tbaa !940
  %39 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %37, i32 noundef %38) #24
  %40 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %36, i32 noundef %39) #24
  %41 = getelementptr inbounds %struct._sel_insn_data, ptr %40, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !1214
  %43 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %42, i32 noundef %7) #23
  br label %63

44:                                               ; preds = %3
  %45 = load ptr, ptr @s_i_d, align 8
  %46 = load ptr, ptr @sched_luids, align 8
  %47 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !940
  %49 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %46, i32 noundef %48) #24
  %50 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %45, i32 noundef %49) #24
  %51 = getelementptr inbounds %struct._sel_insn_data, ptr %50, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !1213
  %53 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %52, i32 noundef %7) #23
  %54 = load ptr, ptr @s_i_d, align 8
  %55 = load ptr, ptr @sched_luids, align 8
  %56 = load i32, ptr %47, align 8, !tbaa !940
  %57 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %55, i32 noundef %56) #24
  %58 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %54, i32 noundef %57) #24
  %59 = getelementptr inbounds %struct._sel_insn_data, ptr %58, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !1214
  %61 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %60, i32 noundef %7) #23
  br label %63

62:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2459, ptr noundef nonnull @.str.1) #23
  br label %63

63:                                               ; preds = %8, %44, %62, %26
  ret void
}

; Function Attrs: optsize
declare void @insert_in_history_vect(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_transformation_cache(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1269 !PGOFuncName !1270 {
  %5 = tail call ptr @xmalloc(i64 noundef 32) #23
  store ptr %3, ptr %5, align 8, !tbaa !1228
  %6 = load ptr, ptr %0, align 8, !tbaa !1057
  %7 = getelementptr inbounds %struct.transformed_insns, ptr %5, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !1229
  %8 = getelementptr inbounds %struct.transformed_insns, ptr %5, i64 0, i32 3
  store i32 %2, ptr %8, align 4, !tbaa !1226
  %9 = load i1, ptr @was_target_conflict, align 1
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.transformed_insns, ptr %5, i64 0, i32 4
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, -2
  %14 = or disjoint i8 %13, %10
  store i8 %14, ptr %11, align 8
  %15 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !1204
  %17 = getelementptr inbounds %struct.transformed_insns, ptr %5, i64 0, i32 2
  store i32 %16, ptr %17, align 8, !tbaa !1233
  %18 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 12
  %19 = load i8, ptr %18, align 1
  %20 = shl i8 %19, 1
  %21 = and i8 %20, 2
  %22 = and i8 %14, -3
  %23 = or disjoint i8 %21, %22
  store i8 %23, ptr %11, align 8
  tail call void @vinsn_attach(ptr noundef %3) #23
  %24 = load ptr, ptr %7, align 8, !tbaa !1229
  tail call void @vinsn_attach(ptr noundef %24) #23
  %25 = load ptr, ptr @s_i_d, align 8
  %26 = load ptr, ptr @sched_luids, align 8
  %27 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !940
  %29 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %26, i32 noundef %28) #24
  %30 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %25, i32 noundef %29) #24
  %31 = getelementptr inbounds %struct._sel_insn_data, ptr %30, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !1224
  %33 = getelementptr inbounds %struct.vinsn_def, ptr %3, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !1225
  %35 = tail call ptr @htab_find_slot_with_hash(ptr noundef %32, ptr noundef nonnull %5, i32 noundef %34, i32 noundef 1) #23
  store ptr %5, ptr %35, align 8, !tbaa !955
  ret void
}

; Function Attrs: optsize
declare void @vinsn_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vinsn_copy(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @sel_insn_is_speculation_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bookkeeping_can_be_created_if_moved_through_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fallthru_bb_of_jump(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @any_uncondjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @moving_insn_creates_bookkeeping_block_p(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !998 !PGOFuncName !1271 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #25
  %7 = tail call zeroext i8 @bookkeeping_can_be_created_if_moved_through_p(ptr noundef %1) #23
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %11 = icmp sgt i32 %10, 8
  br i1 %11, label %12, label %97

12:                                               ; preds = %9
  %13 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = alloca [51 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %16, ptr noundef nonnull align 1 dereferenceable(26) @.str.21, i64 26, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %16) #23
  %17 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %18 = call i32 @fputs(ptr nonnull %16, ptr %17)
  br label %97

19:                                               ; preds = %12
  %20 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %21 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 25, i64 1, ptr %20)
  br label %97

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !940
  %25 = load ptr, ptr %24, align 8, !tbaa !1272
  %26 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %25) #24
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %30 = icmp sgt i32 %29, 8
  br i1 %30, label %31, label %97

31:                                               ; preds = %28
  %32 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = alloca [41 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %35, ptr noundef nonnull align 1 dereferenceable(21) @.str.22, i64 21, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %35) #23
  %36 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %37 = call i32 @fputs(ptr nonnull %35, ptr %36)
  br label %97

38:                                               ; preds = %31
  %39 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %40 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 20, i64 1, ptr %39)
  br label %97

41:                                               ; preds = %22
  %42 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !940
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 1
  %45 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %44) #24
  store i32 0, ptr %5, align 8, !tbaa.struct !985
  %46 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %45, ptr %46, align 8, !tbaa.struct !986
  %47 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %45, ptr noundef nonnull %3) #24, !range !987
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %84, label %49

49:                                               ; preds = %41
  %50 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %24) #24
  %51 = getelementptr inbounds i8, ptr %6, i64 8
  br label %52

52:                                               ; preds = %49, %79
  store i32 0, ptr %6, align 8, !tbaa.struct !985
  store ptr %50, ptr %51, align 8, !tbaa.struct !986
  %53 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %50, ptr noundef nonnull %4) #24, !range !987
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %79, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %3, align 8, !tbaa !955
  br label %57

57:                                               ; preds = %55, %74
  %58 = load ptr, ptr %4, align 8, !tbaa !955
  %59 = tail call fastcc ptr @find_block_for_bookkeeping(ptr noundef %56, ptr noundef %58, i8 noundef zeroext 1) #24
  %60 = icmp eq ptr %59, null
  br i1 %60, label %74, label %61

61:                                               ; preds = %57
  %62 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %63 = icmp sgt i32 %62, 8
  br i1 %63, label %64, label %97

64:                                               ; preds = %61
  %65 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = alloca [45 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(23) %68, ptr noundef nonnull align 1 dereferenceable(23) @.str.23, i64 23, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %68) #23
  %69 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %70 = call i32 @fputs(ptr nonnull %68, ptr %69)
  br label %97

71:                                               ; preds = %64
  %72 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %73 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %72)
  br label %97

74:                                               ; preds = %57
  call fastcc void @ei_next(ptr noundef nonnull %6) #24
  %75 = load i32, ptr %6, align 8
  %76 = load ptr, ptr %51, align 8
  %77 = call fastcc zeroext i8 @ei_cond(i32 %75, ptr %76, ptr noundef nonnull %4) #24, !range !987
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %57, !llvm.loop !1273

79:                                               ; preds = %74, %52
  call fastcc void @ei_next(ptr noundef nonnull %5) #24
  %80 = load i32, ptr %5, align 8
  %81 = load ptr, ptr %46, align 8
  %82 = call fastcc zeroext i8 @ei_cond(i32 %80, ptr %81, ptr noundef nonnull %3) #24, !range !987
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %52, !llvm.loop !1274

84:                                               ; preds = %79, %41
  %85 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %86 = icmp sgt i32 %85, 8
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = alloca [65 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %91, ptr noundef nonnull align 1 dereferenceable(33) @.str.24, i64 33, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %91) #23
  %92 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %93 = call i32 @fputs(ptr nonnull %91, ptr %92)
  br label %97

94:                                               ; preds = %87
  %95 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %96 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 32, i64 1, ptr %95)
  br label %97

97:                                               ; preds = %84, %94, %90, %61, %71, %67, %28, %38, %34, %9, %19, %15
  %98 = phi i8 [ 0, %15 ], [ 0, %19 ], [ 0, %9 ], [ 1, %34 ], [ 1, %38 ], [ 1, %28 ], [ 0, %67 ], [ 0, %71 ], [ 0, %61 ], [ 1, %90 ], [ 1, %94 ], [ 1, %84 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret i8 %98
}

; Function Attrs: optsize
declare i32 @has_dependence_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @sel_insn_has_single_succ_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @can_speculate_dep_p(i32 noundef %0) unnamed_addr #0 !prof !1275 !PGOFuncName !1276 {
  %2 = load ptr, ptr @spec_info, align 8, !tbaa !955
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4, !prof !1277

4:                                                ; preds = %1
  %5 = and i32 %0, 16777215
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %2, align 8, !tbaa !1278
  %9 = and i32 %8, %5
  %10 = icmp eq i32 %9, %5
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = tail call i32 @ds_weak(i32 noundef %5) #23
  %13 = load ptr, ptr @spec_info, align 8, !tbaa !955
  %14 = getelementptr inbounds %struct.spec_info_def, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !1279
  %16 = icmp sge i32 %12, %15
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %7, %11, %4, %1
  %19 = phi i8 [ 0, %7 ], [ 0, %1 ], [ 0, %4 ], [ %17, %11 ]
  ret i8 %19
}

; Function Attrs: optsize
declare void @sel_clear_has_dependence() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @can_substitute_through_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !1280 !PGOFuncName !1281 {
  %3 = and i32 %1, 100663296
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %29, !prof !1282

5:                                                ; preds = %2
  %6 = load ptr, ptr @s_i_d, align 8
  %7 = load ptr, ptr @sched_luids, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !940
  %10 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %7, i32 noundef %9) #24
  %11 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %6, i32 noundef %10) #24
  %12 = load ptr, ptr %11, align 8, !tbaa !1042
  %13 = getelementptr inbounds %struct.vinsn_def, ptr %12, i64 0, i32 1, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !1167
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16, !prof !1283

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.vinsn_def, ptr %12, i64 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !1050
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20, !prof !1284

20:                                               ; preds = %16
  %21 = load i32, ptr %18, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %28, !prof !1285

24:                                               ; preds = %20
  %25 = load i32, ptr %14, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 37
  br i1 %27, label %29, label %28, !prof !1286

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %24, %2, %5, %16, %28
  %30 = phi i8 [ 0, %28 ], [ 0, %16 ], [ 0, %5 ], [ 0, %2 ], [ 1, %24 ]
  ret i8 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @substitute_reg_in_expr(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !1269 !PGOFuncName !1287 {
  %4 = load ptr, ptr %0, align 8, !tbaa !955
  %5 = getelementptr inbounds %struct.vinsn_def, ptr %4, i64 0, i32 1, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1167
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11, !prof !1209

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !1058
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1
  br label %11

11:                                               ; preds = %3, %8
  %12 = phi ptr [ %10, %8 ], [ %5, %3 ]
  %13 = icmp eq i8 %2, 0
  %14 = load ptr, ptr @s_i_d, align 8
  %15 = load ptr, ptr @sched_luids, align 8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !940
  %18 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %17) #24
  %19 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %14, i32 noundef %18) #24
  %20 = load ptr, ptr %19, align 8, !tbaa !1042
  br i1 %13, label %23, label %21, !prof !1262

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.vinsn_def, ptr %20, i64 0, i32 1, i32 2
  br label %25

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.vinsn_def, ptr %20, i64 0, i32 1, i32 1
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi ptr [ %22, %21 ], [ %24, %23 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !955
  %28 = load ptr, ptr %12, align 8, !tbaa !955
  %29 = tail call fastcc zeroext i8 @rtx_ok_for_substitution_p(ptr noundef %27, ptr noundef %28) #24, !range !987
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %74, label %31, !prof !1209

31:                                               ; preds = %25
  %32 = load ptr, ptr @s_i_d, align 8
  %33 = load ptr, ptr @sched_luids, align 8
  %34 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !940
  %36 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %33, i32 noundef %35) #24
  %37 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %32, i32 noundef %36) #24
  %38 = load ptr, ptr %37, align 8, !tbaa !1042
  br i1 %13, label %41, label %39, !prof !1262

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.vinsn_def, ptr %38, i64 0, i32 1, i32 1
  br label %43

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.vinsn_def, ptr %38, i64 0, i32 1, i32 2
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi ptr [ %40, %39 ], [ %42, %41 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !955
  %46 = tail call ptr @copy_rtx(ptr noundef %45) #23
  %47 = load ptr, ptr %0, align 8, !tbaa !955
  %48 = load ptr, ptr %47, align 8, !tbaa !1058
  %49 = tail call ptr @create_copy_of_insn_rtx(ptr noundef %48) #23
  %50 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1
  br i1 %7, label %54, label %51, !prof !1209

51:                                               ; preds = %43
  %52 = load ptr, ptr %50, align 8, !tbaa !940
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %54

54:                                               ; preds = %43, %51
  %55 = phi ptr [ %53, %51 ], [ %50, %43 ]
  %56 = tail call i32 @validate_replace_rtx_part_nosimplify(ptr noundef %27, ptr noundef %46, ptr noundef nonnull %55, ptr noundef %49) #23
  %57 = and i32 %56, 255
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %74, label %59, !prof !1209

59:                                               ; preds = %54
  %60 = tail call ptr @create_vinsn_from_insn_rtx(ptr noundef %49, i8 noundef zeroext 0) #23
  tail call void @change_vinsn_in_expr(ptr noundef nonnull %0, ptr noundef %60) #23
  %61 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  %62 = load i32, ptr %61, align 8, !tbaa !1204
  %63 = and i32 %62, 16777215
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65, !prof !1262

65:                                               ; preds = %59
  %66 = load ptr, ptr %0, align 8, !tbaa !1057
  %67 = getelementptr inbounds %struct.vinsn_def, ptr %66, i64 0, i32 1, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !1062
  %69 = tail call i32 @expr_dest_regno(ptr noundef nonnull %0) #23
  %70 = tail call i32 @bitmap_bit_p(ptr noundef %68, i32 noundef %69) #23
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 0, ptr %73, align 8, !tbaa !1165
  br label %74

74:                                               ; preds = %25, %72, %65, %59, %54
  %75 = phi i8 [ 1, %72 ], [ 1, %65 ], [ 1, %59 ], [ 0, %54 ], [ 0, %25 ]
  ret i8 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_block_for_bookkeeping(ptr noundef readonly %0, ptr noundef readnone %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !998 !PGOFuncName !1288 {
  %4 = icmp eq i8 %2, 0
  %5 = load ptr, ptr @cfun, align 8
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  br label %7

7:                                                ; preds = %49, %3
  %8 = phi ptr [ null, %3 ], [ %34, %49 ]
  %9 = phi ptr [ %0, %3 ], [ %50, %49 ]
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !989
  br i1 %4, label %17, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !1074
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1289
  %16 = icmp eq ptr %11, %15
  br i1 %16, label %51, label %17

17:                                               ; preds = %7, %12
  %18 = load ptr, ptr %11, align 8, !tbaa !1272
  %19 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %18) #24
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = icmp eq ptr %8, null
  br i1 %22, label %23, label %51

23:                                               ; preds = %21
  %24 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %18, i32 noundef 0) #24
  %25 = icmp eq ptr %24, %9
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %18, i32 noundef 1) #24
  br label %28

28:                                               ; preds = %23, %26
  %29 = phi ptr [ %27, %26 ], [ %24, %23 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !1290
  br label %33

31:                                               ; preds = %17
  %32 = icmp ugt i32 %19, 2
  br i1 %32, label %51, label %33

33:                                               ; preds = %31, %28
  %34 = phi ptr [ %30, %28 ], [ %8, %31 ]
  %35 = icmp eq ptr %9, %1
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = icmp ne ptr %34, null
  %38 = select i1 %4, i1 true, i1 %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = tail call fastcc zeroext i8 @block_valid_for_bookkeeping_p(ptr noundef %34) #24, !range !987
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %41, ptr null, ptr %34
  br label %51

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !1093
  br i1 %4, label %49, label %46

46:                                               ; preds = %43
  %47 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %45) #24
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %46
  %50 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %45, i32 noundef 0) #24
  br label %7, !llvm.loop !1291

51:                                               ; preds = %12, %46, %31, %21, %36, %39
  %52 = phi ptr [ null, %36 ], [ %42, %39 ], [ null, %21 ], [ null, %31 ], [ null, %46 ], [ null, %12 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @block_valid_for_bookkeeping_p(ptr noundef %0) unnamed_addr #0 !prof !998 !PGOFuncName !1292 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !940
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !959
  %6 = tail call zeroext i8 @in_current_region_p(ptr noundef %0) #23
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !1093
  %11 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %10) #24
  %12 = icmp ugt i32 %11, 1
  br i1 %12, label %32, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %5, align 8
  %15 = trunc i32 %14 to i16
  switch i16 %15, label %30 [
    i16 8, label %16
    i16 7, label %16
    i16 9, label %16
    i16 10, label %16
    i16 13, label %26
  ]

16:                                               ; preds = %13, %13, %13, %13
  %17 = load ptr, ptr @s_i_d, align 8
  %18 = load ptr, ptr @sched_luids, align 8
  %19 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !940
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %18, i32 noundef %20) #24
  %22 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %17, i32 noundef %21) #24
  %23 = getelementptr inbounds %struct._expr, ptr %22, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !1095
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %32, label %31

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %28 = load i32, ptr %27, align 8, !tbaa !940
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %31, label %30

30:                                               ; preds = %13, %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4482, ptr noundef nonnull @.str.1) #23
  br label %31

31:                                               ; preds = %30, %26, %16
  br label %32

32:                                               ; preds = %16, %1, %8, %31
  %33 = phi i8 [ 1, %31 ], [ 0, %8 ], [ 0, %1 ], [ 0, %16 ]
  ret i8 %33
}

; Function Attrs: optsize
declare i32 @ds_weak(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @rtx_ok_for_substitution_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1269 !PGOFuncName !1293 {
  %3 = tail call fastcc i32 @count_occurrences_equiv(ptr noundef %0, ptr noundef %1) #24
  %4 = icmp sgt i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @create_copy_of_insn_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @validate_replace_rtx_part_nosimplify(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @expr_dest_regno(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @count_occurrences_equiv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1269 !PGOFuncName !1294 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.rtx_search_arg, align 8
  store ptr %1, ptr %3, align 8, !tbaa !955
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #25
  store ptr %0, ptr %4, align 8, !tbaa !1295
  %5 = getelementptr inbounds %struct.rtx_search_arg, ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !1297
  %6 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @count_occurrences_1, ptr noundef nonnull %4) #23
  %7 = load i32, ptr %5, align 8, !tbaa !1297
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #25
  ret i32 %7
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @count_occurrences_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 !prof !1298 !PGOFuncName !1299 {
  %3 = load ptr, ptr %0, align 8, !tbaa !955
  %4 = load ptr, ptr %1, align 8, !tbaa !1295
  %5 = tail call i32 @exp_equiv_p(ptr noundef %3, ptr noundef %4, i32 noundef 0, i8 noundef zeroext 1) #23
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr %0, align 8, !tbaa !955
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  br i1 %6, label %29, label %10, !prof !1300

10:                                               ; preds = %2
  %11 = icmp eq i32 %9, 37
  br i1 %11, label %12, label %25, !prof !1262

12:                                               ; preds = %10
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #24
  %14 = icmp ult i32 %13, 53
  br i1 %14, label %15, label %25, !prof !1262

15:                                               ; preds = %12
  %16 = zext nneg i32 %13 to i64
  %17 = lshr i32 %8, 16
  %18 = and i32 %17, 255
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %16, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !940
  %22 = icmp ugt i8 %21, 1
  br i1 %22, label %23, label %25, !prof !1209

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.rtx_search_arg, ptr %1, i64 0, i32 1
  store i32 0, ptr %24, align 8, !tbaa !1297
  br label %44

25:                                               ; preds = %15, %12, %10
  %26 = getelementptr inbounds %struct.rtx_search_arg, ptr %1, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !1297
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !1297
  br label %44

29:                                               ; preds = %2
  %30 = icmp eq i32 %9, 39
  br i1 %30, label %31, label %44, !prof !1301

31:                                               ; preds = %29
  %32 = load ptr, ptr %1, align 8, !tbaa !1295
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 37
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !940
  %39 = tail call fastcc i32 @rhs_regno(ptr noundef %38) #24
  %40 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %32) #24
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rtx_search_arg, ptr %1, i64 0, i32 1
  store i32 0, ptr %43, align 8, !tbaa !1297
  br label %44

44:                                               ; preds = %29, %31, %36, %42, %25, %23
  %45 = phi i32 [ 1, %23 ], [ -1, %25 ], [ 1, %42 ], [ 0, %36 ], [ 0, %31 ], [ 0, %29 ]
  ret i32 %45
}

; Function Attrs: optsize
declare i32 @exp_equiv_p(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @sel_num_cfg_preds_gt_1(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @generate_bookkeeping_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !998 !PGOFuncName !1302 {
  %4 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %5 = icmp sgt i32 %4, 3
  br i1 %5, label %6, label %41

6:                                                ; preds = %3
  %7 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %1, align 8, !tbaa !1290
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !945
  %13 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !989
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !945
  %17 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.25, i32 noundef %12, i32 noundef %16) #24
  %18 = shl nsw i32 %17, 1
  %19 = or disjoint i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  %22 = load ptr, ptr %1, align 8, !tbaa !1290
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !945
  %25 = load ptr, ptr %13, align 8, !tbaa !989
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !945
  %28 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %21, i64 noundef %20, ptr noundef nonnull @.str.25, i32 noundef %24, i32 noundef %27) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %21) #23
  %29 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %30 = call i32 @fputs(ptr nonnull %21, ptr %29)
  br label %41

31:                                               ; preds = %6
  %32 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %33 = load ptr, ptr %1, align 8, !tbaa !1290
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !945
  %36 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !989
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !945
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.25, i32 noundef %35, i32 noundef %39) #24
  br label %41

41:                                               ; preds = %9, %31, %3
  %42 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !989
  %44 = call ptr @sel_bb_head(ptr noundef %43) #23
  %45 = call fastcc ptr @find_place_for_bookkeeping(ptr noundef %1, ptr noundef %2) #24
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47

47:                                               ; preds = %41
  %48 = call fastcc i32 @find_seqno_for_bookkeeping(ptr noundef nonnull %45, ptr noundef %44) #24
  %49 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !940
  %51 = call zeroext i8 @sel_bb_empty_p(ptr noundef %50) #23
  %52 = call fastcc ptr @emit_bookkeeping_insn(ptr noundef nonnull %45, ptr noundef %0, i32 noundef %48) #24
  %53 = icmp eq i8 %51, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !940
  %57 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !940
  call void @exchange_data_sets(ptr noundef %56, ptr noundef %58) #23
  br label %59

59:                                               ; preds = %54, %47
  %60 = load i32, ptr @stat_bookkeeping_copies, align 4, !tbaa !981
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr @stat_bookkeeping_copies, align 4, !tbaa !981
  %62 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !940
  br label %64

64:                                               ; preds = %41, %59
  %65 = phi ptr [ %63, %59 ], [ null, %41 ]
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_data_sets(ptr noundef %0) unnamed_addr #0 !prof !1015 !PGOFuncName !1303 {
  tail call fastcc void @update_liveness_on_insn(ptr noundef %0) #24
  %2 = tail call zeroext i8 @sel_bb_head_p(ptr noundef %0) #23
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %17, label %4, !prof !1029

4:                                                ; preds = %1
  %5 = tail call i32 @get_av_level(ptr noundef %0) #23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !1029

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3163, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %4, %7
  %9 = load ptr, ptr @sel_region_bb_info, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !940
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !945
  %14 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %9, i32 noundef %13) #24
  %15 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %14, i64 0, i32 2
  store i32 -1, ptr %15, align 8, !tbaa !1304
  %16 = tail call fastcc ptr @compute_av_set(ptr noundef %0, i8 noundef zeroext 0) #24
  br label %17

17:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_and_record_unavailable_insns(ptr noundef %0) unnamed_addr #0 !prof !998 !PGOFuncName !1306 {
  %2 = alloca %struct._list_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = tail call ptr @sel_bb_end(ptr noundef %0) #23
  tail call fastcc void @update_liveness_on_insn(ptr noundef %5) #24
  %6 = tail call zeroext i8 @control_flow_insn_p(ptr noundef %5) #23
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !940
  tail call fastcc void @update_liveness_on_insn(ptr noundef %10) #24
  br label %11

11:                                               ; preds = %8, %1
  %12 = tail call ptr @sel_bb_head(ptr noundef %0) #23
  %13 = tail call i32 @get_av_level(ptr noundef %12) #23
  %14 = load i32, ptr @global_level, align 4, !tbaa !981
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %11
  %17 = load ptr, ptr @sel_region_bb_info, align 8
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !945
  %20 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %17, i32 noundef %19) #24
  %21 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !1307
  %23 = tail call ptr @av_set_copy(ptr noundef %22) #23
  store ptr %23, ptr %3, align 8, !tbaa !955
  %24 = tail call ptr @sel_bb_head(ptr noundef %0) #23
  tail call fastcc void @update_data_sets(ptr noundef %24) #24
  call fastcc void @_list_iter_start(ptr noundef nonnull %2, ptr noundef nonnull %3, i8 noundef zeroext 0) #24
  %25 = load ptr, ptr %2, align 8, !tbaa !1054
  %26 = load ptr, ptr %25, align 8, !tbaa !955
  %27 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %26, ptr noundef nonnull %4) #24, !range !987
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %16, %46
  %30 = load ptr, ptr @sel_region_bb_info, align 8
  %31 = load i32, ptr %18, align 8, !tbaa !945
  %32 = call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %30, i32 noundef %31) #24
  %33 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !1307
  %35 = load ptr, ptr %4, align 8, !tbaa !955
  %36 = load ptr, ptr %35, align 8, !tbaa !1057
  %37 = call ptr @av_set_lookup(ptr noundef %34, ptr noundef %36) #23
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct._expr, ptr %37, i64 0, i32 11
  %41 = load i8, ptr %40, align 8, !tbaa !1165
  %42 = getelementptr inbounds %struct._expr, ptr %35, i64 0, i32 11
  %43 = load i8, ptr %42, align 8, !tbaa !1165
  %44 = icmp eq i8 %41, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %39, %29
  call fastcc void @vinsn_vec_add(ptr noundef nonnull @vec_bookkeeping_blocked_vinsns, ptr noundef nonnull %35) #24
  br label %46

46:                                               ; preds = %45, %39
  call fastcc void @_list_iter_next(ptr noundef nonnull %2) #24
  %47 = load ptr, ptr %2, align 8, !tbaa !1054
  %48 = load ptr, ptr %47, align 8, !tbaa !955
  %49 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %48, ptr noundef nonnull %4) #24, !range !987
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %29, !llvm.loop !1308

51:                                               ; preds = %46, %16
  call void @av_set_clear(ptr noundef nonnull %3) #23
  br label %52

52:                                               ; preds = %51, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #25
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @tidy_control_flow(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_place_for_bookkeeping(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !998 !PGOFuncName !1309 {
  %3 = tail call fastcc ptr @find_block_for_bookkeeping(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !940
  %8 = getelementptr inbounds %struct.rtl_bb_info, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !959
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 7
  br i1 %12, label %13, label %72

13:                                               ; preds = %5
  %14 = tail call ptr @sel_bb_head(ptr noundef nonnull %3) #23
  %15 = icmp eq ptr %14, %9
  br i1 %15, label %24, label %16

16:                                               ; preds = %13, %20
  %17 = phi ptr [ %22, %20 ], [ %14, %13 ]
  %18 = load i32, ptr %17, align 8
  %19 = trunc i32 %18 to i16
  switch i16 %19, label %72 [
    i16 7, label %20
    i16 13, label %20
  ]

20:                                               ; preds = %16, %16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !940
  %23 = icmp eq ptr %22, %9
  br i1 %23, label %24, label %16, !llvm.loop !1310

24:                                               ; preds = %20, %13, %2
  %25 = tail call fastcc ptr @create_block_for_bookkeeping(ptr noundef %0, ptr noundef %1) #24
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !940
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !959
  %30 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %31 = icmp sgt i32 %30, 8
  br i1 %31, label %32, label %95

32:                                               ; preds = %24
  %33 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !1093
  %38 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %37, i32 noundef 0) #24
  %39 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !989
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !945
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !945
  %45 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.26, i32 noundef %42, i32 noundef %44) #24
  %46 = shl nsw i32 %45, 1
  %47 = or disjoint i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = alloca i8, i64 %48, align 16
  %50 = load ptr, ptr %36, align 8, !tbaa !1093
  %51 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %50, i32 noundef 0) #24
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !989
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 9
  %55 = load i32, ptr %54, align 8, !tbaa !945
  %56 = load i32, ptr %43, align 8, !tbaa !945
  %57 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %49, i64 noundef %48, ptr noundef nonnull @.str.26, i32 noundef %55, i32 noundef %56) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %49) #23
  %58 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %59 = call i32 @fputs(ptr nonnull %49, ptr %58)
  br label %95

60:                                               ; preds = %32
  %61 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !1093
  %64 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %63, i32 noundef 0) #24
  %65 = getelementptr inbounds %struct.edge_def, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !989
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 9
  %68 = load i32, ptr %67, align 8, !tbaa !945
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !945
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.26, i32 noundef %68, i32 noundef %70) #24
  br label %95

72:                                               ; preds = %16, %5
  %73 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %74 = icmp sgt i32 %73, 8
  br i1 %74, label %75, label %95

75:                                               ; preds = %72
  %76 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !945
  %81 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.27, i32 noundef %80) #24
  %82 = shl nsw i32 %81, 1
  %83 = or disjoint i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = alloca i8, i64 %84, align 16
  %86 = load i32, ptr %79, align 8, !tbaa !945
  %87 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %85, i64 noundef %84, ptr noundef nonnull @.str.27, i32 noundef %86) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %85) #23
  %88 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %89 = call i32 @fputs(ptr nonnull %85, ptr %88)
  br label %95

90:                                               ; preds = %75
  %91 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %93 = load i32, ptr %92, align 8, !tbaa !945
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.27, i32 noundef %93) #24
  br label %95

95:                                               ; preds = %72, %90, %78, %24, %60, %35
  %96 = phi ptr [ %9, %78 ], [ %9, %90 ], [ %9, %72 ], [ %29, %35 ], [ %29, %60 ], [ %29, %24 ]
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, 65535
  %99 = add nsw i32 %98, -7
  %100 = icmp ult i32 %99, 4
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %96) #23
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 0, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !940
  br label %107

107:                                              ; preds = %95, %104, %101
  %108 = phi ptr [ %106, %104 ], [ %96, %101 ], [ %96, %95 ]
  ret ptr %108
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_seqno_for_bookkeeping(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !998 !PGOFuncName !1311 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !940
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %8, label %36

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !940
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !940
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %8
  %16 = load ptr, ptr @s_i_d, align 8
  %17 = load ptr, ptr @sched_luids, align 8
  %18 = load i32, ptr %9, align 8, !tbaa !940
  %19 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %17, i32 noundef %18) #24
  %20 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %16, i32 noundef %19) #24
  %21 = getelementptr inbounds %struct._expr, ptr %20, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !1095
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4740, ptr noundef nonnull @.str.1) #23
  %25 = load ptr, ptr @s_i_d, align 8
  %26 = load ptr, ptr @sched_luids, align 8
  %27 = load i32, ptr %9, align 8, !tbaa !940
  br label %28

28:                                               ; preds = %15, %24
  %29 = phi i32 [ %18, %15 ], [ %27, %24 ]
  %30 = phi ptr [ %17, %15 ], [ %26, %24 ]
  %31 = phi ptr [ %16, %15 ], [ %25, %24 ]
  %32 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %30, i32 noundef %29) #24
  %33 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %31, i32 noundef %32) #24
  %34 = getelementptr inbounds %struct._sel_insn_data, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !1154
  br label %52

36:                                               ; preds = %2, %8
  %37 = load ptr, ptr @s_i_d, align 8
  %38 = load ptr, ptr @sched_luids, align 8
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !940
  %41 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %38, i32 noundef %40) #24
  %42 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %37, i32 noundef %41) #24
  %43 = getelementptr inbounds %struct._sel_insn_data, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !1154
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %36
  %47 = tail call i32 @get_seqno_by_preds(ptr noundef nonnull %0) #23
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8, ptr @pipelining_p, align 1, !tbaa !940
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %55, label %58

52:                                               ; preds = %46, %28
  %53 = phi i32 [ %35, %28 ], [ %47, %46 ]
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52, %49
  %56 = phi i32 [ 4756, %49 ], [ 4761, %52 ]
  %57 = phi i32 [ 1, %49 ], [ %53, %52 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %56, ptr noundef nonnull @.str.1) #23
  br label %58

58:                                               ; preds = %55, %36, %49, %52
  %59 = phi i32 [ %53, %52 ], [ %44, %36 ], [ 1, %49 ], [ %57, %55 ]
  ret i32 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_bookkeeping_insn(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !998 !PGOFuncName !1312 {
  %4 = load ptr, ptr %1, align 8, !tbaa !1057
  %5 = load ptr, ptr %4, align 8, !tbaa !1058
  %6 = tail call ptr @create_copy_of_insn_rtx(ptr noundef %5) #23
  %7 = load ptr, ptr %1, align 8, !tbaa !1057
  %8 = getelementptr inbounds %struct.vinsn_def, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !1048
  %10 = add i32 %9, -25
  %11 = icmp ult i32 %10, -2
  %12 = zext i1 %11 to i8
  %13 = tail call ptr @create_vinsn_from_insn_rtx(ptr noundef %6, i8 noundef zeroext %12) #23
  %14 = tail call fastcc ptr @emit_insn_from_expr_after(ptr noundef nonnull %1, ptr noundef %13, i32 noundef %2, ptr noundef %0) #24
  %15 = load ptr, ptr @s_i_d, align 8
  %16 = load ptr, ptr @sched_luids, align 8
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !940
  %19 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %16, i32 noundef %18) #24
  %20 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %15, i32 noundef %19) #24
  %21 = getelementptr inbounds %struct._expr, ptr %20, i64 0, i32 5
  store i32 0, ptr %21, align 8, !tbaa !1095
  %22 = load ptr, ptr @current_copies, align 8, !tbaa !955
  %23 = load i32, ptr %17, align 8, !tbaa !940
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %22, i32 noundef %23) #23
  ret ptr %14
}

; Function Attrs: optsize
declare void @exchange_data_sets(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_block_for_bookkeeping(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !998 !PGOFuncName !1313 {
  %3 = alloca %struct.sel_global_bb_info_def, align 8
  %4 = alloca %struct.sel_region_bb_info_def, align 8
  %5 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !989
  %7 = load ptr, ptr @current_loop_nest, align 8, !tbaa !955
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !1314
  %12 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !1318
  %14 = icmp eq ptr %6, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4548, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %9, %15
  %17 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !989
  %19 = icmp eq ptr %18, %11
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %11) #24, !range !987
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = tail call fastcc ptr @single_pred_edge(ptr noundef %11) #24
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4553, ptr noundef nonnull @.str.1) #23
  br label %27

27:                                               ; preds = %26, %23, %20, %16, %2
  %28 = load ptr, ptr @sched_split_block, align 8, !tbaa !955
  %29 = tail call ptr %28(ptr noundef %6, ptr noundef null) #23
  %30 = load ptr, ptr @sel_region_bb_info, align 8
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !945
  %33 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %30, i32 noundef %32) #24
  %34 = load ptr, ptr %33, align 8, !tbaa !1319
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4560, ptr noundef nonnull @.str.1) #23
  %37 = load ptr, ptr @sel_region_bb_info, align 8
  %38 = load i32, ptr %31, align 8, !tbaa !945
  %39 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %37, i32 noundef %38) #24
  br label %40

40:                                               ; preds = %27, %36
  %41 = phi ptr [ %33, %27 ], [ %39, %36 ]
  %42 = phi ptr [ %30, %27 ], [ %37, %36 ]
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !945
  %45 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %42, i32 noundef %44) #24
  %46 = load ptr, ptr %45, align 8, !tbaa !1319
  store ptr %46, ptr %41, align 8, !tbaa !1319
  %47 = load ptr, ptr @sel_region_bb_info, align 8
  %48 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %47, i32 noundef %44) #24
  store ptr null, ptr %48, align 8, !tbaa !1319
  %49 = load ptr, ptr %5, align 8, !tbaa !989
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4564, ptr noundef nonnull @.str.1) #23
  br label %52

52:                                               ; preds = %40, %51
  %53 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %54 = load i32, ptr %53, align 8, !tbaa !1094
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  tail call void @sel_redirect_edge_and_branch_force(ptr noundef nonnull %0, ptr noundef nonnull %29) #23
  br label %60

58:                                               ; preds = %52
  %59 = tail call zeroext i8 @sel_redirect_edge_and_branch(ptr noundef nonnull %0, ptr noundef nonnull %29) #23
  br label %60

60:                                               ; preds = %58, %57
  %61 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !989
  %63 = icmp eq ptr %62, %29
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4572, ptr noundef nonnull @.str.1) #23
  br label %65

65:                                               ; preds = %60, %64
  %66 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef nonnull %6) #23
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4573, ptr noundef nonnull @.str.1) #23
  br label %69

69:                                               ; preds = %65, %68
  %70 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !981
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %354, label %72

72:                                               ; preds = %69
  %73 = tail call ptr @sel_bb_head(ptr noundef nonnull %29) #23
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 7
  br i1 %76, label %77, label %354

77:                                               ; preds = %72
  %78 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %29) #24, !range !987
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %354, label %80

80:                                               ; preds = %77
  %81 = tail call fastcc ptr @single_succ(ptr noundef nonnull %29) #24
  %82 = icmp eq ptr %81, null
  br i1 %82, label %354, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr @cfun, align 8, !tbaa !955
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !1074
  %87 = getelementptr inbounds %struct.control_flow_graph, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !1289
  %89 = icmp eq ptr %81, %88
  br i1 %89, label %354, label %90

90:                                               ; preds = %83
  %91 = tail call ptr @sel_bb_end(ptr noundef nonnull %29) #23
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 7
  br i1 %94, label %95, label %354

95:                                               ; preds = %90
  %96 = icmp eq ptr %73, %91
  br i1 %96, label %105, label %97

97:                                               ; preds = %95, %101
  %98 = phi ptr [ %103, %101 ], [ %73, %95 ]
  %99 = load i32, ptr %98, align 8
  %100 = trunc i32 %99 to i16
  switch i16 %100, label %354 [
    i16 7, label %101
    i16 13, label %101
  ]

101:                                              ; preds = %97, %97
  %102 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1, i32 0, i32 0, i64 2
  %103 = load ptr, ptr %102, align 8, !tbaa !940
  %104 = icmp eq ptr %103, %91
  br i1 %104, label %105, label %97, !llvm.loop !1320

105:                                              ; preds = %101, %95
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4)
  %106 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %131

108:                                              ; preds = %105
  %109 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %125, label %111

111:                                              ; preds = %108
  %112 = load i32, ptr %31, align 8, !tbaa !945
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 9
  %114 = load i32, ptr %113, align 8, !tbaa !945
  %115 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.28, i32 noundef %112, i32 noundef %114) #24
  %116 = shl nsw i32 %115, 1
  %117 = or disjoint i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = alloca i8, i64 %118, align 16
  %120 = load i32, ptr %31, align 8, !tbaa !945
  %121 = load i32, ptr %113, align 8, !tbaa !945
  %122 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %119, i64 noundef %118, ptr noundef nonnull @.str.28, i32 noundef %120, i32 noundef %121) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %119) #23
  %123 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %124 = call i32 @fputs(ptr nonnull %119, ptr %123)
  br label %131

125:                                              ; preds = %108
  %126 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %127 = load i32, ptr %31, align 8, !tbaa !945
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 9
  %129 = load i32, ptr %128, align 8, !tbaa !945
  %130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str.28, i32 noundef %127, i32 noundef %129) #24
  br label %131

131:                                              ; preds = %111, %125, %105
  %132 = load i32, ptr %31, align 8, !tbaa !945
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 9
  %134 = load i32, ptr %133, align 8, !tbaa !945
  store i32 %134, ptr %31, align 8, !tbaa !945
  store i32 %132, ptr %133, align 8, !tbaa !945
  %135 = load ptr, ptr @cfun, align 8, !tbaa !955
  %136 = getelementptr inbounds %struct.function, ptr %135, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !1074
  %138 = getelementptr inbounds %struct.control_flow_graph, ptr %137, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !1076
  %140 = load i32, ptr %31, align 8, !tbaa !945
  call fastcc void @VEC_basic_block_base_replace(ptr noundef %139, i32 noundef %140, ptr noundef %29) #24
  %141 = load ptr, ptr @cfun, align 8, !tbaa !955
  %142 = getelementptr inbounds %struct.function, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !1074
  %144 = getelementptr inbounds %struct.control_flow_graph, ptr %143, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !1076
  %146 = load i32, ptr %133, align 8, !tbaa !945
  call fastcc void @VEC_basic_block_base_replace(ptr noundef %145, i32 noundef %146, ptr noundef nonnull %81) #24
  %147 = load ptr, ptr @sel_global_bb_info, align 8
  %148 = load i32, ptr %31, align 8, !tbaa !945
  %149 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %147, i32 noundef %148) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %149, i64 16, i1 false)
  %150 = load i32, ptr %133, align 8, !tbaa !945
  %151 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %147, i32 noundef %150) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %149, ptr noundef nonnull align 8 dereferenceable(16) %151, i64 16, i1 false)
  %152 = load ptr, ptr @sel_global_bb_info, align 8
  %153 = load i32, ptr %133, align 8, !tbaa !945
  %154 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %152, i32 noundef %153) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %154, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %155 = load ptr, ptr @sel_region_bb_info, align 8
  %156 = load i32, ptr %31, align 8, !tbaa !945
  %157 = call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %155, i32 noundef %156) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %157, i64 24, i1 false)
  %158 = load i32, ptr %133, align 8, !tbaa !945
  %159 = call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %155, i32 noundef %158) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %157, ptr noundef nonnull align 8 dereferenceable(24) %159, i64 24, i1 false)
  %160 = load ptr, ptr @sel_region_bb_info, align 8
  %161 = load i32, ptr %133, align 8, !tbaa !945
  %162 = call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %160, i32 noundef %161) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %162, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %163 = load ptr, ptr @block_to_bb, align 8, !tbaa !955
  %164 = load i32, ptr %31, align 8, !tbaa !945
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, ptr %163, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !981
  %168 = load i32, ptr %133, align 8, !tbaa !945
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, ptr %163, i64 %169
  %171 = load i32, ptr %170, align 4, !tbaa !981
  store i32 %171, ptr %166, align 4, !tbaa !981
  %172 = load i32, ptr %133, align 8, !tbaa !945
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, ptr %163, i64 %173
  store i32 %167, ptr %174, align 4, !tbaa !981
  %175 = load ptr, ptr @containing_rgn, align 8, !tbaa !955
  %176 = load i32, ptr %31, align 8, !tbaa !945
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, ptr %175, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !981
  %180 = load i32, ptr %133, align 8, !tbaa !945
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, ptr %175, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !981
  store i32 %183, ptr %178, align 4, !tbaa !981
  %184 = load i32, ptr %133, align 8, !tbaa !945
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, ptr %175, i64 %185
  store i32 %179, ptr %186, align 4, !tbaa !981
  %187 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %211

189:                                              ; preds = %131
  %190 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !955
  %191 = load ptr, ptr @ebb_head, align 8, !tbaa !955
  br label %192

192:                                              ; preds = %189, %206
  %193 = phi i64 [ 0, %189 ], [ %207, %206 ]
  %194 = getelementptr inbounds i32, ptr %191, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !981
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, ptr %190, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !981
  %199 = load i32, ptr %133, align 8, !tbaa !945
  %200 = icmp eq i32 %198, %199
  %201 = load i32, ptr %31, align 8, !tbaa !945
  br i1 %200, label %204, label %202

202:                                              ; preds = %192
  %203 = icmp eq i32 %198, %201
  br i1 %203, label %204, label %206

204:                                              ; preds = %202, %192
  %205 = phi i32 [ %201, %192 ], [ %199, %202 ]
  store i32 %205, ptr %197, align 4, !tbaa !981
  br label %206

206:                                              ; preds = %204, %202
  %207 = add nuw nsw i64 %193, 1
  %208 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  %209 = sext i32 %208 to i64
  %210 = icmp slt i64 %207, %209
  br i1 %210, label %192, label %211, !llvm.loop !1321

211:                                              ; preds = %206, %131
  %212 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 7
  %213 = load ptr, ptr %212, align 8, !tbaa !940
  %214 = load ptr, ptr %213, align 8, !tbaa !940
  %215 = icmp eq ptr %214, null
  br i1 %215, label %243, label %216

216:                                              ; preds = %211
  %217 = load ptr, ptr @s_i_d, align 8
  %218 = load ptr, ptr @sched_luids, align 8
  br label %219

219:                                              ; preds = %216, %239
  %220 = phi ptr [ %214, %216 ], [ %241, %239 ]
  %221 = load ptr, ptr %212, align 8, !tbaa !940
  %222 = getelementptr inbounds %struct.rtl_bb_info, ptr %221, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !959
  %224 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1, i32 0, i32 0, i64 2
  %225 = load ptr, ptr %224, align 8, !tbaa !940
  %226 = icmp eq ptr %220, %225
  br i1 %226, label %243, label %227

227:                                              ; preds = %219
  %228 = load i32, ptr %220, align 8
  %229 = and i32 %228, 65535
  %230 = add nsw i32 %229, -7
  %231 = icmp ult i32 %230, 4
  br i1 %231, label %232, label %239

232:                                              ; preds = %227
  %233 = load i32, ptr %31, align 8, !tbaa !945
  %234 = getelementptr inbounds %struct.rtx_def, ptr %220, i64 0, i32 1
  %235 = load i32, ptr %234, align 8, !tbaa !940
  %236 = call fastcc i32 @VEC_int_base_index(ptr noundef %218, i32 noundef %235) #24
  %237 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %217, i32 noundef %236) #24
  %238 = getelementptr inbounds %struct._expr, ptr %237, i64 0, i32 6
  store i32 %233, ptr %238, align 4, !tbaa !1322
  br label %239

239:                                              ; preds = %227, %232
  %240 = getelementptr inbounds %struct.rtx_def, ptr %220, i64 0, i32 1, i32 0, i32 0, i64 2
  %241 = load ptr, ptr %240, align 8, !tbaa !940
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %219, !llvm.loop !1323

243:                                              ; preds = %219, %239, %211
  %244 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 7
  %245 = load ptr, ptr %244, align 8, !tbaa !940
  %246 = load ptr, ptr %245, align 8, !tbaa !940
  %247 = icmp eq ptr %246, null
  br i1 %247, label %275, label %248

248:                                              ; preds = %243
  %249 = load ptr, ptr @s_i_d, align 8
  %250 = load ptr, ptr @sched_luids, align 8
  br label %251

251:                                              ; preds = %248, %271
  %252 = phi ptr [ %246, %248 ], [ %273, %271 ]
  %253 = load ptr, ptr %244, align 8, !tbaa !940
  %254 = getelementptr inbounds %struct.rtl_bb_info, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !959
  %256 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1, i32 0, i32 0, i64 2
  %257 = load ptr, ptr %256, align 8, !tbaa !940
  %258 = icmp eq ptr %252, %257
  br i1 %258, label %275, label %259

259:                                              ; preds = %251
  %260 = load i32, ptr %252, align 8
  %261 = and i32 %260, 65535
  %262 = add nsw i32 %261, -7
  %263 = icmp ult i32 %262, 4
  br i1 %263, label %264, label %271

264:                                              ; preds = %259
  %265 = load i32, ptr %133, align 8, !tbaa !945
  %266 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1
  %267 = load i32, ptr %266, align 8, !tbaa !940
  %268 = call fastcc i32 @VEC_int_base_index(ptr noundef %250, i32 noundef %267) #24
  %269 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %249, i32 noundef %268) #24
  %270 = getelementptr inbounds %struct._expr, ptr %269, i64 0, i32 6
  store i32 %265, ptr %270, align 4, !tbaa !1322
  br label %271

271:                                              ; preds = %259, %264
  %272 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1, i32 0, i32 0, i64 2
  %273 = load ptr, ptr %272, align 8, !tbaa !940
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %251, !llvm.loop !1324

275:                                              ; preds = %251, %271, %243
  %276 = load ptr, ptr @code_motion_visited_blocks, align 8, !tbaa !955
  %277 = load i32, ptr %31, align 8, !tbaa !945
  %278 = call i32 @bitmap_bit_p(ptr noundef %276, i32 noundef %277) #23
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %287, label %280

280:                                              ; preds = %275
  %281 = load ptr, ptr @code_motion_visited_blocks, align 8, !tbaa !955
  %282 = load i32, ptr %133, align 8, !tbaa !945
  %283 = call zeroext i8 @bitmap_set_bit(ptr noundef %281, i32 noundef %282) #23
  %284 = load ptr, ptr @code_motion_visited_blocks, align 8, !tbaa !955
  %285 = load i32, ptr %31, align 8, !tbaa !945
  %286 = call zeroext i8 @bitmap_clear_bit(ptr noundef %284, i32 noundef %285) #23
  br label %287

287:                                              ; preds = %280, %275
  %288 = load ptr, ptr %212, align 8, !tbaa !940
  %289 = load ptr, ptr %288, align 8, !tbaa !1175
  %290 = load i32, ptr %289, align 8
  %291 = and i32 %290, 65535
  %292 = icmp eq i32 %291, 12
  br i1 %292, label %293, label %299

293:                                              ; preds = %287
  %294 = load ptr, ptr %244, align 8, !tbaa !940
  %295 = load ptr, ptr %294, align 8, !tbaa !1175
  %296 = load i32, ptr %295, align 8
  %297 = and i32 %296, 65535
  %298 = icmp eq i32 %297, 12
  br i1 %298, label %300, label %299

299:                                              ; preds = %293, %287
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4655, ptr noundef nonnull @.str.1) #23
  br label %300

300:                                              ; preds = %293, %299
  %301 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %302 = icmp sgt i32 %301, 3
  br i1 %302, label %303, label %342

303:                                              ; preds = %300
  %304 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %331, label %306

306:                                              ; preds = %303
  %307 = load ptr, ptr %212, align 8, !tbaa !940
  %308 = load ptr, ptr %307, align 8, !tbaa !1175
  %309 = getelementptr inbounds %struct.rtx_def, ptr %308, i64 1, i32 1
  %310 = load i32, ptr %309, align 8, !tbaa !940
  %311 = load ptr, ptr %244, align 8, !tbaa !940
  %312 = load ptr, ptr %311, align 8, !tbaa !1175
  %313 = getelementptr inbounds %struct.rtx_def, ptr %312, i64 1, i32 1
  %314 = load i32, ptr %313, align 8, !tbaa !940
  %315 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.29, i32 noundef %310, i32 noundef %314) #24
  %316 = shl nsw i32 %315, 1
  %317 = or disjoint i32 %316, 1
  %318 = sext i32 %317 to i64
  %319 = alloca i8, i64 %318, align 16
  %320 = load ptr, ptr %212, align 8, !tbaa !940
  %321 = load ptr, ptr %320, align 8, !tbaa !1175
  %322 = getelementptr inbounds %struct.rtx_def, ptr %321, i64 1, i32 1
  %323 = load i32, ptr %322, align 8, !tbaa !940
  %324 = load ptr, ptr %244, align 8, !tbaa !940
  %325 = load ptr, ptr %324, align 8, !tbaa !1175
  %326 = getelementptr inbounds %struct.rtx_def, ptr %325, i64 1, i32 1
  %327 = load i32, ptr %326, align 8, !tbaa !940
  %328 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %319, i64 noundef %318, ptr noundef nonnull @.str.29, i32 noundef %323, i32 noundef %327) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %319) #23
  %329 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %330 = call i32 @fputs(ptr nonnull %319, ptr %329)
  br label %342

331:                                              ; preds = %303
  %332 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %333 = load ptr, ptr %212, align 8, !tbaa !940
  %334 = load ptr, ptr %333, align 8, !tbaa !1175
  %335 = getelementptr inbounds %struct.rtx_def, ptr %334, i64 1, i32 1
  %336 = load i32, ptr %335, align 8, !tbaa !940
  %337 = load ptr, ptr %244, align 8, !tbaa !940
  %338 = load ptr, ptr %337, align 8, !tbaa !1175
  %339 = getelementptr inbounds %struct.rtx_def, ptr %338, i64 1, i32 1
  %340 = load i32, ptr %339, align 8, !tbaa !940
  %341 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %332, ptr noundef nonnull @.str.29, i32 noundef %336, i32 noundef %340) #24
  br label %342

342:                                              ; preds = %306, %331, %300
  %343 = load ptr, ptr %212, align 8, !tbaa !940
  %344 = load ptr, ptr %343, align 8, !tbaa !1175
  %345 = getelementptr inbounds %struct.rtx_def, ptr %344, i64 1, i32 1
  %346 = load i32, ptr %345, align 8, !tbaa !940
  %347 = load ptr, ptr %244, align 8, !tbaa !940
  %348 = load ptr, ptr %347, align 8, !tbaa !1175
  %349 = getelementptr inbounds %struct.rtx_def, ptr %348, i64 1, i32 1
  %350 = load i32, ptr %349, align 8, !tbaa !940
  store i32 %350, ptr %345, align 8, !tbaa !940
  %351 = load ptr, ptr %244, align 8, !tbaa !940
  %352 = load ptr, ptr %351, align 8, !tbaa !1175
  %353 = getelementptr inbounds %struct.rtx_def, ptr %352, i64 1, i32 1
  store i32 %346, ptr %353, align 8, !tbaa !940
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  br label %354

354:                                              ; preds = %97, %72, %77, %80, %83, %90, %342, %69
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !998 !PGOFuncName !1325 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1272
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !998 !PGOFuncName !1326 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #24, !range !987
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 655, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !1272
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #24
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #3 !prof !1327 !PGOFuncName !1328 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_region_bb_info_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @sel_redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @sel_redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !1329 !PGOFuncName !1330 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1093
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #24
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !998 !PGOFuncName !1331 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #24
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !989
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 !prof !998 !PGOFuncName !1332 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !955
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !998 !PGOFuncName !1333 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #24, !range !987
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 645, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1093
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #24
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @get_seqno_by_preds(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_insn_from_expr_after(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1161 !PGOFuncName !1334 {
  %5 = load ptr, ptr %0, align 8, !tbaa !1057
  %6 = load ptr, ptr %5, align 8, !tbaa !1058
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !940
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !1335

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !940
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4450, ptr noundef nonnull @.str.1) #23
  br label %15

15:                                               ; preds = %4, %10, %14
  %16 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 12
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20, !prof !1336

20:                                               ; preds = %15
  %21 = tail call i32 @expr_dest_regno(ptr noundef nonnull %0) #23
  %22 = icmp ult i32 %21, 53
  br i1 %22, label %23, label %28, !prof !1335

23:                                               ; preds = %20
  tail call void @df_set_regs_ever_live(i32 noundef %21, i8 noundef zeroext 1) #23
  %24 = load i32, ptr @reg_rename_this_tick, align 4, !tbaa !981
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr @reg_rename_this_tick, align 4, !tbaa !981
  %26 = zext nneg i32 %21 to i64
  %27 = getelementptr inbounds [53 x i32], ptr @reg_rename_tick, i64 0, i64 %26
  store i32 %25, ptr %27, align 4, !tbaa !981
  br label %28

28:                                               ; preds = %20, %23, %15
  %29 = tail call ptr @sel_gen_insn_from_expr_after(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #23
  ret ptr %29
}

; Function Attrs: optsize
declare void @df_set_regs_ever_live(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sel_gen_insn_from_expr_after(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_av_level(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compute_av_set(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1337 !PGOFuncName !1338 {
  %3 = tail call fastcc ptr @compute_av_set_inside_bb(ptr noundef %0, ptr noundef null, i32 noundef 0, i8 noundef zeroext %1) #24
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compute_av_set_inside_bb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !1339 !PGOFuncName !1340 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %1, ptr %5, align 8, !tbaa !955
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !940
  %10 = tail call ptr @sel_bb_end(ptr noundef %9) #23
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !940
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  store ptr null, ptr %6, align 8, !tbaa !955
  %13 = load ptr, ptr %8, align 8, !tbaa !940
  %14 = tail call fastcc zeroext i8 @is_ineligible_successor(ptr noundef %0, ptr noundef %1) #24, !range !987
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %37, label %16, !prof !1341

16:                                               ; preds = %4
  %17 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %18 = icmp sgt i32 %17, 5
  br i1 %18, label %19, label %304

19:                                               ; preds = %16
  %20 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %7, align 8, !tbaa !940
  %24 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.30, i32 noundef %23) #24
  %25 = shl nsw i32 %24, 1
  %26 = or disjoint i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  %29 = load i32, ptr %7, align 8, !tbaa !940
  %30 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %28, i64 noundef %27, ptr noundef nonnull @.str.30, i32 noundef %29) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %28) #23
  %31 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %32 = call i32 @fputs(ptr nonnull %28, ptr %31)
  br label %304

33:                                               ; preds = %19
  %34 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %35 = load i32, ptr %7, align 8, !tbaa !940
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.30, i32 noundef %35) #24
  br label %304

37:                                               ; preds = %4
  %38 = tail call i32 @get_av_level(ptr noundef nonnull %0) #23
  %39 = load i32, ptr @global_level, align 4, !tbaa !981
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %88, !prof !1342

41:                                               ; preds = %37
  %42 = tail call zeroext i8 @sel_bb_head_p(ptr noundef nonnull %0) #23
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %52, label %44, !prof !1343

44:                                               ; preds = %41
  %45 = load ptr, ptr @sel_region_bb_info, align 8
  %46 = load ptr, ptr %8, align 8, !tbaa !940
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !945
  %49 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %45, i32 noundef %48) #24
  %50 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !1307
  br label %52

52:                                               ; preds = %41, %44
  %53 = phi ptr [ %51, %44 ], [ null, %41 ]
  %54 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %55 = icmp sgt i32 %54, 5
  br i1 %55, label %56, label %84, !prof !1343

56:                                               ; preds = %52
  %57 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %7, align 8, !tbaa !940
  %61 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.31, i32 noundef %60) #24
  %62 = shl nsw i32 %61, 1
  %63 = or disjoint i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = alloca i8, i64 %64, align 16
  %66 = load i32, ptr %7, align 8, !tbaa !940
  %67 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %65, i64 noundef %64, ptr noundef nonnull @.str.31, i32 noundef %66) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %65) #23
  %68 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %69 = call i32 @fputs(ptr nonnull %65, ptr %68)
  br label %74

70:                                               ; preds = %56
  %71 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %72 = load i32, ptr %7, align 8, !tbaa !940
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @.str.31, i32 noundef %72) #24
  br label %74

74:                                               ; preds = %70, %59
  call void @dump_av_set(ptr noundef %53) #23
  %75 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = alloca [3 x i8], align 16
  store i16 10, ptr %78, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %78) #23
  %79 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %80 = call i32 @fputs(ptr nonnull %78, ptr %79)
  br label %84

81:                                               ; preds = %74
  %82 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %83 = call i32 @fputc(i32 10, ptr %82)
  br label %84

84:                                               ; preds = %77, %81, %52
  %85 = icmp eq i8 %3, 0
  br i1 %85, label %304, label %86, !prof !1343

86:                                               ; preds = %84
  %87 = call ptr @av_set_copy(ptr noundef %53) #23
  br label %304

88:                                               ; preds = %37
  call fastcc void @_xlist_add(ptr noundef nonnull %5, ptr noundef nonnull %0) #24
  %89 = icmp eq ptr %12, %0
  %90 = load ptr, ptr %5, align 8
  br i1 %89, label %204, label %91, !prof !1344

91:                                               ; preds = %88, %186
  %92 = phi i32 [ %187, %186 ], [ %2, %88 ]
  %93 = phi ptr [ %189, %186 ], [ %0, %88 ]
  %94 = tail call i32 @get_av_level(ptr noundef %93) #23
  %95 = load i32, ptr @global_level, align 4, !tbaa !981
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %120, !prof !1345

97:                                               ; preds = %91
  %98 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %99 = icmp sgt i32 %98, 5
  br i1 %99, label %100, label %191

100:                                              ; preds = %97
  %101 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !940
  %106 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.32, i32 noundef %105) #24
  %107 = shl nsw i32 %106, 1
  %108 = or disjoint i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = alloca i8, i64 %109, align 16
  %111 = load i32, ptr %104, align 8, !tbaa !940
  %112 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %110, i64 noundef %109, ptr noundef nonnull @.str.32, i32 noundef %111) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %110) #23
  %113 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %114 = call i32 @fputs(ptr nonnull %110, ptr %113)
  br label %191

115:                                              ; preds = %100
  %116 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %117 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !940
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef nonnull @.str.32, i32 noundef %118) #24
  br label %191

120:                                              ; preds = %91
  %121 = icmp eq ptr %93, %0
  br i1 %121, label %148, label %122, !prof !1346

122:                                              ; preds = %120
  %123 = tail call fastcc zeroext i8 @is_ineligible_successor(ptr noundef %93, ptr noundef %90) #24, !range !987
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %148, label %125, !prof !1347

125:                                              ; preds = %122
  %126 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %127 = icmp sgt i32 %126, 5
  br i1 %127, label %128, label %191

128:                                              ; preds = %125
  %129 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !940
  %134 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.30, i32 noundef %133) #24
  %135 = shl nsw i32 %134, 1
  %136 = or disjoint i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = alloca i8, i64 %137, align 16
  %139 = load i32, ptr %132, align 8, !tbaa !940
  %140 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %138, i64 noundef %137, ptr noundef nonnull @.str.30, i32 noundef %139) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %138) #23
  %141 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %142 = call i32 @fputs(ptr nonnull %138, ptr %141)
  br label %191

143:                                              ; preds = %128
  %144 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %145 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %146 = load i32, ptr %145, align 8, !tbaa !940
  %147 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef nonnull @.str.30, i32 noundef %146) #24
  br label %191

148:                                              ; preds = %122, %120
  %149 = load i32, ptr %93, align 8
  %150 = and i32 %149, 65535
  %151 = icmp eq i32 %150, 7
  br i1 %151, label %186, label %152, !prof !1345

152:                                              ; preds = %148
  %153 = load i32, ptr @max_ws, align 4, !tbaa !981
  %154 = icmp sgt i32 %92, %153
  br i1 %154, label %155, label %184, !prof !1348

155:                                              ; preds = %152
  %156 = load i32, ptr @global_level, align 4, !tbaa !981
  %157 = load ptr, ptr @s_i_d, align 8
  %158 = load ptr, ptr @sched_luids, align 8
  %159 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %160 = load i32, ptr %159, align 8, !tbaa !940
  %161 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %158, i32 noundef %160) #24
  %162 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %157, i32 noundef %161) #24
  %163 = getelementptr inbounds %struct._sel_insn_data, ptr %162, i64 0, i32 1
  store i32 %156, ptr %163, align 8, !tbaa !1349
  %164 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %165 = icmp sgt i32 %164, 5
  br i1 %165, label %166, label %191, !prof !1350

166:                                              ; preds = %155
  %167 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %180, label %169

169:                                              ; preds = %166
  %170 = load i32, ptr %159, align 8, !tbaa !940
  %171 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.33, i32 noundef %170) #24
  %172 = shl nsw i32 %171, 1
  %173 = or disjoint i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = alloca i8, i64 %174, align 16
  %176 = load i32, ptr %159, align 8, !tbaa !940
  %177 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %175, i64 noundef %174, ptr noundef nonnull @.str.33, i32 noundef %176) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %175) #23
  %178 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %179 = call i32 @fputs(ptr nonnull %175, ptr %178)
  br label %191

180:                                              ; preds = %166
  %181 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %182 = load i32, ptr %159, align 8, !tbaa !940
  %183 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef nonnull @.str.33, i32 noundef %182) #24
  br label %191

184:                                              ; preds = %152
  %185 = add nsw i32 %92, 1
  br label %186

186:                                              ; preds = %148, %184
  %187 = phi i32 [ %92, %148 ], [ %185, %184 ]
  %188 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1, i32 0, i32 0, i64 2
  %189 = load ptr, ptr %188, align 8, !tbaa !940
  %190 = icmp eq ptr %189, %12
  br i1 %190, label %204, label %91, !prof !1351, !llvm.loop !1352

191:                                              ; preds = %103, %115, %97, %131, %143, %125, %169, %180, %155
  store ptr null, ptr %6, align 8, !tbaa !955
  %192 = icmp eq ptr %93, %0
  br i1 %192, label %193, label %208, !prof !1353

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %195 = load ptr, ptr %194, align 8, !tbaa !940
  %196 = load ptr, ptr @nop_pattern, align 8, !tbaa !955
  %197 = icmp eq ptr %195, %196
  br i1 %197, label %208, label %198, !prof !1354

198:                                              ; preds = %193
  %199 = load ptr, ptr @s_i_d, align 8
  %200 = load ptr, ptr @sched_luids, align 8
  %201 = load i32, ptr %7, align 8, !tbaa !940
  %202 = call fastcc i32 @VEC_int_base_index(ptr noundef %200, i32 noundef %201) #24
  %203 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %199, i32 noundef %202) #24
  call void @av_set_add(ptr noundef nonnull %6, ptr noundef nonnull %203) #23
  br label %208

204:                                              ; preds = %186, %88
  %205 = phi ptr [ %0, %88 ], [ %12, %186 ]
  %206 = phi i32 [ %2, %88 ], [ %187, %186 ]
  %207 = tail call fastcc ptr @compute_av_set_at_bb_end(ptr noundef %10, ptr noundef %90, i32 noundef %206) #24
  store ptr %207, ptr %6, align 8, !tbaa !955
  br label %208

208:                                              ; preds = %191, %193, %198, %204
  %209 = phi ptr [ %93, %191 ], [ %0, %193 ], [ %0, %198 ], [ %205, %204 ]
  %210 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %211 = getelementptr inbounds %struct.rtx_def, ptr %209, i64 0, i32 1, i32 0, i32 0, i64 1
  %212 = load ptr, ptr %211, align 8, !tbaa !940
  %213 = load ptr, ptr %210, align 8, !tbaa !940
  %214 = icmp eq ptr %212, %213
  br i1 %214, label %249, label %215, !prof !1355

215:                                              ; preds = %208, %244
  %216 = phi ptr [ %246, %244 ], [ %212, %208 ]
  %217 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1
  %218 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 1
  %219 = load ptr, ptr %218, align 8, !tbaa !940
  %220 = load ptr, ptr @nop_pattern, align 8, !tbaa !955
  %221 = icmp eq ptr %219, %220
  br i1 %221, label %244, label %222, !prof !1356

222:                                              ; preds = %215
  call fastcc void @moveup_set_expr(ptr noundef nonnull %6, ptr noundef nonnull %216) #24
  %223 = load ptr, ptr %6, align 8, !tbaa !955
  %224 = load ptr, ptr @s_i_d, align 8
  %225 = load ptr, ptr @sched_luids, align 8
  %226 = load i32, ptr %217, align 8, !tbaa !940
  %227 = call fastcc i32 @VEC_int_base_index(ptr noundef %225, i32 noundef %226) #24
  %228 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %224, i32 noundef %227) #24
  %229 = load ptr, ptr %228, align 8, !tbaa !1042
  %230 = call ptr @av_set_lookup(ptr noundef %223, ptr noundef %229) #23
  %231 = icmp eq ptr %230, null
  br i1 %231, label %238, label %232, !prof !1357

232:                                              ; preds = %222
  call void @clear_expr(ptr noundef nonnull %230) #23
  %233 = load ptr, ptr @s_i_d, align 8
  %234 = load ptr, ptr @sched_luids, align 8
  %235 = load i32, ptr %217, align 8, !tbaa !940
  %236 = call fastcc i32 @VEC_int_base_index(ptr noundef %234, i32 noundef %235) #24
  %237 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %233, i32 noundef %236) #24
  call void @copy_expr(ptr noundef nonnull %230, ptr noundef nonnull %237) #23
  br label %244

238:                                              ; preds = %222
  %239 = load ptr, ptr @s_i_d, align 8
  %240 = load ptr, ptr @sched_luids, align 8
  %241 = load i32, ptr %217, align 8, !tbaa !940
  %242 = call fastcc i32 @VEC_int_base_index(ptr noundef %240, i32 noundef %241) #24
  %243 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %239, i32 noundef %242) #24
  call void @av_set_add(ptr noundef nonnull %6, ptr noundef nonnull %243) #23
  br label %244

244:                                              ; preds = %232, %238, %215
  %245 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1, i32 0, i32 0, i64 1
  %246 = load ptr, ptr %245, align 8, !tbaa !940
  %247 = load ptr, ptr %210, align 8, !tbaa !940
  %248 = icmp eq ptr %246, %247
  br i1 %248, label %249, label %215, !prof !1358, !llvm.loop !1359

249:                                              ; preds = %244, %208
  %250 = call zeroext i8 @sel_bb_head_p(ptr noundef nonnull %0) #23
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %270, label %252, !prof !1360

252:                                              ; preds = %249
  %253 = load ptr, ptr @sel_region_bb_info, align 8
  %254 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %255 = load i32, ptr %254, align 8, !tbaa !945
  %256 = call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %253, i32 noundef %255) #24
  %257 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %256, i64 0, i32 1
  call void @av_set_clear(ptr noundef nonnull %257) #23
  %258 = icmp eq i8 %3, 0
  %259 = load ptr, ptr %6, align 8, !tbaa !955
  br i1 %258, label %262, label %260, !prof !1361

260:                                              ; preds = %252
  %261 = call ptr @av_set_copy(ptr noundef %259) #23
  br label %262

262:                                              ; preds = %252, %260
  %263 = phi ptr [ %261, %260 ], [ %259, %252 ]
  %264 = load ptr, ptr @sel_region_bb_info, align 8
  %265 = load i32, ptr %254, align 8, !tbaa !945
  %266 = call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %264, i32 noundef %265) #24
  %267 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %266, i64 0, i32 1
  store ptr %263, ptr %267, align 8, !tbaa !1307
  %268 = load i32, ptr @global_level, align 4, !tbaa !981
  %269 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %266, i64 0, i32 2
  store i32 %268, ptr %269, align 8, !tbaa !1304
  br label %270

270:                                              ; preds = %262, %249
  %271 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %272 = icmp sgt i32 %271, 5
  br i1 %272, label %273, label %302, !prof !1362

273:                                              ; preds = %270
  %274 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %287, label %276

276:                                              ; preds = %273
  %277 = load i32, ptr %7, align 8, !tbaa !940
  %278 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.34, i32 noundef %277) #24
  %279 = shl nsw i32 %278, 1
  %280 = or disjoint i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = alloca i8, i64 %281, align 16
  %283 = load i32, ptr %7, align 8, !tbaa !940
  %284 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %282, i64 noundef %281, ptr noundef nonnull @.str.34, i32 noundef %283) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %282) #23
  %285 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %286 = call i32 @fputs(ptr nonnull %282, ptr %285)
  br label %291

287:                                              ; preds = %273
  %288 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %289 = load i32, ptr %7, align 8, !tbaa !940
  %290 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %288, ptr noundef nonnull @.str.34, i32 noundef %289) #24
  br label %291

291:                                              ; preds = %287, %276
  %292 = load ptr, ptr %6, align 8, !tbaa !955
  call void @dump_av_set(ptr noundef %292) #23
  %293 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %299, label %295

295:                                              ; preds = %291
  %296 = alloca [3 x i8], align 16
  store i16 10, ptr %296, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %296) #23
  %297 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %298 = call i32 @fputs(ptr nonnull %296, ptr %297)
  br label %302

299:                                              ; preds = %291
  %300 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %301 = call i32 @fputc(i32 10, ptr %300)
  br label %302

302:                                              ; preds = %295, %299, %270
  call fastcc void @_list_remove(ptr noundef nonnull %5) #24
  %303 = load ptr, ptr %6, align 8, !tbaa !955
  br label %304

304:                                              ; preds = %86, %84, %16, %33, %22, %302
  %305 = phi ptr [ %303, %302 ], [ null, %22 ], [ null, %33 ], [ null, %16 ], [ %87, %86 ], [ %53, %84 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  ret ptr %305
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_ineligible_successor(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 !prof !1363 !PGOFuncName !1364 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !940
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !1365

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !940
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %19, !prof !1366

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !940
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !1365

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !940
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %21, label %19, !prof !1366

19:                                               ; preds = %15, %7
  %20 = phi i32 [ 2673, %7 ], [ 2675, %15 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %20, ptr noundef nonnull @.str.1) #23
  br label %21

21:                                               ; preds = %19, %11, %15
  %22 = icmp eq ptr %1, null
  br i1 %22, label %85, label %23, !prof !1367

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct._list_node, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !940
  %26 = load ptr, ptr @s_i_d, align 8
  %27 = load ptr, ptr @sched_luids, align 8
  %28 = load i32, ptr %3, align 8, !tbaa !940
  %29 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %27, i32 noundef %28) #24
  %30 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %26, i32 noundef %29) #24
  %31 = getelementptr inbounds %struct._sel_insn_data, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !1154
  %33 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !940
  %35 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %27, i32 noundef %34) #24
  %36 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %26, i32 noundef %35) #24
  %37 = getelementptr inbounds %struct._sel_insn_data, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !1154
  %39 = icmp slt i32 %32, %38
  br i1 %39, label %85, label %40, !prof !1368

40:                                               ; preds = %23
  %41 = icmp eq i32 %32, %38
  br i1 %41, label %42, label %54, !prof !1368

42:                                               ; preds = %40
  %43 = tail call fastcc zeroext i8 @_xlist_is_in_p(ptr noundef nonnull %1, ptr noundef nonnull %0) #24, !range !987
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %42
  %46 = load ptr, ptr @fences, align 8, !tbaa !955
  %47 = tail call ptr @flist_lookup(ptr noundef %46, ptr noundef nonnull %0) #23
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %85

49:                                               ; preds = %45
  %50 = load ptr, ptr @s_i_d, align 8
  %51 = load ptr, ptr @sched_luids, align 8
  %52 = load i32, ptr %3, align 8, !tbaa !940
  %53 = load i32, ptr %33, align 8, !tbaa !940
  br label %54

54:                                               ; preds = %49, %40
  %55 = phi i32 [ %53, %49 ], [ %34, %40 ]
  %56 = phi i32 [ %52, %49 ], [ %28, %40 ]
  %57 = phi ptr [ %51, %49 ], [ %27, %40 ]
  %58 = phi ptr [ %50, %49 ], [ %26, %40 ]
  %59 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %57, i32 noundef %56) #24
  %60 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %58, i32 noundef %59) #24
  %61 = getelementptr inbounds %struct._sel_insn_data, ptr %60, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !1154
  %63 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %57, i32 noundef %55) #24
  %64 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %58, i32 noundef %63) #24
  %65 = getelementptr inbounds %struct._sel_insn_data, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !1154
  %67 = icmp sgt i32 %62, %66
  br i1 %67, label %68, label %72, !prof !1369

68:                                               ; preds = %54
  %69 = load ptr, ptr @fences, align 8, !tbaa !955
  %70 = tail call ptr @flist_lookup(ptr noundef %69, ptr noundef nonnull %0) #23
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %85, !prof !1369

72:                                               ; preds = %68, %54
  %73 = load i8, ptr @pipelining_p, align 1, !tbaa !940
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %84, !prof !1369

75:                                               ; preds = %72
  %76 = load ptr, ptr @s_i_d, align 8
  %77 = load ptr, ptr @sched_luids, align 8
  %78 = load i32, ptr %3, align 8, !tbaa !940
  %79 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %77, i32 noundef %78) #24
  %80 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %76, i32 noundef %79) #24
  %81 = getelementptr inbounds %struct._expr, ptr %80, i64 0, i32 5
  %82 = load i32, ptr %81, align 8, !tbaa !1095
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %85, label %84, !prof !1368

84:                                               ; preds = %75, %72
  br label %85

85:                                               ; preds = %23, %42, %45, %68, %75, %21, %84
  %86 = phi i8 [ 0, %84 ], [ 0, %21 ], [ 1, %75 ], [ 1, %68 ], [ 1, %45 ], [ 1, %42 ], [ 1, %23 ]
  ret i8 %86
}

; Function Attrs: optsize
declare void @dump_av_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @av_set_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_xlist_add(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1370 !PGOFuncName !1371 {
  tail call fastcc void @_list_add(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !955
  %4 = getelementptr inbounds %struct._list_node, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !940
  ret void
}

; Function Attrs: optsize
declare void @av_set_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compute_av_set_at_bb_end(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1372 !PGOFuncName !1373 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct._list_iterator, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct._list_iterator, align 8
  %12 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !955
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr null, ptr %5, align 8, !tbaa !955
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  store ptr null, ptr %7, align 8, !tbaa !955
  %13 = tail call zeroext i8 @sel_bb_end_p(ptr noundef %0) #23
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16, !prof !1374

15:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2720, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %3, %15
  %17 = tail call ptr @compute_succs_info(ptr noundef %0, i16 noundef signext 1) #23
  %18 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %19 = icmp sgt i32 %18, 5
  br i1 %19, label %20, label %74, !prof !1374

20:                                               ; preds = %16
  %21 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !940
  %26 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.35, i32 noundef %25) #24
  %27 = shl nsw i32 %26, 1
  %28 = or disjoint i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  %31 = load i32, ptr %24, align 8, !tbaa !940
  %32 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %30, i64 noundef %29, ptr noundef nonnull @.str.35, i32 noundef %31) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %30) #23
  %33 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %34 = call i32 @fputs(ptr nonnull %30, ptr %33)
  br label %40

35:                                               ; preds = %20
  %36 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !940
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.35, i32 noundef %38) #24
  br label %40

40:                                               ; preds = %35, %23
  %41 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !1375
  call void @dump_insn_vector(ptr noundef %42) #23
  %43 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = alloca [3 x i8], align 16
  store i16 10, ptr %46, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %46) #23
  %47 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %48 = call i32 @fputs(ptr nonnull %46, ptr %47)
  br label %52

49:                                               ; preds = %40
  %50 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %51 = call i32 @fputc(i32 10, ptr %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !1378
  %55 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 5
  %56 = load i32, ptr %55, align 4, !tbaa !1379
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %74, label %58

58:                                               ; preds = %52
  %59 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %56) #24
  %63 = shl nsw i32 %62, 1
  %64 = or disjoint i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = alloca i8, i64 %65, align 16
  %67 = load i32, ptr %55, align 4, !tbaa !1379
  %68 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %66, i64 noundef %65, ptr noundef nonnull @.str.36, i32 noundef %67) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %66) #23
  %69 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %70 = call i32 @fputs(ptr nonnull %66, ptr %69)
  br label %74

71:                                               ; preds = %58
  %72 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.36, i32 noundef %56) #24
  br label %74

74:                                               ; preds = %52, %71, %61, %16
  call fastcc void @_xlist_add(ptr noundef nonnull %4, ptr noundef %0) #24
  %75 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !1375
  %77 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %76, i32 noundef 0, ptr noundef nonnull %6) #24, !range !1380
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %162, label %79, !prof !1381

79:                                               ; preds = %74
  %80 = load ptr, ptr %4, align 8, !tbaa !955
  %81 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 2
  %82 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 4
  %83 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 5
  br label %84

84:                                               ; preds = %79, %156
  %85 = phi i32 [ 0, %79 ], [ %158, %156 ]
  %86 = phi ptr [ null, %79 ], [ %157, %156 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  %87 = load ptr, ptr %6, align 8, !tbaa !955
  %88 = call fastcc ptr @compute_av_set_inside_bb(ptr noundef %87, ptr noundef %80, i32 noundef %2, i8 noundef zeroext 1) #24
  store ptr %88, ptr %8, align 8, !tbaa !955
  %89 = load ptr, ptr %81, align 8, !tbaa !1382
  %90 = call fastcc i32 @VEC_int_base_index(ptr noundef %89, i32 noundef %85) #24
  %91 = load i32, ptr %82, align 8, !tbaa !1383
  call void @av_set_split_usefulness(ptr noundef %88, i32 noundef %90, i32 noundef %91) #23
  %92 = load i32, ptr %83, align 4, !tbaa !1379
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %114, !prof !1384

94:                                               ; preds = %84
  %95 = icmp eq i32 %85, 0
  br i1 %95, label %118, label %96, !prof !1384

96:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #25
  call fastcc void @_list_iter_start(ptr noundef nonnull %9, ptr noundef nonnull %5, i8 noundef zeroext 1) #24
  %97 = load ptr, ptr %9, align 8, !tbaa !1054
  %98 = load ptr, ptr %97, align 8, !tbaa !955
  %99 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %98, ptr noundef nonnull %10) #24, !range !987
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %96, %108
  %102 = load ptr, ptr %8, align 8, !tbaa !955
  %103 = load ptr, ptr %10, align 8, !tbaa !955
  %104 = load ptr, ptr %103, align 8, !tbaa !1057
  %105 = call zeroext i8 @av_set_is_in_p(ptr noundef %102, ptr noundef %104) #23
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  call void @av_set_iter_remove(ptr noundef nonnull %9) #23
  br label %108

108:                                              ; preds = %101, %107
  call fastcc void @_list_iter_next(ptr noundef nonnull %9) #24
  %109 = load ptr, ptr %9, align 8, !tbaa !1054
  %110 = load ptr, ptr %109, align 8, !tbaa !955
  %111 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %110, ptr noundef nonnull %10) #24, !range !987
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %101, !llvm.loop !1385

113:                                              ; preds = %108, %96
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #25
  br label %114

114:                                              ; preds = %113, %84
  %115 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 6
  %116 = load i32, ptr %115, align 8, !tbaa !1378
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %121, label %154, !prof !1386

118:                                              ; preds = %94
  %119 = load ptr, ptr %8, align 8, !tbaa !955
  %120 = call ptr @av_set_copy(ptr noundef %119) #23
  store ptr %120, ptr %5, align 8, !tbaa !955
  br label %154

121:                                              ; preds = %114
  %122 = icmp eq i32 %85, 1
  br i1 %122, label %123, label %154

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !940
  %126 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !940
  %128 = load ptr, ptr @sel_global_bb_info, align 8
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 9
  %130 = load i32, ptr %129, align 8, !tbaa !945
  %131 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %128, i32 noundef %130) #24
  %132 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %131, i64 0, i32 1
  %133 = load i8, ptr %132, align 8, !tbaa !950
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %123
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 9
  %137 = load i32, ptr %136, align 8, !tbaa !945
  %138 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %128, i32 noundef %137) #24
  %139 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %138, i64 0, i32 1
  %140 = load i8, ptr %139, align 8, !tbaa !950
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %135, %123
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2780, ptr noundef nonnull @.str.1) #23
  %143 = load ptr, ptr @sel_global_bb_info, align 8
  %144 = load i32, ptr %129, align 8, !tbaa !945
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 9
  %146 = load i32, ptr %145, align 8, !tbaa !945
  %147 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %143, i32 noundef %144) #24
  %148 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %143, i32 noundef %146) #24
  br label %149

149:                                              ; preds = %135, %142
  %150 = phi ptr [ %138, %135 ], [ %148, %142 ]
  %151 = phi ptr [ %131, %135 ], [ %147, %142 ]
  %152 = load ptr, ptr %151, align 8, !tbaa !974
  %153 = load ptr, ptr %150, align 8, !tbaa !974
  call void @av_set_union_and_live(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %152, ptr noundef %153, ptr noundef %0) #23
  br label %156

154:                                              ; preds = %118, %121, %114
  %155 = phi ptr [ %86, %121 ], [ %86, %114 ], [ %87, %118 ]
  call void @av_set_union_and_clear(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %0) #23
  br label %156

156:                                              ; preds = %154, %149
  %157 = phi ptr [ %155, %154 ], [ %86, %149 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  %158 = add nuw nsw i32 %85, 1
  %159 = load ptr, ptr %75, align 8, !tbaa !1375
  %160 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %159, i32 noundef %158, ptr noundef nonnull %6) #24, !range !1380
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %84, !prof !1387, !llvm.loop !1388

162:                                              ; preds = %156, %74
  %163 = phi ptr [ %76, %74 ], [ %159, %156 ]
  %164 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 6
  %165 = load i32, ptr %164, align 8, !tbaa !1378
  %166 = icmp sgt i32 %165, 2
  br i1 %166, label %167, label %201, !prof !1374

167:                                              ; preds = %162
  %168 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %163, i32 noundef 0, ptr noundef nonnull %6) #24, !range !1380
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %201, label %170

170:                                              ; preds = %167, %186
  %171 = phi i32 [ %195, %186 ], [ 0, %167 ]
  %172 = load ptr, ptr %6, align 8, !tbaa !955
  %173 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1, i32 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !940
  %175 = load ptr, ptr @sel_global_bb_info, align 8
  %176 = getelementptr inbounds %struct.basic_block_def, ptr %174, i64 0, i32 9
  %177 = load i32, ptr %176, align 8, !tbaa !945
  %178 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %175, i32 noundef %177) #24
  %179 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %178, i64 0, i32 1
  %180 = load i8, ptr %179, align 8, !tbaa !950
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %170
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2797, ptr noundef nonnull @.str.1) #23
  %183 = load i32, ptr %176, align 8, !tbaa !945
  %184 = load ptr, ptr @sel_global_bb_info, align 8
  %185 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %184, i32 noundef %183) #24
  br label %186

186:                                              ; preds = %170, %182
  %187 = phi ptr [ %178, %170 ], [ %185, %182 ]
  %188 = phi i32 [ %177, %170 ], [ %183, %182 ]
  %189 = load ptr, ptr %7, align 8, !tbaa !955
  %190 = load ptr, ptr @sel_region_bb_info, align 8
  %191 = call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %190, i32 noundef %188) #24
  %192 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !1307
  %194 = load ptr, ptr %187, align 8, !tbaa !974
  call void @mark_unavailable_targets(ptr noundef %189, ptr noundef %193, ptr noundef %194) #23
  %195 = add nuw nsw i32 %171, 1
  %196 = load ptr, ptr %75, align 8, !tbaa !1375
  %197 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %196, i32 noundef %195, ptr noundef nonnull %6) #24, !range !1380
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %170, !llvm.loop !1389

199:                                              ; preds = %186
  %200 = load i32, ptr %164, align 8, !tbaa !1378
  br label %201

201:                                              ; preds = %199, %167, %162
  %202 = phi i32 [ %200, %199 ], [ %165, %167 ], [ %165, %162 ]
  %203 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 5
  %204 = load i32, ptr %203, align 4, !tbaa !1379
  %205 = icmp sgt i32 %204, %202
  br i1 %205, label %206, label %228, !prof !1390

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !1391
  %209 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %208, i32 noundef 0, ptr noundef nonnull %6) #24, !range !1380
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %228, label %211, !prof !1392

211:                                              ; preds = %206, %211
  %212 = phi i32 [ %222, %211 ], [ 0, %206 ]
  %213 = load ptr, ptr %7, align 8, !tbaa !955
  %214 = load ptr, ptr @sel_global_bb_info, align 8
  %215 = load ptr, ptr %6, align 8, !tbaa !955
  %216 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1, i32 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !940
  %218 = getelementptr inbounds %struct.basic_block_def, ptr %217, i64 0, i32 9
  %219 = load i32, ptr %218, align 8, !tbaa !945
  %220 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %214, i32 noundef %219) #24
  %221 = load ptr, ptr %220, align 8, !tbaa !974
  call void @mark_unavailable_targets(ptr noundef %213, ptr noundef null, ptr noundef %221) #23
  %222 = add nuw nsw i32 %212, 1
  %223 = load ptr, ptr %207, align 8, !tbaa !1391
  %224 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %223, i32 noundef %222, ptr noundef nonnull %6) #24, !range !1380
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %211, !prof !1393, !llvm.loop !1394

226:                                              ; preds = %211
  %227 = load i32, ptr %203, align 4, !tbaa !1379
  br label %228

228:                                              ; preds = %206, %226, %201
  %229 = phi i32 [ %204, %201 ], [ %227, %226 ], [ %204, %206 ]
  %230 = icmp sgt i32 %229, 1
  br i1 %230, label %231, label %252, !prof !1395

231:                                              ; preds = %228
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #25
  call fastcc void @_list_iter_start(ptr noundef nonnull %11, ptr noundef nonnull %7, i8 noundef zeroext 0) #24
  %232 = load ptr, ptr %11, align 8, !tbaa !1054
  %233 = load ptr, ptr %232, align 8, !tbaa !955
  %234 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %233, ptr noundef nonnull %12) #24, !range !987
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %251, label %236, !prof !1396

236:                                              ; preds = %231, %246
  %237 = load ptr, ptr %5, align 8, !tbaa !955
  %238 = load ptr, ptr %12, align 8, !tbaa !955
  %239 = load ptr, ptr %238, align 8, !tbaa !1057
  %240 = call zeroext i8 @av_set_is_in_p(ptr noundef %237, ptr noundef %239) #23
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %242, label %246, !prof !1397

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct._expr, ptr %238, i64 0, i32 1
  %244 = load i32, ptr %243, align 8, !tbaa !1398
  %245 = add nsw i32 %244, 1
  store i32 %245, ptr %243, align 8, !tbaa !1398
  br label %246

246:                                              ; preds = %236, %242
  call fastcc void @_list_iter_next(ptr noundef nonnull %11) #24
  %247 = load ptr, ptr %11, align 8, !tbaa !1054
  %248 = load ptr, ptr %247, align 8, !tbaa !955
  %249 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %248, ptr noundef nonnull %12) #24, !range !987
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %251, label %236, !prof !1399, !llvm.loop !1400

251:                                              ; preds = %246, %231
  call void @av_set_clear(ptr noundef nonnull %5) #23
  call void @av_set_substract_cond_branches(ptr noundef nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #25
  br label %252

252:                                              ; preds = %251, %228
  call fastcc void @_list_remove(ptr noundef nonnull %4) #24
  call void @free_succs_info(ptr noundef %17) #23
  %253 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %254 = icmp sgt i32 %253, 5
  br i1 %254, label %255, label %286, !prof !1374

255:                                              ; preds = %252
  %256 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %270, label %258

258:                                              ; preds = %255
  %259 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %260 = load i32, ptr %259, align 8, !tbaa !940
  %261 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.37, i32 noundef %260) #24
  %262 = shl nsw i32 %261, 1
  %263 = or disjoint i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = alloca i8, i64 %264, align 16
  %266 = load i32, ptr %259, align 8, !tbaa !940
  %267 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %265, i64 noundef %264, ptr noundef nonnull @.str.37, i32 noundef %266) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %265) #23
  %268 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %269 = call i32 @fputs(ptr nonnull %265, ptr %268)
  br label %275

270:                                              ; preds = %255
  %271 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %272 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %273 = load i32, ptr %272, align 8, !tbaa !940
  %274 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %271, ptr noundef nonnull @.str.37, i32 noundef %273) #24
  br label %275

275:                                              ; preds = %270, %258
  %276 = load ptr, ptr %7, align 8, !tbaa !955
  call void @dump_av_set(ptr noundef %276) #23
  %277 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %283, label %279

279:                                              ; preds = %275
  %280 = alloca [3 x i8], align 16
  store i16 10, ptr %280, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %280) #23
  %281 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %282 = call i32 @fputs(ptr nonnull %280, ptr %281)
  br label %286

283:                                              ; preds = %275
  %284 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %285 = call i32 @fputc(i32 10, ptr %284)
  br label %286

286:                                              ; preds = %279, %283, %252
  %287 = load ptr, ptr %7, align 8, !tbaa !955
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret ptr %287
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @moveup_set_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1401 !PGOFuncName !1402 {
  %3 = alloca %struct._list_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #24
  %5 = load ptr, ptr %3, align 8, !tbaa !1054
  %6 = load ptr, ptr %5, align 8, !tbaa !955
  %7 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %6, ptr noundef nonnull %4) #24, !range !987
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %21, label %9, !prof !1403

9:                                                ; preds = %2, %16
  %10 = load ptr, ptr %4, align 8, !tbaa !955
  %11 = call fastcc i32 @moveup_expr_cached(ptr noundef %10, ptr noundef %1) #24
  switch i32 %11, label %15 [
    i32 0, label %16
    i32 1, label %16
    i32 2, label %12
    i32 3, label %13
  ], !prof !1404

12:                                               ; preds = %9
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  br label %16

13:                                               ; preds = %9
  %14 = call ptr @merge_with_other_exprs(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %10) #23
  store ptr %14, ptr %4, align 8, !tbaa !955
  br label %16

15:                                               ; preds = %9
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2605, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %12, %13, %15, %9, %9
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %17 = load ptr, ptr %3, align 8, !tbaa !1054
  %18 = load ptr, ptr %17, align 8, !tbaa !955
  %19 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %18, ptr noundef nonnull %4) #24, !range !987
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %9, !prof !1405, !llvm.loop !1406

21:                                               ; preds = %16, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare ptr @av_set_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_expr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @av_set_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_list_remove(ptr nocapture noundef %0) unnamed_addr #0 !prof !1407 !PGOFuncName !1408 {
  %2 = load ptr, ptr %0, align 8, !tbaa !955
  %3 = load ptr, ptr %2, align 8, !tbaa !1409
  store ptr %3, ptr %0, align 8, !tbaa !955
  %4 = load ptr, ptr @sched_lists_pool, align 8, !tbaa !955
  tail call void @pool_free(ptr noundef %4, ptr noundef nonnull %2) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @_xlist_is_in_p(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #9 !prof !1411 !PGOFuncName !1412 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4, !prof !1413

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %10, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct._list_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !940
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !1409
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %4, !prof !1414, !llvm.loop !1415

12:                                               ; preds = %4, %9, %2
  %13 = phi i8 [ 0, %2 ], [ 0, %9 ], [ 1, %4 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_list_add(ptr nocapture noundef %0) unnamed_addr #0 !prof !1370 !PGOFuncName !1416 {
  %2 = tail call fastcc ptr @_list_alloc() #24
  %3 = load ptr, ptr %0, align 8, !tbaa !955
  store ptr %3, ptr %2, align 8, !tbaa !1409
  store ptr %2, ptr %0, align 8, !tbaa !955
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @_list_alloc() unnamed_addr #0 !prof !1370 !PGOFuncName !1417 {
  %1 = load ptr, ptr @sched_lists_pool, align 8, !tbaa !955
  %2 = tail call ptr @pool_alloc(ptr noundef %1) #23
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @sel_bb_end_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @compute_succs_info(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_insn_vector(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_rtx_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !1418 !PGOFuncName !1419 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1420

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1421
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1423

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !955
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !955
  ret i32 %14
}

; Function Attrs: optsize
declare void @av_set_split_usefulness(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_list_iter_start(ptr nocapture noundef writeonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #10 !prof !1424 !PGOFuncName !1425 {
  store ptr %1, ptr %0, align 8, !tbaa !1054
  %4 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 1
  store i8 %2, ptr %4, align 8, !tbaa !1426
  %5 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 2
  store i8 0, ptr %5, align 1, !tbaa !1427
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef zeroext i8 @_list_iter_cond_expr(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 !prof !1428 !PGOFuncName !1429 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4, !prof !1430

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  store ptr %5, ptr %1, align 8, !tbaa !955
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i8 [ 1, %4 ], [ 0, %2 ]
  ret i8 %7
}

; Function Attrs: optsize
declare zeroext i8 @av_set_is_in_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @av_set_iter_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_list_iter_next(ptr nocapture noundef %0) unnamed_addr #11 !prof !1431 !PGOFuncName !1432 {
  %2 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !1427
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8, !prof !1433

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !1054
  %7 = load ptr, ptr %6, align 8, !tbaa !955
  store ptr %7, ptr %0, align 8, !tbaa !1054
  br label %9

8:                                                ; preds = %1
  store i8 0, ptr %2, align 1, !tbaa !1427
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: optsize
declare void @av_set_union_and_live(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @av_set_union_and_clear(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mark_unavailable_targets(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @av_set_substract_cond_branches(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_succs_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @merge_with_other_exprs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vinsn_vec_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1161 !PGOFuncName !1434 {
  %3 = load ptr, ptr %1, align 8, !tbaa !1057
  tail call void @vinsn_attach(ptr noundef %3) #23
  %4 = load ptr, ptr %1, align 8, !tbaa !1057
  tail call fastcc void @VEC_vinsn_t_heap_safe_push(ptr noundef %0, ptr noundef %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vinsn_t_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1161 !PGOFuncName !1435 {
  tail call fastcc void @VEC_vinsn_t_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !955
  tail call fastcc void @VEC_vinsn_t_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vinsn_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1161 !PGOFuncName !1436 {
  %2 = load ptr, ptr %0, align 8, !tbaa !955
  %3 = tail call fastcc i32 @VEC_vinsn_t_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1437

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !955
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vinsn_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !1161 !PGOFuncName !1438 {
  %3 = load i32, ptr %0, align 8, !tbaa !1439
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1439
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_vinsn_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !955
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vinsn_t_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !1161 !PGOFuncName !1441 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1437

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_vinsn_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1442
  %6 = load i32, ptr %0, align 8, !tbaa !1439
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @def_list_add(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_live_below_insn(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1039 !PGOFuncName !1443 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.succ_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #25
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %4, ptr noundef nonnull %3, ptr noundef %0, i32 noundef 7) #24
  %5 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %0) #24
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7, !prof !953

7:                                                ; preds = %2, %7
  %8 = load ptr, ptr %3, align 8, !tbaa !955
  %9 = tail call ptr @compute_live(ptr noundef %8) #24
  %10 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %1, ptr noundef %9) #23
  call fastcc void @_succ_iter_next(ptr noundef nonnull %4) #24
  %11 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %0) #24
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %7, !prof !1444, !llvm.loop !1445

13:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_succ_iter_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.succ_iterator) align 8 %0, ptr nocapture noundef writeonly %1, ptr noundef readonly %2, i32 noundef %3) unnamed_addr #0 !prof !1446 !PGOFuncName !1447 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !940
  %7 = load i32, ptr %2, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %13 [
    i16 8, label %14
    i16 7, label %14
    i16 9, label %14
    i16 10, label %14
    i16 13, label %9
  ], !prof !1448

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %11 = load i32, ptr %10, align 8, !tbaa !940
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %14, label %13, !prof !1070

13:                                               ; preds = %4, %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1206, ptr noundef nonnull @.str.1) #23
  br label %14

14:                                               ; preds = %4, %4, %4, %4, %9, %13
  %15 = trunc i32 %3 to i16
  %16 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 5
  store i16 %15, ptr %16, align 8, !tbaa !1449
  store ptr null, ptr %1, align 8, !tbaa !955
  %17 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store ptr %6, ptr %18, align 8, !tbaa !1451
  %19 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 6
  store i16 0, ptr %19, align 2, !tbaa !1452
  %20 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 7
  store i32 -1, ptr %20, align 4, !tbaa !1453
  %21 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 8
  store ptr null, ptr %21, align 8, !tbaa !1454
  %22 = load ptr, ptr @cfun, align 8, !tbaa !955
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !1074
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !1289
  %27 = icmp eq ptr %6, %26
  br i1 %27, label %37, label %28, !prof !1455

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !940
  %31 = getelementptr inbounds %struct.rtl_bb_info, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !959
  %33 = icmp eq ptr %32, %2
  br i1 %33, label %37, label %34, !prof !1456

34:                                               ; preds = %28
  store i8 0, ptr %0, align 8, !tbaa !1457
  %35 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %35, align 8, !tbaa !1458
  %36 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3, i32 1
  store ptr null, ptr %36, align 8, !tbaa !1459
  br label %42

37:                                               ; preds = %28, %14
  %38 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 1
  %40 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %39) #24
  store i32 0, ptr %38, align 8, !tbaa.struct !985
  %41 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3, i32 1
  store ptr %40, ptr %41, align 8, !tbaa.struct !986
  store i8 1, ptr %0, align 8, !tbaa !1457
  br label %42

42:                                               ; preds = %37, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @_succ_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !1460 !PGOFuncName !1461 {
  %4 = alloca ptr, align 8
  %5 = load i8, ptr %0, align 8, !tbaa !1457
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7, !prof !1462

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 7
  %10 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3, i32 1
  %13 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %8, align 8, !tbaa !1454
  %16 = icmp eq ptr %15, null
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !955
  br i1 %16, label %42, label %30, !prof !1463

17:                                               ; preds = %3
  %18 = load ptr, ptr %1, align 8, !tbaa !955
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %126, !prof !1464

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 5
  %22 = load i16, ptr %21, align 8, !tbaa !1449
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %126, label %25, !prof !1465

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !940
  store ptr %27, ptr %1, align 8, !tbaa !955
  %28 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 6
  store i16 1, ptr %28, align 2, !tbaa !1452
  br label %126

29:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !955
  br label %30

30:                                               ; preds = %29, %7
  br label %31

31:                                               ; preds = %30, %38
  %32 = load ptr, ptr %8, align 8, !tbaa !1454
  %33 = load i32, ptr %9, align 4, !tbaa !1453
  %34 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %32, i32 noundef %33, ptr noundef nonnull %4) #24, !range !1380
  %35 = add nsw i32 %33, 1
  store i32 %35, ptr %9, align 4, !tbaa !1453
  %36 = load ptr, ptr %4, align 8, !tbaa !955
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = tail call fastcc zeroext i8 @_eligible_successor_edge_p(ptr noundef nonnull %36, ptr noundef nonnull %0) #24, !range !987
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %31, label %47, !prof !1466, !llvm.loop !1467

41:                                               ; preds = %31
  tail call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %8) #24
  br label %42

42:                                               ; preds = %41, %7
  %43 = load i32, ptr %10, align 8
  %44 = load ptr, ptr %12, align 8
  %45 = tail call fastcc zeroext i8 @ei_cond(i32 %43, ptr %44, ptr noundef nonnull %11) #24, !range !987
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %88, label %48, !prof !1468

47:                                               ; preds = %38
  store ptr %36, ptr %11, align 8, !tbaa !1469
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br label %94

48:                                               ; preds = %42, %83
  %49 = load ptr, ptr %11, align 8, !tbaa !1469
  %50 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !989
  %52 = load i16, ptr %13, align 8, !tbaa !1449
  %53 = and i16 %52, 8
  %54 = icmp ne i16 %53, 0
  %55 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %79, !prof !1470

58:                                               ; preds = %48
  %59 = tail call zeroext i8 @in_current_region_p(ptr noundef %51) #23
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr @block_to_bb, align 8, !tbaa !955
  %63 = load ptr, ptr %14, align 8, !tbaa !1451
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !945
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %62, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !981
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !945
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, ptr %62, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !981
  %74 = icmp slt i32 %68, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %61, %58
  %76 = tail call fastcc ptr @get_all_loop_exits(ptr noundef %51) #24
  store ptr %76, ptr %8, align 8, !tbaa !1454
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store i32 0, ptr %9, align 4, !tbaa !1453
  tail call fastcc void @ei_next(ptr noundef nonnull %10) #24
  br label %88

79:                                               ; preds = %75, %61, %48
  %80 = load ptr, ptr %11, align 8, !tbaa !1469
  %81 = tail call fastcc zeroext i8 @_eligible_successor_edge_p(ptr noundef %80, ptr noundef nonnull %0) #24, !range !987
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %88, !prof !1471

83:                                               ; preds = %79
  tail call fastcc void @ei_next(ptr noundef nonnull %10) #24
  %84 = load i32, ptr %10, align 8
  %85 = load ptr, ptr %12, align 8
  %86 = tail call fastcc zeroext i8 @ei_cond(i32 %84, ptr %85, ptr noundef nonnull %11) #24, !range !987
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %48, !prof !1472

88:                                               ; preds = %83, %79, %42, %78
  %89 = load ptr, ptr %8, align 8, !tbaa !1454
  %90 = icmp eq ptr %89, null
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br i1 %90, label %91, label %29, !prof !1473

91:                                               ; preds = %88
  %92 = load ptr, ptr %11, align 8, !tbaa !1469
  %93 = icmp eq ptr %92, null
  br i1 %93, label %126, label %94, !prof !1474

94:                                               ; preds = %47, %91
  %95 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !1475
  %97 = getelementptr inbounds %struct.edge_def, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !989
  %99 = load ptr, ptr @cfun, align 8, !tbaa !955
  %100 = getelementptr inbounds %struct.function, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !1074
  %102 = getelementptr inbounds %struct.control_flow_graph, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !1289
  %104 = icmp eq ptr %98, %103
  %105 = load ptr, ptr @after_recovery, align 8
  %106 = icmp eq ptr %98, %105
  %107 = select i1 %104, i1 true, i1 %106
  br i1 %107, label %108, label %110, !prof !1476

108:                                              ; preds = %94
  %109 = load ptr, ptr @exit_insn, align 8, !tbaa !955
  store ptr %109, ptr %1, align 8, !tbaa !955
  br label %126

110:                                              ; preds = %94
  %111 = tail call ptr @sel_bb_head(ptr noundef %98) #23
  store ptr %111, ptr %1, align 8, !tbaa !955
  %112 = load i16, ptr %13, align 8, !tbaa !1449
  %113 = icmp eq i16 %112, 1
  br i1 %113, label %114, label %120, !prof !1477

114:                                              ; preds = %110
  %115 = tail call ptr @bb_note(ptr noundef %98) #23
  %116 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1, i32 0, i32 0, i64 2
  %117 = load ptr, ptr %116, align 8, !tbaa !940
  %118 = icmp eq ptr %111, %117
  br i1 %118, label %120, label %119, !prof !1017

119:                                              ; preds = %114
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1331, ptr noundef nonnull @.str.1) #23
  br label %120

120:                                              ; preds = %110, %114, %119
  %121 = load ptr, ptr %1, align 8, !tbaa !955
  %122 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1, i32 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !940
  %124 = icmp eq ptr %123, %98
  br i1 %124, label %126, label %125, !prof !1478

125:                                              ; preds = %120
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1332, ptr noundef nonnull @.str.1) #23
  br label %126

126:                                              ; preds = %91, %108, %120, %125, %17, %20, %25
  %127 = phi i8 [ 1, %25 ], [ 0, %20 ], [ 0, %17 ], [ 1, %125 ], [ 1, %120 ], [ 1, %108 ], [ 0, %91 ]
  ret i8 %127
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @_eligible_successor_edge_p(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !1479 !PGOFuncName !1480 {
  %3 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 5
  %4 = load i16, ptr %3, align 8, !tbaa !1449
  %5 = zext i16 %4 to i32
  %6 = load ptr, ptr %0, align 8, !tbaa !1290
  %7 = tail call zeroext i8 @in_current_region_p(ptr noundef %6) #23
  %8 = icmp eq i8 %7, 0
  %9 = icmp eq i16 %4, 0
  br i1 %9, label %10, label %11, !prof !1481

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1363, ptr noundef nonnull @.str.1) #23
  br label %11

11:                                               ; preds = %2, %10
  br i1 %8, label %15, label %12, !prof !1481

12:                                               ; preds = %11
  %13 = and i32 %5, 4
  %14 = icmp eq i32 %13, 0
  br label %22

15:                                               ; preds = %11
  %16 = and i32 %5, 12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1369, ptr noundef nonnull @.str.1) #23
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
  %27 = load ptr, ptr %26, align 8, !tbaa !989
  br label %28

28:                                               ; preds = %24, %36
  %29 = phi ptr [ %41, %36 ], [ %27, %24 ]
  %30 = phi ptr [ %39, %36 ], [ %25, %24 ]
  %31 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %29) #23
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %45, !prof !1482

33:                                               ; preds = %28
  %34 = tail call fastcc zeroext i8 @sel_bb_empty_or_nop_p(ptr noundef %29) #24, !range !987
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %56, label %36, !prof !1482

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !1093
  %39 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %38, i32 noundef 0) #24
  %40 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !989
  %42 = tail call zeroext i8 @in_current_region_p(ptr noundef %41) #23
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, i1 %23, i1 false
  br i1 %44, label %56, label %28

45:                                               ; preds = %28
  %46 = tail call zeroext i8 @in_current_region_p(ptr noundef %29) #23
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %47, i1 %23, i1 false
  br i1 %48, label %106, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !1093
  %52 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %51) #24
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %106, label %54

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %51, i32 noundef 0) #24
  br label %24

56:                                               ; preds = %33, %36
  %57 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 2
  store ptr %30, ptr %57, align 8, !tbaa !1475
  %58 = tail call zeroext i8 @in_current_region_p(ptr noundef %29) #23
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %101, label %60, !prof !1483

60:                                               ; preds = %56
  %61 = load ptr, ptr @block_to_bb, align 8, !tbaa !955
  %62 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !1451
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !945
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %61, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !981
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !945
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, ptr %61, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !981
  %74 = icmp slt i32 %68, %73
  %75 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 6
  store i16 1, ptr %75, align 2, !tbaa !1452
  br i1 %74, label %76, label %83, !prof !1484

76:                                               ; preds = %60
  br i1 %8, label %77, label %81, !prof !1485

77:                                               ; preds = %76
  %78 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !981
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1431, ptr noundef nonnull @.str.1) #23
  br label %81

81:                                               ; preds = %76, %77, %80
  %82 = trunc i16 %4 to i8
  br label %98

83:                                               ; preds = %60
  %84 = load i8, ptr @pipelining_p, align 1, !tbaa !940
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %0, align 8, !tbaa !1290
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !1486
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !1486
  %92 = icmp eq ptr %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = trunc i16 %4 to i8
  br label %98

95:                                               ; preds = %86, %83
  store i16 2, ptr %75, align 2, !tbaa !1452
  %96 = trunc i16 %4 to i8
  %97 = lshr i8 %96, 1
  br label %98

98:                                               ; preds = %95, %93, %81
  %99 = phi i8 [ %82, %81 ], [ %94, %93 ], [ %97, %95 ]
  %100 = and i8 %99, 1
  br label %106

101:                                              ; preds = %56
  %102 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 6
  store i16 4, ptr %102, align 2, !tbaa !1452
  %103 = trunc i16 %4 to i8
  %104 = lshr i8 %103, 2
  %105 = and i8 %104, 1
  br label %106

106:                                              ; preds = %49, %45, %19, %101, %98
  %107 = phi i8 [ %100, %98 ], [ %105, %101 ], [ 0, %19 ], [ 0, %45 ], [ 0, %49 ]
  ret i8 %107
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_succ_iter_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !1487 !PGOFuncName !1488 {
  %2 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !1475
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !1489

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1469
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !1490

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1345, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %1, %5, %9
  %11 = load i8, ptr %0, align 8, !tbaa !1457
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %23, label %13, !prof !1489

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1469
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17, !prof !1490

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !1454
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23, !prof !1478

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3
  tail call fastcc void @ei_next(ptr noundef nonnull %22) #24
  br label %23

23:                                               ; preds = %21, %17, %13, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !998 !PGOFuncName !1491 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1128
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !955
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !955
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !998 !PGOFuncName !1492 {
  %2 = load ptr, ptr %0, align 8, !tbaa !955
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !955
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_all_loop_exits(ptr noundef %0) unnamed_addr #0 !prof !998 !PGOFuncName !1493 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %5 = tail call fastcc zeroext i8 @sel_bb_empty_or_nop_p(ptr noundef %0) #24, !range !987
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1, %16
  %8 = phi ptr [ %12, %16 ], [ %0, %1 ]
  %9 = tail call zeroext i8 @in_current_region_p(ptr noundef %8) #23
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @single_succ(ptr noundef %8) #24
  %13 = tail call zeroext i8 @in_current_region_p(ptr noundef %12) #23
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1127, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %11, %15
  %17 = tail call fastcc zeroext i8 @sel_bb_empty_or_nop_p(ptr noundef %12) #24, !range !987
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %7, !llvm.loop !1494

19:                                               ; preds = %7, %16, %1
  %20 = phi ptr [ %0, %1 ], [ %12, %16 ], [ %8, %7 ]
  %21 = tail call fastcc zeroext i8 @inner_loop_header_p(ptr noundef %20) #24, !range !987
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %80, label %23

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !1486
  %26 = load ptr, ptr @current_loop_nest, align 8
  %27 = icmp ne ptr %25, null
  %28 = icmp ne ptr %25, %26
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %36

30:                                               ; preds = %23, %30
  %31 = phi ptr [ %32, %30 ], [ %25, %23 ]
  %32 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %31) #24
  %33 = icmp ne ptr %32, null
  %34 = icmp ne ptr %32, %26
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %30, label %37, !llvm.loop !1495

36:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1144, ptr noundef nonnull @.str.1) #23
  br label %37

37:                                               ; preds = %30, %36
  %38 = phi ptr [ null, %36 ], [ %31, %30 ]
  %39 = tail call fastcc ptr @get_loop_exit_edges_unique_dests(ptr noundef %38) #24
  store ptr %39, ptr %2, align 8, !tbaa !955
  %40 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %39, i32 noundef 0, ptr noundef nonnull %3) #24, !range !1380
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %78, label %42

42:                                               ; preds = %37, %72
  %43 = phi ptr [ %73, %72 ], [ %39, %37 ]
  %44 = phi i32 [ %75, %72 ], [ 0, %37 ]
  %45 = load ptr, ptr %3, align 8, !tbaa !955
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !989
  %48 = tail call zeroext i8 @in_current_region_p(ptr noundef %47) #23
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load ptr, ptr %46, align 8, !tbaa !989
  %52 = tail call fastcc zeroext i8 @inner_loop_header_p(ptr noundef %51) #24, !range !987
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %50, %42
  %55 = load ptr, ptr %46, align 8, !tbaa !989
  %56 = tail call fastcc ptr @get_all_loop_exits(ptr noundef %55) #24
  %57 = icmp eq ptr %56, null
  br i1 %57, label %72, label %58

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %59 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef nonnull %56, i32 noundef 0, ptr noundef nonnull %4) #24, !range !1380
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58, %61
  %62 = phi i32 [ %64, %61 ], [ 0, %58 ]
  %63 = load ptr, ptr %4, align 8, !tbaa !955
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %2, ptr noundef %63) #24
  %64 = add nuw nsw i32 %62, 1
  %65 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef nonnull %56, i32 noundef %64, ptr noundef nonnull %4) #24, !range !1380
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %61, !llvm.loop !1496

67:                                               ; preds = %61
  %68 = load ptr, ptr %2, align 8
  br label %69

69:                                               ; preds = %67, %58
  %70 = phi ptr [ %68, %67 ], [ %43, %58 ]
  tail call fastcc void @VEC_edge_base_ordered_remove(ptr noundef %70, i32 noundef %44) #24
  %71 = add nsw i32 %44, -1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br label %72

72:                                               ; preds = %69, %54, %50
  %73 = phi ptr [ %43, %50 ], [ %70, %69 ], [ %43, %54 ]
  %74 = phi i32 [ %44, %50 ], [ %71, %69 ], [ %44, %54 ]
  %75 = add nsw i32 %74, 1
  %76 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %73, i32 noundef %75, ptr noundef nonnull %3) #24, !range !1380
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %42, !llvm.loop !1497

78:                                               ; preds = %72, %37
  %79 = phi ptr [ %39, %37 ], [ %73, %72 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  br label %80

80:                                               ; preds = %78, %19
  %81 = phi ptr [ %79, %78 ], [ null, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret ptr %81
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sel_bb_empty_or_nop_p(ptr noundef %0) unnamed_addr #0 !prof !1479 !PGOFuncName !1498 {
  %2 = tail call ptr @sel_bb_head(ptr noundef %0) #23
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4, !prof !1481

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !940
  %7 = load ptr, ptr @nop_pattern, align 8, !tbaa !955
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %20, !prof !1499

9:                                                ; preds = %4
  %10 = load ptr, ptr @cfun, align 8, !tbaa !955
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !1074
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !1289
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %20, label %16, !prof !1500

16:                                               ; preds = %9
  %17 = tail call ptr @sel_bb_end(ptr noundef %0) #23
  %18 = icmp eq ptr %2, %17
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %16, %9, %4, %1
  %21 = phi i8 [ 1, %1 ], [ 0, %4 ], [ 0, %9 ], [ %19, %16 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @inner_loop_header_p(ptr noundef %0) unnamed_addr #0 !prof !998 !PGOFuncName !1501 {
  %2 = load ptr, ptr @current_loop_nest, align 8, !tbaa !955
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !955
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1074
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !1289
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %28, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !1486
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.loop, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !1318
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %2, ptr noundef nonnull %0) #23
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %13) #24
  %24 = load ptr, ptr @current_loop_nest, align 8, !tbaa !955
  %25 = tail call fastcc i32 @loop_depth(ptr noundef %24) #24
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1052, ptr noundef nonnull @.str.1) #23
  br label %28

28:                                               ; preds = %15, %19, %27, %22, %11, %4, %1
  %29 = phi i8 [ 0, %1 ], [ 0, %4 ], [ 0, %11 ], [ 1, %22 ], [ 1, %27 ], [ 0, %19 ], [ 0, %15 ]
  ret i8 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !998 !PGOFuncName !1502 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !1503
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #24
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_loop_exit_edges_unique_dests(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !998 !PGOFuncName !1504 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  store ptr null, ptr %2, align 8, !tbaa !955
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !1314
  %6 = load ptr, ptr @cfun, align 8, !tbaa !955
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1074
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !1289
  %11 = icmp eq ptr %5, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !1109
  %15 = load i32, ptr %14, align 8, !tbaa !1505
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 1067, ptr noundef nonnull @.str.1) #23
  br label %19

19:                                               ; preds = %12, %18
  %20 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 18
  %21 = load ptr, ptr %20, align 8, !tbaa !1507
  %22 = getelementptr inbounds %struct.loop_exit, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !1508
  %24 = load ptr, ptr %23, align 8, !tbaa !1510
  %25 = icmp eq ptr %24, null
  br i1 %25, label %53, label %26

26:                                               ; preds = %19, %46
  %27 = phi ptr [ %49, %46 ], [ %24, %19 ]
  %28 = phi ptr [ %48, %46 ], [ %23, %19 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %29 = load ptr, ptr %2, align 8
  %30 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %29, i32 noundef 0, ptr noundef nonnull %3) #24, !range !1380
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !989
  br label %39

35:                                               ; preds = %39
  %36 = add nuw nsw i32 %40, 1
  %37 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %29, i32 noundef %36, ptr noundef nonnull %3) #24, !range !1380
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39, !llvm.loop !1511

39:                                               ; preds = %32, %35
  %40 = phi i32 [ 0, %32 ], [ %36, %35 ]
  %41 = load ptr, ptr %3, align 8, !tbaa !955
  %42 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !989
  %44 = icmp eq ptr %43, %34
  br i1 %44, label %46, label %35

45:                                               ; preds = %35, %26
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %27) #24
  br label %46

46:                                               ; preds = %39, %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  %47 = getelementptr inbounds %struct.loop_exit, ptr %28, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !1508
  %49 = load ptr, ptr %48, align 8, !tbaa !1510
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %26, !llvm.loop !1512

51:                                               ; preds = %46
  %52 = load ptr, ptr %2, align 8, !tbaa !955
  br label %53

53:                                               ; preds = %51, %19
  %54 = phi ptr [ %52, %51 ], [ null, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret ptr %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !998 !PGOFuncName !1513 {
  tail call fastcc void @VEC_edge_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !955
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_ordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !prof !998 !PGOFuncName !1514 {
  %3 = load i32, ptr %0, align 8, !tbaa !1128
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = add i32 %3, -1
  store i32 %7, ptr %0, align 8, !tbaa !1128
  %8 = sub i32 %7, %1
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %6, i64 %10, i1 false)
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !998 !PGOFuncName !1515 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !1503
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #24
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !998 !PGOFuncName !1516 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1517
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !998 !PGOFuncName !1519 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !955
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !998 !PGOFuncName !1520 {
  %2 = load ptr, ptr %0, align 8, !tbaa !955
  %3 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !955
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !998 !PGOFuncName !1521 {
  %3 = load i32, ptr %0, align 8, !tbaa !1128
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1128
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !955
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !998 !PGOFuncName !1522 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1523
  %6 = load i32, ptr %0, align 8, !tbaa !1128
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @rgn_setup_region(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @current_region_empty_p() unnamed_addr #0 !prof !1069 !PGOFuncName !1524 {
  %1 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %8, label %25, !prof !1525

3:                                                ; preds = %8
  %4 = add nuw nsw i64 %9, 1
  %5 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  %6 = sext i32 %5 to i64
  %7 = icmp slt i64 %4, %6
  br i1 %7, label %8, label %25, !prof !1526, !llvm.loop !1527

8:                                                ; preds = %0, %3
  %9 = phi i64 [ %4, %3 ], [ 0, %0 ]
  %10 = load ptr, ptr @cfun, align 8, !tbaa !955
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !1074
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !1076
  %15 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !955
  %16 = load ptr, ptr @ebb_head, align 8, !tbaa !955
  %17 = getelementptr inbounds i32, ptr %16, i64 %9
  %18 = load i32, ptr %17, align 4, !tbaa !981
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %15, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !981
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %14, i32 noundef %21) #24
  %23 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %22) #23
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %3, !prof !1070

25:                                               ; preds = %8, %3, %0
  %26 = phi i8 [ 1, %0 ], [ 1, %3 ], [ 0, %8 ]
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_current_loop_nest(i32 noundef %0) unnamed_addr #0 !prof !998 !PGOFuncName !1528 {
  %2 = tail call ptr @get_loop_nest_for_rgn(i32 noundef %0) #23
  store ptr %2, ptr @current_loop_nest, align 8, !tbaa !955
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  tail call void @sel_add_loop_preheaders() #23
  %5 = load ptr, ptr @current_loop_nest, align 8, !tbaa !955
  %6 = tail call ptr @loop_latch_edge(ptr noundef %5) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6792, ptr noundef nonnull @.str.1) #23
  br label %9

9:                                                ; preds = %4, %8
  %10 = load ptr, ptr @current_loop_nest, align 8, !tbaa !955
  %11 = getelementptr inbounds %struct.loop, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !1529
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6793, ptr noundef nonnull @.str.1) #23
  br label %15

15:                                               ; preds = %14, %9, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @sel_setup_region_sched_flags() unnamed_addr #14 !prof !1069 !PGOFuncName !1530 {
  store i1 true, ptr @enable_schedule_as_rhs_p, align 1
  store i8 1, ptr @bookkeeping_p, align 1, !tbaa !940
  %1 = load i32, ptr @flag_sel_sched_pipelining, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3, !prof !1531

3:                                                ; preds = %0
  %4 = load ptr, ptr @current_loop_nest, align 8, !tbaa !955
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i8 [ 0, %0 ], [ %6, %3 ]
  store i8 %8, ptr @pipelining_p, align 1, !tbaa !940
  %9 = load ptr, ptr @compiler_params, align 8, !tbaa !955
  %10 = getelementptr inbounds %struct.param_info, ptr %9, i64 87, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !1532
  store i32 %11, ptr @max_insns_to_rename, align 4, !tbaa !981
  %12 = getelementptr inbounds %struct.param_info, ptr %9, i64 85, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !1532
  store i32 %13, ptr @max_ws, align 4, !tbaa !981
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1069 !PGOFuncName !1534 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !1535 !PGOFuncName !1536 {
  %3 = load i32, ptr %0, align 8, !tbaa !1537
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1537
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !955
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !1539 !PGOFuncName !1540 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !955
  ret ptr %5
}

; Function Attrs: optsize
declare void @sel_init_bbs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sched_init_luids(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sched_deps_init(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rgn_setup_sched_infos() local_unnamed_addr #2

; Function Attrs: optsize
declare void @sel_set_sched_flags() local_unnamed_addr #2

; Function Attrs: optsize
declare void @haifa_init_h_i_d(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_compute_priorities(i32 noundef %0) unnamed_addr #0 !prof !1069 !PGOFuncName !1541 {
  tail call void @sched_rgn_compute_dependencies(i32 noundef %0) #23
  tail call void @compute_priorities() #23
  %2 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %3 = icmp sgt i32 %2, 4
  br i1 %3, label %4, label %5, !prof !1071

4:                                                ; preds = %1
  tail call void @debug_rgn_dependencies(i32 noundef 0) #23
  br label %5

5:                                                ; preds = %4, %1
  tail call void @free_rgn_deps() #23
  ret void
}

; Function Attrs: optsize
declare void @init_deps_global() local_unnamed_addr #2

; Function Attrs: optsize
declare void @sel_setup_sched_infos() local_unnamed_addr #2

; Function Attrs: optsize
declare void @sel_init_global_and_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !1069 !PGOFuncName !1542 {
  %2 = load ptr, ptr %0, align 8, !tbaa !955
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1071

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !955
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @sel_is_loop_preheader_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sel_register_cfg_hooks() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_max_uid() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0) unnamed_addr #10 !prof !1069 !PGOFuncName !1543 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  store ptr null, ptr %2, align 8, !tbaa !1544
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @setup_nop_vinsn() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_loop_nest_for_rgn(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sel_add_loop_preheaders() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sched_rgn_compute_dependencies(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @compute_priorities() local_unnamed_addr #2

; Function Attrs: optsize
declare void @debug_rgn_dependencies(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_rgn_deps() local_unnamed_addr #2

; Function Attrs: optsize
declare void @purge_empty_blocks() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @init_seqno(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1069 !PGOFuncName !1545 {
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  %6 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  %7 = tail call ptr @sbitmap_alloc(i32 noundef %6) #23
  %8 = icmp eq ptr %1, null
  br i1 %8, label %28, label %9, !prof !1070

9:                                                ; preds = %3
  tail call void @sbitmap_ones(ptr noundef %7) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %5) #24
  %10 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #24, !range !987
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %9, %24
  %13 = load ptr, ptr @block_to_bb, align 8, !tbaa !955
  %14 = load i32, ptr %5, align 4, !tbaa !981
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %13, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !981
  %18 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6735, ptr noundef nonnull @.str.1) #23
  %21 = load ptr, ptr @block_to_bb, align 8, !tbaa !955
  %22 = getelementptr inbounds i32, ptr %21, i64 %15
  %23 = load i32, ptr %22, align 4, !tbaa !981
  br label %24

24:                                               ; preds = %12, %20
  %25 = phi i32 [ %17, %12 ], [ %23, %20 ]
  tail call fastcc void @RESET_BIT(ptr noundef %7, i32 noundef %25) #24
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #24, !range !987
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %41, label %12, !llvm.loop !1546

28:                                               ; preds = %3
  tail call void @sbitmap_zero(ptr noundef %7) #23
  %29 = load ptr, ptr @cfun, align 8, !tbaa !955
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !1074
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !1076
  %34 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !955
  %35 = load ptr, ptr @ebb_head, align 8, !tbaa !955
  %36 = load i32, ptr %35, align 4, !tbaa !981
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %34, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !981
  %40 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %33, i32 noundef %39) #24
  br label %41

41:                                               ; preds = %24, %9, %28
  %42 = phi ptr [ %40, %28 ], [ %2, %9 ], [ %2, %24 ]
  %43 = icmp sgt i32 %0, 0
  br i1 %43, label %47, label %44, !prof !1070

44:                                               ; preds = %41
  %45 = load i32, ptr @sched_max_luid, align 4, !tbaa !981
  %46 = add nsw i32 %45, -1
  br label %47

47:                                               ; preds = %41, %44
  %48 = phi i32 [ %46, %44 ], [ %0, %41 ]
  store i32 %48, ptr @cur_seqno, align 4, !tbaa !981
  tail call fastcc void @init_seqno_1(ptr noundef %42, ptr noundef %7, ptr noundef %1) #24
  %49 = load i32, ptr @cur_seqno, align 4, !tbaa !981
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51, !prof !1070

51:                                               ; preds = %47
  %52 = icmp eq i32 %0, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6747, ptr noundef nonnull @.str.1) #23
  br label %54

54:                                               ; preds = %47, %51, %53
  %55 = load ptr, ptr %7, align 8, !tbaa !1547
  tail call void @free(ptr noundef %55) #24
  tail call void @free(ptr noundef %7) #24
  %56 = load i32, ptr @sched_max_luid, align 4, !tbaa !981
  %57 = add nsw i32 %56, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  ret i32 %57
}

; Function Attrs: optsize
declare void @init_fences(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_sched_region_2(i32 noundef %0) unnamed_addr #0 !prof !1069 !PGOFuncName !1549 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store i32 0, ptr @stat_bookkeeping_copies, align 4, !tbaa !981
  store i32 0, ptr @stat_insns_needed_bookkeeping, align 4, !tbaa !981
  store i32 0, ptr @stat_renamed_scheduled, align 4, !tbaa !981
  store i32 0, ptr @stat_substitutions_total, align 4, !tbaa !981
  store i32 0, ptr @num_insns_scheduled, align 4, !tbaa !981
  %6 = load ptr, ptr @fences, align 8, !tbaa !955
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8, !prof !1550

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %17, %8 ], [ %6, %1 ]
  %10 = phi i32 [ %16, %8 ], [ %0, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !955
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr %4, ptr %5, align 8, !tbaa !955
  call fastcc void @find_min_max_seqno(ptr noundef nonnull %9, ptr noundef nonnull %2, ptr noundef nonnull %3) #24
  %11 = load ptr, ptr @fences, align 8, !tbaa !955
  %12 = load i32, ptr %3, align 4, !tbaa !981
  call fastcc void @schedule_on_fences(ptr noundef %11, i32 noundef %12, ptr noundef nonnull %5) #24
  %13 = load ptr, ptr @fences, align 8, !tbaa !955
  %14 = call fastcc ptr @calculate_new_fences(ptr noundef %13, i32 noundef %0) #24
  store ptr %14, ptr @fences, align 8, !tbaa !955
  %15 = load i32, ptr %2, align 4, !tbaa !981
  %16 = call fastcc i32 @update_seqnos_and_stage(i32 noundef %15, i32 noundef %12, i32 noundef %10, ptr noundef nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  %17 = load ptr, ptr @fences, align 8, !tbaa !955
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !prof !1551, !llvm.loop !1552

19:                                               ; preds = %8, %1
  %20 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %49, !prof !1071

22:                                               ; preds = %19
  %23 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr @stat_bookkeeping_copies, align 4, !tbaa !981
  %27 = load i32, ptr @stat_insns_needed_bookkeeping, align 4, !tbaa !981
  %28 = load i32, ptr @stat_renamed_scheduled, align 4, !tbaa !981
  %29 = load i32, ptr @stat_substitutions_total, align 4, !tbaa !981
  %30 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.39, i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29) #24
  %31 = shl nsw i32 %30, 1
  %32 = or disjoint i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  %35 = load i32, ptr @stat_bookkeeping_copies, align 4, !tbaa !981
  %36 = load i32, ptr @stat_insns_needed_bookkeeping, align 4, !tbaa !981
  %37 = load i32, ptr @stat_renamed_scheduled, align 4, !tbaa !981
  %38 = load i32, ptr @stat_substitutions_total, align 4, !tbaa !981
  %39 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %34, i64 noundef %33, ptr noundef nonnull @.str.39, i32 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %38) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %34) #23
  %40 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %41 = call i32 @fputs(ptr nonnull %34, ptr %40)
  br label %49

42:                                               ; preds = %22
  %43 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %44 = load i32, ptr @stat_bookkeeping_copies, align 4, !tbaa !981
  %45 = load i32, ptr @stat_insns_needed_bookkeeping, align 4, !tbaa !981
  %46 = load i32, ptr @stat_renamed_scheduled, align 4, !tbaa !981
  %47 = load i32, ptr @stat_substitutions_total, align 4, !tbaa !981
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.39, i32 noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %47) #24
  br label %49

49:                                               ; preds = %25, %42, %19
  ret void
}

; Function Attrs: optsize
declare void @clear_outdated_rtx_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @flist_tail_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !prof !1004 !PGOFuncName !1553 {
  %4 = load ptr, ptr %1, align 8, !tbaa !1554
  store ptr %4, ptr %0, align 8, !tbaa !1555
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !1557
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !1136

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !1555
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !1558
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !1136

13:                                               ; preds = %8
  %14 = shl i32 %11, 7
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !1560
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !1561
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !1562
  %21 = icmp eq i64 %19, 0
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %16, %22
  store i32 %23, ptr %2, align 4, !tbaa !981
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #16 !prof !1004 !PGOFuncName !1563 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1562
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !1136

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !981
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !1564

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !981
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !981
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !1560
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !1555
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !1560
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !1565

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !1561
  store i64 %35, ptr %3, align 8, !tbaa !1562
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !1136

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !981
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !981
  %40 = load i32, ptr %23, align 8, !tbaa !1560
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !1560
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !1566, !llvm.loop !1567

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !1568
  store ptr %44, ptr %0, align 8, !tbaa !1555
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !1136

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !1558
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !981
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !1562
  store i32 %16, ptr %1, align 4, !tbaa !981
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #17 !prof !998 !PGOFuncName !1569 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1547
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
  %15 = load i64, ptr %14, align 8, !tbaa !1561
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !940
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !940
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !1561
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !1561
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !998 !PGOFuncName !1570 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1562
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !1562
  %6 = load i32, ptr %1, align 4, !tbaa !981
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !981
  ret void
}

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_seqno_1(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1535 !PGOFuncName !1571 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.succ_iterator, align 8
  %6 = load ptr, ptr @block_to_bb, align 8, !tbaa !955
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !945
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !981
  %12 = tail call ptr @bb_note(ptr noundef %0) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #25
  tail call fastcc void @SET_BIT(ptr noundef %1, i32 noundef %11) #24
  %13 = icmp eq ptr %2, null
  br i1 %13, label %17, label %14, !prof !1572

14:                                               ; preds = %3
  %15 = load i32, ptr %7, align 8, !tbaa !945
  %16 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %2, i32 noundef %15) #23
  br label %17

17:                                               ; preds = %14, %3
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !940
  %20 = getelementptr inbounds %struct.rtl_bb_info, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !959
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %5, ptr noundef nonnull %4, ptr noundef %21, i32 noundef 9) #24
  %22 = load ptr, ptr %18, align 8, !tbaa !940
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !959
  %25 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %24) #24
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %60, label %27, !prof !1573

27:                                               ; preds = %17, %54
  %28 = load ptr, ptr %4, align 8, !tbaa !955
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !940
  %31 = load ptr, ptr @block_to_bb, align 8, !tbaa !955
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !945
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %31, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !981
  %37 = tail call zeroext i8 @in_current_region_p(ptr noundef %30) #23
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40, !prof !1574

39:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6700, ptr noundef nonnull @.str.1) #23
  br label %40

40:                                               ; preds = %27, %39
  %41 = lshr i32 %36, 6
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !1561
  %45 = and i32 %36, 63
  %46 = zext nneg i32 %45 to i64
  %47 = shl nuw i64 1, %46
  %48 = and i64 %44, %47
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54, !prof !1575

50:                                               ; preds = %40
  %51 = icmp sgt i32 %36, %11
  br i1 %51, label %53, label %52, !prof !1575

52:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6704, ptr noundef nonnull @.str.1) #23
  br label %53

53:                                               ; preds = %50, %52
  tail call fastcc void @init_seqno_1(ptr noundef nonnull %30, ptr noundef nonnull %1, ptr noundef %2) #24
  br label %54

54:                                               ; preds = %53, %40
  call fastcc void @_succ_iter_next(ptr noundef nonnull %5) #24
  %55 = load ptr, ptr %18, align 8, !tbaa !940
  %56 = getelementptr inbounds %struct.rtl_bb_info, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !959
  %58 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %57) #24
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %27, !prof !1576, !llvm.loop !1577

60:                                               ; preds = %54, %17
  %61 = load ptr, ptr %18, align 8, !tbaa !940
  %62 = getelementptr inbounds %struct.rtl_bb_info, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !940
  %64 = icmp eq ptr %63, %12
  br i1 %64, label %82, label %65, !prof !1578

65:                                               ; preds = %60
  %66 = load i32, ptr @cur_seqno, align 4, !tbaa !981
  %67 = load ptr, ptr @s_i_d, align 8
  %68 = load ptr, ptr @sched_luids, align 8
  br label %69

69:                                               ; preds = %65, %69
  %70 = phi ptr [ %63, %65 ], [ %79, %69 ]
  %71 = phi i32 [ %66, %65 ], [ %72, %69 ]
  %72 = add nsw i32 %71, -1
  %73 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !940
  %75 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %68, i32 noundef %74) #24
  %76 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %67, i32 noundef %75) #24
  %77 = getelementptr inbounds %struct._sel_insn_data, ptr %76, i64 0, i32 2
  store i32 %71, ptr %77, align 4, !tbaa !1154
  %78 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !940
  %80 = icmp eq ptr %79, %12
  br i1 %80, label %81, label %69, !prof !1579, !llvm.loop !1580

81:                                               ; preds = %69
  store i32 %72, ptr @cur_seqno, align 4, !tbaa !981
  br label %82

82:                                               ; preds = %81, %60
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #17 !prof !1535 !PGOFuncName !1581 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1547
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !1572

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
  %15 = load i64, ptr %14, align 8, !tbaa !1561
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !940
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !940
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !1561
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !1561
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @find_min_max_seqno(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #18 !prof !1582 !PGOFuncName !1583 {
  %4 = load ptr, ptr @s_i_d, align 8
  %5 = load ptr, ptr @sched_luids, align 8
  %6 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !940
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !940
  %10 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %5, i32 noundef %9) #24
  %11 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %4, i32 noundef %10) #24
  %12 = getelementptr inbounds %struct._sel_insn_data, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !1154
  store i32 %13, ptr %2, align 4, !tbaa !981
  store i32 %13, ptr %1, align 4, !tbaa !981
  %14 = load ptr, ptr %0, align 8, !tbaa !1409
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16, !prof !1584

16:                                               ; preds = %3, %35
  %17 = phi ptr [ %36, %35 ], [ %14, %3 ]
  %18 = load ptr, ptr @s_i_d, align 8
  %19 = load ptr, ptr @sched_luids, align 8
  %20 = getelementptr inbounds %struct._list_node, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !940
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !940
  %24 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %19, i32 noundef %23) #24
  %25 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %18, i32 noundef %24) #24
  %26 = getelementptr inbounds %struct._sel_insn_data, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !1154
  %28 = load i32, ptr %1, align 4, !tbaa !981
  %29 = icmp sgt i32 %28, %27
  br i1 %29, label %33, label %30

30:                                               ; preds = %16
  %31 = load i32, ptr %2, align 4, !tbaa !981
  %32 = icmp slt i32 %31, %27
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %16
  %34 = phi ptr [ %1, %16 ], [ %2, %30 ]
  store i32 %27, ptr %34, align 4, !tbaa !981
  br label %35

35:                                               ; preds = %33, %30
  %36 = load ptr, ptr %17, align 8, !tbaa !1409
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %16, !prof !1414, !llvm.loop !1585

38:                                               ; preds = %35, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @schedule_on_fences(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !1582 !PGOFuncName !1586 {
  %4 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %26, !prof !1587

6:                                                ; preds = %3
  %7 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = alloca [47 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, ptr noundef nonnull align 1 dereferenceable(24) @.str.40, i64 24, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %10) #23
  %11 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %12 = call i32 @fputs(ptr nonnull %10, ptr %11)
  br label %16

13:                                               ; preds = %6
  %14 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %15 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 23, i64 1, ptr %14)
  br label %16

16:                                               ; preds = %13, %9
  call void @dump_flist(ptr noundef %0) #23
  %17 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = alloca [3 x i8], align 16
  store i16 10, ptr %20, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %20) #23
  %21 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %22 = call i32 @fputs(ptr nonnull %20, ptr %21)
  br label %26

23:                                               ; preds = %16
  %24 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %25 = call i32 @fputc(i32 10, ptr %24)
  br label %26

26:                                               ; preds = %19, %23, %3
  store i1 false, ptr @scheduled_something_on_previous_fence, align 1
  %27 = icmp eq ptr %0, null
  br i1 %27, label %72, label %28, !prof !1588

28:                                               ; preds = %26
  %29 = xor i32 %1, -1
  br label %30

30:                                               ; preds = %65, %28
  %31 = phi ptr [ %0, %28 ], [ %70, %65 ]
  br label %32

32:                                               ; preds = %30, %56
  %33 = phi ptr [ null, %30 ], [ %59, %56 ]
  %34 = phi i8 [ 1, %30 ], [ %58, %56 ]
  %35 = phi ptr [ %0, %30 ], [ %60, %56 ]
  %36 = phi i32 [ 0, %30 ], [ %57, %56 ]
  %37 = getelementptr inbounds %struct._list_node, ptr %35, i64 0, i32 1
  %38 = getelementptr inbounds %struct._list_node, ptr %35, i64 0, i32 1, i32 0, i32 13
  %39 = load i8, ptr %38, align 8
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %56, !prof !1589

42:                                               ; preds = %32
  %43 = load ptr, ptr @s_i_d, align 8
  %44 = load ptr, ptr @sched_luids, align 8
  %45 = load ptr, ptr %37, align 8, !tbaa !1590
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !940
  %48 = call fastcc i32 @VEC_int_base_index(ptr noundef %44, i32 noundef %47) #24
  %49 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %43, i32 noundef %48) #24
  %50 = getelementptr inbounds %struct._sel_insn_data, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !1154
  %52 = icmp eq i8 %34, 0
  br i1 %52, label %53, label %55, !prof !1587

53:                                               ; preds = %42
  %54 = icmp sgt i32 %51, %36
  br i1 %54, label %55, label %56

55:                                               ; preds = %53, %42
  br label %56

56:                                               ; preds = %55, %53, %32
  %57 = phi i32 [ %36, %32 ], [ %51, %55 ], [ %36, %53 ]
  %58 = phi i8 [ %34, %32 ], [ 0, %55 ], [ 0, %53 ]
  %59 = phi ptr [ %33, %32 ], [ %37, %55 ], [ %33, %53 ]
  %60 = load ptr, ptr %35, align 8, !tbaa !1409
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %32, !prof !1584, !llvm.loop !1592

62:                                               ; preds = %56
  %63 = icmp eq ptr %59, null
  br i1 %63, label %64, label %65, !prof !1587

64:                                               ; preds = %62
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7273, ptr noundef nonnull @.str.1) #23
  br label %65

65:                                               ; preds = %62, %64
  %66 = add i32 %57, %29
  call fastcc void @fill_insns(ptr noundef %59, i32 noundef %66, ptr noundef %2) #24
  %67 = getelementptr inbounds %struct._fence, ptr %59, i64 0, i32 13
  %68 = load i8, ptr %67, align 8
  %69 = or i8 %68, 1
  store i8 %69, ptr %67, align 8
  %70 = load ptr, ptr %31, align 8, !tbaa !1409
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %30, !prof !1584, !llvm.loop !1593

72:                                               ; preds = %65, %26
  call fastcc void @vinsn_vec_clear(ptr noundef nonnull @vec_bookkeeping_blocked_vinsns) #24
  call fastcc void @vinsn_vec_clear(ptr noundef nonnull @vec_target_unavailable_vinsns) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @calculate_new_fences(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1582 !PGOFuncName !1594 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.flist_tail_def, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  store ptr %0, ptr %3, align 8, !tbaa !955
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #25
  call void @flist_tail_init(ptr noundef nonnull %4) #23
  %5 = icmp eq ptr %0, null
  br i1 %5, label %68, label %6, !prof !1588

6:                                                ; preds = %2, %65
  %7 = phi ptr [ %66, %65 ], [ %0, %2 ]
  %8 = getelementptr inbounds %struct._list_node, ptr %7, i64 0, i32 1
  %9 = getelementptr inbounds %struct._list_node, ptr %7, i64 0, i32 1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !1595
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %64, !prof !1596

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct._list_node, ptr %7, i64 0, i32 1, i32 0, i32 13
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %65, !prof !1597

17:                                               ; preds = %12
  %18 = load ptr, ptr %8, align 8, !tbaa !1590
  %19 = load ptr, ptr @s_i_d, align 8
  %20 = load ptr, ptr @sched_luids, align 8
  %21 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !940
  %23 = call fastcc i32 @VEC_int_base_index(ptr noundef %20, i32 noundef %22) #24
  %24 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %19, i32 noundef %23) #24
  %25 = getelementptr inbounds %struct._sel_insn_data, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !1154
  %27 = icmp slt i32 %26, 1
  %28 = icmp sgt i32 %26, %1
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %31, !prof !1598

30:                                               ; preds = %17
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7329, ptr noundef nonnull @.str.1) #23
  br label %31

31:                                               ; preds = %17, %30
  %32 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %63, !prof !1599

34:                                               ; preds = %31
  %35 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %21, align 8, !tbaa !940
  %39 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !940
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !945
  %43 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.80, i32 noundef %38, i32 noundef %42) #24
  %44 = shl nsw i32 %43, 1
  %45 = or disjoint i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = alloca i8, i64 %46, align 16
  %48 = load i32, ptr %21, align 8, !tbaa !940
  %49 = load ptr, ptr %39, align 8, !tbaa !940
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !945
  %52 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %47, i64 noundef %46, ptr noundef nonnull @.str.80, i32 noundef %48, i32 noundef %51) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %47) #23
  %53 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %54 = call i32 @fputs(ptr nonnull %47, ptr %53)
  br label %63

55:                                               ; preds = %34
  %56 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %57 = load i32, ptr %21, align 8, !tbaa !940
  %58 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !940
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !945
  %62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.80, i32 noundef %57, i32 noundef %61) #24
  br label %63

63:                                               ; preds = %37, %55, %31
  call void @move_fence_to_fences(ptr noundef nonnull %7, ptr noundef nonnull %4) #23
  br label %65

64:                                               ; preds = %6
  call fastcc void @extract_new_fences_from(ptr noundef nonnull %7, ptr noundef nonnull %4, i32 noundef %1) #24
  br label %65

65:                                               ; preds = %12, %63, %64
  %66 = load ptr, ptr %7, align 8, !tbaa !1409
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %6, !prof !1584, !llvm.loop !1600

68:                                               ; preds = %65, %2
  call void @flist_clear(ptr noundef nonnull %3) #23
  %69 = load ptr, ptr %4, align 8, !tbaa !1601
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret ptr %69
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @update_seqnos_and_stage(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1582 !PGOFuncName !1603 {
  %5 = alloca %struct._list_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %7 = load ptr, ptr %3, align 8, !tbaa !955
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9, !prof !1604

9:                                                ; preds = %4
  %10 = load ptr, ptr @s_i_d, align 8
  %11 = load ptr, ptr @sched_luids, align 8
  %12 = getelementptr inbounds %struct._list_node, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !940
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !940
  %16 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %11, i32 noundef %15) #24
  %17 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %10, i32 noundef %16) #24
  %18 = getelementptr inbounds %struct._sel_insn_data, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !1154
  %20 = sub i32 %1, %0
  %21 = add i32 %20, 2
  %22 = add i32 %21, %2
  %23 = add i32 %22, %19
  %24 = icmp sgt i32 %23, %2
  br i1 %24, label %26, label %25, !prof !1605

25:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7364, ptr noundef nonnull @.str.1) #23
  br label %26

26:                                               ; preds = %4, %25, %9
  %27 = phi i32 [ %23, %9 ], [ %23, %25 ], [ %2, %4 ]
  call fastcc void @_list_iter_start(ptr noundef nonnull %5, ptr noundef nonnull %3, i8 noundef zeroext 0) #24
  %28 = load ptr, ptr %5, align 8, !tbaa !1054
  %29 = load ptr, ptr %28, align 8, !tbaa !955
  %30 = call fastcc zeroext i8 @_list_iter_cond_x(ptr noundef %29, ptr noundef nonnull %6) #24, !range !987
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %76, label %32, !prof !1588

32:                                               ; preds = %26
  %33 = add nsw i32 %2, %1
  %34 = add i32 %33, 2
  %35 = sub i32 %34, %0
  br label %36

36:                                               ; preds = %32, %71
  %37 = load ptr, ptr @s_i_d, align 8
  %38 = load ptr, ptr @sched_luids, align 8
  %39 = load ptr, ptr %6, align 8, !tbaa !955
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !940
  %42 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %38, i32 noundef %41) #24
  %43 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %37, i32 noundef %42) #24
  %44 = getelementptr inbounds %struct._sel_insn_data, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !1154
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %51, label %47, !prof !1136

47:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7371, ptr noundef nonnull @.str.1) #23
  %48 = load ptr, ptr @s_i_d, align 8
  %49 = load ptr, ptr @sched_luids, align 8
  %50 = load i32, ptr %40, align 8, !tbaa !940
  br label %51

51:                                               ; preds = %36, %47
  %52 = phi i32 [ %41, %36 ], [ %50, %47 ]
  %53 = phi ptr [ %38, %36 ], [ %49, %47 ]
  %54 = phi ptr [ %37, %36 ], [ %48, %47 ]
  %55 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %53, i32 noundef %52) #24
  %56 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %54, i32 noundef %55) #24
  %57 = getelementptr inbounds %struct._sel_insn_data, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !1154
  %59 = add nsw i32 %35, %58
  store i32 %59, ptr %57, align 4, !tbaa !1154
  %60 = load i32, ptr %40, align 8, !tbaa !940
  %61 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %53, i32 noundef %60) #24
  %62 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %54, i32 noundef %61) #24
  %63 = getelementptr inbounds %struct._sel_insn_data, ptr %62, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !1154
  %65 = icmp sgt i32 %64, %27
  br i1 %65, label %66, label %67, !prof !1137

66:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7373, ptr noundef nonnull @.str.1) #23
  br label %67

67:                                               ; preds = %51, %66
  %68 = load i8, ptr @pipelining_p, align 1, !tbaa !940
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %71, !prof !1136

70:                                               ; preds = %67
  tail call void @free_data_for_scheduled_insn(ptr noundef nonnull %39) #23
  br label %71

71:                                               ; preds = %67, %70
  call fastcc void @_list_iter_next(ptr noundef nonnull %5) #24
  %72 = load ptr, ptr %5, align 8, !tbaa !1054
  %73 = load ptr, ptr %72, align 8, !tbaa !955
  %74 = call fastcc zeroext i8 @_list_iter_cond_x(ptr noundef %73, ptr noundef nonnull %6) #24, !range !987
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %36, !prof !1606, !llvm.loop !1607

76:                                               ; preds = %71, %26
  tail call fastcc void @_list_clear(ptr noundef nonnull %3) #24
  %77 = load i32, ptr @global_level, align 4, !tbaa !981
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr @global_level, align 4, !tbaa !981
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #25
  ret i32 %27
}

; Function Attrs: optsize
declare void @dump_flist(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fill_insns(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !1582 !PGOFuncName !1608 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !955
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr null, ptr %5, align 8, !tbaa !955
  %7 = load ptr, ptr %0, align 8, !tbaa !1590
  %8 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %35, !prof !1587

10:                                               ; preds = %3
  %11 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !940
  %16 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !1609
  %18 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.41, i32 noundef %15, i32 noundef %17) #24
  %19 = shl nsw i32 %18, 1
  %20 = or disjoint i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  %23 = load i32, ptr %14, align 8, !tbaa !940
  %24 = load i32, ptr %16, align 8, !tbaa !1609
  %25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %22, i64 noundef %21, ptr noundef nonnull @.str.41, i32 noundef %23, i32 noundef %24) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %22) #23
  %26 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %27 = call i32 @fputs(ptr nonnull %22, ptr %26)
  br label %35

28:                                               ; preds = %10
  %29 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %30 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !940
  %32 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !1609
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.41, i32 noundef %31, i32 noundef %33) #24
  br label %35

35:                                               ; preds = %13, %28, %3
  %36 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !1610
  call void @blist_add(ptr noundef nonnull %4, ptr noundef %7, ptr noundef null, ptr noundef %37) #23
  %38 = load ptr, ptr %4, align 8, !tbaa !955
  %39 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !1611
  call void @set_target_context(ptr noundef %40) #23
  %41 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 11
  %42 = load i32, ptr %41, align 8, !tbaa !1612
  store i32 %42, ptr @can_issue_more, align 4, !tbaa !981
  %43 = load ptr, ptr @block_to_bb, align 8, !tbaa !955
  %44 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !940
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !945
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %43, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !981
  store i32 %50, ptr @target_bb, align 4, !tbaa !981
  br label %51

51:                                               ; preds = %152, %35
  %52 = phi ptr [ %7, %35 ], [ %132, %152 ]
  %53 = phi ptr [ %38, %35 ], [ %133, %152 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  %54 = load i8, ptr @pipelining_p, align 1, !tbaa !940
  %55 = icmp eq i8 %54, 0
  %56 = load i32, ptr @issue_rate, align 4, !tbaa !981
  %57 = select i1 %55, i32 3, i32 1, !prof !1613
  %58 = zext i1 %55 to i32
  %59 = shl nsw i32 %56, %58
  %60 = load ptr, ptr %4, align 8, !tbaa !955
  call fastcc void @compute_av_set_on_boundaries(ptr noundef nonnull %0, ptr noundef %60, ptr noundef nonnull %5) #24
  call fastcc void @remove_insns_that_need_bookkeeping(ptr noundef nonnull %0, ptr noundef nonnull %5) #24
  %61 = load ptr, ptr %4, align 8, !tbaa !955
  call fastcc void @remove_insns_for_debug(ptr noundef %61, ptr noundef nonnull %5) #24
  %62 = load ptr, ptr %5, align 8, !tbaa !955
  %63 = icmp eq ptr %62, null
  br i1 %63, label %151, label %64, !prof !1614

64:                                               ; preds = %51
  %65 = load ptr, ptr %4, align 8, !tbaa !955
  %66 = call fastcc ptr @find_best_expr(ptr noundef nonnull %5, ptr noundef %65, ptr noundef nonnull %0, ptr noundef nonnull %6) #24
  %67 = icmp eq ptr %66, null
  %68 = load i32, ptr %6, align 4
  %69 = icmp ne i32 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %84, !prof !1615

71:                                               ; preds = %64, %76
  %72 = phi i32 [ %81, %76 ], [ %68, %64 ]
  %73 = phi i32 [ %77, %76 ], [ 0, %64 ]
  %74 = icmp slt i32 %72, 4
  br i1 %74, label %76, label %75, !prof !1616

75:                                               ; preds = %71
  call fastcc void @stall_for_cycles(ptr noundef nonnull %0, i32 noundef 1) #24
  br label %90

76:                                               ; preds = %71
  %77 = add nuw nsw i32 %73, 1
  call fastcc void @stall_for_cycles(ptr noundef nonnull %0, i32 noundef %72) #24
  %78 = load ptr, ptr %4, align 8, !tbaa !955
  %79 = call fastcc ptr @find_best_expr(ptr noundef nonnull %5, ptr noundef %78, ptr noundef nonnull %0, ptr noundef nonnull %6) #24
  %80 = icmp eq ptr %79, null
  %81 = load i32, ptr %6, align 4
  %82 = icmp ne i32 %81, 0
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %71, label %84, !prof !1617

84:                                               ; preds = %76, %64
  %85 = phi i32 [ 0, %64 ], [ %77, %76 ]
  %86 = phi ptr [ %66, %64 ], [ %79, %76 ]
  %87 = phi i1 [ %67, %64 ], [ %80, %76 ]
  br i1 %87, label %90, label %88, !prof !1618

88:                                               ; preds = %84
  %89 = load ptr, ptr %4, align 8, !tbaa !955
  br label %91

90:                                               ; preds = %84, %75
  call void @av_set_clear(ptr noundef nonnull %5) #23
  br label %151

91:                                               ; preds = %88, %128
  %92 = phi ptr [ %134, %128 ], [ %89, %88 ]
  %93 = phi ptr [ %129, %128 ], [ %4, %88 ]
  %94 = phi i8 [ %130, %128 ], [ 0, %88 ]
  %95 = phi i8 [ %131, %128 ], [ 0, %88 ]
  %96 = phi ptr [ %132, %128 ], [ %52, %88 ]
  %97 = phi ptr [ %133, %128 ], [ %53, %88 ]
  %98 = getelementptr inbounds %struct._list_node, ptr %92, i64 0, i32 1
  %99 = getelementptr inbounds %struct._list_node, ptr %92, i64 0, i32 1, i32 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !1619
  %101 = load ptr, ptr %86, align 8, !tbaa !1057
  %102 = call zeroext i8 @av_set_is_in_p(ptr noundef %100, ptr noundef %101) #23
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %106, !prof !1621

104:                                              ; preds = %91
  %105 = load ptr, ptr %93, align 8, !tbaa !955
  br label %128

106:                                              ; preds = %91
  %107 = call fastcc ptr @schedule_expr_on_boundary(ptr noundef nonnull %98, ptr noundef nonnull %86, i32 noundef %1) #24
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %109, 7
  %111 = zext i1 %110 to i8
  br i1 %110, label %112, label %121, !prof !1137

112:                                              ; preds = %106
  %113 = load ptr, ptr %98, align 8, !tbaa !1622
  %114 = icmp eq ptr %107, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = call zeroext i8 @sel_bb_end_p(ptr noundef nonnull %107) #23
  %117 = icmp ne i8 %116, 0
  br label %118

118:                                              ; preds = %115, %112
  %119 = phi i1 [ false, %112 ], [ %117, %115 ]
  %120 = zext i1 %119 to i8
  br label %121

121:                                              ; preds = %118, %106
  %122 = phi i8 [ %120, %118 ], [ %95, %106 ]
  %123 = load i32, ptr %6, align 4, !tbaa !981
  call fastcc void @update_fence_and_insn(ptr noundef nonnull %0, ptr noundef nonnull %107, i32 noundef %123) #24
  %124 = call fastcc ptr @update_boundaries(ptr noundef nonnull %0, ptr noundef nonnull %98, ptr noundef nonnull %107, ptr noundef nonnull %93, ptr noundef %97) #24
  %125 = load ptr, ptr %2, align 8, !tbaa !955
  call fastcc void @_xlist_add(ptr noundef %125, ptr noundef nonnull %107) #24
  %126 = load ptr, ptr %2, align 8, !tbaa !955
  %127 = load ptr, ptr %126, align 8, !tbaa !955
  store ptr %127, ptr %2, align 8, !tbaa !955
  br label %128

128:                                              ; preds = %121, %104
  %129 = phi ptr [ %93, %121 ], [ %105, %104 ]
  %130 = phi i8 [ %111, %121 ], [ %94, %104 ]
  %131 = phi i8 [ %122, %121 ], [ %95, %104 ]
  %132 = phi ptr [ %107, %121 ], [ %96, %104 ]
  %133 = phi ptr [ %124, %121 ], [ %97, %104 ]
  %134 = load ptr, ptr %129, align 8, !tbaa !955
  %135 = load ptr, ptr %53, align 8, !tbaa !955
  %136 = icmp eq ptr %134, %135
  br i1 %136, label %137, label %91, !prof !1623, !llvm.loop !1624

137:                                              ; preds = %128
  call void @av_set_clear(ptr noundef nonnull %5) #23
  %138 = icmp eq i8 %130, 0
  %139 = zext i1 %138 to i32
  br i1 %138, label %142, label %140, !prof !1136

140:                                              ; preds = %137
  %141 = icmp eq i8 %131, 0
  br i1 %141, label %145, label %151

142:                                              ; preds = %137
  %143 = call zeroext i8 @sel_bb_end_p(ptr noundef %132) #23
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %151, !prof !1625

145:                                              ; preds = %142, %140
  %146 = icmp eq i32 %85, 0
  br i1 %146, label %152, label %147, !prof !1626

147:                                              ; preds = %145
  %148 = icmp ult i32 %85, %57
  %149 = icmp sgt i32 %59, %139
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %152, label %151, !prof !1627

151:                                              ; preds = %51, %147, %142, %140, %90
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  br label %155

152:                                              ; preds = %145, %147
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  %153 = load ptr, ptr %4, align 8
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %51, !prof !1628, !llvm.loop !1629

155:                                              ; preds = %152, %151
  %156 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 4
  %157 = load ptr, ptr %156, align 8, !tbaa !1595
  %158 = icmp eq ptr %157, null
  br i1 %158, label %160, label %159, !prof !1589

159:                                              ; preds = %155
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5596, ptr noundef nonnull @.str.1) #23
  br label %160

160:                                              ; preds = %155, %159
  %161 = load ptr, ptr %4, align 8, !tbaa !955
  %162 = icmp eq ptr %161, null
  br i1 %162, label %178, label %163, !prof !1551

163:                                              ; preds = %160, %175
  %164 = phi ptr [ %176, %175 ], [ %161, %160 ]
  %165 = getelementptr inbounds %struct._list_node, ptr %164, i64 0, i32 1, i32 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !940
  %167 = icmp eq ptr %166, null
  br i1 %167, label %175, label %168, !prof !1630

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct._list_node, ptr %166, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !940
  %171 = load ptr, ptr %156, align 8, !tbaa !1595
  %172 = call fastcc zeroext i8 @_xlist_is_in_p(ptr noundef %171, ptr noundef %170) #24, !range !987
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %175, !prof !1631

174:                                              ; preds = %168
  call fastcc void @_xlist_add(ptr noundef nonnull %156, ptr noundef %170) #24
  br label %175

175:                                              ; preds = %168, %174, %163
  call void @blist_remove(ptr noundef nonnull %4) #23
  %176 = load ptr, ptr %4, align 8, !tbaa !955
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %163, !prof !1632, !llvm.loop !1633

178:                                              ; preds = %175, %160
  %179 = load ptr, ptr %39, align 8, !tbaa !1611
  call void @reset_target_context(ptr noundef %179, i8 noundef zeroext 0) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vinsn_vec_clear(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1634 !PGOFuncName !1635 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !955
  %4 = tail call fastcc i32 @VEC_vinsn_t_base_length(ptr noundef %3) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6, !prof !1636

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %7 = call fastcc i32 @VEC_vinsn_t_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #24, !range !1380
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9, !prof !1637

9:                                                ; preds = %6, %9
  %10 = phi i32 [ %12, %9 ], [ 0, %6 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !955
  tail call void @vinsn_detach(ptr noundef %11) #23
  %12 = add nuw nsw i32 %10, 1
  %13 = load ptr, ptr %0, align 8, !tbaa !955
  %14 = call fastcc i32 @VEC_vinsn_t_base_iterate(ptr noundef %13, i32 noundef %12, ptr noundef nonnull %2) #24, !range !1380
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %9, !prof !1638, !llvm.loop !1639

16:                                               ; preds = %9, %6
  %17 = phi ptr [ %3, %6 ], [ %13, %9 ]
  tail call fastcc void @VEC_vinsn_t_base_block_remove(ptr noundef %17, i32 noundef %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  br label %18

18:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: optsize
declare void @blist_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_target_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_av_set_on_boundaries(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1640 !PGOFuncName !1641 {
  %4 = alloca ptr, align 8
  %5 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %27, !prof !1614

7:                                                ; preds = %3
  %8 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = alloca [25 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %11, ptr noundef nonnull align 1 dereferenceable(13) @.str.42, i64 13, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %11) #23
  %12 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %13 = call i32 @fputs(ptr nonnull %11, ptr %12)
  br label %17

14:                                               ; preds = %7
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %16 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 12, i64 1, ptr %15)
  br label %17

17:                                               ; preds = %10, %14
  call void @dump_blist(ptr noundef %1) #23
  %18 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = alloca [3 x i8], align 16
  store i16 10, ptr %21, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %21) #23
  %22 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %23 = call i32 @fputs(ptr nonnull %21, ptr %22)
  br label %27

24:                                               ; preds = %17
  %25 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %26 = call i32 @fputc(i32 10, ptr %25)
  br label %27

27:                                               ; preds = %24, %20, %3
  %28 = icmp eq ptr %1, null
  br i1 %28, label %82, label %29, !prof !1642

29:                                               ; preds = %27, %71
  %30 = phi ptr [ %80, %71 ], [ %1, %27 ]
  %31 = getelementptr inbounds %struct._list_node, ptr %30, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %32 = load ptr, ptr %31, align 8, !tbaa !1622
  %33 = call zeroext i8 @sel_bb_head_p(ptr noundef %32) #23
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %46, label %35, !prof !1643

35:                                               ; preds = %29
  %36 = load ptr, ptr @s_i_d, align 8
  %37 = load ptr, ptr @sched_luids, align 8
  %38 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !940
  %40 = call fastcc i32 @VEC_int_base_index(ptr noundef %37, i32 noundef %39) #24
  %41 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %36, i32 noundef %40) #24
  %42 = getelementptr inbounds %struct._expr, ptr %41, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !1095
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %62, label %45, !prof !1644

45:                                               ; preds = %35
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5029, ptr noundef nonnull @.str.1) #23
  br label %62

46:                                               ; preds = %29, %59
  %47 = phi ptr [ %51, %59 ], [ %32, %29 ]
  %48 = load ptr, ptr @s_i_d, align 8
  %49 = load ptr, ptr @sched_luids, align 8
  %50 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !940
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !940
  %54 = call fastcc i32 @VEC_int_base_index(ptr noundef %49, i32 noundef %53) #24
  %55 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %48, i32 noundef %54) #24
  %56 = getelementptr inbounds %struct._expr, ptr %55, i64 0, i32 5
  %57 = load i32, ptr %56, align 8, !tbaa !1095
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62, !prof !1645

59:                                               ; preds = %46
  %60 = call zeroext i8 @sel_bb_head_p(ptr noundef nonnull %51) #23
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %46, label %62, !llvm.loop !1646

62:                                               ; preds = %46, %59, %45, %35
  %63 = phi ptr [ %32, %35 ], [ %32, %45 ], [ %47, %46 ], [ %51, %59 ]
  %64 = load ptr, ptr %31, align 8, !tbaa !1622
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %71, label %66, !prof !1613

66:                                               ; preds = %62
  %67 = load ptr, ptr %0, align 8, !tbaa !1590
  %68 = icmp eq ptr %67, %64
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5040, ptr noundef nonnull @.str.1) #23
  br label %70

70:                                               ; preds = %66, %69
  store ptr %63, ptr %0, align 8, !tbaa !1590
  store ptr %63, ptr %31, align 8, !tbaa !1622
  br label %71

71:                                               ; preds = %70, %62
  %72 = getelementptr inbounds %struct._list_node, ptr %30, i64 0, i32 1, i32 0, i32 2
  call void @av_set_clear(ptr noundef nonnull %72) #23
  %73 = load ptr, ptr %31, align 8, !tbaa !1622
  %74 = call fastcc ptr @compute_av_set(ptr noundef %73, i8 noundef zeroext 1) #24
  store ptr %74, ptr %72, align 8, !tbaa !1647
  %75 = getelementptr inbounds %struct._list_node, ptr %30, i64 0, i32 1, i32 0, i32 4
  call void @av_set_clear(ptr noundef nonnull %75) #23
  %76 = load ptr, ptr %72, align 8, !tbaa !1647
  %77 = call ptr @av_set_copy(ptr noundef %76) #23
  store ptr %77, ptr %75, align 8, !tbaa !1619
  call fastcc void @moveup_set_inside_insn_group() #24
  %78 = load ptr, ptr %75, align 8, !tbaa !1619
  %79 = call ptr @av_set_copy(ptr noundef %78) #23
  store ptr %79, ptr %4, align 8, !tbaa !955
  call void @av_set_union_and_clear(ptr noundef %2, ptr noundef nonnull %4, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  %80 = load ptr, ptr %30, align 8, !tbaa !1409
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %29, !prof !1648, !llvm.loop !1649

82:                                               ; preds = %71, %27
  %83 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %106, !prof !1614

85:                                               ; preds = %82
  %86 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = alloca [59 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %89, ptr noundef nonnull align 1 dereferenceable(30) @.str.43, i64 30, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %89) #23
  %90 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %91 = call i32 @fputs(ptr nonnull %89, ptr %90)
  br label %95

92:                                               ; preds = %85
  %93 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %94 = call i64 @fwrite(ptr nonnull @.str.43, i64 29, i64 1, ptr %93)
  br label %95

95:                                               ; preds = %88, %92
  %96 = load ptr, ptr %2, align 8, !tbaa !955
  call void @dump_av_set(ptr noundef %96) #23
  %97 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = alloca [3 x i8], align 16
  store i16 10, ptr %100, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %100) #23
  %101 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %102 = call i32 @fputs(ptr nonnull %100, ptr %101)
  br label %106

103:                                              ; preds = %95
  %104 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %105 = call i32 @fputc(i32 10, ptr %104)
  br label %106

106:                                              ; preds = %103, %99, %82
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_insns_that_need_bookkeeping(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1640 !PGOFuncName !1650 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #25
  call fastcc void @_list_iter_start(ptr noundef nonnull %4, ptr noundef %1, i8 noundef zeroext 1) #24
  %5 = load ptr, ptr %4, align 8, !tbaa !1054
  %6 = load ptr, ptr %5, align 8, !tbaa !955
  %7 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %6, ptr noundef nonnull %3) #24, !range !987
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %80, label %9, !prof !1642

9:                                                ; preds = %2, %75
  %10 = load ptr, ptr %3, align 8, !tbaa !955
  %11 = load ptr, ptr %10, align 8, !tbaa !1057
  %12 = load ptr, ptr %11, align 8, !tbaa !1058
  %13 = call zeroext i8 @control_flow_insn_p(ptr noundef %12) #23
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %75, !prof !1651

15:                                               ; preds = %9
  %16 = load i8, ptr @bookkeeping_p, align 1, !tbaa !940
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18, !prof !1652

18:                                               ; preds = %15
  %19 = load ptr, ptr %10, align 8, !tbaa !1057
  %20 = getelementptr inbounds %struct.vinsn_def, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !1048
  %22 = add i32 %21, -23
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %75, label %24, !prof !1653

24:                                               ; preds = %18, %15
  %25 = getelementptr inbounds %struct._expr, ptr %10, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !1398
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %44, !prof !1654

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._expr, ptr %10, i64 0, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !1655
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32, !prof !1656

32:                                               ; preds = %28
  %33 = load ptr, ptr @cfun, align 8, !tbaa !955
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !1074
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !1076
  %38 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %37, i32 noundef %30) #24
  %39 = load ptr, ptr %0, align 8, !tbaa !1590
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !940
  %42 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %38, ptr noundef %41) #23
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %75, !prof !1656

44:                                               ; preds = %32, %28, %24
  %45 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %46 = icmp sgt i32 %45, 3
  br i1 %46, label %47, label %74

47:                                               ; preds = %44
  %48 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %10, align 8, !tbaa !1057
  %52 = load ptr, ptr %51, align 8, !tbaa !1058
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !940
  %55 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.45, i32 noundef %54) #24
  %56 = shl nsw i32 %55, 1
  %57 = or disjoint i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = alloca i8, i64 %58, align 16
  %60 = load ptr, ptr %10, align 8, !tbaa !1057
  %61 = load ptr, ptr %60, align 8, !tbaa !1058
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !940
  %64 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %59, i64 noundef %58, ptr noundef nonnull @.str.45, i32 noundef %63) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %59) #23
  %65 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %66 = call i32 @fputs(ptr nonnull %59, ptr %65)
  br label %74

67:                                               ; preds = %47
  %68 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %69 = load ptr, ptr %10, align 8, !tbaa !1057
  %70 = load ptr, ptr %69, align 8, !tbaa !1058
  %71 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !940
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.45, i32 noundef %72) #24
  br label %74

74:                                               ; preds = %50, %67, %44
  call void @av_set_iter_remove(ptr noundef nonnull %4) #23
  br label %75

75:                                               ; preds = %18, %9, %32, %74
  call fastcc void @_list_iter_next(ptr noundef nonnull %4) #24
  %76 = load ptr, ptr %4, align 8, !tbaa !1054
  %77 = load ptr, ptr %76, align 8, !tbaa !955
  %78 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %77, ptr noundef nonnull %3) #24, !range !987
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %9, !prof !1657, !llvm.loop !1658

80:                                               ; preds = %75, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_insns_for_debug(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1640 !PGOFuncName !1659 {
  %3 = alloca %struct._list_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = tail call zeroext i8 @dbg_cnt(i32 noundef 33) #23
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %30, !prof !1614

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %8 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !1622
  %10 = load ptr, ptr %0, align 8, !tbaa !1409
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4999, ptr noundef nonnull @.str.1) #23
  br label %13

13:                                               ; preds = %7, %12
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #24
  %14 = load ptr, ptr %3, align 8, !tbaa !1054
  %15 = load ptr, ptr %14, align 8, !tbaa !955
  %16 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %15, ptr noundef nonnull %4) #24, !range !987
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %13, %24
  %19 = load ptr, ptr %4, align 8, !tbaa !955
  %20 = load ptr, ptr %19, align 8, !tbaa !1057
  %21 = load ptr, ptr %20, align 8, !tbaa !1058
  %22 = icmp eq ptr %21, %9
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  br label %24

24:                                               ; preds = %18, %23
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %25 = load ptr, ptr %3, align 8, !tbaa !1054
  %26 = load ptr, ptr %25, align 8, !tbaa !955
  %27 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %26, ptr noundef nonnull %4) #24, !range !987
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %18, !llvm.loop !1660

29:                                               ; preds = %24, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  br label %30

30:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @find_best_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !1661 !PGOFuncName !1662 {
  %5 = alloca i32, align 4
  %6 = tail call fastcc ptr @fill_ready_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #24
  %7 = icmp eq ptr %6, null
  %8 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8
  %9 = icmp sgt i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %29, !prof !1663

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  %12 = tail call fastcc i32 @invoke_reorder_hooks(ptr noundef %2) #24
  store i32 %12, ptr @can_issue_more, align 4, !tbaa !981
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %22, !prof !1664

14:                                               ; preds = %11
  tail call fastcc void @invoke_dfa_lookahead_guard() #24
  %15 = tail call fastcc i32 @calculate_privileged_insns() #24
  %16 = call fastcc i32 @choose_best_insn(ptr noundef %2, i32 noundef %15, ptr noundef nonnull %5) #24
  store i32 %16, ptr @can_issue_more, align 4, !tbaa !981
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18, !prof !1665

18:                                               ; preds = %14
  %19 = load i32, ptr %5, align 4, !tbaa !981
  %20 = call fastcc ptr @find_expr_for_ready(i32 noundef %19) #24
  %21 = load i32, ptr @can_issue_more, align 4, !tbaa !981
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi i32 [ %21, %18 ], [ %12, %11 ]
  %24 = phi ptr [ %20, %18 ], [ null, %11 ]
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %26, label %27, !prof !1666

26:                                               ; preds = %14, %22
  store i32 1, ptr %3, align 4, !tbaa !981
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi ptr [ null, %26 ], [ %24, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  br label %29

29:                                               ; preds = %27, %4
  %30 = phi ptr [ %28, %27 ], [ %6, %4 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32, !prof !1667

32:                                               ; preds = %29
  %33 = load ptr, ptr %30, align 8, !tbaa !1057
  %34 = load ptr, ptr %33, align 8, !tbaa !1058
  %35 = load i32, ptr @can_issue_more, align 4, !tbaa !981
  %36 = call fastcc i32 @invoke_aftermath_hooks(ptr noundef %2, ptr noundef %34, i32 noundef %35) #24
  store i32 %36, ptr @can_issue_more, align 4, !tbaa !981
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39, !prof !1668

38:                                               ; preds = %32
  store i32 1, ptr %3, align 4, !tbaa !981
  br label %39

39:                                               ; preds = %32, %38
  %40 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %45, label %85, !prof !1669

42:                                               ; preds = %29
  %43 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %75, label %85, !prof !1669

45:                                               ; preds = %39
  %46 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = alloca [59 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %49, ptr noundef nonnull align 1 dereferenceable(30) @.str.46, i64 30, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %49) #23
  %50 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %51 = call i32 @fputs(ptr nonnull %49, ptr %50)
  br label %55

52:                                               ; preds = %45
  %53 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %54 = call i64 @fwrite(ptr nonnull @.str.46, i64 29, i64 1, ptr %53)
  br label %55

55:                                               ; preds = %52, %48
  call void @dump_expr(ptr noundef nonnull %30) #23
  %56 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !1609
  %61 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.47, i32 noundef %60) #24
  %62 = shl nsw i32 %61, 1
  %63 = or disjoint i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = alloca i8, i64 %64, align 16
  %66 = load i32, ptr %59, align 8, !tbaa !1609
  %67 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %65, i64 noundef %64, ptr noundef nonnull @.str.47, i32 noundef %66) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %65) #23
  %68 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %69 = call i32 @fputs(ptr nonnull %65, ptr %68)
  br label %85

70:                                               ; preds = %55
  %71 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %72 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !1609
  %74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @.str.47, i32 noundef %73) #24
  br label %85

75:                                               ; preds = %42
  %76 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = alloca [41 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %79, ptr noundef nonnull align 1 dereferenceable(21) @.str.48, i64 21, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %79) #23
  %80 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %81 = call i32 @fputs(ptr nonnull %79, ptr %80)
  br label %85

82:                                               ; preds = %75
  %83 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %84 = call i64 @fwrite(ptr nonnull @.str.48, i64 20, i64 1, ptr %83)
  br label %85

85:                                               ; preds = %42, %70, %58, %82, %78, %39
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stall_for_cycles(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1670 !PGOFuncName !1671 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %10, label %4, !prof !1672

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !1673
  %7 = load i32, ptr @issue_rate, align 4, !tbaa !981
  %8 = icmp slt i32 %6, %7
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %16, label %10, !prof !1674

10:                                               ; preds = %2, %4
  %11 = phi i1 [ %8, %4 ], [ true, %2 ]
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %14, %12 ], [ %1, %10 ]
  %14 = add nsw i32 %13, -1
  tail call fastcc void @advance_one_cycle(ptr noundef %0) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12, !prof !1675, !llvm.loop !1676

16:                                               ; preds = %12, %4
  %17 = phi i1 [ %8, %4 ], [ %11, %12 ]
  br i1 %17, label %18, label %22, !prof !1677

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 13
  %20 = load i8, ptr %19, align 8
  %21 = or i8 %20, 8
  store i8 %21, ptr %19, align 8
  br label %22

22:                                               ; preds = %18, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @schedule_expr_on_boundary(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1004 !PGOFuncName !1678 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = alloca [64 x i8], align 16
  %6 = tail call fastcc ptr @find_sequential_best_exprs(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #24
  store ptr %6, ptr %4, align 8, !tbaa !955
  %7 = load ptr, ptr %1, align 8, !tbaa !1057
  %8 = tail call zeroext i8 @vinsn_cond_branch_p(ptr noundef %7) #23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %19, label %10, !prof !1679

10:                                               ; preds = %3
  %11 = load ptr, ptr %1, align 8, !tbaa !1057
  %12 = load ptr, ptr %11, align 8, !tbaa !1058
  %13 = load ptr, ptr %0, align 8, !tbaa !1622
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %19, label %15, !prof !1680

15:                                               ; preds = %10
  %16 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %12) #23
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call fastcc void @move_cond_jump(ptr noundef %12, ptr noundef nonnull %0) #24
  br label %19

19:                                               ; preds = %10, %15, %18, %3
  %20 = tail call fastcc ptr @prepare_place_to_insert(ptr noundef %0) #24
  %21 = call fastcc zeroext i8 @move_exprs_to_boundary(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %6, ptr noundef nonnull %5) #24
  call void @clear_expr(ptr noundef nonnull %5) #23
  %22 = load ptr, ptr %1, align 8, !tbaa !1057
  %23 = load ptr, ptr %22, align 8, !tbaa !1058
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !940
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27, !prof !1136

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !940
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call ptr @vinsn_copy(ptr noundef nonnull %22, i8 noundef zeroext 0) #23
  call void @change_vinsn_in_expr(ptr noundef nonnull %1, ptr noundef %32) #23
  br label %37

33:                                               ; preds = %27, %19
  %34 = icmp eq i8 %21, 0
  br i1 %34, label %37, label %35, !prof !1681

35:                                               ; preds = %33
  %36 = call ptr @sel_move_insn(ptr noundef nonnull %1, i32 noundef %2, ptr noundef %20) #23
  br label %39

37:                                               ; preds = %31, %33
  %38 = call fastcc ptr @emit_insn_from_expr_after(ptr noundef nonnull %1, ptr noundef null, i32 noundef %2, ptr noundef %20) #24
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi ptr [ %36, %35 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !940
  %43 = load ptr, ptr @nop_pattern, align 8, !tbaa !955
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %50, !prof !1682

45:                                               ; preds = %39
  %46 = load i32, ptr %40, align 8
  %47 = and i32 %46, 65535
  %48 = icmp ne i32 %47, 7
  %49 = zext i1 %48 to i8
  call void @return_nop_to_pool(ptr noundef nonnull %20, i8 noundef zeroext %49) #23
  br label %50

50:                                               ; preds = %45, %39
  %51 = load i32, ptr %40, align 8
  %52 = and i32 %51, 65535
  %53 = icmp ne i32 %52, 7
  %54 = zext i1 %53 to i8
  call fastcc void @remove_temp_moveop_nops(i8 noundef zeroext %54) #24
  call void @av_set_clear(ptr noundef nonnull %4) #23
  %55 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 12
  %56 = load i8, ptr %55, align 1
  %57 = and i8 %56, 4
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %66, label %59, !prof !1138

59:                                               ; preds = %50
  %60 = load ptr, ptr @s_i_d, align 8
  %61 = load ptr, ptr @sched_luids, align 8
  %62 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !940
  %64 = call fastcc i32 @VEC_int_base_index(ptr noundef %61, i32 noundef %63) #24
  %65 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %60, i32 noundef %64) #24
  call fastcc void @vinsn_vec_add(ptr noundef nonnull @vec_target_unavailable_vinsns, ptr noundef nonnull %65) #24
  br label %66

66:                                               ; preds = %59, %50
  %67 = load i8, ptr @pipelining_p, align 1, !tbaa !940
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %76, label %69, !prof !1136

69:                                               ; preds = %66
  %70 = load ptr, ptr @current_loop_nest, align 8, !tbaa !955
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = call ptr @loop_latch_edge(ptr noundef nonnull %70) #23
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5462, ptr noundef nonnull @.str.1) #23
  br label %76

76:                                               ; preds = %66, %69, %72, %75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_fence_and_insn(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1004 !PGOFuncName !1683 {
  %4 = tail call fastcc zeroext i8 @advance_state_on_fence(ptr noundef %0, ptr noundef %1) #24, !range !987
  %5 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 10
  store ptr %1, ptr %5, align 8, !tbaa !1684
  %6 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 7
  tail call fastcc void @VEC_rtx_gc_safe_push(ptr noundef nonnull %6, ptr noundef %1) #24
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 268435456
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10, !prof !1136

10:                                               ; preds = %3
  %11 = load ptr, ptr @s_i_d, align 8
  %12 = load ptr, ptr @sched_luids, align 8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !940
  %15 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %12, i32 noundef %14) #24
  %16 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %11, i32 noundef %15) #24
  %17 = getelementptr inbounds %struct._sel_insn_data, ptr %16, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !1685
  %19 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 12
  store ptr %18, ptr %19, align 8, !tbaa !1686
  %20 = load i32, ptr %1, align 8
  %21 = and i32 %20, -268435457
  store i32 %21, ptr %1, align 8
  br label %24

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 12
  store ptr null, ptr %23, align 8, !tbaa !1686
  br label %24

24:                                               ; preds = %22, %10
  %25 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !940
  %27 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !1687
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %36, !prof !1688

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !1689
  %33 = sext i32 %26 to i64
  %34 = getelementptr inbounds i32, ptr %32, i64 %33
  store i32 0, ptr %34, align 4, !tbaa !981
  %35 = load i32, ptr %25, align 8, !tbaa !940
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i32 [ %35, %30 ], [ %26, %24 ]
  %38 = load ptr, ptr @s_i_d, align 8
  %39 = load ptr, ptr @sched_luids, align 8
  %40 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %37) #24
  %41 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %38, i32 noundef %40) #24
  %42 = getelementptr inbounds %struct._expr, ptr %41, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !1095
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !1095
  %45 = load i32, ptr %25, align 8, !tbaa !940
  %46 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %45) #24
  %47 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %38, i32 noundef %46) #24
  %48 = getelementptr inbounds %struct._expr, ptr %47, i64 0, i32 11
  store i8 1, ptr %48, align 8, !tbaa !1690
  %49 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !1609
  %51 = load i32, ptr %25, align 8, !tbaa !940
  %52 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %51) #24
  %53 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %38, i32 noundef %52) #24
  %54 = getelementptr inbounds %struct._expr, ptr %53, i64 0, i32 9
  store i32 %50, ptr %54, align 8, !tbaa !1691
  %55 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 13
  %56 = load i8, ptr %55, align 8
  %57 = load i32, ptr %25, align 8, !tbaa !940
  %58 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %57) #24
  %59 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %38, i32 noundef %58) #24
  %60 = getelementptr inbounds %struct._sel_insn_data, ptr %59, i64 0, i32 13
  %61 = load i8, ptr %60, align 4
  %62 = lshr i8 %56, 1
  %63 = and i8 %62, 4
  %64 = and i8 %61, -5
  %65 = or disjoint i8 %64, %63
  store i8 %65, ptr %60, align 4
  %66 = load i32, ptr %49, align 8, !tbaa !1609
  %67 = load i32, ptr %25, align 8, !tbaa !940
  %68 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %67) #24
  %69 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %38, i32 noundef %68) #24
  %70 = getelementptr inbounds %struct._sel_insn_data, ptr %69, i64 0, i32 10
  store i32 %66, ptr %70, align 8, !tbaa !1692
  %71 = load i32, ptr %25, align 8, !tbaa !940
  %72 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %71) #24
  %73 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %38, i32 noundef %72) #24
  %74 = getelementptr inbounds %struct._sel_insn_data, ptr %73, i64 0, i32 10
  %75 = load i32, ptr %74, align 8, !tbaa !1692
  %76 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !940
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %85, label %79, !prof !1693

79:                                               ; preds = %36
  %80 = tail call i32 @maximal_insn_latency(ptr noundef nonnull %1) #23
  %81 = add nsw i32 %80, 1
  %82 = load ptr, ptr @s_i_d, align 8
  %83 = load ptr, ptr @sched_luids, align 8
  %84 = load i32, ptr %25, align 8, !tbaa !940
  br label %85

85:                                               ; preds = %36, %79
  %86 = phi i32 [ %84, %79 ], [ %71, %36 ]
  %87 = phi ptr [ %83, %79 ], [ %39, %36 ]
  %88 = phi ptr [ %82, %79 ], [ %38, %36 ]
  %89 = phi i32 [ %81, %79 ], [ 1, %36 ]
  %90 = add nsw i32 %89, %75
  %91 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %87, i32 noundef %86) #24
  %92 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %88, i32 noundef %91) #24
  %93 = getelementptr inbounds %struct._sel_insn_data, ptr %92, i64 0, i32 11
  store i32 %90, ptr %93, align 4, !tbaa !1694
  %94 = load i8, ptr %55, align 8
  %95 = and i8 %94, -9
  store i8 %95, ptr %55, align 8
  %96 = icmp ne i8 %4, 0
  %97 = icmp ne i32 %2, 0
  %98 = or i1 %97, %96
  br i1 %98, label %99, label %101, !prof !1695

99:                                               ; preds = %85
  tail call fastcc void @advance_one_cycle(ptr noundef nonnull %0) #24
  %100 = load i8, ptr %55, align 8
  br label %101

101:                                              ; preds = %85, %99
  %102 = phi i8 [ %95, %85 ], [ %100, %99 ]
  %103 = or i8 %102, 2
  store i8 %103, ptr %55, align 8
  store i1 true, ptr @scheduled_something_on_previous_fence, align 1
  %104 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %126, !prof !1137

106:                                              ; preds = %101
  %107 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = alloca [35 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %110, ptr noundef nonnull align 1 dereferenceable(18) @.str.78, i64 18, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %110) #23
  %111 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %112 = call i32 @fputs(ptr nonnull %110, ptr %111)
  br label %116

113:                                              ; preds = %106
  %114 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %115 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 17, i64 1, ptr %114)
  br label %116

116:                                              ; preds = %113, %109
  call void @dump_insn_1(ptr noundef nonnull %1, i32 noundef 1) #23
  %117 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = alloca [3 x i8], align 16
  store i16 10, ptr %120, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %120) #23
  %121 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %122 = call i32 @fputs(ptr nonnull %120, ptr %121)
  br label %126

123:                                              ; preds = %116
  %124 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %125 = call i32 @fputc(i32 10, ptr %124)
  br label %126

126:                                              ; preds = %119, %123, %101
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @update_boundaries(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !1004 !PGOFuncName !1696 {
  %6 = alloca %struct.succ_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  %9 = getelementptr inbounds %struct._bnd, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !1697
  tail call void @advance_deps_context(ptr noundef %10, ptr noundef %2) #23
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %6, ptr noundef nonnull %7, ptr noundef %2, i32 noundef 9) #24
  %11 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %2) #24
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %79, label %13, !prof !1698

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct._bnd, ptr %1, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %75
  %16 = phi ptr [ %4, %13 ], [ %76, %75 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  %17 = load ptr, ptr %14, align 8, !tbaa !1699
  %18 = call ptr @ilist_copy(ptr noundef %17) #23
  store ptr %18, ptr %8, align 8, !tbaa !955
  call fastcc void @_xlist_add(ptr noundef nonnull %8, ptr noundef %2) #24
  %19 = load i32, ptr %2, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 7
  br i1 %21, label %22, label %31, !prof !1700

22:                                               ; preds = %15
  %23 = call zeroext i8 @sel_bb_end_p(ptr noundef nonnull %2) #23
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %7, align 8, !tbaa !955
  %27 = load ptr, ptr %8, align 8, !tbaa !955
  %28 = call fastcc zeroext i8 @is_ineligible_successor(ptr noundef %26, ptr noundef %27) #24, !range !987
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  call fastcc void @_list_clear(ptr noundef nonnull %8) #24
  br label %75

31:                                               ; preds = %25, %22, %15
  %32 = load ptr, ptr %0, align 8, !tbaa !1590
  %33 = icmp eq ptr %32, %2
  br i1 %33, label %34, label %70, !prof !1701

34:                                               ; preds = %31
  %35 = call zeroext i8 @sel_bb_end_p(ptr noundef nonnull %2) #23
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %70, !prof !1702

37:                                               ; preds = %34
  %38 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %39 = icmp sgt i32 %38, 8
  br i1 %39, label %42, label %40, !prof !1703

40:                                               ; preds = %37
  %41 = load ptr, ptr %7, align 8, !tbaa !955
  br label %68

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %44 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %43, align 8, !tbaa !940
  %48 = load ptr, ptr %7, align 8, !tbaa !955
  %49 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !940
  %51 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.79, i32 noundef %47, i32 noundef %50) #24
  %52 = shl nsw i32 %51, 1
  %53 = or disjoint i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = alloca i8, i64 %54, align 16
  %56 = load i32, ptr %43, align 8, !tbaa !940
  %57 = load i32, ptr %49, align 8, !tbaa !940
  %58 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %55, i64 noundef %54, ptr noundef nonnull @.str.79, i32 noundef %56, i32 noundef %57) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %55) #23
  %59 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %60 = call i32 @fputs(ptr nonnull %55, ptr %59)
  br label %68

61:                                               ; preds = %42
  %62 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %63 = load i32, ptr %43, align 8, !tbaa !940
  %64 = load ptr, ptr %7, align 8, !tbaa !955
  %65 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !940
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.79, i32 noundef %63, i32 noundef %66) #24
  br label %68

68:                                               ; preds = %40, %46, %61
  %69 = phi ptr [ %41, %40 ], [ %48, %46 ], [ %64, %61 ]
  store ptr %69, ptr %0, align 8, !tbaa !1590
  br label %70

70:                                               ; preds = %68, %34, %31
  %71 = load ptr, ptr %7, align 8, !tbaa !955
  %72 = load ptr, ptr %8, align 8, !tbaa !955
  %73 = load ptr, ptr %9, align 8, !tbaa !1697
  call void @blist_add(ptr noundef %16, ptr noundef %71, ptr noundef %72, ptr noundef %73) #23
  %74 = load ptr, ptr %16, align 8, !tbaa !955
  br label %75

75:                                               ; preds = %70, %30
  %76 = phi ptr [ %16, %30 ], [ %74, %70 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  call fastcc void @_succ_iter_next(ptr noundef nonnull %6) #24
  %77 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %2) #24
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %15, !prof !1704, !llvm.loop !1705

79:                                               ; preds = %75, %5
  %80 = phi ptr [ %4, %5 ], [ %76, %75 ]
  call void @blist_remove(ptr noundef %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #25
  ret ptr %80
}

; Function Attrs: optsize
declare void @blist_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @reset_target_context(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_blist(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @moveup_set_inside_insn_group() unnamed_addr #0 !prof !1640 !PGOFuncName !1706 {
  %1 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %2 = icmp sgt i32 %1, 5
  br i1 %2, label %3, label %13, !prof !1614

3:                                                ; preds = %0
  %4 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = alloca [87 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %7, ptr noundef nonnull align 1 dereferenceable(44) @.str.44, i64 44, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %7) #23
  %8 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %9 = call i32 @fputs(ptr nonnull %7, ptr %8)
  br label %13

10:                                               ; preds = %3
  %11 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %12 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 43, i64 1, ptr %11)
  br label %13

13:                                               ; preds = %6, %10, %0
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @fill_ready_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !1661 !PGOFuncName !1707 {
  %5 = load ptr, ptr %1, align 8, !tbaa !1409
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !1708

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4006, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %4, %7
  tail call fastcc void @process_pipelined_exprs(ptr noundef %0) #24
  tail call fastcc void @process_spec_exprs(ptr noundef %0) #24
  %9 = tail call fastcc ptr @process_use_exprs(ptr noundef %0) #24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !1709

11:                                               ; preds = %8
  store i32 0, ptr %3, align 4, !tbaa !981
  br label %18

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !955
  %14 = tail call fastcc zeroext i8 @fill_vec_av_set(ptr noundef %13, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #24, !range !987
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17, !prof !1710

16:                                               ; preds = %12
  store i32 0, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  br label %18

17:                                               ; preds = %12
  tail call fastcc void @convert_vec_av_set_to_ready() #24
  br label %18

18:                                               ; preds = %17, %16, %11
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @invoke_reorder_hooks(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1713 !PGOFuncName !1714 {
  %2 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !1673
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %36, !prof !1715

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 8), align 8, !tbaa !1716
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8, !prof !1717

8:                                                ; preds = %5
  %9 = tail call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef 0) #23
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 268435456
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8
  %14 = icmp sgt i32 %13, 1
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %34

16:                                               ; preds = %8
  %17 = load i8, ptr @pipelining_p, align 1, !tbaa !940
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = add nsw i32 %13, -1
  store i32 %20, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  br label %21

21:                                               ; preds = %19, %16
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 8), align 8, !tbaa !1716
  %23 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %24 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %25 = tail call ptr @ready_lastpos(ptr noundef nonnull @ready) #23
  %26 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !1609
  %28 = tail call i32 %22(ptr noundef %23, i32 noundef %24, ptr noundef %25, ptr noundef nonnull getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), i32 noundef %27) #23
  %29 = load i8, ptr @pipelining_p, align 1, !tbaa !940
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %81, label %31

31:                                               ; preds = %21
  %32 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  br label %81

34:                                               ; preds = %8, %5
  %35 = load i32, ptr @issue_rate, align 4, !tbaa !981
  br label %123

36:                                               ; preds = %1
  %37 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 9), align 8, !tbaa !1718
  %38 = icmp eq ptr %37, null
  br i1 %38, label %78, label %39, !prof !1719

39:                                               ; preds = %36
  %40 = tail call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef 0) #23
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 268435456
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %39
  %45 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 9), align 8, !tbaa !1718
  %49 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %50 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %51 = tail call ptr @ready_lastpos(ptr noundef nonnull @ready) #23
  %52 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !1609
  %54 = tail call i32 %48(ptr noundef %49, i32 noundef %50, ptr noundef %51, ptr noundef nonnull getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), i32 noundef %53) #23
  br label %81

55:                                               ; preds = %44
  %56 = load i8, ptr @pipelining_p, align 1, !tbaa !940
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = add nsw i32 %45, -1
  store i32 %59, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i32 [ %59, %58 ], [ %45, %55 ]
  %62 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 9), align 8, !tbaa !1718
  %63 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %64 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %65 = icmp eq i32 %61, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = tail call ptr @ready_lastpos(ptr noundef nonnull @ready) #23
  br label %68

68:                                               ; preds = %60, %66
  %69 = phi ptr [ %67, %66 ], [ null, %60 ]
  %70 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !1609
  %72 = tail call i32 %62(ptr noundef %63, i32 noundef %64, ptr noundef %69, ptr noundef nonnull getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), i32 noundef %71) #23
  %73 = load i8, ptr @pipelining_p, align 1, !tbaa !940
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  br label %81

78:                                               ; preds = %39, %36
  %79 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 11
  %80 = load i32, ptr %79, align 8, !tbaa !1612
  br label %123

81:                                               ; preds = %47, %75, %68, %21, %31
  %82 = phi i32 [ %28, %31 ], [ %28, %21 ], [ %54, %47 ], [ %72, %75 ], [ %72, %68 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %123, label %84, !prof !1720

84:                                               ; preds = %81
  %85 = load ptr, ptr @ready, align 8, !tbaa !1721
  %86 = load ptr, ptr @vec_av_set, align 8
  %87 = tail call fastcc ptr @VEC_expr_t_base_address(ptr noundef %86) #24
  %88 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %84
  %91 = zext nneg i32 %88 to i64
  br label %92

92:                                               ; preds = %90, %120
  %93 = phi i64 [ 0, %90 ], [ %121, %120 ]
  %94 = getelementptr inbounds ptr, ptr %87, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !955
  %96 = load ptr, ptr %95, align 8, !tbaa !1057
  %97 = load ptr, ptr %96, align 8, !tbaa !1058
  %98 = getelementptr inbounds ptr, ptr %85, i64 %93
  %99 = load ptr, ptr %98, align 8, !tbaa !955
  %100 = icmp eq ptr %97, %99
  br i1 %100, label %120, label %101

101:                                              ; preds = %92, %108
  %102 = phi i64 [ %109, %108 ], [ %93, %92 ]
  %103 = getelementptr inbounds ptr, ptr %87, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !955
  %105 = load ptr, ptr %104, align 8, !tbaa !1057
  %106 = load ptr, ptr %105, align 8, !tbaa !1058
  %107 = icmp eq ptr %106, %99
  br i1 %107, label %113, label %108

108:                                              ; preds = %101
  %109 = add nuw nsw i64 %102, 1
  %110 = icmp eq i64 %109, %91
  br i1 %110, label %111, label %101, !llvm.loop !1722

111:                                              ; preds = %108
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4140, ptr noundef nonnull @.str.1) #23
  %112 = load ptr, ptr %94, align 8, !tbaa !955
  br label %115

113:                                              ; preds = %101
  %114 = and i64 %102, 4294967295
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i64 [ %114, %113 ], [ %91, %111 ]
  %117 = phi ptr [ %95, %113 ], [ %112, %111 ]
  %118 = getelementptr inbounds ptr, ptr %87, i64 %116
  %119 = load ptr, ptr %118, align 8, !tbaa !955
  store ptr %119, ptr %94, align 8, !tbaa !955
  store ptr %117, ptr %118, align 8, !tbaa !955
  br label %120

120:                                              ; preds = %92, %115
  %121 = add nuw nsw i64 %93, 1
  %122 = icmp eq i64 %121, %91
  br i1 %122, label %123, label %92, !llvm.loop !1723

123:                                              ; preds = %120, %84, %78, %34, %81
  %124 = phi i32 [ 0, %81 ], [ %80, %78 ], [ %35, %34 ], [ %82, %84 ], [ %82, %120 ]
  ret i32 %124
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @invoke_dfa_lookahead_guard() unnamed_addr #0 !prof !1713 !PGOFuncName !1724 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 18), align 8, !tbaa !1725
  %2 = icmp eq ptr %1, null
  %3 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %15, !prof !1726

5:                                                ; preds = %0
  %6 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = alloca [43 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %9, ptr noundef nonnull align 1 dereferenceable(22) @.str.69, i64 22, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %9) #23
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %11 = call i32 @fputs(ptr nonnull %9, ptr %10)
  br label %15

12:                                               ; preds = %5
  %13 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %14 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 21, i64 1, ptr %13)
  br label %15

15:                                               ; preds = %8, %12, %0
  %16 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %81, !prof !1727

18:                                               ; preds = %15, %76
  %19 = phi i64 [ %77, %76 ], [ 0, %15 ]
  %20 = trunc i64 %19 to i32
  %21 = call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef %20) #23
  br i1 %2, label %29, label %22, !prof !1728

22:                                               ; preds = %18
  %23 = icmp eq i64 %19, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 18), align 8, !tbaa !1725
  %26 = call i32 %25(ptr noundef %21) #23
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i8
  br label %29

29:                                               ; preds = %18, %22, %24
  %30 = phi i8 [ %28, %24 ], [ 0, %22 ], [ 0, %18 ]
  %31 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !940
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %35, label %34, !prof !1728

34:                                               ; preds = %29
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4196, ptr noundef nonnull @.str.1) #23
  br label %35

35:                                               ; preds = %29, %34
  %36 = load ptr, ptr @ready_try, align 8, !tbaa !955
  %37 = getelementptr inbounds i8, ptr %36, i64 %19
  %38 = load i8, ptr %37, align 1, !tbaa !940
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40, !prof !1728

40:                                               ; preds = %35
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4200, ptr noundef nonnull @.str.1) #23
  %41 = load ptr, ptr @ready_try, align 8, !tbaa !955
  br label %42

42:                                               ; preds = %35, %40
  %43 = phi ptr [ %36, %35 ], [ %41, %40 ]
  %44 = getelementptr inbounds i8, ptr %43, i64 %19
  store i8 %30, ptr %44, align 1, !tbaa !940
  %45 = call fastcc ptr @find_expr_for_ready(i32 noundef %20) #24
  %46 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %76, !prof !1729

48:                                               ; preds = %42
  %49 = load ptr, ptr %45, align 8, !tbaa !1057
  call void @dump_vinsn(ptr noundef %49) #23
  %50 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr @ready_try, align 8, !tbaa !955
  %54 = getelementptr inbounds i8, ptr %53, i64 %19
  %55 = load i8, ptr %54, align 1, !tbaa !940
  %56 = sext i8 %55 to i32
  %57 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.70, i32 noundef %56) #24
  %58 = shl nsw i32 %57, 1
  %59 = or disjoint i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = alloca i8, i64 %60, align 16
  %62 = load ptr, ptr @ready_try, align 8, !tbaa !955
  %63 = getelementptr inbounds i8, ptr %62, i64 %19
  %64 = load i8, ptr %63, align 1, !tbaa !940
  %65 = sext i8 %64 to i32
  %66 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %61, i64 noundef %60, ptr noundef nonnull @.str.70, i32 noundef %65) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %61) #23
  %67 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %68 = call i32 @fputs(ptr nonnull %61, ptr %67)
  br label %76

69:                                               ; preds = %48
  %70 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %71 = load ptr, ptr @ready_try, align 8, !tbaa !955
  %72 = getelementptr inbounds i8, ptr %71, i64 %19
  %73 = load i8, ptr %72, align 1, !tbaa !940
  %74 = sext i8 %73 to i32
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str.70, i32 noundef %74) #24
  br label %76

76:                                               ; preds = %52, %69, %42
  %77 = add nuw nsw i64 %19, 1
  %78 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %18, label %81, !prof !1730, !llvm.loop !1731

81:                                               ; preds = %76, %15
  %82 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %94, !prof !1726

84:                                               ; preds = %81
  %85 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = alloca [3 x i8], align 16
  store i16 10, ptr %88, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %88) #23
  %89 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %90 = call i32 @fputs(ptr nonnull %88, ptr %89)
  br label %94

91:                                               ; preds = %84
  %92 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %93 = call i32 @fputc(i32 10, ptr %92)
  br label %94

94:                                               ; preds = %87, %91, %81
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @calculate_privileged_insns() unnamed_addr #0 !prof !1713 !PGOFuncName !1732 {
  %1 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %41, !prof !1727

3:                                                ; preds = %0
  %4 = load ptr, ptr @ready_try, align 8, !tbaa !955
  br label %5

5:                                                ; preds = %3, %31
  %6 = phi i32 [ %1, %3 ], [ %32, %31 ]
  %7 = phi ptr [ %4, %3 ], [ %33, %31 ]
  %8 = phi i64 [ 0, %3 ], [ %36, %31 ]
  %9 = phi ptr [ null, %3 ], [ %35, %31 ]
  %10 = phi i32 [ 0, %3 ], [ %34, %31 ]
  %11 = getelementptr inbounds i8, ptr %7, i64 %8
  %12 = load i8, ptr %11, align 1, !tbaa !940
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %31, !prof !1728

14:                                               ; preds = %5
  %15 = icmp eq ptr %9, null
  %16 = trunc i64 %8 to i32
  br i1 %15, label %17, label %19, !prof !1733

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @find_expr_for_ready(i32 noundef %16) #24
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi ptr [ %18, %17 ], [ %9, %14 ]
  %21 = tail call fastcc ptr @find_expr_for_ready(i32 noundef %16) #24
  %22 = getelementptr inbounds %struct._expr, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !1398
  %24 = getelementptr inbounds %struct._expr, ptr %20, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !1398
  %26 = icmp sgt i32 %23, %25
  %27 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  br i1 %26, label %41, label %28, !prof !1729

28:                                               ; preds = %19
  %29 = load ptr, ptr @ready_try, align 8, !tbaa !955
  %30 = add nsw i32 %10, 1
  br label %31

31:                                               ; preds = %5, %28
  %32 = phi i32 [ %6, %5 ], [ %27, %28 ]
  %33 = phi ptr [ %7, %5 ], [ %29, %28 ]
  %34 = phi i32 [ %10, %5 ], [ %30, %28 ]
  %35 = phi ptr [ %9, %5 ], [ %20, %28 ]
  %36 = add nuw nsw i64 %8, 1
  %37 = sext i32 %32 to i64
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %5, label %39, !prof !1730, !llvm.loop !1734

39:                                               ; preds = %31
  %40 = trunc i64 %36 to i32
  br label %41

41:                                               ; preds = %19, %39, %0
  %42 = phi i32 [ %1, %0 ], [ %32, %39 ], [ %27, %19 ]
  %43 = phi i32 [ 0, %0 ], [ %40, %39 ], [ %16, %19 ]
  %44 = phi i32 [ 0, %0 ], [ %34, %39 ], [ %10, %19 ]
  %45 = phi ptr [ null, %0 ], [ %35, %39 ], [ %20, %19 ]
  %46 = icmp eq i32 %43, %42
  %47 = select i1 %46, i32 0, i32 %44, !prof !1664
  %48 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %82, !prof !1726

50:                                               ; preds = %41
  %51 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %50
  %54 = icmp eq i32 %47, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct._expr, ptr %45, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !1398
  br label %58

58:                                               ; preds = %53, %55
  %59 = phi i32 [ %57, %55 ], [ -1, %53 ]
  %60 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.71, i32 noundef %47, i32 noundef %59) #24
  %61 = shl nsw i32 %60, 1
  %62 = or disjoint i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = alloca i8, i64 %63, align 16
  br i1 %54, label %68, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct._expr, ptr %45, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !1398
  br label %68

68:                                               ; preds = %58, %65
  %69 = phi i32 [ %67, %65 ], [ -1, %58 ]
  %70 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %64, i64 noundef %63, ptr noundef nonnull @.str.71, i32 noundef %47, i32 noundef %69) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %64) #23
  %71 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %72 = call i32 @fputs(ptr nonnull %64, ptr %71)
  br label %82

73:                                               ; preds = %50
  %74 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %75 = icmp eq i32 %47, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct._expr, ptr %45, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !1398
  br label %79

79:                                               ; preds = %73, %76
  %80 = phi i32 [ %78, %76 ], [ -1, %73 ]
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.71, i32 noundef %47, i32 noundef %80) #24
  br label %82

82:                                               ; preds = %68, %79, %41
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @choose_best_insn(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1713 !PGOFuncName !1735 {
  %4 = load i32, ptr @dfa_lookahead, align 4, !tbaa !981
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %9, label %6, !prof !1726

6:                                                ; preds = %3
  %7 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %35, label %65, !prof !1736

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !1673
  store i32 %11, ptr @cycle_issued_insns, align 4, !tbaa !981
  %12 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1737
  %14 = tail call i32 @max_issue(ptr noundef nonnull @ready, i32 noundef %1, ptr noundef %13, ptr noundef %2) #23
  %15 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %71

17:                                               ; preds = %9
  %18 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %10, align 4, !tbaa !1673
  %22 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.72, i32 noundef %14, i32 noundef %21) #24
  %23 = shl nsw i32 %22, 1
  %24 = or disjoint i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  %27 = load i32, ptr %10, align 4, !tbaa !1673
  %28 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %26, i64 noundef %25, ptr noundef nonnull @.str.72, i32 noundef %14, i32 noundef %27) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %26) #23
  %29 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %30 = call i32 @fputs(ptr nonnull %26, ptr %29)
  br label %71

31:                                               ; preds = %17
  %32 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %33 = load i32, ptr %10, align 4, !tbaa !1673
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.72, i32 noundef %14, i32 noundef %33) #24
  br label %71

35:                                               ; preds = %6, %61
  %36 = phi i32 [ %62, %61 ], [ 0, %6 ]
  %37 = tail call fastcc ptr @find_expr_for_ready(i32 noundef %36) #24
  %38 = tail call fastcc i32 @get_expr_cost(ptr noundef %37, ptr noundef %0) #24, !range !1738
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %61, !prof !1739

40:                                               ; preds = %35
  %41 = load i32, ptr @can_issue_more, align 4, !tbaa !981
  store i32 %36, ptr %2, align 4, !tbaa !981
  %42 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %65, !prof !1740

44:                                               ; preds = %40
  %45 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %44
  %48 = add nuw nsw i32 %36, 1
  %49 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.73, i32 noundef %48) #24
  %50 = shl nsw i32 %49, 1
  %51 = or disjoint i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = alloca i8, i64 %52, align 16
  %54 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %53, i64 noundef %52, ptr noundef nonnull @.str.73, i32 noundef %48) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %53) #23
  %55 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %56 = call i32 @fputs(ptr nonnull %53, ptr %55)
  br label %65

57:                                               ; preds = %44
  %58 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %59 = add nuw nsw i32 %36, 1
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.73, i32 noundef %59) #24
  br label %65

61:                                               ; preds = %35
  %62 = add nuw nsw i32 %36, 1
  %63 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %35, label %65, !prof !1741, !llvm.loop !1742

65:                                               ; preds = %61, %6, %40, %57, %47
  %66 = phi i32 [ %36, %47 ], [ %36, %57 ], [ %36, %40 ], [ 0, %6 ], [ %62, %61 ]
  %67 = phi i32 [ %41, %47 ], [ %41, %57 ], [ %41, %40 ], [ 0, %6 ], [ 0, %61 ]
  %68 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %71, !prof !1665

70:                                               ; preds = %65
  store i32 -1, ptr %2, align 4, !tbaa !981
  br label %71

71:                                               ; preds = %65, %70, %9, %31, %20
  %72 = phi i32 [ %14, %20 ], [ %14, %31 ], [ %14, %9 ], [ 0, %70 ], [ %67, %65 ]
  ret i32 %72
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @find_expr_for_ready(i32 noundef %0) unnamed_addr #0 !prof !1743 !PGOFuncName !1744 {
  %2 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !1745
  %3 = sub nsw i32 %2, %0
  %4 = load ptr, ptr @vec_av_set, align 8
  %5 = tail call fastcc ptr @VEC_expr_t_base_index(ptr noundef %4, i32 noundef %3) #24
  %6 = load ptr, ptr @ready, align 8, !tbaa !1721
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !955
  %10 = load ptr, ptr %5, align 8, !tbaa !1057
  %11 = load ptr, ptr %10, align 8, !tbaa !1058
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %14, label %13, !prof !1746

13:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4164, ptr noundef nonnull @.str.1) #23
  br label %14

14:                                               ; preds = %1, %13
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @invoke_aftermath_hooks(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1004 !PGOFuncName !1747 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %9, label %8, !prof !1748

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4258, ptr noundef nonnull @.str.1) #23
  br label %9

9:                                                ; preds = %3, %8
  tail call fastcc void @sel_dfa_new_cycle(ptr noundef nonnull %1, ptr noundef %0) #24
  %10 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 3), align 8, !tbaa !1749
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12, !prof !1136

12:                                               ; preds = %9
  %13 = load ptr, ptr @curr_state, align 8, !tbaa !955
  %14 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1737
  %16 = load i64, ptr @dfa_state_size, align 8, !tbaa !1561
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %15, i64 %16, i1 false)
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 3), align 8, !tbaa !1749
  %18 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %19 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %20 = tail call i32 %17(ptr noundef %18, i32 noundef %19, ptr noundef nonnull %1, i32 noundef %2) #23
  %21 = load ptr, ptr %14, align 8, !tbaa !1737
  %22 = load ptr, ptr @curr_state, align 8, !tbaa !955
  %23 = load i64, ptr @dfa_state_size, align 8, !tbaa !1561
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %22, i64 %23, i1 false)
  br label %32

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !940
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65534
  %29 = icmp ne i32 %28, 24
  %30 = sext i1 %29 to i32
  %31 = add nsw i32 %30, %2
  br label %32

32:                                               ; preds = %24, %12
  %33 = phi i32 [ %20, %12 ], [ %31, %24 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_pipelined_exprs(ptr noundef %0) unnamed_addr #0 !prof !1661 !PGOFuncName !1750 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #24
  %4 = load ptr, ptr %3, align 8, !tbaa !1054
  %5 = load ptr, ptr %4, align 8, !tbaa !955
  %6 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %5, ptr noundef nonnull %2) #24, !range !987
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %22, label %8, !prof !1751

8:                                                ; preds = %1, %17
  %9 = load ptr, ptr %2, align 8, !tbaa !955
  %10 = getelementptr inbounds %struct._expr, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !1021
  %12 = load ptr, ptr @compiler_params, align 8, !tbaa !955
  %13 = getelementptr inbounds %struct.param_info, ptr %12, i64 86, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !1532
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %17, label %16, !prof !1752

16:                                               ; preds = %8
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  br label %17

17:                                               ; preds = %8, %16
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %18 = load ptr, ptr %3, align 8, !tbaa !1054
  %19 = load ptr, ptr %18, align 8, !tbaa !955
  %20 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %19, ptr noundef nonnull %2) #24, !range !987
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %8, !prof !1753, !llvm.loop !1754

22:                                               ; preds = %17, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_spec_exprs(ptr noundef %0) unnamed_addr #0 !prof !1661 !PGOFuncName !1755 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  %4 = load ptr, ptr @spec_info, align 8, !tbaa !955
  %5 = icmp eq ptr %4, null
  br i1 %5, label %88, label %6, !prof !1708

6:                                                ; preds = %1
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #24
  %7 = load ptr, ptr %3, align 8, !tbaa !1054
  %8 = load ptr, ptr %7, align 8, !tbaa !955
  %9 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %8, ptr noundef nonnull %2) #24, !range !987
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %60, label %11

11:                                               ; preds = %6, %50
  %12 = phi i8 [ %52, %50 ], [ 1, %6 ]
  %13 = phi i8 [ %51, %50 ], [ 1, %6 ]
  %14 = load ptr, ptr %2, align 8, !tbaa !955
  %15 = getelementptr inbounds %struct._expr, ptr %14, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !1204
  %17 = and i32 %16, 16777215
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load ptr, ptr @spec_info, align 8, !tbaa !955
  br label %34

21:                                               ; preds = %11
  %22 = call i32 @ds_weak(i32 noundef %16) #23
  %23 = load ptr, ptr @spec_info, align 8, !tbaa !955
  %24 = getelementptr inbounds %struct.spec_info_def, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !1279
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct._expr, ptr %14, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !1756
  %30 = getelementptr inbounds %struct.spec_info_def, ptr %23, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !1757
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %21
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  br label %50

34:                                               ; preds = %19, %27
  %35 = phi ptr [ %20, %19 ], [ %23, %27 ]
  %36 = getelementptr inbounds %struct.spec_info_def, ptr %35, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !1171
  %38 = and i32 %37, 2
  %39 = icmp ne i32 %38, 0
  %40 = and i32 %16, 63
  %41 = icmp eq i32 %40, 0
  %42 = and i1 %41, %39
  %43 = select i1 %42, i8 0, i8 %12
  %44 = and i32 %37, 4
  %45 = icmp ne i32 %44, 0
  %46 = and i32 %16, 258048
  %47 = icmp eq i32 %46, 0
  %48 = and i1 %47, %45
  %49 = select i1 %48, i8 0, i8 %13
  br label %50

50:                                               ; preds = %34, %33
  %51 = phi i8 [ %13, %33 ], [ %49, %34 ]
  %52 = phi i8 [ %12, %33 ], [ %43, %34 ]
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %53 = load ptr, ptr %3, align 8, !tbaa !1054
  %54 = load ptr, ptr %53, align 8, !tbaa !955
  %55 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %54, ptr noundef nonnull %2) #24, !range !987
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %11, !llvm.loop !1758

57:                                               ; preds = %50
  %58 = icmp ne i8 %52, 0
  %59 = icmp ne i8 %51, 0
  br label %60

60:                                               ; preds = %57, %6
  %61 = phi i1 [ true, %6 ], [ %59, %57 ]
  %62 = phi i1 [ true, %6 ], [ %58, %57 ]
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #24
  %63 = load ptr, ptr %3, align 8, !tbaa !1054
  %64 = load ptr, ptr %63, align 8, !tbaa !955
  %65 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %64, ptr noundef nonnull %2) #24, !range !987
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %60, %83
  %68 = load ptr, ptr %2, align 8, !tbaa !955
  %69 = getelementptr inbounds %struct._expr, ptr %68, i64 0, i32 7
  %70 = load i32, ptr %69, align 8, !tbaa !1204
  %71 = and i32 %70, 16777215
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %67
  %74 = and i32 %70, 63
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i1 true, i1 %62
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  br label %78

78:                                               ; preds = %77, %73
  %79 = and i32 %70, 258048
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i1 true, i1 %61
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  br label %83

83:                                               ; preds = %78, %82, %67
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %84 = load ptr, ptr %3, align 8, !tbaa !1054
  %85 = load ptr, ptr %84, align 8, !tbaa !955
  %86 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %85, ptr noundef nonnull %2) #24, !range !987
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %67, !llvm.loop !1759

88:                                               ; preds = %83, %60, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @process_use_exprs(ptr noundef %0) unnamed_addr #0 !prof !1661 !PGOFuncName !1760 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #24
  %4 = load ptr, ptr %3, align 8, !tbaa !1054
  %5 = load ptr, ptr %4, align 8, !tbaa !955
  %6 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %5, ptr noundef nonnull %2) #24, !range !987
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %76, label %8, !prof !1761

8:                                                ; preds = %1, %29
  %9 = phi i8 [ %31, %29 ], [ 1, %1 ]
  %10 = phi i8 [ %30, %29 ], [ 0, %1 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !955
  %12 = load ptr, ptr %11, align 8, !tbaa !1057
  %13 = load ptr, ptr %12, align 8, !tbaa !1058
  %14 = call fastcc i32 @recog_memoized(ptr noundef %13) #24
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %29, !prof !1762

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct._expr, ptr %11, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !1021
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %25, !prof !1763

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._expr, ptr %11, i64 0, i32 11
  %22 = load i8, ptr %21, align 8, !tbaa !1165
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %76, label %24, !prof !1763

24:                                               ; preds = %20
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  br label %29

25:                                               ; preds = %16
  %26 = load i8, ptr @pipelining_p, align 1, !tbaa !940
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3532, ptr noundef nonnull @.str.1) #23
  br label %29

29:                                               ; preds = %8, %28, %25, %24
  %30 = phi i8 [ %10, %24 ], [ 1, %25 ], [ 1, %28 ], [ %10, %8 ]
  %31 = phi i8 [ %9, %24 ], [ %9, %25 ], [ %9, %28 ], [ 0, %8 ]
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %32 = load ptr, ptr %3, align 8, !tbaa !1054
  %33 = load ptr, ptr %32, align 8, !tbaa !955
  %34 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %33, ptr noundef nonnull %2) #24, !range !987
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %8, !prof !1764, !llvm.loop !1765

36:                                               ; preds = %29
  %37 = icmp eq i8 %30, 0
  br i1 %37, label %76, label %38, !prof !1766

38:                                               ; preds = %36
  %39 = icmp eq i8 %31, 0
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #24
  %40 = load ptr, ptr %3, align 8, !tbaa !1054
  %41 = load ptr, ptr %40, align 8, !tbaa !955
  %42 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %41, ptr noundef nonnull %2) #24, !range !987
  %43 = icmp eq i8 %42, 0
  br i1 %39, label %44, label %58

44:                                               ; preds = %38
  br i1 %43, label %76, label %45

45:                                               ; preds = %44, %53
  %46 = load ptr, ptr %2, align 8, !tbaa !955
  %47 = load ptr, ptr %46, align 8, !tbaa !1057
  %48 = load ptr, ptr %47, align 8, !tbaa !1058
  %49 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 1, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !940
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  br label %53

53:                                               ; preds = %45, %52
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %54 = load ptr, ptr %3, align 8, !tbaa !1054
  %55 = load ptr, ptr %54, align 8, !tbaa !955
  %56 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %55, ptr noundef nonnull %2) #24, !range !987
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %76, label %45, !llvm.loop !1767

58:                                               ; preds = %38
  br i1 %43, label %76, label %59

59:                                               ; preds = %58, %71
  %60 = load ptr, ptr %2, align 8, !tbaa !955
  %61 = load ptr, ptr %60, align 8, !tbaa !1057
  %62 = load ptr, ptr %61, align 8, !tbaa !1058
  %63 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 1, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !940
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3555, ptr noundef nonnull @.str.1) #23
  br label %67

67:                                               ; preds = %59, %66
  %68 = getelementptr inbounds %struct._expr, ptr %60, i64 0, i32 11
  %69 = load i8, ptr %68, align 8, !tbaa !1165
  %70 = icmp eq i8 %69, 1
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %72 = load ptr, ptr %3, align 8, !tbaa !1054
  %73 = load ptr, ptr %72, align 8, !tbaa !955
  %74 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %73, ptr noundef nonnull %2) #24, !range !987
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %59, !llvm.loop !1768

76:                                               ; preds = %20, %67, %71, %53, %1, %58, %44, %36
  %77 = phi ptr [ null, %36 ], [ null, %44 ], [ null, %58 ], [ null, %1 ], [ null, %53 ], [ %60, %67 ], [ null, %71 ], [ %11, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret ptr %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @fill_vec_av_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !1769 !PGOFuncName !1770 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct._list_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  store ptr %0, ptr %5, align 8, !tbaa !955
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  %9 = getelementptr inbounds %struct._list_node, ptr %1, i64 0, i32 1, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !940
  %11 = icmp eq ptr %0, null
  br i1 %11, label %551, label %12, !prof !1771

12:                                               ; preds = %4
  %13 = load ptr, ptr @vec_av_set, align 8
  %14 = tail call fastcc i32 @VEC_expr_t_base_length(ptr noundef %13) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !1772

16:                                               ; preds = %12
  tail call fastcc void @VEC_expr_t_base_block_remove(ptr noundef %13, i32 noundef %14) #24
  %17 = load ptr, ptr @vec_av_set, align 8
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi ptr [ %17, %16 ], [ %13, %12 ]
  %20 = tail call fastcc i32 @VEC_expr_t_base_length(ptr noundef %19) #24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !1773

22:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3710, ptr noundef nonnull @.str.1) #23
  br label %23

23:                                               ; preds = %18, %22
  call fastcc void @_list_iter_start(ptr noundef nonnull %6, ptr noundef nonnull %5, i8 noundef zeroext 0) #24
  %24 = load ptr, ptr %6, align 8, !tbaa !1054
  %25 = load ptr, ptr %24, align 8, !tbaa !955
  %26 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %25, ptr noundef nonnull %7) #24, !range !987
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %42, label %28, !prof !1761

28:                                               ; preds = %23, %37
  %29 = load ptr, ptr %7, align 8, !tbaa !955
  call fastcc void @VEC_expr_t_heap_safe_push(ptr noundef %29) #24
  %30 = getelementptr inbounds %struct._expr, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !1774
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33, !prof !1775

33:                                               ; preds = %28
  %34 = load i32, ptr %3, align 4, !tbaa !981
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3715, ptr noundef nonnull @.str.1) #23
  br label %37

37:                                               ; preds = %28, %33, %36
  call fastcc void @sel_target_adjust_priority(ptr noundef nonnull %29) #24
  call fastcc void @_list_iter_next(ptr noundef nonnull %6) #24
  %38 = load ptr, ptr %6, align 8, !tbaa !1054
  %39 = load ptr, ptr %38, align 8, !tbaa !955
  %40 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %39, ptr noundef nonnull %7) #24, !range !987
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %28, !prof !1776, !llvm.loop !1777

42:                                               ; preds = %37, %23
  %43 = load ptr, ptr @vec_av_set, align 8
  %44 = call fastcc ptr @VEC_expr_t_base_address(ptr noundef %43) #24
  %45 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %43) #24
  %46 = zext i32 %45 to i64
  call void @spec_qsort(ptr noundef %44, i64 noundef %46, i64 noundef 8, ptr noundef nonnull @sel_rank_for_schedule) #23
  %47 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 13
  %48 = load i8, ptr %47, align 8
  %49 = and i8 %48, 4
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %52, label %51, !prof !1778

51:                                               ; preds = %42
  store i32 -2147483648, ptr @fill_vec_av_set.est_ticks_till_branch, align 4, !tbaa !981
  store i32 -2147483648, ptr @fill_vec_av_set.av_max_prio, align 4, !tbaa !981
  br label %52

52:                                               ; preds = %51, %42
  %53 = load ptr, ptr @vec_av_set, align 8
  %54 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %53) #24
  %55 = add i32 %54, -1
  %56 = icmp sgt i32 %55, -1
  %57 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 12
  br i1 %56, label %58, label %450, !prof !1779

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 9
  %60 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 8
  %61 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 2
  br label %62

62:                                               ; preds = %58, %440
  %63 = phi i32 [ %55, %58 ], [ %444, %440 ]
  %64 = phi i32 [ 0, %58 ], [ %443, %440 ]
  %65 = phi i32 [ 0, %58 ], [ %442, %440 ]
  %66 = phi i32 [ %54, %58 ], [ %63, %440 ]
  %67 = phi i32 [ -1, %58 ], [ %441, %440 ]
  %68 = load ptr, ptr @vec_av_set, align 8
  %69 = call fastcc ptr @VEC_expr_t_base_index(ptr noundef %68, i32 noundef %63) #24
  %70 = load ptr, ptr %69, align 8, !tbaa !1057
  %71 = load ptr, ptr %70, align 8, !tbaa !1058
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #25
  store i8 1, ptr %8, align 1, !tbaa !940
  %72 = load ptr, ptr %57, align 8, !tbaa !1686
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74, !prof !1775

74:                                               ; preds = %62
  %75 = icmp eq ptr %71, %72
  br i1 %75, label %77, label %76

76:                                               ; preds = %74
  call fastcc void @VEC_expr_t_base_unordered_remove(ptr noundef %68, i32 noundef %63) #24
  br label %440

77:                                               ; preds = %74
  %78 = add nsw i32 %64, 1
  br label %79

79:                                               ; preds = %62, %77
  %80 = phi i32 [ %78, %77 ], [ %64, %62 ]
  %81 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 11
  %82 = load i8, ptr %81, align 8, !tbaa !1165
  %83 = load ptr, ptr @vec_target_unavailable_vinsns, align 8, !tbaa !955
  %84 = call fastcc zeroext i8 @vinsn_vec_has_expr_p(ptr noundef %83, ptr noundef nonnull %69) #24, !range !987
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %87, label %86, !prof !1775

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %79
  %88 = phi i8 [ -1, %86 ], [ %82, %79 ]
  %89 = load ptr, ptr @vec_bookkeeping_blocked_vinsns, align 8, !tbaa !955
  %90 = call fastcc zeroext i8 @vinsn_vec_has_expr_p(ptr noundef %89, ptr noundef nonnull %69) #24, !range !987
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %116, label %92, !prof !1775

92:                                               ; preds = %87
  %93 = load ptr, ptr @vec_av_set, align 8
  call fastcc void @VEC_expr_t_base_unordered_remove(ptr noundef %93, i32 noundef %63) #24
  %94 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %95 = icmp sgt i32 %94, 3
  br i1 %95, label %96, label %440

96:                                               ; preds = %92
  %97 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !940
  %102 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.49, i32 noundef %101) #24
  %103 = shl nsw i32 %102, 1
  %104 = or disjoint i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = alloca i8, i64 %105, align 16
  %107 = load i32, ptr %100, align 8, !tbaa !940
  %108 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %106, i64 noundef %105, ptr noundef nonnull @.str.49, i32 noundef %107) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %106) #23
  %109 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %110 = call i32 @fputs(ptr nonnull %106, ptr %109)
  br label %440

111:                                              ; preds = %96
  %112 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %113 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa !940
  %115 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.49, i32 noundef %114) #24
  br label %440

116:                                              ; preds = %87
  switch i8 %88, label %128 [
    i8 1, label %117
    i8 0, label %123
  ], !prof !1780

117:                                              ; preds = %116
  %118 = load ptr, ptr %69, align 8, !tbaa !1057
  %119 = getelementptr inbounds %struct.vinsn_def, ptr %118, i64 0, i32 1
  %120 = load i32, ptr %119, align 8, !tbaa !1048
  %121 = icmp eq i32 %120, 23
  %122 = zext i1 %121 to i8
  store i8 %122, ptr %8, align 1, !tbaa !940
  br label %166

123:                                              ; preds = %116
  %124 = load ptr, ptr %69, align 8, !tbaa !1057
  %125 = getelementptr inbounds %struct.vinsn_def, ptr %124, i64 0, i32 1
  %126 = load i32, ptr %125, align 8, !tbaa !1048
  %127 = icmp eq i32 %126, 23
  br i1 %127, label %128, label %142, !prof !1781

128:                                              ; preds = %116, %123
  %129 = load ptr, ptr @vec_av_set, align 8
  %130 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %129) #24
  %131 = sub i32 %130, %66
  %132 = load i32, ptr @max_insns_to_rename, align 4, !tbaa !981
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %142, !prof !1782

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 7
  %136 = load i32, ptr %135, align 8, !tbaa !1204
  %137 = and i32 %136, 63
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142, !prof !1049

139:                                              ; preds = %134
  %140 = call fastcc zeroext i8 @find_best_reg_for_expr(ptr noundef nonnull %69, ptr noundef %1, ptr noundef nonnull %8) #24
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %166, !prof !1783

142:                                              ; preds = %139, %134, %128, %123
  %143 = load ptr, ptr @vec_av_set, align 8
  call fastcc void @VEC_expr_t_base_unordered_remove(ptr noundef %143, i32 noundef %63) #24
  %144 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %145 = icmp sgt i32 %144, 3
  br i1 %145, label %146, label %440, !prof !1784

146:                                              ; preds = %142
  %147 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %161, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %151 = load i32, ptr %150, align 8, !tbaa !940
  %152 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.50, i32 noundef %151) #24
  %153 = shl nsw i32 %152, 1
  %154 = or disjoint i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = alloca i8, i64 %155, align 16
  %157 = load i32, ptr %150, align 8, !tbaa !940
  %158 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %156, i64 noundef %155, ptr noundef nonnull @.str.50, i32 noundef %157) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %156) #23
  %159 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %160 = call i32 @fputs(ptr nonnull %156, ptr %159)
  br label %440

161:                                              ; preds = %146
  %162 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %163 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %164 = load i32, ptr %163, align 8, !tbaa !940
  %165 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef nonnull @.str.50, i32 noundef %164) #24
  br label %440

166:                                              ; preds = %139, %117
  %167 = load i8, ptr @pipelining_p, align 1, !tbaa !940
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %245, label %169, !prof !1785

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 9
  %171 = load i32, ptr %170, align 8, !tbaa !1786
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %245

173:                                              ; preds = %169
  %174 = load i8, ptr %8, align 1, !tbaa !940
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 7
  %178 = load i32, ptr %177, align 8, !tbaa !1204
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %245, label %180

180:                                              ; preds = %176, %173
  %181 = load ptr, ptr %69, align 8, !tbaa !1057
  %182 = call i32 @sel_vinsn_cost(ptr noundef %181) #23
  %183 = load ptr, ptr @current_loop_nest, align 8, !tbaa !955
  %184 = getelementptr inbounds %struct.loop, ptr %183, i64 0, i32 1
  %185 = load i32, ptr %184, align 4, !tbaa !1787
  %186 = icmp slt i32 %185, 9
  br i1 %186, label %187, label %211

187:                                              ; preds = %180
  %188 = load ptr, ptr @vec_av_set, align 8
  call fastcc void @VEC_expr_t_base_unordered_remove(ptr noundef %188, i32 noundef %63) #24
  %189 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %190 = icmp sgt i32 %189, 3
  br i1 %190, label %191, label %440

191:                                              ; preds = %187
  %192 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %206, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %196 = load i32, ptr %195, align 8, !tbaa !940
  %197 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.51, i32 noundef %196) #24
  %198 = shl nsw i32 %197, 1
  %199 = or disjoint i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = alloca i8, i64 %200, align 16
  %202 = load i32, ptr %195, align 8, !tbaa !940
  %203 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %201, i64 noundef %200, ptr noundef nonnull @.str.51, i32 noundef %202) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %201) #23
  %204 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %205 = call i32 @fputs(ptr nonnull %201, ptr %204)
  br label %440

206:                                              ; preds = %191
  %207 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %208 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %209 = load i32, ptr %208, align 8, !tbaa !940
  %210 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %207, ptr noundef nonnull @.str.51, i32 noundef %209) #24
  br label %440

211:                                              ; preds = %180
  %212 = load i32, ptr @num_insns_scheduled, align 4, !tbaa !981
  %213 = sub nsw i32 %185, %212
  %214 = load i32, ptr @issue_rate, align 4, !tbaa !981
  %215 = mul nsw i32 %214, %182
  %216 = sdiv i32 %215, 2
  %217 = icmp slt i32 %213, %216
  %218 = load i32, ptr @fill_vec_av_set.est_ticks_till_branch, align 4
  %219 = icmp slt i32 %218, %182
  %220 = select i1 %217, i1 %219, i1 false
  br i1 %220, label %221, label %245

221:                                              ; preds = %211
  %222 = load ptr, ptr @vec_av_set, align 8
  call fastcc void @VEC_expr_t_base_unordered_remove(ptr noundef %222, i32 noundef %63) #24
  %223 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %224 = icmp sgt i32 %223, 3
  br i1 %224, label %225, label %440

225:                                              ; preds = %221
  %226 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %240, label %228

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %230 = load i32, ptr %229, align 8, !tbaa !940
  %231 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.51, i32 noundef %230) #24
  %232 = shl nsw i32 %231, 1
  %233 = or disjoint i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = alloca i8, i64 %234, align 16
  %236 = load i32, ptr %229, align 8, !tbaa !940
  %237 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %235, i64 noundef %234, ptr noundef nonnull @.str.51, i32 noundef %236) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %235) #23
  %238 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %239 = call i32 @fputs(ptr nonnull %235, ptr %238)
  br label %440

240:                                              ; preds = %225
  %241 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %242 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %243 = load i32, ptr %242, align 8, !tbaa !940
  %244 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.51, i32 noundef %243) #24
  br label %440

245:                                              ; preds = %211, %176, %169, %166
  %246 = call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %71) #23
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %281, label %248, !prof !1785

248:                                              ; preds = %245
  %249 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 3
  %250 = load i32, ptr %249, align 8, !tbaa !1788
  %251 = load i32, ptr @fill_vec_av_set.av_max_prio, align 4, !tbaa !981
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %281

253:                                              ; preds = %248
  %254 = add nsw i32 %65, 1
  %255 = icmp slt i32 %67, 0
  %256 = call i32 @llvm.smin.i32(i32 %67, i32 1)
  %257 = select i1 %255, i32 1, i32 %256
  %258 = load ptr, ptr @vec_av_set, align 8
  call fastcc void @VEC_expr_t_base_unordered_remove(ptr noundef %258, i32 noundef %63) #24
  %259 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %260 = icmp sgt i32 %259, 3
  br i1 %260, label %261, label %440

261:                                              ; preds = %253
  %262 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %276, label %264

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %266 = load i32, ptr %265, align 8, !tbaa !940
  %267 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.52, i32 noundef %266) #24
  %268 = shl nsw i32 %267, 1
  %269 = or disjoint i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = alloca i8, i64 %270, align 16
  %272 = load i32, ptr %265, align 8, !tbaa !940
  %273 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %271, i64 noundef %270, ptr noundef nonnull @.str.52, i32 noundef %272) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %271) #23
  %274 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %275 = call i32 @fputs(ptr nonnull %271, ptr %274)
  br label %440

276:                                              ; preds = %261
  %277 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %278 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %279 = load i32, ptr %278, align 8, !tbaa !940
  %280 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %277, ptr noundef nonnull @.str.52, i32 noundef %279) #24
  br label %440

281:                                              ; preds = %248, %245
  %282 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 9
  %283 = load i32, ptr %282, align 8, !tbaa !1786
  %284 = icmp slt i32 %283, 1
  br i1 %284, label %285, label %290, !prof !1785

285:                                              ; preds = %281
  %286 = load i32, ptr @fill_vec_av_set.av_max_prio, align 4, !tbaa !981
  %287 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 3
  %288 = load i32, ptr %287, align 8, !tbaa !1788
  %289 = call i32 @llvm.smax.i32(i32 %286, i32 %288)
  store i32 %289, ptr @fill_vec_av_set.av_max_prio, align 4, !tbaa !981
  br label %290

290:                                              ; preds = %285, %281
  %291 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %292 = load i32, ptr %291, align 8, !tbaa !940
  %293 = load i32, ptr %59, align 8, !tbaa !1687
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %348, !prof !1789

295:                                              ; preds = %290
  %296 = load ptr, ptr %60, align 8, !tbaa !1689
  %297 = sext i32 %292 to i64
  %298 = getelementptr inbounds i32, ptr %296, i64 %297
  %299 = load i32, ptr %298, align 4, !tbaa !981
  %300 = load i32, ptr %61, align 8, !tbaa !1609
  %301 = sub nsw i32 %299, %300
  br i1 %284, label %302, label %308, !prof !1790

302:                                              ; preds = %295
  %303 = load i32, ptr @fill_vec_av_set.est_ticks_till_branch, align 4, !tbaa !981
  %304 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 3
  %305 = load i32, ptr %304, align 8, !tbaa !1788
  %306 = add nsw i32 %305, %301
  %307 = call i32 @llvm.smax.i32(i32 %303, i32 %306)
  store i32 %307, ptr @fill_vec_av_set.est_ticks_till_branch, align 4, !tbaa !981
  br label %308

308:                                              ; preds = %302, %295
  %309 = icmp sgt i32 %301, 0
  br i1 %309, label %310, label %348, !prof !1791

310:                                              ; preds = %308
  %311 = add nsw i32 %65, 1
  %312 = icmp slt i32 %67, 0
  %313 = call i32 @llvm.smin.i32(i32 %67, i32 %301)
  %314 = select i1 %312, i32 %301, i32 %313, !prof !1792
  %315 = load ptr, ptr @vec_av_set, align 8
  call fastcc void @VEC_expr_t_base_unordered_remove(ptr noundef %315, i32 noundef %63) #24
  %316 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %317 = icmp sgt i32 %316, 3
  br i1 %317, label %318, label %440, !prof !1793

318:                                              ; preds = %310
  %319 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %340, label %321

321:                                              ; preds = %318
  %322 = load i32, ptr %291, align 8, !tbaa !940
  %323 = load ptr, ptr %60, align 8, !tbaa !1689
  %324 = sext i32 %322 to i64
  %325 = getelementptr inbounds i32, ptr %323, i64 %324
  %326 = load i32, ptr %325, align 4, !tbaa !981
  %327 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.53, i32 noundef %322, i32 noundef %326) #24
  %328 = shl nsw i32 %327, 1
  %329 = or disjoint i32 %328, 1
  %330 = sext i32 %329 to i64
  %331 = alloca i8, i64 %330, align 16
  %332 = load i32, ptr %291, align 8, !tbaa !940
  %333 = load ptr, ptr %60, align 8, !tbaa !1689
  %334 = sext i32 %332 to i64
  %335 = getelementptr inbounds i32, ptr %333, i64 %334
  %336 = load i32, ptr %335, align 4, !tbaa !981
  %337 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %331, i64 noundef %330, ptr noundef nonnull @.str.53, i32 noundef %332, i32 noundef %336) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %331) #23
  %338 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %339 = call i32 @fputs(ptr nonnull %331, ptr %338)
  br label %440

340:                                              ; preds = %318
  %341 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %342 = load i32, ptr %291, align 8, !tbaa !940
  %343 = load ptr, ptr %60, align 8, !tbaa !1689
  %344 = sext i32 %342 to i64
  %345 = getelementptr inbounds i32, ptr %343, i64 %344
  %346 = load i32, ptr %345, align 4, !tbaa !981
  %347 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %341, ptr noundef nonnull @.str.53, i32 noundef %342, i32 noundef %346) #24
  br label %440

348:                                              ; preds = %308, %290
  %349 = call i32 @tick_check_p(ptr noundef nonnull %69, ptr noundef %10, ptr noundef nonnull %2) #23
  %350 = load i32, ptr %282, align 8, !tbaa !1786
  %351 = icmp slt i32 %350, 1
  br i1 %351, label %352, label %361, !prof !1794

352:                                              ; preds = %348
  %353 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 3
  %354 = load i32, ptr %353, align 8, !tbaa !1788
  %355 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 4
  %356 = load i32, ptr %355, align 4, !tbaa !1774
  %357 = add i32 %354, %349
  %358 = add i32 %357, %356
  %359 = load i32, ptr @fill_vec_av_set.est_ticks_till_branch, align 4
  %360 = call i32 @llvm.smax.i32(i32 %359, i32 %358)
  store i32 %360, ptr @fill_vec_av_set.est_ticks_till_branch, align 4, !tbaa !981
  br label %361

361:                                              ; preds = %352, %348
  %362 = icmp sgt i32 %349, 0
  br i1 %362, label %363, label %419, !prof !1795

363:                                              ; preds = %361
  %364 = load i32, ptr %291, align 8, !tbaa !940
  %365 = load i32, ptr %59, align 8, !tbaa !1687
  %366 = icmp slt i32 %364, %365
  %367 = load ptr, ptr %60, align 8, !tbaa !1689
  br i1 %366, label %375, label %368, !prof !1796

368:                                              ; preds = %363
  %369 = mul nsw i32 %364, 3
  %370 = sdiv i32 %369, 2
  %371 = sext i32 %370 to i64
  %372 = sext i32 %365 to i64
  %373 = call ptr @xrecalloc(ptr noundef %367, i64 noundef %371, i64 noundef %372, i64 noundef 4) #23
  store ptr %373, ptr %60, align 8, !tbaa !1689
  %374 = load i32, ptr %291, align 8, !tbaa !940
  br label %375

375:                                              ; preds = %368, %363
  %376 = phi i32 [ %374, %368 ], [ %364, %363 ]
  %377 = phi ptr [ %373, %368 ], [ %367, %363 ]
  %378 = load i32, ptr %61, align 8, !tbaa !1609
  %379 = add nsw i32 %378, %349
  %380 = sext i32 %376 to i64
  %381 = getelementptr inbounds i32, ptr %377, i64 %380
  store i32 %379, ptr %381, align 4, !tbaa !981
  %382 = add nsw i32 %65, 1
  %383 = icmp slt i32 %67, 0
  %384 = call i32 @llvm.smin.i32(i32 %67, i32 %349)
  %385 = select i1 %383, i32 %349, i32 %384, !prof !1797
  %386 = load ptr, ptr @vec_av_set, align 8
  call fastcc void @VEC_expr_t_base_unordered_remove(ptr noundef %386, i32 noundef %63) #24
  %387 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %388 = icmp sgt i32 %387, 3
  br i1 %388, label %389, label %440, !prof !1798

389:                                              ; preds = %375
  %390 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %411, label %392

392:                                              ; preds = %389
  %393 = load i32, ptr %291, align 8, !tbaa !940
  %394 = load ptr, ptr %60, align 8, !tbaa !1689
  %395 = sext i32 %393 to i64
  %396 = getelementptr inbounds i32, ptr %394, i64 %395
  %397 = load i32, ptr %396, align 4, !tbaa !981
  %398 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.54, i32 noundef %393, i32 noundef %397) #24
  %399 = shl nsw i32 %398, 1
  %400 = or disjoint i32 %399, 1
  %401 = sext i32 %400 to i64
  %402 = alloca i8, i64 %401, align 16
  %403 = load i32, ptr %291, align 8, !tbaa !940
  %404 = load ptr, ptr %60, align 8, !tbaa !1689
  %405 = sext i32 %403 to i64
  %406 = getelementptr inbounds i32, ptr %404, i64 %405
  %407 = load i32, ptr %406, align 4, !tbaa !981
  %408 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %402, i64 noundef %401, ptr noundef nonnull @.str.54, i32 noundef %403, i32 noundef %407) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %402) #23
  %409 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %410 = call i32 @fputs(ptr nonnull %402, ptr %409)
  br label %440

411:                                              ; preds = %389
  %412 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %413 = load i32, ptr %291, align 8, !tbaa !940
  %414 = load ptr, ptr %60, align 8, !tbaa !1689
  %415 = sext i32 %413 to i64
  %416 = getelementptr inbounds i32, ptr %414, i64 %415
  %417 = load i32, ptr %416, align 4, !tbaa !981
  %418 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %412, ptr noundef nonnull @.str.54, i32 noundef %413, i32 noundef %417) #24
  br label %440

419:                                              ; preds = %361
  %420 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %421 = icmp sgt i32 %420, 3
  br i1 %421, label %422, label %440, !prof !1729

422:                                              ; preds = %419
  %423 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %436, label %425

425:                                              ; preds = %422
  %426 = load i32, ptr %291, align 8, !tbaa !940
  %427 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.55, i32 noundef %426) #24
  %428 = shl nsw i32 %427, 1
  %429 = or disjoint i32 %428, 1
  %430 = sext i32 %429 to i64
  %431 = alloca i8, i64 %430, align 16
  %432 = load i32, ptr %291, align 8, !tbaa !940
  %433 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %431, i64 noundef %430, ptr noundef nonnull @.str.55, i32 noundef %432) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %431) #23
  %434 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %435 = call i32 @fputs(ptr nonnull %431, ptr %434)
  br label %440

436:                                              ; preds = %422
  %437 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %438 = load i32, ptr %291, align 8, !tbaa !940
  %439 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %437, ptr noundef nonnull @.str.55, i32 noundef %438) #24
  br label %440

440:                                              ; preds = %194, %206, %187, %228, %240, %221, %419, %436, %425, %375, %411, %392, %310, %340, %321, %253, %276, %264, %142, %161, %149, %92, %111, %99, %76
  %441 = phi i32 [ %67, %76 ], [ %67, %99 ], [ %67, %111 ], [ %67, %92 ], [ %67, %149 ], [ %67, %161 ], [ %67, %142 ], [ %257, %264 ], [ %257, %276 ], [ %257, %253 ], [ %314, %321 ], [ %314, %340 ], [ %314, %310 ], [ %385, %392 ], [ %385, %411 ], [ %385, %375 ], [ 0, %425 ], [ 0, %436 ], [ 0, %419 ], [ %67, %221 ], [ %67, %240 ], [ %67, %228 ], [ %67, %187 ], [ %67, %206 ], [ %67, %194 ]
  %442 = phi i32 [ %65, %76 ], [ %65, %99 ], [ %65, %111 ], [ %65, %92 ], [ %65, %149 ], [ %65, %161 ], [ %65, %142 ], [ %254, %264 ], [ %254, %276 ], [ %254, %253 ], [ %311, %321 ], [ %311, %340 ], [ %311, %310 ], [ %382, %392 ], [ %382, %411 ], [ %382, %375 ], [ %65, %425 ], [ %65, %436 ], [ %65, %419 ], [ %65, %221 ], [ %65, %240 ], [ %65, %228 ], [ %65, %187 ], [ %65, %206 ], [ %65, %194 ]
  %443 = phi i32 [ %64, %76 ], [ %80, %99 ], [ %80, %111 ], [ %80, %92 ], [ %80, %149 ], [ %80, %161 ], [ %80, %142 ], [ %80, %264 ], [ %80, %276 ], [ %80, %253 ], [ %80, %321 ], [ %80, %340 ], [ %80, %310 ], [ %80, %392 ], [ %80, %411 ], [ %80, %375 ], [ %80, %425 ], [ %80, %436 ], [ %80, %419 ], [ %80, %221 ], [ %80, %240 ], [ %80, %228 ], [ %80, %187 ], [ %80, %206 ], [ %80, %194 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #25
  %444 = add nsw i32 %63, -1
  %445 = icmp sgt i32 %63, 0
  br i1 %445, label %62, label %446, !prof !1799, !llvm.loop !1800

446:                                              ; preds = %440
  %447 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 12
  %448 = load ptr, ptr %447, align 8, !tbaa !1686
  %449 = icmp eq ptr %448, null
  br i1 %449, label %463, label %453, !prof !1773

450:                                              ; preds = %52
  %451 = load ptr, ptr %57, align 8, !tbaa !1686
  %452 = icmp eq ptr %451, null
  br i1 %452, label %468, label %455, !prof !1773

453:                                              ; preds = %446
  %454 = icmp eq i32 %443, 1
  br i1 %454, label %459, label %455

455:                                              ; preds = %450, %453
  %456 = phi i32 [ %441, %453 ], [ -1, %450 ]
  %457 = phi i32 [ %442, %453 ], [ 0, %450 ]
  %458 = phi ptr [ %447, %453 ], [ %57, %450 ]
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3923, ptr noundef nonnull @.str.1) #23
  br label %459

459:                                              ; preds = %453, %455
  %460 = phi i32 [ %441, %453 ], [ %456, %455 ]
  %461 = phi i32 [ %442, %453 ], [ %457, %455 ]
  %462 = phi ptr [ %447, %453 ], [ %458, %455 ]
  store ptr null, ptr %462, align 8, !tbaa !1686
  br label %463

463:                                              ; preds = %459, %446
  %464 = phi i32 [ %461, %459 ], [ %442, %446 ]
  %465 = phi i32 [ %460, %459 ], [ %441, %446 ]
  %466 = icmp slt i32 %465, 0
  br i1 %466, label %467, label %468, !prof !956

467:                                              ; preds = %463
  br label %468

468:                                              ; preds = %450, %467, %463
  %469 = phi i32 [ %464, %463 ], [ %464, %467 ], [ 0, %450 ]
  %470 = phi i32 [ %465, %463 ], [ 0, %467 ], [ 0, %450 ]
  %471 = load ptr, ptr @vec_av_set, align 8
  %472 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %471) #24
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %548, label %474, !prof !1710

474:                                              ; preds = %468
  %475 = icmp eq i32 %470, 0
  br i1 %475, label %478, label %476, !prof !1664

476:                                              ; preds = %474
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3939, ptr noundef nonnull @.str.1) #23
  %477 = load ptr, ptr @vec_av_set, align 8
  br label %478

478:                                              ; preds = %476, %474
  %479 = phi ptr [ %477, %476 ], [ %471, %474 ]
  %480 = call fastcc ptr @VEC_expr_t_base_address(ptr noundef %479) #24
  %481 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %479) #24
  %482 = zext i32 %481 to i64
  call void @spec_qsort(ptr noundef %480, i64 noundef %482, i64 noundef 8, ptr noundef nonnull @sel_rank_for_schedule) #23
  %483 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %484 = icmp sgt i32 %483, 3
  br i1 %484, label %485, label %548, !prof !1726

485:                                              ; preds = %478
  %486 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %487 = icmp eq i8 %486, 0
  br i1 %487, label %501, label %488

488:                                              ; preds = %485
  %489 = load ptr, ptr @vec_av_set, align 8
  %490 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %489) #24
  %491 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.56, i32 noundef %490, i32 noundef %469) #24
  %492 = shl nsw i32 %491, 1
  %493 = or disjoint i32 %492, 1
  %494 = sext i32 %493 to i64
  %495 = alloca i8, i64 %494, align 16
  %496 = load ptr, ptr @vec_av_set, align 8
  %497 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %496) #24
  %498 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %495, i64 noundef %494, ptr noundef nonnull @.str.56, i32 noundef %497, i32 noundef %469) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %495) #23
  %499 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %500 = call i32 @fputs(ptr nonnull %495, ptr %499)
  br label %506

501:                                              ; preds = %485
  %502 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %503 = load ptr, ptr @vec_av_set, align 8
  %504 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %503) #24
  %505 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %502, ptr noundef nonnull @.str.56, i32 noundef %504, i32 noundef %469) #24
  br label %506

506:                                              ; preds = %488, %501
  %507 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %508 = icmp eq i8 %507, 0
  br i1 %508, label %522, label %509

509:                                              ; preds = %506
  %510 = load ptr, ptr @vec_av_set, align 8
  %511 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %510) #24
  %512 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.57, i32 noundef %511) #24
  %513 = shl nsw i32 %512, 1
  %514 = or disjoint i32 %513, 1
  %515 = sext i32 %514 to i64
  %516 = alloca i8, i64 %515, align 16
  %517 = load ptr, ptr @vec_av_set, align 8
  %518 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %517) #24
  %519 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %516, i64 noundef %515, ptr noundef nonnull @.str.57, i32 noundef %518) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %516) #23
  %520 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %521 = call i32 @fputs(ptr nonnull %516, ptr %520)
  br label %527

522:                                              ; preds = %506
  %523 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %524 = load ptr, ptr @vec_av_set, align 8
  %525 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %524) #24
  %526 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %523, ptr noundef nonnull @.str.57, i32 noundef %525) #24
  br label %527

527:                                              ; preds = %522, %509
  %528 = load ptr, ptr @vec_av_set, align 8
  %529 = call fastcc i32 @VEC_expr_t_base_iterate(ptr noundef %528, i32 noundef 0, ptr noundef nonnull %7) #24, !range !1380
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %538, label %531

531:                                              ; preds = %527, %531
  %532 = phi i32 [ %534, %531 ], [ 0, %527 ]
  %533 = load ptr, ptr %7, align 8, !tbaa !955
  call void @dump_expr(ptr noundef %533) #23
  %534 = add nuw nsw i32 %532, 1
  %535 = load ptr, ptr @vec_av_set, align 8
  %536 = call fastcc i32 @VEC_expr_t_base_iterate(ptr noundef %535, i32 noundef %534, ptr noundef nonnull %7) #24, !range !1380
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %531, !llvm.loop !1801

538:                                              ; preds = %531, %527
  %539 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %540 = icmp eq i8 %539, 0
  br i1 %540, label %545, label %541

541:                                              ; preds = %538
  %542 = alloca [3 x i8], align 16
  store i16 10, ptr %542, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %542) #23
  %543 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %544 = call i32 @fputs(ptr nonnull %542, ptr %543)
  br label %548

545:                                              ; preds = %538
  %546 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %547 = call i32 @fputc(i32 10, ptr %546)
  br label %548

548:                                              ; preds = %478, %545, %541, %468
  %549 = phi i32 [ %470, %468 ], [ 0, %541 ], [ 0, %545 ], [ 0, %478 ]
  %550 = phi i8 [ 0, %468 ], [ 1, %541 ], [ 1, %545 ], [ 1, %478 ]
  store i32 %549, ptr %3, align 4, !tbaa !981
  br label %551

551:                                              ; preds = %548, %4
  %552 = phi i8 [ 0, %4 ], [ %550, %548 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #25
  ret i8 %552
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @convert_vec_av_set_to_ready() unnamed_addr #0 !prof !1713 !PGOFuncName !1802 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = load ptr, ptr @vec_av_set, align 8
  %3 = tail call fastcc i32 @VEC_expr_t_base_length(ptr noundef %2) #24
  store i32 %3, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  %4 = add nsw i32 %3, -1
  store i32 %4, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !1745
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %8, label %6, !prof !1664

6:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3976, ptr noundef nonnull @.str.1) #23
  %7 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !1711
  br label %8

8:                                                ; preds = %0, %6
  %9 = phi i32 [ %3, %0 ], [ %7, %6 ]
  %10 = load i32, ptr @max_issue_size, align 4, !tbaa !981
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %13, !prof !1803

12:                                               ; preds = %8
  store i32 %9, ptr @max_issue_size, align 4, !tbaa !981
  tail call void @sched_extend_ready_list(i32 noundef %9) #23
  br label %13

13:                                               ; preds = %12, %8
  %14 = load ptr, ptr @vec_av_set, align 8
  %15 = call fastcc i32 @VEC_expr_t_base_iterate(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %1) #24, !range !1380
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17, !prof !1804

17:                                               ; preds = %13
  %18 = load ptr, ptr @vec_av_set, align 8
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ %28, %19 ], [ 0, %17 ]
  %21 = load ptr, ptr %1, align 8, !tbaa !955
  %22 = load ptr, ptr %21, align 8, !tbaa !1057
  %23 = load ptr, ptr %22, align 8, !tbaa !1058
  %24 = load ptr, ptr @ready_try, align 8, !tbaa !955
  %25 = getelementptr inbounds i8, ptr %24, i64 %20
  store i8 0, ptr %25, align 1, !tbaa !940
  %26 = load ptr, ptr @ready, align 8, !tbaa !1721
  %27 = getelementptr inbounds ptr, ptr %26, i64 %20
  store ptr %23, ptr %27, align 8, !tbaa !955
  %28 = add nuw i64 %20, 1
  %29 = trunc i64 %28 to i32
  %30 = call fastcc i32 @VEC_expr_t_base_iterate(ptr noundef %18, i32 noundef %29, ptr noundef nonnull %1) #24, !range !1380
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %19, !prof !1805, !llvm.loop !1806

32:                                               ; preds = %19, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 !prof !1807 !PGOFuncName !1808 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !940
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9, !prof !1809

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !940
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #23
  store i32 %8, ptr %2, align 8, !tbaa !940
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_expr_t_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !1810 !PGOFuncName !1811 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1812

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1813
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_expr_t_base_block_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !prof !1815 !PGOFuncName !1816 {
  %3 = load i32, ptr %0, align 8, !tbaa !1813
  %4 = getelementptr inbounds %struct.VEC_expr_t_base, ptr %0, i64 0, i32 2
  %5 = sub i32 %3, %1
  store i32 %5, ptr %0, align 8, !tbaa !1813
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = zext i32 %5 to i64
  %9 = shl nuw nsw i64 %8, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %7, i64 %9, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_expr_t_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !1817 !PGOFuncName !1818 {
  tail call fastcc void @VEC_expr_t_heap_reserve() #24
  %2 = load ptr, ptr @vec_av_set, align 8, !tbaa !955
  tail call fastcc void @VEC_expr_t_base_quick_push(ptr noundef %2, ptr noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_target_adjust_priority(ptr nocapture noundef %0) unnamed_addr #0 !prof !1817 !PGOFuncName !1819 {
  %2 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !1788
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 1), align 8, !tbaa !1820
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6, !prof !1775

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !1057
  %8 = load ptr, ptr %7, align 8, !tbaa !1058
  %9 = tail call i32 %4(ptr noundef %8, i32 noundef %3) #23
  %10 = load i32, ptr %2, align 8, !tbaa !1788
  br label %11

11:                                               ; preds = %1, %6
  %12 = phi i32 [ %10, %6 ], [ %3, %1 ]
  %13 = phi i32 [ %9, %6 ], [ %3, %1 ]
  %14 = sub nsw i32 %13, %12
  %15 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 4
  store i32 %14, ptr %15, align 4, !tbaa !1774
  %16 = icmp sgt i32 %14, -1
  br i1 %16, label %18, label %17, !prof !1775

17:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3308, ptr noundef nonnull @.str.1) #23
  br label %18

18:                                               ; preds = %11, %17
  %19 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %20 = icmp sgt i32 %19, 3
  br i1 %20, label %21, label %54, !prof !1821

21:                                               ; preds = %18
  %22 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %0, align 8, !tbaa !1057
  %26 = load ptr, ptr %25, align 8, !tbaa !1058
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !940
  %29 = load i32, ptr %2, align 8, !tbaa !1788
  %30 = load i32, ptr %15, align 4, !tbaa !1774
  %31 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.58, i32 noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef %13) #24
  %32 = shl nsw i32 %31, 1
  %33 = or disjoint i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  %36 = load ptr, ptr %0, align 8, !tbaa !1057
  %37 = load ptr, ptr %36, align 8, !tbaa !1058
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !940
  %40 = load i32, ptr %2, align 8, !tbaa !1788
  %41 = load i32, ptr %15, align 4, !tbaa !1774
  %42 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %35, i64 noundef %34, ptr noundef nonnull @.str.58, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %13) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %35) #23
  %43 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %44 = call i32 @fputs(ptr nonnull %35, ptr %43)
  br label %54

45:                                               ; preds = %21
  %46 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %47 = load ptr, ptr %0, align 8, !tbaa !1057
  %48 = load ptr, ptr %47, align 8, !tbaa !1058
  %49 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !940
  %51 = load i32, ptr %2, align 8, !tbaa !1788
  %52 = load i32, ptr %15, align 4, !tbaa !1774
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.58, i32 noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef %13) #24
  br label %54

54:                                               ; preds = %24, %45, %18
  ret void
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_expr_t_base_address(ptr noundef readnone %0) unnamed_addr #3 !prof !1822 !PGOFuncName !1823 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_expr_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !1824
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sel_rank_for_schedule(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !1825 !PGOFuncName !1826 {
  %3 = load ptr, ptr %1, align 8, !tbaa !955
  %4 = load ptr, ptr %0, align 8, !tbaa !955
  %5 = load ptr, ptr %3, align 8, !tbaa !1057
  %6 = load ptr, ptr %4, align 8, !tbaa !1057
  %7 = load ptr, ptr %5, align 8, !tbaa !1058
  %8 = load ptr, ptr %6, align 8, !tbaa !1058
  %9 = load i32, ptr %7, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 7
  %12 = load i32, ptr %8, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 7
  br i1 %11, label %15, label %17, !prof !1827

15:                                               ; preds = %2
  %16 = select i1 %14, i32 1, i32 -1
  br label %142

17:                                               ; preds = %2
  br i1 %14, label %142, label %18, !prof !1828

18:                                               ; preds = %17
  %19 = lshr i32 %9, 28
  %20 = and i32 %19, 1
  %21 = lshr i32 %12, 28
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %39, label %24, !prof !1829

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.vinsn_def, ptr %5, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !1048
  %27 = add i32 %26, -23
  %28 = icmp ult i32 %27, 2
  %29 = getelementptr inbounds %struct.vinsn_def, ptr %6, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !1048
  %31 = add i32 %30, -23
  %32 = icmp ult i32 %31, 2
  br i1 %28, label %33, label %35

33:                                               ; preds = %24
  %34 = select i1 %32, i32 -1, i32 1
  br label %142

35:                                               ; preds = %24
  br i1 %32, label %142, label %36

36:                                               ; preds = %35
  %37 = icmp eq i32 %22, 0
  %38 = select i1 %37, i32 -1, i32 1
  br label %142

39:                                               ; preds = %18
  %40 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef nonnull %7) #23
  %41 = zext i8 %40 to i32
  %42 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef nonnull %8) #23
  %43 = zext i8 %42 to i32
  %44 = sub nsw i32 %41, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %142, !prof !1829

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct._expr, ptr %3, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !1021
  %49 = icmp sgt i32 %48, 0
  %50 = getelementptr inbounds %struct._expr, ptr %4, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !1021
  %52 = icmp sgt i32 %51, 0
  %53 = select i1 %49, i1 true, i1 %52
  br i1 %53, label %54, label %57, !prof !1830

54:                                               ; preds = %46
  %55 = sub nsw i32 %48, %51
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %142

57:                                               ; preds = %46, %54
  %58 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %7) #23
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60, !prof !1831

60:                                               ; preds = %57
  %61 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %8) #23
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %142, label %63, !prof !1832

63:                                               ; preds = %60, %57
  %64 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %8) #23
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66, !prof !1833

66:                                               ; preds = %63
  %67 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %7) #23
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %142, label %69, !prof !1834

69:                                               ; preds = %63, %66
  %70 = getelementptr inbounds %struct._expr, ptr %3, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !1756
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %91, label %73, !prof !1835

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct._expr, ptr %4, i64 0, i32 2
  %75 = load i32, ptr %74, align 4, !tbaa !1756
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %91, label %77, !prof !1835

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct._expr, ptr %4, i64 0, i32 3
  %79 = load i32, ptr %78, align 8, !tbaa !1788
  %80 = getelementptr inbounds %struct._expr, ptr %4, i64 0, i32 4
  %81 = load i32, ptr %80, align 4, !tbaa !1774
  %82 = add nsw i32 %81, %79
  %83 = getelementptr inbounds %struct._expr, ptr %3, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !1788
  %85 = getelementptr inbounds %struct._expr, ptr %3, i64 0, i32 4
  %86 = load i32, ptr %85, align 4, !tbaa !1774
  %87 = add nsw i32 %86, %84
  %88 = mul nsw i32 %82, %75
  %89 = mul nsw i32 %87, %71
  %90 = sub nsw i32 %88, %89
  br label %103

91:                                               ; preds = %73, %69
  %92 = getelementptr inbounds %struct._expr, ptr %4, i64 0, i32 3
  %93 = load i32, ptr %92, align 8, !tbaa !1788
  %94 = getelementptr inbounds %struct._expr, ptr %3, i64 0, i32 3
  %95 = load i32, ptr %94, align 8, !tbaa !1788
  %96 = getelementptr inbounds %struct._expr, ptr %4, i64 0, i32 4
  %97 = load i32, ptr %96, align 4, !tbaa !1774
  %98 = getelementptr inbounds %struct._expr, ptr %3, i64 0, i32 4
  %99 = load i32, ptr %98, align 4, !tbaa !1774
  %100 = add i32 %93, %97
  %101 = add i32 %95, %99
  %102 = sub i32 %100, %101
  br label %103

103:                                              ; preds = %91, %77
  %104 = phi i32 [ %90, %77 ], [ %102, %91 ]
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %142, !prof !1836

106:                                              ; preds = %103
  %107 = load ptr, ptr @spec_info, align 8, !tbaa !955
  %108 = icmp eq ptr %107, null
  br i1 %108, label %130, label %109, !prof !1837

109:                                              ; preds = %106
  %110 = load i32, ptr %107, align 8, !tbaa !1278
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %130, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct._expr, ptr %3, i64 0, i32 7
  %114 = load i32, ptr %113, align 8, !tbaa !1204
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = tail call i32 @ds_weak(i32 noundef %114) #23
  br label %118

118:                                              ; preds = %112, %116
  %119 = phi i32 [ %117, %116 ], [ 63, %112 ]
  %120 = getelementptr inbounds %struct._expr, ptr %4, i64 0, i32 7
  %121 = load i32, ptr %120, align 8, !tbaa !1204
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = tail call i32 @ds_weak(i32 noundef %121) #23
  br label %125

125:                                              ; preds = %118, %123
  %126 = phi i32 [ %124, %123 ], [ 63, %118 ]
  %127 = sub nsw i32 %126, %119
  %128 = add i32 %127, 7
  %129 = icmp ult i32 %128, 15
  br i1 %129, label %130, label %142

130:                                              ; preds = %125, %109, %106
  %131 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !940
  %133 = load i32, ptr @first_emitted_uid, align 4, !tbaa !981
  %134 = icmp slt i32 %132, %133
  %135 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %136 = load i32, ptr %135, align 8, !tbaa !940
  %137 = icmp slt i32 %136, %133
  br i1 %134, label %138, label %139, !prof !1838

138:                                              ; preds = %130
  br i1 %137, label %140, label %142, !prof !1839

139:                                              ; preds = %130
  br i1 %137, label %142, label %140, !prof !1840

140:                                              ; preds = %138, %139
  %141 = sub nsw i32 %132, %136
  br label %142

142:                                              ; preds = %15, %35, %33, %139, %138, %103, %66, %60, %54, %39, %17, %125, %140, %36
  %143 = phi i32 [ %38, %36 ], [ %141, %140 ], [ %127, %125 ], [ 1, %17 ], [ %44, %39 ], [ %55, %54 ], [ -1, %60 ], [ 1, %66 ], [ %104, %103 ], [ -1, %138 ], [ 1, %139 ], [ %34, %33 ], [ -1, %35 ], [ %16, %15 ]
  ret i32 %143
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_expr_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !1841 !PGOFuncName !1842 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_expr_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !955
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_expr_t_base_unordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !prof !1843 !PGOFuncName !1844 {
  %3 = load i32, ptr %0, align 8, !tbaa !1813
  %4 = zext nneg i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_expr_t_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = add i32 %3, -1
  store i32 %6, ptr %0, align 8, !tbaa !1813
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_expr_t_base, ptr %0, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !955
  store ptr %9, ptr %5, align 8, !tbaa !955
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vinsn_vec_has_expr_p(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1845 !PGOFuncName !1846 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = call fastcc i32 @VEC_vinsn_t_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #24, !range !1380
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6, !prof !1847

6:                                                ; preds = %2, %24
  %7 = phi i32 [ %25, %24 ], [ 0, %2 ]
  %8 = load ptr, ptr %3, align 8, !tbaa !955
  %9 = getelementptr inbounds %struct.vinsn_def, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !1048
  %11 = icmp eq i32 %10, 23
  br i1 %11, label %12, label %16, !prof !1848

12:                                               ; preds = %6
  %13 = load ptr, ptr %1, align 8, !tbaa !1057
  %14 = tail call zeroext i8 @vinsn_equal_p(ptr noundef nonnull %8, ptr noundef %13) #23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %28, !prof !1848

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.vinsn_def, ptr %8, i64 0, i32 1, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !1043
  %19 = load ptr, ptr %1, align 8, !tbaa !1057
  %20 = getelementptr inbounds %struct.vinsn_def, ptr %19, i64 0, i32 1, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !1043
  %22 = tail call zeroext i8 @bitmap_intersect_p(ptr noundef %18, ptr noundef %21) #23
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %12, %16
  %25 = add nuw nsw i32 %7, 1
  %26 = call fastcc i32 @VEC_vinsn_t_base_iterate(ptr noundef %0, i32 noundef %25, ptr noundef nonnull %3) #24, !range !1380
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %6, !prof !1849, !llvm.loop !1850

28:                                               ; preds = %12, %16, %24, %2
  %29 = phi i8 [ 0, %2 ], [ 0, %24 ], [ 1, %16 ], [ 1, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @find_best_reg_for_expr(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !1039 !PGOFuncName !1851 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !955
  store i8 0, ptr %2, align 1, !tbaa !940
  %6 = load ptr, ptr %0, align 8, !tbaa !1057
  %7 = getelementptr inbounds %struct.vinsn_def, ptr %6, i64 0, i32 1, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !1043
  %9 = load ptr, ptr %8, align 8, !tbaa !1554
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16, !prof !1041

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.vinsn_def, ptr %6, i64 0, i32 1, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !1046
  %14 = load ptr, ptr %13, align 8, !tbaa !1554
  %15 = icmp eq ptr %14, null
  br i1 %15, label %64, label %16

16:                                               ; preds = %11, %3
  %17 = tail call ptr @get_clear_regset_from_pool() #23
  store i64 0, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !1852
  call fastcc void @collect_unavailable_regs_from_bnds(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %17, ptr noundef nonnull %4) #24
  %18 = load ptr, ptr %0, align 8, !tbaa !1057
  %19 = getelementptr inbounds %struct.vinsn_def, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !1048
  %21 = icmp eq i32 %20, 23
  br i1 %21, label %22, label %50, !prof !1049

22:                                               ; preds = %16
  call fastcc void @verify_target_availability(ptr noundef nonnull %0, ptr noundef %17) #24
  %23 = load i32, ptr @reload_completed, align 4, !tbaa !981
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25, !prof !1041

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store i64 0, ptr %5, align 8, !tbaa !1561
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %5, ptr noundef %17) #23
  %26 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !1852
  %27 = load i64, ptr %5, align 8, !tbaa !1561
  %28 = or i64 %27, %26
  store i64 %28, ptr %5, align 8, !tbaa !1561
  %29 = load ptr, ptr %4, align 8, !tbaa !955
  %30 = call fastcc ptr @choose_best_reg(i64 noundef %28, ptr noundef %29, ptr noundef nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  br label %34

31:                                               ; preds = %22
  %32 = load ptr, ptr %4, align 8, !tbaa !955
  %33 = call fastcc ptr @choose_best_pseudo_reg(ptr noundef %17, ptr noundef %32, ptr noundef nonnull %2) #24
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi ptr [ %30, %25 ], [ %33, %31 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %62, label %37, !prof !1854

37:                                               ; preds = %34
  %38 = load i8, ptr %2, align 1, !tbaa !940
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40, !prof !1855

40:                                               ; preds = %37
  %41 = load ptr, ptr %4, align 8, !tbaa !955
  %42 = call fastcc zeroext i8 @try_replace_dest_reg(ptr noundef %41, ptr noundef nonnull %35, ptr noundef nonnull %0) #24
  br label %62

43:                                               ; preds = %37
  %44 = load ptr, ptr %0, align 8, !tbaa !1057
  %45 = call i32 @sel_vinsn_cost(ptr noundef %44) #23
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %62, label %47, !prof !1856

47:                                               ; preds = %43
  %48 = load ptr, ptr %4, align 8, !tbaa !955
  %49 = call fastcc zeroext i8 @try_replace_dest_reg(ptr noundef %48, ptr noundef nonnull %35, ptr noundef nonnull %0) #24
  br label %62

50:                                               ; preds = %16
  %51 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !1852
  %52 = call fastcc zeroext i8 @vinsn_writes_one_of_regs_p(ptr noundef nonnull %18, ptr noundef %17, i64 noundef %51) #24, !range !987
  %53 = icmp eq i8 %52, 0
  %54 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  %55 = load i8, ptr %54, align 8, !tbaa !1165
  br i1 %53, label %59, label %56

56:                                               ; preds = %50
  %57 = icmp slt i8 %55, 1
  br i1 %57, label %62, label %58

58:                                               ; preds = %56
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1772, ptr noundef nonnull @.str.1) #23
  br label %62

59:                                               ; preds = %50
  %60 = icmp eq i8 %55, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1777, ptr noundef nonnull @.str.1) #23
  br label %62

62:                                               ; preds = %47, %40, %34, %43, %61, %59, %58, %56
  %63 = phi i8 [ 0, %56 ], [ 0, %58 ], [ 1, %59 ], [ 1, %61 ], [ %42, %40 ], [ %49, %47 ], [ 0, %34 ], [ 0, %43 ]
  call fastcc void @_list_clear(ptr noundef nonnull %4) #24
  call void @return_regset_to_pool(ptr noundef %17) #23
  br label %64

64:                                               ; preds = %11, %62
  %65 = phi i8 [ %63, %62 ], [ 1, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret i8 %65
}

; Function Attrs: optsize
declare i32 @tick_check_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xrecalloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_expr_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !1857 !PGOFuncName !1858 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1859

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1813
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1860

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_expr_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !955
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !955
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_expr_t_heap_reserve() unnamed_addr #0 !prof !1817 !PGOFuncName !1861 {
  %1 = load ptr, ptr @vec_av_set, align 8, !tbaa !955
  %2 = tail call fastcc i32 @VEC_expr_t_base_space(ptr noundef %1) #24
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !1862

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #23
  store ptr %5, ptr @vec_av_set, align 8, !tbaa !955
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_expr_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !1817 !PGOFuncName !1863 {
  %3 = load i32, ptr %0, align 8, !tbaa !1813
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1813
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_expr_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !955
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_expr_t_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !1817 !PGOFuncName !1864 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1865

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_expr_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1866
  %6 = load i32, ptr %0, align 8, !tbaa !1813
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_vinsn_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !1867 !PGOFuncName !1868 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1869

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1439
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1870

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_vinsn_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !955
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !955
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @vinsn_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_intersect_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @collect_unavailable_regs_from_bnds(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1039 !PGOFuncName !1871 {
  %5 = alloca ptr, align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %21, label %7, !prof !953

7:                                                ; preds = %4, %18
  %8 = phi ptr [ %19, %18 ], [ %1, %4 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr null, ptr %5, align 8, !tbaa !955
  %9 = getelementptr inbounds %struct._list_node, ptr %8, i64 0, i32 1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !1619
  %11 = load ptr, ptr %0, align 8, !tbaa !1057
  %12 = call zeroext i8 @av_set_is_in_p(ptr noundef %10, ptr noundef %11) #23
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14, !prof !1041

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct._list_node, ptr %8, i64 0, i32 1
  %16 = call fastcc ptr @find_sequential_best_exprs(ptr noundef nonnull %15, ptr noundef nonnull %0, i8 noundef zeroext 0) #24
  store ptr %16, ptr %5, align 8, !tbaa !955
  %17 = load ptr, ptr %15, align 8, !tbaa !1622
  call fastcc void @find_used_regs(ptr noundef %17, ptr noundef %16, ptr noundef %2, ptr noundef %3) #24
  call void @av_set_clear(ptr noundef nonnull %5) #23
  br label %18

18:                                               ; preds = %7, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  %19 = load ptr, ptr %8, align 8, !tbaa !1409
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %7, !prof !1444, !llvm.loop !1872

21:                                               ; preds = %18, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @verify_target_availability(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1039 !PGOFuncName !1873 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1057
  %4 = getelementptr inbounds %struct.vinsn_def, ptr %3, i64 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1050
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %78, !prof !1049

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  %11 = load i8, ptr %10, align 8, !tbaa !1165
  %12 = icmp slt i8 %11, 0
  br i1 %12, label %78, label %13, !prof !1041

13:                                               ; preds = %9
  %14 = tail call i32 @expr_dest_regno(ptr noundef nonnull %0) #23
  %15 = load i8, ptr %10, align 8, !tbaa !1165
  %16 = icmp eq i8 %15, 1
  %17 = load i32, ptr @reload_completed, align 4, !tbaa !981
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19, !prof !1041

19:                                               ; preds = %13
  %20 = load ptr, ptr %0, align 8, !tbaa !1057
  %21 = getelementptr inbounds %struct.vinsn_def, ptr %20, i64 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !1050
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = zext i32 %14 to i64
  %27 = zext nneg i32 %25 to i64
  %28 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %26, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !940
  %30 = zext i8 %29 to i64
  %31 = icmp eq i8 %29, 0
  br i1 %31, label %56, label %32, !prof !1874

32:                                               ; preds = %13, %19
  %33 = phi i64 [ %30, %19 ], [ 1, %13 ]
  br label %34

34:                                               ; preds = %32, %49
  %35 = phi i64 [ 0, %32 ], [ %51, %49 ]
  %36 = phi i8 [ 1, %32 ], [ %50, %49 ]
  %37 = phi i8 [ 1, %32 ], [ %42, %49 ]
  %38 = trunc i64 %35 to i32
  %39 = add i32 %14, %38
  %40 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %39) #23
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i8 %37, i8 0, !prof !1041
  %43 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !1852
  %44 = zext nneg i32 %39 to i64
  %45 = shl nuw i64 1, %44
  %46 = and i64 %43, %45
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %49, label %48, !prof !1049

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %34, %48
  %50 = phi i8 [ 0, %48 ], [ %36, %34 ]
  %51 = add nuw nsw i64 %35, 1
  %52 = icmp eq i64 %51, %33
  br i1 %52, label %53, label %34, !prof !1444, !llvm.loop !1875

53:                                               ; preds = %49
  %54 = icmp eq i8 %42, 0
  %55 = icmp eq i8 %50, 0
  br i1 %16, label %57, label %58, !prof !1041

56:                                               ; preds = %19
  br i1 %16, label %78, label %61, !prof !1041

57:                                               ; preds = %53
  br i1 %54, label %76, label %78

58:                                               ; preds = %53
  %59 = load i1, ptr @scheduled_something_on_previous_fence, align 1
  %60 = select i1 %59, i1 true, i1 %54
  br i1 %60, label %78, label %63, !prof !1876

61:                                               ; preds = %56
  %62 = load i1, ptr @scheduled_something_on_previous_fence, align 1
  br i1 %62, label %78, label %64, !prof !1876

63:                                               ; preds = %58
  br i1 %55, label %78, label %64

64:                                               ; preds = %61, %63
  %65 = load i32, ptr @reload_completed, align 4, !tbaa !981
  %66 = icmp ne i32 %65, 0
  %67 = load i8, ptr @find_best_reg_for_expr.reg_rename_data.2, align 8
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load ptr, ptr @reg_info_p, align 8, !tbaa !955
  %72 = zext i32 %14 to i64
  %73 = getelementptr inbounds %struct.reg_info_t, ptr %71, i64 %72, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !1877
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %64, %70, %57
  %77 = phi i32 [ 1597, %57 ], [ 1614, %70 ], [ 1614, %64 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %77, ptr noundef nonnull @.str.1) #23
  br label %78

78:                                               ; preds = %76, %56, %61, %58, %63, %70, %57, %2, %9
  ret void
}

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @choose_best_reg(i64 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1039 !PGOFuncName !1879 {
  %4 = tail call fastcc ptr @choose_best_reg_1(i64 noundef %0, ptr noundef %1, ptr noundef %2) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !1854

6:                                                ; preds = %3
  %7 = load i64, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 4), align 8, !tbaa !1880
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #24
  %9 = zext nneg i32 %8 to i64
  %10 = shl nuw i64 1, %9
  %11 = and i64 %10, %7
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14, !prof !1882

13:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1475, ptr noundef nonnull @.str.1) #23
  br label %14

14:                                               ; preds = %3, %6, %13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @choose_best_pseudo_reg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !998 !PGOFuncName !1883 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._list_iterator, align 8
  %6 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !955
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %7 = load i32, ptr @reload_completed, align 4, !tbaa !981
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1500, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %3, %9
  store i8 1, ptr %2, align 1, !tbaa !940
  call fastcc void @_list_iter_start(ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 0) #24
  %11 = load ptr, ptr %5, align 8, !tbaa !1054
  %12 = load ptr, ptr %11, align 8, !tbaa !955
  %13 = call fastcc zeroext i8 @_list_iter_cond_def(ptr noundef %12, ptr noundef nonnull %6) #24, !range !987
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  store i8 0, ptr %2, align 1, !tbaa !940
  %16 = call ptr @gen_reg_rtx(i32 noundef 0) #23
  br label %77

17:                                               ; preds = %10, %66
  %18 = phi i32 [ %39, %66 ], [ 0, %10 ]
  %19 = phi i8 [ %67, %66 ], [ 0, %10 ]
  %20 = load ptr, ptr %6, align 8, !tbaa !955
  %21 = load ptr, ptr %20, align 8, !tbaa !1884
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !940
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !940
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %30, label %29

29:                                               ; preds = %17
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1510, ptr noundef nonnull @.str.1) #23
  br label %30

30:                                               ; preds = %17, %29
  %31 = icmp eq i32 %18, 0
  %32 = load i32, ptr %25, align 8
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 255
  br i1 %31, label %38, label %35

35:                                               ; preds = %30
  %36 = icmp eq i32 %18, %34
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1516, ptr noundef nonnull @.str.1) #23
  br label %38

38:                                               ; preds = %30, %37, %35
  %39 = phi i32 [ %18, %35 ], [ %18, %37 ], [ %34, %30 ]
  %40 = call fastcc i32 @rhs_regno(ptr noundef nonnull %25) #24
  %41 = call i32 @bitmap_bit_p(ptr noundef %0, i32 noundef %40) #23
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = icmp slt i32 %40, 53
  br i1 %44, label %45, label %89

45:                                               ; preds = %43
  %46 = call zeroext i8 @df_regs_ever_live_p(i32 noundef %40) #23
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1523, ptr noundef nonnull @.str.1) #23
  br label %49

49:                                               ; preds = %45, %48
  %50 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !1852
  %51 = zext nneg i32 %40 to i64
  %52 = shl nuw i64 1, %51
  %53 = and i64 %50, %52
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i8, ptr @find_best_reg_for_expr.reg_rename_data.2, align 8, !tbaa !1886
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr @reg_info_p, align 8, !tbaa !955
  %60 = sext i32 %40 to i64
  %61 = getelementptr inbounds %struct.reg_info_t, ptr %59, i64 %60, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !1877
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58, %55
  %65 = call ptr @gen_rtx_REG(i32 noundef %39, i32 noundef %40) #23
  br label %89

66:                                               ; preds = %49, %58, %38
  %67 = phi i8 [ 1, %49 ], [ 1, %58 ], [ %19, %38 ]
  call fastcc void @_list_iter_next(ptr noundef nonnull %5) #24
  %68 = load ptr, ptr %5, align 8, !tbaa !1054
  %69 = load ptr, ptr %68, align 8, !tbaa !955
  %70 = call fastcc zeroext i8 @_list_iter_cond_def(ptr noundef %69, ptr noundef nonnull %6) #24, !range !987
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %17, !llvm.loop !1887

72:                                               ; preds = %66
  %73 = icmp eq i8 %67, 0
  store i8 0, ptr %2, align 1, !tbaa !940
  br i1 %73, label %74, label %89

74:                                               ; preds = %72
  %75 = call ptr @gen_reg_rtx(i32 noundef %39) #23
  %76 = icmp eq i32 %39, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %15, %74
  %78 = phi ptr [ %16, %15 ], [ %75, %74 ]
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1557, ptr noundef nonnull @.str.1) #23
  br label %79

79:                                               ; preds = %74, %77
  %80 = phi ptr [ %75, %74 ], [ %78, %77 ]
  %81 = call i32 @max_reg_num() #23
  store i32 %81, ptr @max_regno, align 4, !tbaa !981
  call void @maybe_extend_reg_info_p() #23
  %82 = load i8, ptr @find_best_reg_for_expr.reg_rename_data.2, align 8, !tbaa !1886
  %83 = icmp ne i8 %82, 0
  %84 = zext i1 %83 to i32
  %85 = load ptr, ptr @reg_info_p, align 8, !tbaa !955
  %86 = call fastcc i32 @rhs_regno(ptr noundef %80) #24
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.reg_info_t, ptr %85, i64 %87, i32 3
  store i32 %84, ptr %88, align 4, !tbaa !1877
  br label %89

89:                                               ; preds = %43, %64, %72, %79
  %90 = phi ptr [ %80, %79 ], [ null, %72 ], [ %65, %64 ], [ %25, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #25
  ret ptr %90
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_replace_dest_reg(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1888 !PGOFuncName !1889 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %51, label %5, !prof !1890

5:                                                ; preds = %3
  %6 = load ptr, ptr @s_i_d, align 8
  %7 = load ptr, ptr @sched_luids, align 8
  br label %8

8:                                                ; preds = %5, %46
  %9 = phi ptr [ %47, %46 ], [ %7, %5 ]
  %10 = phi ptr [ %48, %46 ], [ %6, %5 ]
  %11 = phi ptr [ %49, %46 ], [ %0, %5 ]
  %12 = getelementptr inbounds %struct._list_node, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !940
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !940
  %16 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %9, i32 noundef %15) #24
  %17 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %10, i32 noundef %16) #24
  %18 = load ptr, ptr %17, align 8, !tbaa !1042
  %19 = getelementptr inbounds %struct.vinsn_def, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !1048
  %21 = icmp eq i32 %20, 23
  br i1 %21, label %26, label %22, !prof !1891

22:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1663, ptr noundef nonnull @.str.1) #23
  %23 = load ptr, ptr @s_i_d, align 8
  %24 = load ptr, ptr @sched_luids, align 8
  %25 = load i32, ptr %14, align 8, !tbaa !940
  br label %26

26:                                               ; preds = %8, %22
  %27 = phi i32 [ %15, %8 ], [ %25, %22 ]
  %28 = phi ptr [ %9, %8 ], [ %24, %22 ]
  %29 = phi ptr [ %10, %8 ], [ %23, %22 ]
  %30 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #24
  %31 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %28, i32 noundef %27) #24
  %32 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %29, i32 noundef %31) #24
  %33 = load ptr, ptr %32, align 8, !tbaa !1042
  %34 = getelementptr inbounds %struct.vinsn_def, ptr %33, i64 0, i32 1, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !1050
  %36 = tail call fastcc i32 @rhs_regno(ptr noundef %35) #24
  %37 = icmp eq i32 %30, %36
  br i1 %37, label %46, label %38, !prof !1892

38:                                               ; preds = %26
  %39 = tail call fastcc zeroext i8 @replace_src_with_reg_ok_p(ptr noundef nonnull %13, ptr noundef %1) #24
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %58, label %41, !prof !1892

41:                                               ; preds = %38
  %42 = tail call fastcc zeroext i8 @replace_dest_with_reg_ok_p(ptr noundef nonnull %13, ptr noundef %1) #24
  %43 = icmp eq i8 %42, 0
  %44 = load ptr, ptr @s_i_d, align 8
  %45 = load ptr, ptr @sched_luids, align 8
  br i1 %43, label %58, label %46, !prof !1892

46:                                               ; preds = %41, %26
  %47 = phi ptr [ %45, %41 ], [ %28, %26 ]
  %48 = phi ptr [ %44, %41 ], [ %29, %26 ]
  %49 = load ptr, ptr %11, align 8, !tbaa !1409
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %8, !prof !1893, !llvm.loop !1894

51:                                               ; preds = %46, %3
  %52 = tail call i32 @expr_dest_regno(ptr noundef %2) #23
  %53 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #24
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %56, label %55, !prof !1892

55:                                               ; preds = %51
  tail call fastcc void @replace_dest_with_reg_in_expr(ptr noundef %2, ptr noundef %1) #24
  br label %58

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct._expr, ptr %2, i64 0, i32 11
  store i8 1, ptr %57, align 8, !tbaa !1165
  br label %58

58:                                               ; preds = %38, %41, %55, %56
  %59 = phi i8 [ 1, %56 ], [ 1, %55 ], [ 0, %41 ], [ 0, %38 ]
  ret i8 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vinsn_writes_one_of_regs_p(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 !prof !998 !PGOFuncName !1895 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  %6 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !1043
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %7, ptr noundef nonnull %4) #24
  %8 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !987
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %3, %21
  %11 = load i32, ptr %4, align 4, !tbaa !981
  %12 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %11) #23
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = icmp ult i32 %11, 53
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = zext nneg i32 %11 to i64
  %18 = shl nuw nsw i64 1, %17
  %19 = and i64 %18, %2
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %14, %16
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #24
  %22 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !987
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %10, !llvm.loop !1896

24:                                               ; preds = %21, %3
  %25 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !1046
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %26, ptr noundef nonnull %4) #24
  %27 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !987
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %24, %40
  %30 = load i32, ptr %4, align 4, !tbaa !981
  %31 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %30) #23
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = icmp ult i32 %30, 53
  br i1 %34, label %35, label %40

35:                                               ; preds = %33
  %36 = zext nneg i32 %30 to i64
  %37 = shl nuw nsw i64 1, %36
  %38 = and i64 %37, %2
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33, %35
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #24
  %41 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !987
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %29, !llvm.loop !1897

43:                                               ; preds = %16, %10, %29, %35, %40, %24
  %44 = phi i8 [ 0, %24 ], [ 1, %29 ], [ 1, %35 ], [ 0, %40 ], [ 1, %10 ], [ 1, %16 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret i8 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_list_clear(ptr nocapture noundef %0) unnamed_addr #0 !prof !1898 !PGOFuncName !1899 {
  %2 = load ptr, ptr %0, align 8, !tbaa !955
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !1900

4:                                                ; preds = %1, %4
  tail call fastcc void @_list_remove(ptr noundef nonnull %0) #24
  %5 = load ptr, ptr %0, align 8, !tbaa !955
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %4, !prof !1901, !llvm.loop !1902

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_sequential_best_exprs(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !1903 !PGOFuncName !1904 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !955
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #25
  %7 = getelementptr inbounds %struct._bnd, ptr %0, i64 0, i32 2
  call fastcc void @_list_iter_start(ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #24
  %8 = load ptr, ptr %6, align 8, !tbaa !1054
  %9 = load ptr, ptr %8, align 8, !tbaa !955
  %10 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %9, ptr noundef nonnull %5) #24, !range !987
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %63, label %12, !prof !1056

12:                                               ; preds = %3, %58
  %13 = load ptr, ptr %5, align 8, !tbaa !955
  %14 = tail call fastcc zeroext i8 @equal_after_moveup_path_p(ptr noundef %13, ptr noundef %1) #24
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %58, label %16, !prof !1905

16:                                               ; preds = %12
  %17 = icmp eq i8 %2, 0
  br i1 %17, label %57, label %18, !prof !1906

18:                                               ; preds = %16
  %19 = load ptr, ptr %13, align 8, !tbaa !1057
  %20 = getelementptr inbounds %struct.vinsn_def, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !1048
  %22 = icmp eq i32 %21, 23
  br i1 %22, label %23, label %49, !prof !1150

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.vinsn_def, ptr %19, i64 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !1050
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %29, label %49, !prof !1152

29:                                               ; preds = %23
  %30 = tail call i32 @expr_dest_regno(ptr noundef nonnull %13) #23
  %31 = tail call i32 @expr_dest_regno(ptr noundef %1) #23
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %39, label %33, !prof !1153

33:                                               ; preds = %29
  %34 = load ptr, ptr %1, align 8, !tbaa !1057
  %35 = getelementptr inbounds %struct.vinsn_def, ptr %34, i64 0, i32 1, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !1050
  tail call fastcc void @replace_dest_with_reg_in_expr(ptr noundef nonnull %13, ptr noundef %36) #24
  %37 = load i32, ptr @stat_renamed_scheduled, align 4, !tbaa !981
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @stat_renamed_scheduled, align 4, !tbaa !981
  br label %49

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct._expr, ptr %13, i64 0, i32 11
  %41 = load i8, ptr %40, align 8, !tbaa !1165
  %42 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 11
  %43 = load i8, ptr %42, align 8, !tbaa !1165
  %44 = icmp eq i8 %41, %43
  br i1 %44, label %49, label %45, !prof !1907

45:                                               ; preds = %39
  %46 = icmp eq i8 %43, 1
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5097, ptr noundef nonnull @.str.1) #23
  br label %48

48:                                               ; preds = %45, %47
  store i8 1, ptr %40, align 8, !tbaa !1165
  br label %49

49:                                               ; preds = %33, %48, %39, %23, %18
  %50 = getelementptr inbounds %struct._expr, ptr %13, i64 0, i32 12
  %51 = load i8, ptr %50, align 1
  %52 = and i8 %51, 2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54, !prof !1136

54:                                               ; preds = %49
  %55 = load i32, ptr @stat_substitutions_total, align 4, !tbaa !981
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr @stat_substitutions_total, align 4, !tbaa !981
  br label %57

57:                                               ; preds = %49, %54, %16
  call void @av_set_add(ptr noundef nonnull %4, ptr noundef %13) #23
  br label %63

58:                                               ; preds = %12
  call fastcc void @_list_iter_next(ptr noundef nonnull %6) #24
  %59 = load ptr, ptr %6, align 8, !tbaa !1054
  %60 = load ptr, ptr %59, align 8, !tbaa !955
  %61 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %60, ptr noundef nonnull %5) #24, !range !987
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %12, !prof !1908, !llvm.loop !1909

63:                                               ; preds = %58, %3, %57
  %64 = icmp ne i8 %2, 0
  %65 = load i32, ptr @sched_verbose, align 4
  %66 = icmp sgt i32 %65, 1
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %89, !prof !1910

68:                                               ; preds = %63
  %69 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = alloca [77 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(39) %72, ptr noundef nonnull align 1 dereferenceable(39) @.str.59, i64 39, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %72) #23
  %73 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %74 = call i32 @fputs(ptr nonnull %72, ptr %73)
  br label %78

75:                                               ; preds = %68
  %76 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %77 = call i64 @fwrite(ptr nonnull @.str.59, i64 38, i64 1, ptr %76)
  br label %78

78:                                               ; preds = %75, %71
  %79 = load ptr, ptr %4, align 8, !tbaa !955
  call void @dump_av_set(ptr noundef %79) #23
  %80 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = alloca [3 x i8], align 16
  store i16 10, ptr %83, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %83) #23
  %84 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %85 = call i32 @fputs(ptr nonnull %83, ptr %84)
  br label %89

86:                                               ; preds = %78
  %87 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %88 = call i32 @fputc(i32 10, ptr %87)
  br label %89

89:                                               ; preds = %82, %86, %63
  %90 = load ptr, ptr %4, align 8, !tbaa !955
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret ptr %90
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_used_regs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1039 !PGOFuncName !1911 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct._list_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct._list_iterator, align 8
  %10 = alloca %struct.fur_static_params, align 8
  %11 = alloca %struct.cmpd_local_params, align 8
  store ptr %1, ptr %5, align 8, !tbaa !955
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #25
  %12 = load ptr, ptr @code_motion_visited_blocks, align 8, !tbaa !955
  tail call void @bitmap_clear(ptr noundef %12) #23
  %13 = getelementptr inbounds %struct.fur_static_params, ptr %10, i64 0, i32 2
  store i8 0, ptr %13, align 8, !tbaa !1037
  %14 = getelementptr inbounds %struct.fur_static_params, ptr %10, i64 0, i32 1
  store ptr %3, ptr %14, align 8, !tbaa !1034
  store ptr %2, ptr %10, align 8, !tbaa !1047
  store ptr @fur_hooks, ptr @code_motion_path_driver_info, align 8, !tbaa !955
  %15 = call fastcc i32 @code_motion_path_driver(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %11, ptr noundef nonnull %10) #24
  %16 = load i8, ptr %13, align 8, !tbaa !1037
  %17 = load i8, ptr @find_best_reg_for_expr.reg_rename_data.2, align 8, !tbaa !1886
  %18 = or i8 %17, %16
  store i8 %18, ptr @find_best_reg_for_expr.reg_rename_data.2, align 8, !tbaa !1886
  %19 = icmp eq i32 %15, 1
  br i1 %19, label %21, label %20, !prof !1049

20:                                               ; preds = %4
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3260, ptr noundef nonnull @.str.1) #23
  br label %21

21:                                               ; preds = %4, %20
  %22 = icmp eq ptr %3, null
  br i1 %22, label %26, label %23, !prof !1041

23:                                               ; preds = %21
  %24 = load ptr, ptr %3, align 8, !tbaa !955
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !1041

26:                                               ; preds = %23, %21
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3261, ptr noundef nonnull @.str.1) #23
  br label %27

27:                                               ; preds = %23, %26
  call fastcc void @_list_iter_start(ptr noundef nonnull %9, ptr noundef nonnull %5, i8 noundef zeroext 0) #24
  %28 = load ptr, ptr %9, align 8, !tbaa !1054
  %29 = load ptr, ptr %28, align 8, !tbaa !955
  %30 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %29, ptr noundef nonnull %8) #24, !range !987
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %45, label %32, !prof !953

32:                                               ; preds = %27, %32
  %33 = phi i8 [ %38, %32 ], [ 0, %27 ]
  %34 = load ptr, ptr %8, align 8, !tbaa !955
  %35 = getelementptr inbounds %struct._expr, ptr %34, i64 0, i32 12
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, 1
  %38 = or i8 %37, %33
  call fastcc void @_list_iter_next(ptr noundef nonnull %9) #24
  %39 = load ptr, ptr %9, align 8, !tbaa !1054
  %40 = load ptr, ptr %39, align 8, !tbaa !955
  %41 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %40, ptr noundef nonnull %8) #24, !range !987
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %32, !prof !1444, !llvm.loop !1912

43:                                               ; preds = %32
  %44 = icmp eq i8 %38, 0
  br label %45

45:                                               ; preds = %43, %27
  %46 = phi i1 [ true, %27 ], [ %44, %43 ]
  call fastcc void @_list_iter_start(ptr noundef nonnull %6, ptr noundef %3, i8 noundef zeroext 0) #24
  %47 = load ptr, ptr %6, align 8, !tbaa !1054
  %48 = load ptr, ptr %47, align 8, !tbaa !955
  %49 = call fastcc zeroext i8 @_list_iter_cond_def(ptr noundef %48, ptr noundef nonnull %7) #24, !range !987
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %75, label %51, !prof !953

51:                                               ; preds = %45, %70
  %52 = load ptr, ptr @s_i_d, align 8
  %53 = load ptr, ptr @sched_luids, align 8
  %54 = load ptr, ptr %7, align 8, !tbaa !955
  %55 = load ptr, ptr %54, align 8, !tbaa !1884
  %56 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !940
  %58 = call fastcc i32 @VEC_int_base_index(ptr noundef %53, i32 noundef %57) #24
  %59 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %52, i32 noundef %58) #24
  %60 = load ptr, ptr %59, align 8, !tbaa !1042
  %61 = getelementptr inbounds %struct.vinsn_def, ptr %60, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !1048
  %63 = icmp eq i32 %62, 23
  br i1 %63, label %64, label %65, !prof !1049

64:                                               ; preds = %51
  call fastcc void @mark_unavailable_hard_regs(ptr noundef nonnull %54, ptr noundef %2) #24
  br label %65

65:                                               ; preds = %64, %51
  br i1 %46, label %70, label %66, !prof !1049

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.vinsn_def, ptr %60, i64 0, i32 1, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !1062
  %69 = call zeroext i8 @bitmap_ior_into(ptr noundef %2, ptr noundef %68) #23
  br label %70

70:                                               ; preds = %66, %65
  call fastcc void @_list_iter_next(ptr noundef nonnull %6) #24
  %71 = load ptr, ptr %6, align 8, !tbaa !1054
  %72 = load ptr, ptr %71, align 8, !tbaa !955
  %73 = call fastcc zeroext i8 @_list_iter_cond_def(ptr noundef %72, ptr noundef nonnull %7) #24, !range !987
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %51, !prof !1444, !llvm.loop !1913

75:                                               ; preds = %70, %45
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @equal_after_moveup_path_p(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1914 !PGOFuncName !1915 {
  %3 = alloca %struct._expr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #25
  call void @copy_expr_onside(ptr noundef nonnull %3, ptr noundef %0) #23
  %4 = load ptr, ptr %3, align 8, !tbaa !1057
  %5 = load ptr, ptr %1, align 8, !tbaa !1057
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %9, label %7, !prof !1916

7:                                                ; preds = %2
  %8 = call zeroext i8 @vinsn_equal_p(ptr noundef %4, ptr noundef %5) #23
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i8 [ %8, %7 ], [ 1, %2 ]
  call void @clear_expr(ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #25
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @code_motion_path_driver(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !1917 !PGOFuncName !1918 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %1, ptr %6, align 8, !tbaa !955
  store ptr %2, ptr %7, align 8, !tbaa !955
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !940
  %11 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %12 = icmp sgt i32 %11, 5
  br i1 %12, label %13, label %58, !prof !1919

13:                                               ; preds = %5
  %14 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !955
  %18 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %17, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !1920
  %20 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.60, ptr noundef %19) #24
  %21 = shl nsw i32 %20, 1
  %22 = or disjoint i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  %25 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !955
  %26 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %25, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !1920
  %28 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %24, i64 noundef %23, ptr noundef nonnull @.str.60, ptr noundef %27) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %24) #23
  %29 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %30 = call i32 @fputs(ptr nonnull %24, ptr %29)
  br label %37

31:                                               ; preds = %13
  %32 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %33 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !955
  %34 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %33, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !1920
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.60, ptr noundef %35) #24
  br label %37

37:                                               ; preds = %31, %16
  call void @dump_insn(ptr noundef nonnull %0) #23
  %38 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = alloca [3 x i8], align 16
  store i16 44, ptr %41, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %41) #23
  %42 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %43 = call i32 @fputs(ptr nonnull %41, ptr %42)
  br label %47

44:                                               ; preds = %37
  %45 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %46 = call i32 @fputc(i32 44, ptr %45)
  br label %47

47:                                               ; preds = %44, %40
  %48 = load ptr, ptr %6, align 8, !tbaa !955
  call void @dump_av_set(ptr noundef %48) #23
  %49 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = alloca [5 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %52, ptr noundef nonnull align 1 dereferenceable(3) @.str.62, i64 3, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %52) #23
  %53 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %54 = call i32 @fputs(ptr nonnull %52, ptr %53)
  br label %58

55:                                               ; preds = %47
  %56 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %57 = call i64 @fwrite(ptr nonnull @.str.62, i64 2, i64 1, ptr %56)
  br label %58

58:                                               ; preds = %51, %55, %5
  %59 = load ptr, ptr %6, align 8, !tbaa !955
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62, !prof !1919

61:                                               ; preds = %58
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6420, ptr noundef nonnull @.str.1) #23
  br label %62

62:                                               ; preds = %58, %61
  %63 = call fastcc zeroext i8 @is_ineligible_successor(ptr noundef nonnull %0, ptr noundef %2) #24, !range !987
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %86, label %65, !prof !1922

65:                                               ; preds = %62
  %66 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %67 = icmp sgt i32 %66, 5
  br i1 %67, label %68, label %327

68:                                               ; preds = %65
  %69 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %68
  %72 = load i32, ptr %8, align 8, !tbaa !940
  %73 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.63, i32 noundef %72) #24
  %74 = shl nsw i32 %73, 1
  %75 = or disjoint i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = alloca i8, i64 %76, align 16
  %78 = load i32, ptr %8, align 8, !tbaa !940
  %79 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %77, i64 noundef %76, ptr noundef nonnull @.str.63, i32 noundef %78) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %77) #23
  %80 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %81 = call i32 @fputs(ptr nonnull %77, ptr %80)
  br label %327

82:                                               ; preds = %68
  %83 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %84 = load i32, ptr %8, align 8, !tbaa !940
  %85 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef nonnull @.str.63, i32 noundef %84) #24
  br label %327

86:                                               ; preds = %62
  %87 = call zeroext i8 @sel_bb_head_p(ptr noundef nonnull %0) #23
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %149, label %89, !prof !1923

89:                                               ; preds = %86
  %90 = call i32 @get_av_level(ptr noundef nonnull %0) #23
  %91 = load i32, ptr @global_level, align 4, !tbaa !981
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %116, label %93, !prof !1924

93:                                               ; preds = %89
  %94 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %95 = icmp sgt i32 %94, 5
  br i1 %95, label %96, label %327

96:                                               ; preds = %93
  %97 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %101 = load i32, ptr %100, align 8, !tbaa !945
  %102 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.64, i32 noundef %101) #24
  %103 = shl nsw i32 %102, 1
  %104 = or disjoint i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = alloca i8, i64 %105, align 16
  %107 = load i32, ptr %100, align 8, !tbaa !945
  %108 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %106, i64 noundef %105, ptr noundef nonnull @.str.64, i32 noundef %107) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %106) #23
  %109 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %110 = call i32 @fputs(ptr nonnull %106, ptr %109)
  br label %327

111:                                              ; preds = %96
  %112 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %114 = load i32, ptr %113, align 8, !tbaa !945
  %115 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.64, i32 noundef %114) #24
  br label %327

116:                                              ; preds = %89
  %117 = load ptr, ptr @code_motion_visited_blocks, align 8, !tbaa !955
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %119 = load i32, ptr %118, align 8, !tbaa !945
  %120 = call i32 @bitmap_bit_p(ptr noundef %117, i32 noundef %119) #23
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %149, label %122, !prof !1924

122:                                              ; preds = %116
  %123 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %124 = icmp sgt i32 %123, 5
  br i1 %124, label %125, label %143

125:                                              ; preds = %122
  %126 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr %118, align 8, !tbaa !945
  %130 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.65, i32 noundef %129) #24
  %131 = shl nsw i32 %130, 1
  %132 = or disjoint i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = alloca i8, i64 %133, align 16
  %135 = load i32, ptr %118, align 8, !tbaa !945
  %136 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %134, i64 noundef %133, ptr noundef nonnull @.str.65, i32 noundef %135) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %134) #23
  %137 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %138 = call i32 @fputs(ptr nonnull %134, ptr %137)
  br label %143

139:                                              ; preds = %125
  %140 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %141 = load i32, ptr %118, align 8, !tbaa !945
  %142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef nonnull @.str.65, i32 noundef %141) #24
  br label %143

143:                                              ; preds = %128, %139, %122
  %144 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !955
  %145 = load ptr, ptr %144, align 8, !tbaa !1925
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = call i32 %145(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 1) #23
  br label %327

149:                                              ; preds = %116, %143, %86
  %150 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !955
  %151 = load ptr, ptr %150, align 8, !tbaa !1925
  %152 = icmp eq ptr %151, null
  br i1 %152, label %155, label %153, !prof !1919

153:                                              ; preds = %149
  %154 = call i32 %151(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 0) #23
  br label %155

155:                                              ; preds = %153, %149
  %156 = load ptr, ptr %6, align 8, !tbaa !955
  %157 = call ptr @av_set_copy(ptr noundef %156) #23
  store ptr %157, ptr %6, align 8, !tbaa !955
  %158 = call i32 @get_av_level(ptr noundef nonnull %0) #23
  %159 = load i32, ptr @global_level, align 4, !tbaa !981
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %163, !prof !1926

161:                                              ; preds = %155
  %162 = call ptr @get_av_set(ptr noundef nonnull %0) #23
  call void @av_set_intersect(ptr noundef nonnull %6, ptr noundef %162) #23
  br label %163

163:                                              ; preds = %161, %155
  %164 = load ptr, ptr %6, align 8, !tbaa !955
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %189, !prof !1919

166:                                              ; preds = %163
  %167 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %168 = icmp sgt i32 %167, 5
  br i1 %168, label %169, label %327

169:                                              ; preds = %166
  %170 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %184, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %174 = load i32, ptr %173, align 8, !tbaa !945
  %175 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.66, i32 noundef %174) #24
  %176 = shl nsw i32 %175, 1
  %177 = or disjoint i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = alloca i8, i64 %178, align 16
  %180 = load i32, ptr %173, align 8, !tbaa !945
  %181 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %179, i64 noundef %178, ptr noundef nonnull @.str.66, i32 noundef %180) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %179) #23
  %182 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %183 = call i32 @fputs(ptr nonnull %179, ptr %182)
  br label %327

184:                                              ; preds = %169
  %185 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %186 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %187 = load i32, ptr %186, align 8, !tbaa !945
  %188 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef nonnull @.str.66, i32 noundef %187) #24
  br label %327

189:                                              ; preds = %163
  call void @av_set_leave_one_nonspec(ptr noundef nonnull %6) #23
  %190 = load ptr, ptr %6, align 8, !tbaa !955
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %193, !prof !1919

192:                                              ; preds = %189
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6487, ptr noundef nonnull @.str.1) #23
  br label %193

193:                                              ; preds = %189, %192
  call fastcc void @_xlist_add(ptr noundef nonnull %7, ptr noundef nonnull %0) #24
  %194 = call ptr @sel_bb_end(ptr noundef %10) #23
  %195 = load ptr, ptr %6, align 8, !tbaa !955
  %196 = load ptr, ptr @s_i_d, align 8
  %197 = load ptr, ptr @sched_luids, align 8
  %198 = load i32, ptr %8, align 8, !tbaa !940
  %199 = call fastcc i32 @VEC_int_base_index(ptr noundef %197, i32 noundef %198) #24
  %200 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %196, i32 noundef %199) #24
  %201 = load ptr, ptr %200, align 8, !tbaa !1042
  %202 = call ptr @av_set_lookup(ptr noundef %195, ptr noundef %201) #23
  %203 = icmp eq ptr %202, null
  br i1 %203, label %239, label %204, !prof !1927

204:                                              ; preds = %254, %193
  %205 = phi ptr [ %0, %193 ], [ %256, %254 ]
  %206 = phi ptr [ %202, %193 ], [ %265, %254 ]
  %207 = getelementptr inbounds %struct.rtx_def, ptr %205, i64 0, i32 1
  %208 = getelementptr inbounds %struct.rtx_def, ptr %205, i64 0, i32 1, i32 0, i32 0, i64 1
  %209 = load ptr, ptr %208, align 8, !tbaa !940
  %210 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %211 = icmp sgt i32 %210, 5
  br i1 %211, label %212, label %230, !prof !1928

212:                                              ; preds = %204
  %213 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %226, label %215

215:                                              ; preds = %212
  %216 = load i32, ptr %207, align 8, !tbaa !940
  %217 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.67, i32 noundef %216) #24
  %218 = shl nsw i32 %217, 1
  %219 = or disjoint i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = alloca i8, i64 %220, align 16
  %222 = load i32, ptr %207, align 8, !tbaa !940
  %223 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %221, i64 noundef %220, ptr noundef nonnull @.str.67, i32 noundef %222) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %221) #23
  %224 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %225 = call i32 @fputs(ptr nonnull %221, ptr %224)
  br label %230

226:                                              ; preds = %212
  %227 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %228 = load i32, ptr %207, align 8, !tbaa !940
  %229 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %227, ptr noundef nonnull @.str.67, i32 noundef %228) #24
  br label %230

230:                                              ; preds = %215, %226, %204
  %231 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !955
  %232 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %231, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !1929
  call void %233(ptr noundef nonnull %205, ptr noundef nonnull %206, ptr noundef %3, ptr noundef %4) #23
  %234 = icmp eq ptr %205, %0
  br i1 %234, label %235, label %285, !prof !1930

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.rtx_def, ptr %209, i64 0, i32 1, i32 0, i32 0, i64 2
  %237 = load ptr, ptr %236, align 8, !tbaa !940
  %238 = call zeroext i8 @sel_bb_end_p(ptr noundef %209) #23
  br label %285

239:                                              ; preds = %193, %254
  %240 = phi ptr [ %256, %254 ], [ %0, %193 ]
  %241 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !955
  %242 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %241, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !1931
  %244 = load ptr, ptr %6, align 8, !tbaa !955
  %245 = call zeroext i8 %243(ptr noundef nonnull %240, ptr noundef %244, ptr noundef %4) #23
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %250, label %247, !prof !1932

247:                                              ; preds = %239
  call fastcc void @undo_transformations(ptr noundef nonnull %6, ptr noundef nonnull %240) #24
  %248 = load ptr, ptr %6, align 8, !tbaa !955
  %249 = icmp eq ptr %248, null
  br i1 %249, label %251, label %252, !prof !1932

250:                                              ; preds = %239
  call fastcc void @code_motion_path_driver_cleanup(ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  br label %327

251:                                              ; preds = %247
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6557, ptr noundef nonnull @.str.1) #23
  br label %252

252:                                              ; preds = %251, %247
  %253 = icmp eq ptr %240, %194
  br i1 %253, label %267, label %254, !prof !1933

254:                                              ; preds = %252
  %255 = getelementptr inbounds %struct.rtx_def, ptr %240, i64 0, i32 1, i32 0, i32 0, i64 2
  %256 = load ptr, ptr %255, align 8, !tbaa !940
  %257 = load ptr, ptr %6, align 8, !tbaa !955
  %258 = load ptr, ptr @s_i_d, align 8
  %259 = load ptr, ptr @sched_luids, align 8
  %260 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1
  %261 = load i32, ptr %260, align 8, !tbaa !940
  %262 = call fastcc i32 @VEC_int_base_index(ptr noundef %259, i32 noundef %261) #24
  %263 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %258, i32 noundef %262) #24
  %264 = load ptr, ptr %263, align 8, !tbaa !1042
  %265 = call ptr @av_set_lookup(ptr noundef %257, ptr noundef %264) #23
  %266 = icmp eq ptr %265, null
  br i1 %266, label %239, label %204, !prof !1934

267:                                              ; preds = %252
  %268 = call ptr @sel_bb_end(ptr noundef %10) #23
  %269 = icmp eq ptr %194, %268
  br i1 %269, label %271, label %270, !prof !1935

270:                                              ; preds = %267
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6573, ptr noundef nonnull @.str.1) #23
  br label %271

271:                                              ; preds = %267, %270
  %272 = icmp eq ptr %194, %0
  br i1 %272, label %273, label %277, !prof !1936

273:                                              ; preds = %271
  %274 = load ptr, ptr %6, align 8, !tbaa !955
  %275 = load ptr, ptr %7, align 8, !tbaa !955
  %276 = call fastcc i32 @code_motion_process_successors(ptr noundef nonnull %0, ptr noundef %274, ptr noundef %275, ptr noundef %4) #24
  br label %281

277:                                              ; preds = %271
  call fastcc void @_xlist_add(ptr noundef nonnull %7, ptr noundef nonnull %194) #24
  %278 = load ptr, ptr %6, align 8, !tbaa !955
  %279 = load ptr, ptr %7, align 8, !tbaa !955
  %280 = call fastcc i32 @code_motion_process_successors(ptr noundef nonnull %194, ptr noundef %278, ptr noundef %279, ptr noundef %4) #24
  call fastcc void @_list_remove(ptr noundef nonnull %7) #24
  br label %281

281:                                              ; preds = %273, %277
  %282 = phi i32 [ %276, %273 ], [ %280, %277 ]
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %285, label %284, !prof !1935

284:                                              ; preds = %281
  call fastcc void @code_motion_path_driver_cleanup(ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  br label %327

285:                                              ; preds = %235, %230, %281
  %286 = phi ptr [ %194, %281 ], [ %209, %230 ], [ %209, %235 ]
  %287 = phi ptr [ %0, %281 ], [ %0, %230 ], [ %237, %235 ]
  %288 = phi i8 [ 0, %281 ], [ 0, %230 ], [ %238, %235 ]
  call void @av_set_clear(ptr noundef nonnull %6) #23
  %289 = getelementptr inbounds %struct.rtx_def, ptr %287, i64 0, i32 1, i32 0, i32 0, i64 1
  %290 = load ptr, ptr %289, align 8, !tbaa !940
  %291 = icmp eq ptr %286, %290
  br i1 %291, label %307, label %292, !prof !1937

292:                                              ; preds = %285
  %293 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !955
  br label %294

294:                                              ; preds = %292, %302
  %295 = phi ptr [ %303, %302 ], [ %293, %292 ]
  %296 = phi ptr [ %305, %302 ], [ %286, %292 ]
  %297 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %295, i64 0, i32 5
  %298 = load ptr, ptr %297, align 8, !tbaa !1938
  %299 = icmp eq ptr %298, null
  br i1 %299, label %302, label %300, !prof !1939

300:                                              ; preds = %294
  call void %298(ptr noundef %296, ptr noundef %4) #23
  %301 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !955
  br label %302

302:                                              ; preds = %300, %294
  %303 = phi ptr [ %301, %300 ], [ %295, %294 ]
  %304 = getelementptr inbounds %struct.rtx_def, ptr %296, i64 0, i32 1, i32 0, i32 0, i64 1
  %305 = load ptr, ptr %304, align 8, !tbaa !940
  %306 = icmp eq ptr %305, %290
  br i1 %306, label %307, label %294, !prof !1940, !llvm.loop !1941

307:                                              ; preds = %302, %285
  call fastcc void @_list_remove(ptr noundef nonnull %7) #24
  %308 = getelementptr inbounds %struct.cmpd_local_params, ptr %3, i64 0, i32 5
  %309 = load i8, ptr %308, align 8
  %310 = and i8 %288, 1
  %311 = and i8 %309, -2
  %312 = or disjoint i8 %311, %310
  store i8 %312, ptr %308, align 8
  %313 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !955
  %314 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %313, i64 0, i32 6
  %315 = load ptr, ptr %314, align 8, !tbaa !1942
  call void %315(ptr noundef %287, ptr noundef %3, ptr noundef %4) #23
  %316 = icmp eq i8 %288, 0
  br i1 %316, label %319, label %317, !prof !1943

317:                                              ; preds = %307
  %318 = load ptr, ptr %289, align 8, !tbaa !940
  br label %319

319:                                              ; preds = %317, %307
  %320 = phi ptr [ %318, %317 ], [ %287, %307 ]
  %321 = load ptr, ptr @code_motion_visited_blocks, align 8, !tbaa !955
  %322 = getelementptr inbounds %struct.rtx_def, ptr %320, i64 0, i32 1, i32 0, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !940
  %324 = getelementptr inbounds %struct.basic_block_def, ptr %323, i64 0, i32 9
  %325 = load i32, ptr %324, align 8, !tbaa !945
  %326 = call zeroext i8 @bitmap_set_bit(ptr noundef %321, i32 noundef %325) #23
  br label %327

327:                                              ; preds = %284, %166, %184, %172, %93, %111, %99, %65, %82, %71, %319, %250, %147
  %328 = phi i32 [ %148, %147 ], [ 1, %319 ], [ %282, %284 ], [ -1, %250 ], [ 0, %71 ], [ 0, %82 ], [ 0, %65 ], [ 0, %99 ], [ 0, %111 ], [ 0, %93 ], [ 0, %172 ], [ 0, %184 ], [ 0, %166 ]
  ret i32 %328
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef zeroext i8 @_list_iter_cond_def(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 !prof !1944 !PGOFuncName !1945 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4, !prof !1946

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  store ptr %5, ptr %1, align 8, !tbaa !955
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i8 [ 1, %4 ], [ 0, %2 ]
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_unavailable_hard_regs(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1039 !PGOFuncName !1947 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hard_reg_set_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  %5 = load ptr, ptr %0, align 8, !tbaa !1884
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !940
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 23
  br i1 %10, label %15, label %11, !prof !1049

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1216, ptr noundef nonnull @.str.1) #23
  %12 = load ptr, ptr %0, align 8, !tbaa !1884
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !940
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi ptr [ %14, %11 ], [ %7, %2 ]
  %17 = phi ptr [ %12, %11 ], [ %5, %2 ]
  %18 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !940
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %213, !prof !1049

23:                                               ; preds = %15
  %24 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %19) #24
  %25 = load i32, ptr @reload_completed, align 4, !tbaa !981
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29, !prof !1041

27:                                               ; preds = %23
  %28 = icmp ult i32 %24, 53
  br i1 %28, label %31, label %213

29:                                               ; preds = %23
  %30 = tail call fastcc i32 @get_reg_class(ptr noundef nonnull %17) #24
  br label %31

31:                                               ; preds = %27, %29
  %32 = phi i32 [ %30, %29 ], [ 0, %27 ]
  %33 = zext i32 %24 to i64
  %34 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !940
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %51, !prof !1948

37:                                               ; preds = %31
  %38 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %33
  %39 = load i8, ptr %38, align 1, !tbaa !940
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %51, !prof !1949

41:                                               ; preds = %37
  %42 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !1950
  %43 = icmp ne i8 %42, 0
  %44 = icmp eq i32 %24, 6
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %51, label %46, !prof !1959

46:                                               ; preds = %41
  %47 = load i32, ptr @reload_completed, align 4, !tbaa !981
  %48 = icmp ne i32 %47, 0
  %49 = icmp eq i32 %32, 0
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %58, !prof !1959

51:                                               ; preds = %46, %41, %37, %31
  store i64 -1, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !1852
  %52 = getelementptr inbounds %struct._def, ptr %0, i64 0, i32 1
  %53 = load i8, ptr %52, align 8, !tbaa !1960
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %213, !prof !1961

55:                                               ; preds = %51
  %56 = shl nuw i64 1, %33
  %57 = xor i64 %56, -1
  store i64 %57, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !1852
  br label %213

58:                                               ; preds = %46
  %59 = icmp eq i8 %42, 0
  br i1 %59, label %126, label %60, !prof !1962

60:                                               ; preds = %58
  %61 = load i8, ptr getelementptr inbounds ([53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 20, i64 16), align 4, !tbaa !940
  %62 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !1852
  %63 = icmp eq i8 %61, 0
  br i1 %63, label %93, label %64, !prof !1963

64:                                               ; preds = %60
  %65 = zext i8 %61 to i64
  %66 = add nuw nsw i64 %65, 1
  %67 = and i64 %66, 510
  %68 = add nsw i64 %65, -1
  %69 = insertelement <2 x i64> poison, i64 %68, i64 0
  %70 = shufflevector <2 x i64> %69, <2 x i64> poison, <2 x i32> zeroinitializer
  %71 = insertelement <2 x i64> poison, i64 %65, i64 0
  %72 = shufflevector <2 x i64> %71, <2 x i64> poison, <2 x i32> zeroinitializer
  %73 = add nsw <2 x i64> %72, <i64 0, i64 -1>
  %74 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %62, i64 0
  br label %75

75:                                               ; preds = %75, %64
  %76 = phi i64 [ 0, %64 ], [ %83, %75 ]
  %77 = phi <2 x i64> [ %73, %64 ], [ %84, %75 ]
  %78 = phi <2 x i64> [ %74, %64 ], [ %82, %75 ]
  %79 = add <2 x i64> %77, <i64 19, i64 19>
  %80 = and <2 x i64> %79, <i64 4294967295, i64 4294967295>
  %81 = shl nuw <2 x i64> <i64 1, i64 1>, %80
  %82 = or <2 x i64> %78, %81
  %83 = add i64 %76, 2
  %84 = add <2 x i64> %77, <i64 -2, i64 -2>
  %85 = icmp eq i64 %83, %67
  br i1 %85, label %86, label %75, !prof !1964, !llvm.loop !1965

86:                                               ; preds = %75
  %87 = insertelement <2 x i64> poison, i64 %76, i64 0
  %88 = shufflevector <2 x i64> %87, <2 x i64> poison, <2 x i32> zeroinitializer
  %89 = or disjoint <2 x i64> %88, <i64 0, i64 1>
  %90 = icmp ugt <2 x i64> %89, %70
  %91 = select <2 x i1> %90, <2 x i64> %78, <2 x i64> %82
  %92 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %91)
  store i64 %92, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !1852
  br label %93

93:                                               ; preds = %86, %60
  %94 = phi i64 [ %92, %86 ], [ %62, %60 ]
  %95 = load i8, ptr getelementptr inbounds ([53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 6, i64 16), align 2, !tbaa !940
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %126, label %97, !prof !1963

97:                                               ; preds = %93
  %98 = zext i8 %95 to i64
  %99 = add nuw nsw i64 %98, 1
  %100 = and i64 %99, 510
  %101 = add nsw i64 %98, -1
  %102 = insertelement <2 x i64> poison, i64 %101, i64 0
  %103 = shufflevector <2 x i64> %102, <2 x i64> poison, <2 x i32> zeroinitializer
  %104 = insertelement <2 x i64> poison, i64 %98, i64 0
  %105 = shufflevector <2 x i64> %104, <2 x i64> poison, <2 x i32> zeroinitializer
  %106 = add nsw <2 x i64> %105, <i64 0, i64 -1>
  %107 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %94, i64 0
  br label %108

108:                                              ; preds = %108, %97
  %109 = phi i64 [ 0, %97 ], [ %116, %108 ]
  %110 = phi <2 x i64> [ %106, %97 ], [ %117, %108 ]
  %111 = phi <2 x i64> [ %107, %97 ], [ %115, %108 ]
  %112 = add <2 x i64> %110, <i64 5, i64 5>
  %113 = and <2 x i64> %112, <i64 4294967295, i64 4294967295>
  %114 = shl nuw <2 x i64> <i64 1, i64 1>, %113
  %115 = or <2 x i64> %111, %114
  %116 = add i64 %109, 2
  %117 = add <2 x i64> %110, <i64 -2, i64 -2>
  %118 = icmp eq i64 %116, %100
  br i1 %118, label %119, label %108, !prof !1964, !llvm.loop !1968

119:                                              ; preds = %108
  %120 = insertelement <2 x i64> poison, i64 %109, i64 0
  %121 = shufflevector <2 x i64> %120, <2 x i64> poison, <2 x i32> zeroinitializer
  %122 = or disjoint <2 x i64> %121, <i64 0, i64 1>
  %123 = icmp ugt <2 x i64> %122, %103
  %124 = select <2 x i1> %123, <2 x i64> %111, <2 x i64> %115
  %125 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %124)
  store i64 %125, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !1852
  br label %126

126:                                              ; preds = %93, %119, %58
  %127 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %19) #24
  %128 = and i32 %127, -8
  %129 = icmp eq i32 %128, 8
  br i1 %129, label %130, label %137, !prof !1962

130:                                              ; preds = %126
  %131 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef 8) #23
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = load i64, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 5), align 8, !tbaa !1969
  %135 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !1852
  %136 = or i64 %135, %134
  store i64 %136, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !1852
  br label %137

137:                                              ; preds = %133, %130, %126
  %138 = getelementptr inbounds %struct._def, ptr %0, i64 0, i32 1
  %139 = load i8, ptr %138, align 8, !tbaa !1960
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %145, label %141, !prof !1949

141:                                              ; preds = %137
  %142 = load i64, ptr @call_used_reg_set, align 8, !tbaa !1561
  %143 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !1852
  %144 = or i64 %143, %142
  store i64 %144, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !1852
  br label %145

145:                                              ; preds = %141, %137
  %146 = load i32, ptr @reload_completed, align 4, !tbaa !981
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %213, label %148, !prof !1962

148:                                              ; preds = %145
  %149 = zext i32 %32 to i64
  %150 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %149
  %151 = load i64, ptr %150, align 8, !tbaa !1561
  store i64 %151, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !1970
  %152 = load i32, ptr %19, align 8
  %153 = lshr i32 %152, 16
  %154 = and i32 %153, 255
  %155 = zext nneg i32 %154 to i64
  %156 = getelementptr inbounds %struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 1, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !940
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %162, !prof !1971

159:                                              ; preds = %148
  tail call fastcc void @init_regs_for_mode(i32 noundef %154) #24
  %160 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !1970
  %161 = load i8, ptr %138, align 8, !tbaa !1960
  br label %162

162:                                              ; preds = %159, %148
  %163 = phi i8 [ %161, %159 ], [ %139, %148 ]
  %164 = phi i64 [ %160, %159 ], [ %151, %148 ]
  %165 = getelementptr inbounds [87 x i64], ptr @sel_hrd, i64 0, i64 %155
  %166 = load i64, ptr %165, align 8, !tbaa !1561
  %167 = and i64 %164, %166
  store i64 %167, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !1970
  %168 = icmp eq i8 %163, 0
  br i1 %168, label %174, label %169, !prof !1949

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 3, i64 %155
  %171 = load i64, ptr %170, align 8, !tbaa !1561
  %172 = xor i64 %171, -1
  %173 = and i64 %167, %172
  store i64 %173, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !1970
  br label %174

174:                                              ; preds = %169, %162
  %175 = phi i64 [ %173, %169 ], [ %167, %162 ]
  call fastcc void @hard_reg_set_iter_init(ptr noundef nonnull %4, i64 noundef %175, ptr noundef nonnull %3) #24
  %176 = call fastcc zeroext i8 @hard_reg_set_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #24, !range !987
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %206, label %178, !prof !1963

178:                                              ; preds = %174, %201
  %179 = load i32, ptr %3, align 4, !tbaa !981
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %180, i64 %155
  %182 = load i8, ptr %181, align 1, !tbaa !940
  %183 = zext i8 %182 to i32
  %184 = icmp eq i8 %182, 0
  br i1 %184, label %185, label %186, !prof !1972

185:                                              ; preds = %178
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1324, ptr noundef nonnull @.str.1) #23
  br label %186

186:                                              ; preds = %178, %185
  br label %187

187:                                              ; preds = %186, %190
  %188 = phi i32 [ %191, %190 ], [ %183, %186 ]
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %201, !prof !1973

190:                                              ; preds = %187
  %191 = add nsw i32 %188, -1
  %192 = add i32 %191, %24
  %193 = add i32 %191, %179
  %194 = tail call fastcc zeroext i8 @sel_hard_regno_rename_ok(i32 noundef %192, i32 noundef %193) #24, !range !987
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %196, label %187, !prof !1972, !llvm.loop !1974

196:                                              ; preds = %190
  %197 = shl nuw i64 1, %180
  %198 = xor i64 %197, -1
  %199 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !1970
  %200 = and i64 %199, %198
  store i64 %200, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !1970
  br label %201

201:                                              ; preds = %187, %196
  call fastcc void @hard_reg_set_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #24
  %202 = call fastcc zeroext i8 @hard_reg_set_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #24, !range !987
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %178, !prof !1975, !llvm.loop !1976

204:                                              ; preds = %201
  %205 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !1970
  br label %206

206:                                              ; preds = %204, %174
  %207 = phi i64 [ %205, %204 ], [ %175, %174 ]
  %208 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !1852
  %209 = xor i64 %208, -1
  %210 = and i64 %207, %209
  %211 = shl nuw i64 1, %33
  %212 = or i64 %210, %211
  store i64 %212, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !1970
  br label %213

213:                                              ; preds = %145, %51, %55, %27, %15, %206
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare void @dump_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @av_set_intersect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_av_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @av_set_leave_one_nonspec(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @undo_transformations(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1977 !PGOFuncName !1978 {
  %3 = alloca %struct._list_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._expr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr null, ptr %5, align 8, !tbaa !955
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #24
  %7 = load ptr, ptr %3, align 8, !tbaa !1054
  %8 = load ptr, ptr %7, align 8, !tbaa !955
  %9 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %8, ptr noundef nonnull %4) #24, !range !987
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %72, label %11, !prof !1979

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %13

13:                                               ; preds = %11, %67
  %14 = load ptr, ptr %4, align 8, !tbaa !955
  %15 = load ptr, ptr %14, align 8, !tbaa !1057
  %16 = load ptr, ptr %15, align 8, !tbaa !1058
  %17 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %1, ptr noundef %16) #23
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %67, !prof !1980

19:                                               ; preds = %13
  %20 = load ptr, ptr @s_i_d, align 8
  %21 = load ptr, ptr @sched_luids, align 8
  %22 = load i32, ptr %12, align 8, !tbaa !940
  %23 = call fastcc i32 @VEC_int_base_index(ptr noundef %21, i32 noundef %22) #24
  %24 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %20, i32 noundef %23) #24
  %25 = load ptr, ptr %24, align 8, !tbaa !1042
  %26 = getelementptr inbounds %struct.vinsn_def, ptr %25, i64 0, i32 1, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !1043
  %28 = load ptr, ptr %14, align 8, !tbaa !1057
  %29 = getelementptr inbounds %struct.vinsn_def, ptr %28, i64 0, i32 1, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !1062
  %31 = call zeroext i8 @bitmap_intersect_p(ptr noundef %27, ptr noundef %30) #23
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %67, label %33, !prof !1981

33:                                               ; preds = %19
  %34 = call fastcc zeroext i8 @identical_copy_p(ptr noundef nonnull %1) #24, !range !987
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %67, !prof !1982

36:                                               ; preds = %33
  %37 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %38 = icmp sgt i32 %37, 5
  br i1 %38, label %39, label %66, !prof !1983

39:                                               ; preds = %36
  %40 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %14, align 8, !tbaa !1057
  %44 = load ptr, ptr %43, align 8, !tbaa !1058
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !940
  %47 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.68, i32 noundef %46) #24
  %48 = shl nsw i32 %47, 1
  %49 = or disjoint i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = alloca i8, i64 %50, align 16
  %52 = load ptr, ptr %14, align 8, !tbaa !1057
  %53 = load ptr, ptr %52, align 8, !tbaa !1058
  %54 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !940
  %56 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %51, i64 noundef %50, ptr noundef nonnull @.str.68, i32 noundef %55) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %51) #23
  %57 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %58 = call i32 @fputs(ptr nonnull %51, ptr %57)
  br label %66

59:                                               ; preds = %39
  %60 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %61 = load ptr, ptr %14, align 8, !tbaa !1057
  %62 = load ptr, ptr %61, align 8, !tbaa !1058
  %63 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !940
  %65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.68, i32 noundef %64) #24
  br label %66

66:                                               ; preds = %42, %59, %36
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  br label %67

67:                                               ; preds = %13, %19, %33, %66
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %68 = load ptr, ptr %3, align 8, !tbaa !1054
  %69 = load ptr, ptr %68, align 8, !tbaa !955
  %70 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %69, ptr noundef nonnull %4) #24, !range !987
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %13, !prof !1984, !llvm.loop !1985

72:                                               ; preds = %67, %2
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 0) #24
  %73 = load ptr, ptr %3, align 8, !tbaa !1054
  %74 = load ptr, ptr %73, align 8, !tbaa !955
  %75 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %74, ptr noundef nonnull %4) #24, !range !987
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %131, label %77, !prof !1979

77:                                               ; preds = %72, %126
  %78 = load ptr, ptr %4, align 8, !tbaa !955
  %79 = getelementptr inbounds %struct._expr, ptr %78, i64 0, i32 10
  %80 = load ptr, ptr %79, align 8, !tbaa !1010
  %81 = load ptr, ptr %78, align 8, !tbaa !1057
  %82 = call i32 @find_in_history_vect(ptr noundef %80, ptr noundef %1, ptr noundef %81, i8 noundef zeroext 1) #23
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %126, !prof !1986

84:                                               ; preds = %77
  %85 = load ptr, ptr %79, align 8, !tbaa !1010
  %86 = call fastcc ptr @VEC_expr_history_def_base_index(ptr noundef %85, i32 noundef %82) #24
  %87 = getelementptr inbounds %struct.expr_history_def_1, ptr %86, i64 0, i32 4
  %88 = load i32, ptr %87, align 4, !tbaa !1987
  switch i32 %88, label %125 [
    i32 1, label %89
    i32 0, label %101
  ], !prof !1989

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.expr_history_def_1, ptr %86, i64 0, i32 3
  %91 = load i32, ptr %90, align 8, !tbaa !1990
  %92 = getelementptr inbounds %struct._expr, ptr %78, i64 0, i32 7
  %93 = load i32, ptr %92, align 8, !tbaa !1204
  %94 = and i32 %91, 16777215
  %95 = and i32 %93, 16777215
  %96 = xor i32 %94, -1
  %97 = and i32 %95, %96
  %98 = getelementptr inbounds %struct._expr, ptr %78, i64 0, i32 8
  %99 = load i32, ptr %98, align 4, !tbaa !1169
  %100 = or i32 %97, %99
  store i32 %100, ptr %98, align 4, !tbaa !1169
  br label %126

101:                                              ; preds = %84
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #25
  %102 = getelementptr inbounds %struct.expr_history_def_1, ptr %86, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !1991
  %104 = getelementptr inbounds %struct.vinsn_def, ptr %103, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !1048
  %106 = icmp eq i32 %105, 23
  %107 = load ptr, ptr %78, align 8, !tbaa !1057
  %108 = getelementptr inbounds %struct.vinsn_def, ptr %107, i64 0, i32 1
  %109 = load i32, ptr %108, align 8, !tbaa !1048
  %110 = icmp ne i32 %109, 23
  %111 = xor i1 %106, %110
  br i1 %111, label %113, label %112, !prof !1992

112:                                              ; preds = %101
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1986, ptr noundef nonnull @.str.1) #23
  br label %113

113:                                              ; preds = %101, %112
  call void @copy_expr(ptr noundef nonnull %6, ptr noundef nonnull %78) #23
  %114 = getelementptr inbounds %struct.expr_history_def_1, ptr %86, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !1993
  %116 = load ptr, ptr %6, align 8, !tbaa !1057
  %117 = call zeroext i8 @vinsn_equal_p(ptr noundef %115, ptr noundef %116) #23
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %120, label %119, !prof !1994

119:                                              ; preds = %113
  call void @change_vinsn_in_expr(ptr noundef nonnull %6, ptr noundef nonnull %103) #23
  br label %123

120:                                              ; preds = %113
  %121 = call fastcc zeroext i8 @substitute_reg_in_expr(ptr noundef nonnull %6, ptr noundef %1, i8 noundef zeroext 1) #24, !range !987
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %124, label %123, !prof !1011

123:                                              ; preds = %119, %120
  call void @av_set_add(ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  br label %124

124:                                              ; preds = %123, %120
  call void @clear_expr(ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #25
  br label %126

125:                                              ; preds = %84
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2003, ptr noundef nonnull @.str.1) #23
  br label %126

126:                                              ; preds = %89, %124, %125, %77
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %127 = load ptr, ptr %3, align 8, !tbaa !1054
  %128 = load ptr, ptr %127, align 8, !tbaa !955
  %129 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %128, ptr noundef nonnull %4) #24, !range !987
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %77, !prof !1995, !llvm.loop !1996

131:                                              ; preds = %126, %72
  call void @av_set_union_and_clear(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @code_motion_path_driver_cleanup(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !998 !PGOFuncName !1997 {
  tail call fastcc void @_list_remove(ptr noundef %1) #24
  tail call void @av_set_clear(ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @code_motion_process_successors(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1998 !PGOFuncName !1999 {
  %5 = alloca %struct.succ_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.cmpd_local_params, align 16
  %8 = alloca %struct._expr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #25
  %9 = getelementptr inbounds %struct.cmpd_local_params, ptr %7, i64 0, i32 3
  store ptr %8, ptr %9, align 8, !tbaa !1020
  %10 = getelementptr inbounds %struct.cmpd_local_params, ptr %7, i64 0, i32 2
  store ptr null, ptr %10, align 16, !tbaa !1018
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %12 = getelementptr inbounds %struct.succ_iterator, ptr %5, i64 0, i32 1
  %13 = getelementptr inbounds %struct.succ_iterator, ptr %5, i64 0, i32 6
  %14 = load ptr, ptr %11, align 8, !tbaa !940
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !945
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !1093
  %19 = call fastcc i32 @VEC_edge_base_length(ptr noundef %18) #24
  %20 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !955
  %21 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %20, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !2000
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull %0, i32 noundef %22) #24
  %23 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %0) #24
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %72, label %25, !prof !1056

25:                                               ; preds = %4, %60
  %26 = phi i32 [ %63, %60 ], [ %19, %4 ]
  %27 = phi ptr [ %61, %60 ], [ %17, %4 ]
  %28 = phi i32 [ %51, %60 ], [ 0, %4 ]
  %29 = phi i32 [ %54, %60 ], [ %16, %4 ]
  br label %30

30:                                               ; preds = %25, %69
  %31 = phi i32 [ %51, %69 ], [ %28, %25 ]
  %32 = load <2 x ptr>, ptr %12, align 8, !tbaa !955
  store <2 x ptr> %32, ptr %7, align 16, !tbaa !955
  %33 = load i16, ptr %13, align 2, !tbaa !1452
  %34 = icmp eq i16 %33, 1
  br i1 %34, label %40, label %35, !prof !2001

35:                                               ; preds = %30
  %36 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !955
  %37 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !2002
  %39 = load ptr, ptr %6, align 8, !tbaa !955
  call void %38(ptr noundef %0, ptr noundef %39, i32 noundef 0, ptr noundef nonnull %7, ptr noundef %3) #23
  br label %49

40:                                               ; preds = %30
  %41 = load ptr, ptr %6, align 8, !tbaa !955
  %42 = call fastcc i32 @code_motion_path_driver(ptr noundef %41, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, ptr noundef %3) #24
  %43 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !955
  %44 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !2002
  call void %45(ptr noundef %0, ptr noundef %41, i32 noundef %42, ptr noundef nonnull %7, ptr noundef %3) #23
  switch i32 %42, label %49 [
    i32 1, label %50
    i32 -1, label %46
  ], !prof !2003

46:                                               ; preds = %40
  %47 = icmp eq i32 %31, 1
  %48 = select i1 %47, i32 1, i32 -1
  br label %50

49:                                               ; preds = %35, %40
  br label %50

50:                                               ; preds = %46, %40, %49
  %51 = phi i32 [ %42, %40 ], [ %31, %49 ], [ %48, %46 ]
  %52 = load ptr, ptr %11, align 8, !tbaa !940
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !945
  %55 = icmp eq i32 %54, %29
  br i1 %55, label %56, label %60, !prof !2004

56:                                               ; preds = %50
  %57 = load ptr, ptr %27, align 8, !tbaa !1093
  %58 = call fastcc i32 @VEC_edge_base_length(ptr noundef %57) #24
  %59 = icmp eq i32 %58, %26
  br i1 %59, label %69, label %60, !prof !2004

60:                                               ; preds = %56, %50
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !1093
  %63 = call fastcc i32 @VEC_edge_base_length(ptr noundef %62) #24
  %64 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !955
  %65 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %64, i64 0, i32 7
  %66 = load i32, ptr %65, align 8, !tbaa !2000
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull %0, i32 noundef %66) #24
  %67 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %0) #24
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %72, label %25, !prof !2005

69:                                               ; preds = %56
  call fastcc void @_succ_iter_next(ptr noundef nonnull %5) #24
  %70 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %0) #24
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %30, !prof !2006, !llvm.loop !2007

72:                                               ; preds = %60, %69, %4
  %73 = phi i32 [ 0, %4 ], [ %51, %69 ], [ %51, %60 ]
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %81, label %75, !prof !2008

75:                                               ; preds = %72
  %76 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !955
  %77 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %76, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !2009
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80, !prof !2010

80:                                               ; preds = %75
  call void %78(ptr noundef nonnull %7, ptr noundef %3) #23
  br label %81

81:                                               ; preds = %80, %75, %72
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #25
  ret i32 %73
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @identical_copy_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !2011 !PGOFuncName !2012 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !940
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 23
  br i1 %6, label %7, label %24, !prof !1982

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !940
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %24, !prof !1982

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !940
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %19, label %24, !prof !1983

19:                                               ; preds = %13
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #24
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #24
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %13, %7, %1, %19
  %25 = phi i8 [ %23, %19 ], [ 0, %1 ], [ 0, %7 ], [ 0, %13 ]
  ret i8 %25
}

; Function Attrs: optsize
declare i32 @find_in_history_vect(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_expr_history_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #3 !prof !2013 !PGOFuncName !2014 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_expr_history_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_reg_class(ptr noundef %0) unnamed_addr #0 !prof !1039 !PGOFuncName !2015 {
  tail call void @extract_insn(ptr noundef %0) #23
  %2 = tail call i32 @constrain_operands(i32 noundef 1) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5, !prof !1041

4:                                                ; preds = %1
  tail call void @_fatal_insn_not_found(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 1033, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %4, %1
  tail call void @preprocess_constraints() #23
  %6 = load i32, ptr @which_alternative, align 4, !tbaa !981
  %7 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !2016
  %8 = sext i8 %7 to i32
  %9 = icmp sgt i8 %7, 0
  br i1 %9, label %10, label %31, !prof !1444

10:                                               ; preds = %5
  %11 = sext i32 %6 to i64
  %12 = zext nneg i32 %8 to i64
  br label %13

13:                                               ; preds = %10, %23
  %14 = phi i64 [ 0, %10 ], [ %24, %23 ]
  %15 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %14, i64 %11, i32 3
  %16 = load i32, ptr %15, align 16, !tbaa !2018
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %23, !prof !2020

18:                                               ; preds = %13
  %19 = zext nneg i32 %16 to i64
  %20 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %19, i64 %11, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !2021
  %22 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %14, i64 %11, i32 1
  store i32 %21, ptr %22, align 8, !tbaa !2021
  br label %23

23:                                               ; preds = %18, %13
  %24 = add nuw nsw i64 %14, 1
  %25 = icmp eq i64 %24, %12
  br i1 %25, label %26, label %13, !prof !2022, !llvm.loop !2023

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !940
  %29 = tail call i32 @asm_noperands(ptr noundef %28) #23
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %36, label %59, !prof !1041

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !940
  %34 = tail call i32 @asm_noperands(ptr noundef %33) #23
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %102, label %59, !prof !1041

36:                                               ; preds = %26
  br i1 %9, label %37, label %102

37:                                               ; preds = %36
  %38 = zext nneg i32 %8 to i64
  br label %39

39:                                               ; preds = %37, %56
  %40 = phi i64 [ 0, %37 ], [ %57, %56 ]
  %41 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !981
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %40
  %46 = load ptr, ptr %45, align 8, !tbaa !955
  %47 = load ptr, ptr %46, align 8, !tbaa !955
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 37
  br i1 %50, label %51, label %91

51:                                               ; preds = %44
  %52 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #24
  %53 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load i32, ptr %53, align 8, !tbaa !940
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %94

56:                                               ; preds = %51, %39
  %57 = add nuw nsw i64 %40, 1
  %58 = icmp eq i64 %57, %38
  br i1 %58, label %102, label %39, !llvm.loop !2024

59:                                               ; preds = %31, %26
  %60 = load i32, ptr %0, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 10
  br i1 %62, label %102, label %63, !prof !1041

63:                                               ; preds = %59
  %64 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !2025
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %65, %8
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %102, !prof !2026

68:                                               ; preds = %63
  %69 = sext i32 %6 to i64
  %70 = sext i8 %7 to i64
  %71 = zext nneg i32 %66 to i64
  br label %75

72:                                               ; preds = %83
  %73 = add nuw nsw i64 %76, 1
  %74 = icmp eq i64 %73, %71
  br i1 %74, label %102, label %75, !prof !2027, !llvm.loop !2028

75:                                               ; preds = %68, %72
  %76 = phi i64 [ 0, %68 ], [ %73, %72 ]
  %77 = icmp slt i64 %76, %70
  br i1 %77, label %83, label %78, !prof !2029

78:                                               ; preds = %75
  %79 = sub nsw i64 %76, %70
  %80 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !940
  %82 = sext i8 %81 to i64
  br label %83

83:                                               ; preds = %75, %78
  %84 = phi i64 [ %82, %78 ], [ %76, %75 ]
  %85 = shl i64 %84, 32
  %86 = ashr exact i64 %85, 32
  %87 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !981
  %89 = add i32 %88, -3
  %90 = icmp ult i32 %89, -2
  br i1 %90, label %72, label %97

91:                                               ; preds = %44
  %92 = sext i32 %6 to i64
  %93 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %40, i64 %92, i32 1
  br label %99

94:                                               ; preds = %51
  %95 = sext i32 %6 to i64
  %96 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %40, i64 %95, i32 1
  br label %99

97:                                               ; preds = %83
  %98 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %86, i64 %69, i32 1
  br label %99

99:                                               ; preds = %94, %91, %97
  %100 = phi ptr [ %98, %97 ], [ %93, %91 ], [ %96, %94 ]
  %101 = load i32, ptr %100, align 8, !tbaa !2021
  br label %102

102:                                              ; preds = %72, %56, %99, %31, %63, %36, %59
  %103 = phi i32 [ 0, %59 ], [ 0, %36 ], [ 0, %63 ], [ 0, %31 ], [ %101, %99 ], [ 0, %56 ], [ 0, %72 ]
  ret i32 %103
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_regs_for_mode(i32 noundef %0) unnamed_addr #0 !prof !2030 !PGOFuncName !2031 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [87 x i64], ptr @sel_hrd, i64 0, i64 %2
  store i64 0, ptr %3, align 8, !tbaa !1561
  %4 = getelementptr inbounds %struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 3, i64 %2
  store i64 0, ptr %4, align 8, !tbaa !1561
  br label %5

5:                                                ; preds = %1, %36
  %6 = phi i64 [ 0, %1 ], [ %37, %36 ]
  %7 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %6, i64 %2
  %8 = load i8, ptr %7, align 1, !tbaa !940
  %9 = zext i8 %8 to i64
  br label %10

10:                                               ; preds = %23, %5
  %11 = phi i64 [ %12, %23 ], [ %9, %5 ]
  %12 = add nsw i64 %11, -1
  %13 = icmp sgt i64 %11, 0
  br i1 %13, label %14, label %28, !prof !2032

14:                                               ; preds = %10
  %15 = add nsw i64 %12, %6
  %16 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !940
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %36, !prof !2033

19:                                               ; preds = %14
  %20 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %15
  %21 = load i8, ptr %20, align 1, !tbaa !940
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %36, !prof !2034

23:                                               ; preds = %19
  %24 = load i64, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 4), align 8
  %25 = shl nuw i64 1, %15
  %26 = and i64 %24, %25
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %36, label %10, !prof !2035, !llvm.loop !2036

28:                                               ; preds = %10
  %29 = trunc i64 %6 to i32
  %30 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %29, i32 noundef %0) #23
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32, !prof !2037

32:                                               ; preds = %28
  %33 = shl nuw i64 1, %6
  %34 = load i64, ptr %3, align 8, !tbaa !1561
  %35 = or i64 %34, %33
  store i64 %35, ptr %3, align 8, !tbaa !1561
  br label %36

36:                                               ; preds = %23, %19, %14, %28, %32
  %37 = add nuw nsw i64 %6, 1
  %38 = icmp eq i64 %37, 53
  br i1 %38, label %39, label %5, !prof !2038, !llvm.loop !2039

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 1, i64 %2
  store i8 1, ptr %40, align 1, !tbaa !940
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @hard_reg_set_iter_init(ptr nocapture noundef writeonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !2040 !PGOFuncName !2041 {
  %4 = alloca i64, align 8
  store ptr %4, ptr %0, align 8, !tbaa !2042
  %5 = getelementptr inbounds %struct.hard_reg_set_iterator, ptr %0, i64 0, i32 1
  store i16 1, ptr %5, align 8, !tbaa !2044
  %6 = getelementptr inbounds %struct.hard_reg_set_iterator, ptr %0, i64 0, i32 2
  store i16 0, ptr %6, align 2, !tbaa !2045
  %7 = getelementptr inbounds %struct.hard_reg_set_iterator, ptr %0, i64 0, i32 3
  store i64 %1, ptr %7, align 8, !tbaa !2046
  %8 = icmp eq i64 %1, 0
  %9 = zext i1 %8 to i32
  store i32 %9, ptr %2, align 4, !tbaa !981
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @hard_reg_set_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #16 !prof !2047 !PGOFuncName !2048 {
  %3 = getelementptr inbounds %struct.hard_reg_set_iterator, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.hard_reg_set_iterator, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !2044
  %6 = load i16, ptr %3, align 2, !tbaa !2045
  %7 = icmp ult i16 %6, %5
  br i1 %7, label %8, label %58, !prof !2049

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.hard_reg_set_iterator, ptr %0, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !2046
  br label %11

11:                                               ; preds = %8, %52
  %12 = phi i64 [ %10, %8 ], [ %53, %52 ]
  %13 = phi i64 [ %10, %8 ], [ %54, %52 ]
  %14 = phi i16 [ %6, %8 ], [ %55, %52 ]
  %15 = icmp eq i64 %13, 0
  br i1 %15, label %32, label %16, !prof !2050

16:                                               ; preds = %11
  %17 = and i64 %12, 1
  %18 = icmp eq i64 %17, 0
  %19 = load i32, ptr %1, align 4, !tbaa !981
  br i1 %18, label %20, label %28, !prof !2051

20:                                               ; preds = %16, %20
  %21 = phi i32 [ %24, %20 ], [ %19, %16 ]
  %22 = phi i64 [ %23, %20 ], [ %12, %16 ]
  %23 = lshr exact i64 %22, 1
  %24 = add i32 %21, 1
  %25 = and i64 %22, 2
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %20, label %27, !prof !2052, !llvm.loop !2053

27:                                               ; preds = %20
  store i64 %23, ptr %9, align 8, !tbaa !2046
  store i32 %24, ptr %1, align 4, !tbaa !981
  br label %28

28:                                               ; preds = %27, %16
  %29 = phi i32 [ %24, %27 ], [ %19, %16 ]
  %30 = icmp ult i32 %29, 53
  %31 = zext i1 %30 to i8
  br label %58

32:                                               ; preds = %11
  %33 = load i32, ptr %1, align 4, !tbaa !981
  %34 = add i32 %33, 63
  %35 = and i32 %34, -64
  %36 = add nuw i16 %14, 1
  %37 = icmp ult i16 %36, %5
  br i1 %37, label %38, label %52, !prof !2054

38:                                               ; preds = %32
  %39 = load ptr, ptr %0, align 8, !tbaa !2042
  br label %40

40:                                               ; preds = %38, %47
  %41 = phi i16 [ %36, %38 ], [ %49, %47 ]
  %42 = phi i32 [ %35, %38 ], [ %48, %47 ]
  %43 = zext i16 %41 to i64
  %44 = getelementptr inbounds i64, ptr %39, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !1561
  store i64 %45, ptr %9, align 8, !tbaa !2046
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = add i32 %42, 64
  %49 = add i16 %41, 1
  %50 = icmp eq i16 %49, %5
  br i1 %50, label %51, label %40, !prof !1414, !llvm.loop !2055

51:                                               ; preds = %47
  store i32 %48, ptr %1, align 4, !tbaa !981
  store i16 %5, ptr %3, align 2, !tbaa !2045
  br label %58

52:                                               ; preds = %40, %32
  %53 = phi i64 [ %12, %32 ], [ %45, %40 ]
  %54 = phi i64 [ 0, %32 ], [ %45, %40 ]
  %55 = phi i16 [ %36, %32 ], [ %41, %40 ]
  %56 = phi i32 [ %35, %32 ], [ %42, %40 ]
  store i32 %56, ptr %1, align 4, !tbaa !981
  store i16 %55, ptr %3, align 2, !tbaa !2045
  %57 = icmp ult i16 %55, %5
  br i1 %57, label %11, label %58, !prof !2056

58:                                               ; preds = %52, %51, %2, %28
  %59 = phi i8 [ %31, %28 ], [ 0, %2 ], [ 0, %51 ], [ 0, %52 ]
  ret i8 %59
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @sel_hard_regno_rename_ok(i32 noundef %0, i32 noundef %1) unnamed_addr #18 !prof !2057 !PGOFuncName !2058 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 2, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !1561
  %6 = zext nneg i32 %0 to i64
  %7 = shl nuw i64 1, %6
  %8 = and i64 %5, %7
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12, !prof !2059

10:                                               ; preds = %2
  tail call fastcc void @init_hard_regno_rename(i32 noundef %0) #24
  %11 = load i64, ptr %4, align 8, !tbaa !1561
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i64 [ %11, %10 ], [ %5, %2 ]
  %14 = zext nneg i32 %1 to i64
  %15 = shl nuw i64 1, %14
  %16 = and i64 %13, %15
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i8
  ret i8 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @hard_reg_set_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !2060 !PGOFuncName !2061 {
  %3 = getelementptr inbounds %struct.hard_reg_set_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !2046
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !2046
  %6 = load i32, ptr %1, align 4, !tbaa !981
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !981
  ret void
}

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_fatal_insn_not_found(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @preprocess_constraints() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @init_hard_regno_rename(i32 noundef %0) unnamed_addr #19 !prof !2062 !PGOFuncName !2063 {
  %2 = zext nneg i32 %0 to i64
  %3 = shl nuw i64 1, %2
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds %struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 2, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !1561
  %7 = or i64 %6, %3
  store i64 %7, ptr %5, align 8, !tbaa !1561
  %8 = and i64 %4, -8
  %9 = icmp eq i64 %8, 8
  %10 = load i64, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 4), align 8, !tbaa !1880
  br label %11

11:                                               ; preds = %1, %22
  %12 = phi i64 [ %7, %1 ], [ %23, %22 ]
  %13 = phi i64 [ %10, %1 ], [ %24, %22 ]
  %14 = phi i64 [ 0, %1 ], [ %25, %22 ]
  %15 = shl nuw nsw i64 1, %14
  %16 = and i64 %13, %15
  %17 = icmp eq i64 %16, 0
  %18 = or i1 %9, %17
  br i1 %18, label %22, label %19, !prof !2064

19:                                               ; preds = %11
  %20 = or i64 %12, %15
  store i64 %20, ptr %5, align 8, !tbaa !1561
  %21 = load i64, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 4), align 8, !tbaa !1880
  br label %22

22:                                               ; preds = %19, %11
  %23 = phi i64 [ %20, %19 ], [ %12, %11 ]
  %24 = phi i64 [ %21, %19 ], [ %13, %11 ]
  %25 = add nuw nsw i64 %14, 1
  %26 = icmp eq i64 %25, 53
  br i1 %26, label %27, label %11, !prof !2065, !llvm.loop !2066

27:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @choose_best_reg_1(i64 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1039 !PGOFuncName !2067 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hard_reg_set_iterator, align 8
  %7 = alloca %struct._list_iterator, align 8
  %8 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !955
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  store i8 1, ptr %2, align 1, !tbaa !940
  call fastcc void @_list_iter_start(ptr noundef nonnull %7, ptr noundef nonnull %4, i8 noundef zeroext 0) #24
  %9 = load ptr, ptr %7, align 8, !tbaa !1054
  %10 = load ptr, ptr %9, align 8, !tbaa !955
  %11 = call fastcc zeroext i8 @_list_iter_cond_def(ptr noundef %10, ptr noundef nonnull %8) #24, !range !987
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %68, label %13, !prof !953

13:                                               ; preds = %3, %63
  %14 = phi i32 [ %35, %63 ], [ 0, %3 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !955
  %16 = load ptr, ptr %15, align 8, !tbaa !1884
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !940
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !940
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %26, label %24, !prof !1049

24:                                               ; preds = %13
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1398, ptr noundef nonnull @.str.1) #23
  %25 = load i32, ptr %20, align 8
  br label %26

26:                                               ; preds = %13, %24
  %27 = phi i32 [ %21, %13 ], [ %25, %24 ]
  %28 = icmp eq i32 %14, 0
  %29 = lshr i32 %27, 16
  %30 = and i32 %29, 255
  br i1 %28, label %34, label %31, !prof !1049

31:                                               ; preds = %26
  %32 = icmp eq i32 %14, %30
  br i1 %32, label %34, label %33, !prof !956

33:                                               ; preds = %31
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1406, ptr noundef nonnull @.str.1) #23
  br label %34

34:                                               ; preds = %26, %31, %33
  %35 = phi i32 [ %14, %31 ], [ %14, %33 ], [ %30, %26 ]
  %36 = call fastcc i32 @rhs_regno(ptr noundef nonnull %20) #24
  %37 = zext i32 %36 to i64
  %38 = zext nneg i32 %35 to i64
  %39 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %37, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !940
  %41 = zext i8 %40 to i32
  %42 = icmp eq i8 %40, 0
  br i1 %42, label %55, label %43, !prof !1056

43:                                               ; preds = %34, %51
  %44 = phi i64 [ %53, %51 ], [ 0, %34 ]
  %45 = trunc i64 %44 to i32
  %46 = add i32 %36, %45
  %47 = zext nneg i32 %46 to i64
  %48 = shl nuw i64 1, %47
  %49 = and i64 %48, %0
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55, !prof !1041

51:                                               ; preds = %43
  %52 = zext i8 %40 to i64
  %53 = add nuw nsw i64 %44, 1
  %54 = icmp eq i64 %53, %52
  br i1 %54, label %58, label %43, !prof !2068, !llvm.loop !2069

55:                                               ; preds = %43, %34
  %56 = phi i32 [ 0, %34 ], [ %45, %43 ]
  %57 = icmp eq i32 %56, %41
  br i1 %57, label %58, label %63, !prof !2070

58:                                               ; preds = %55, %51
  %59 = icmp eq i32 %35, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %58
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1416, ptr noundef nonnull @.str.1) #23
  br label %61

61:                                               ; preds = %60, %58
  %62 = call ptr @gen_rtx_REG(i32 noundef %35, i32 noundef %36) #23
  br label %126

63:                                               ; preds = %55
  call fastcc void @_list_iter_next(ptr noundef nonnull %7) #24
  %64 = load ptr, ptr %7, align 8, !tbaa !1054
  %65 = load ptr, ptr %64, align 8, !tbaa !955
  %66 = call fastcc zeroext i8 @_list_iter_cond_def(ptr noundef %65, ptr noundef nonnull %8) #24, !range !987
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %13, !prof !1444, !llvm.loop !2071

68:                                               ; preds = %63, %3
  %69 = phi i32 [ 0, %3 ], [ %35, %63 ]
  store i8 0, ptr %2, align 1, !tbaa !940
  %70 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !1970
  call fastcc void @hard_reg_set_iter_init(ptr noundef nonnull %6, i64 noundef %70, ptr noundef nonnull %5) #24
  %71 = call fastcc zeroext i8 @hard_reg_set_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #24, !range !987
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %126, label %73, !prof !2072

73:                                               ; preds = %68, %114
  %74 = phi i32 [ %115, %114 ], [ -1, %68 ]
  %75 = load i32, ptr %5, align 4, !tbaa !981
  %76 = zext i32 %75 to i64
  %77 = shl nuw i64 1, %76
  %78 = and i64 %77, %0
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %114, !prof !2073

80:                                               ; preds = %73
  %81 = zext nneg i32 %69 to i64
  %82 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %76, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !940
  %84 = icmp ugt i8 %83, 1
  br i1 %84, label %89, label %100, !prof !2074

85:                                               ; preds = %89
  %86 = zext i8 %83 to i64
  %87 = add nuw nsw i64 %90, 1
  %88 = icmp eq i64 %87, %86
  br i1 %88, label %100, label %89, !prof !1414, !llvm.loop !2075

89:                                               ; preds = %80, %85
  %90 = phi i64 [ %87, %85 ], [ 1, %80 ]
  %91 = trunc i64 %90 to i32
  %92 = add i32 %75, %91
  %93 = zext nneg i32 %92 to i64
  %94 = shl nuw i64 1, %93
  %95 = and i64 %94, %0
  %96 = icmp ne i64 %95, 0
  %97 = and i64 %94, %70
  %98 = icmp eq i64 %97, 0
  %99 = or i1 %96, %98
  br i1 %99, label %114, label %85

100:                                              ; preds = %85, %80
  %101 = icmp slt i32 %74, 0
  br i1 %101, label %109, label %102, !prof !2076

102:                                              ; preds = %100
  %103 = getelementptr inbounds [53 x i32], ptr @reg_rename_tick, i64 0, i64 %76
  %104 = load i32, ptr %103, align 4, !tbaa !981
  %105 = zext nneg i32 %74 to i64
  %106 = getelementptr inbounds [53 x i32], ptr @reg_rename_tick, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !981
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %114, !prof !2077

109:                                              ; preds = %102, %100
  %110 = sext i32 %75 to i64
  %111 = getelementptr inbounds [53 x i32], ptr @reg_rename_tick, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !981
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114, !prof !2076

114:                                              ; preds = %89, %73, %109, %102
  %115 = phi i32 [ %74, %73 ], [ %75, %109 ], [ %74, %102 ], [ %74, %89 ]
  call fastcc void @hard_reg_set_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #24
  %116 = call fastcc zeroext i8 @hard_reg_set_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #24, !range !987
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %73, !prof !2078, !llvm.loop !2079

118:                                              ; preds = %114, %109
  %119 = phi i32 [ %115, %114 ], [ %75, %109 ]
  %120 = icmp sgt i32 %119, -1
  br i1 %120, label %121, label %126, !prof !2080

121:                                              ; preds = %118
  %122 = icmp eq i32 %69, 0
  br i1 %122, label %123, label %124, !prof !1882

123:                                              ; preds = %121
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1457, ptr noundef nonnull @.str.1) #23
  br label %124

124:                                              ; preds = %121, %123
  %125 = call ptr @gen_rtx_REG(i32 noundef %69, i32 noundef %119) #23
  br label %126

126:                                              ; preds = %68, %61, %118, %124
  %127 = phi ptr [ %125, %124 ], [ null, %118 ], [ %62, %61 ], [ null, %68 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  ret ptr %127
}

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @df_regs_ever_live_p(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #2

; Function Attrs: optsize
declare void @maybe_extend_reg_info_p() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @replace_src_with_reg_ok_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1888 !PGOFuncName !2081 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr @s_i_d, align 8
  %6 = load ptr, ptr @sched_luids, align 8
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !940
  %9 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %6, i32 noundef %8) #24
  %10 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %5, i32 noundef %9) #24
  %11 = load ptr, ptr %10, align 8, !tbaa !1042
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %12 = getelementptr inbounds %struct.vinsn_def, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !1048
  %14 = icmp eq i32 %13, 23
  br i1 %14, label %16, label %15, !prof !1891

15:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 923, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %2, %15
  call void @get_dest_and_mode(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %17 = load i32, ptr %3, align 4, !tbaa !981
  %18 = load i32, ptr %1, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %23, label %22, !prof !1891

22:                                               ; preds = %16
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 926, ptr noundef nonnull @.str.1) #23
  br label %23

23:                                               ; preds = %16, %22
  %24 = load ptr, ptr %4, align 8, !tbaa !955
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 37
  br i1 %27, label %28, label %32, !prof !1891

28:                                               ; preds = %23
  %29 = call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #24
  %30 = call fastcc i32 @rhs_regno(ptr noundef nonnull %24) #24
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %39, label %32, !prof !1892

32:                                               ; preds = %28, %23
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !940
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %35, ptr noundef nonnull %1, i8 noundef zeroext 1) #23
  %37 = call i32 @verify_changes(i32 noundef 0) #23
  %38 = trunc i32 %37 to i8
  call void @cancel_changes(i32 noundef 0) #23
  br label %39

39:                                               ; preds = %28, %32
  %40 = phi i8 [ %38, %32 ], [ 1, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @replace_dest_with_reg_ok_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1888 !PGOFuncName !2082 {
  %3 = load ptr, ptr @s_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !940
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %6) #24
  %8 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %7) #24
  %9 = load ptr, ptr %8, align 8, !tbaa !1042
  %10 = getelementptr inbounds %struct.vinsn_def, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !1048
  %12 = icmp eq i32 %11, 23
  br i1 %12, label %14, label %13, !prof !1891

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 948, ptr noundef nonnull @.str.1) #23
  br label %14

14:                                               ; preds = %2, %13
  %15 = getelementptr inbounds %struct.vinsn_def, ptr %9, i64 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !1050
  %17 = load i32, ptr %16, align 8
  %18 = load i32, ptr %1, align 8
  %19 = xor i32 %18, %17
  %20 = and i32 %19, 16711680
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !1891

22:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 949, ptr noundef nonnull @.str.1) #23
  br label %23

23:                                               ; preds = %14, %22
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !940
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %26, ptr noundef nonnull %1, i8 noundef zeroext 1) #23
  %28 = tail call i32 @verify_changes(i32 noundef 0) #23
  %29 = trunc i32 %28 to i8
  tail call void @cancel_changes(i32 noundef 0) #23
  ret i8 %29
}

; Function Attrs: optsize
declare void @get_dest_and_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @verify_changes(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cancel_changes(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sched_extend_ready_list(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ready_element(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ready_lastpos(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_vinsn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @max_issue(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_expr_cost(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !2083 !PGOFuncName !2084 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1057
  %4 = load ptr, ptr %3, align 8, !tbaa !1058
  %5 = tail call fastcc i32 @recog_memoized(ptr noundef %4) #24
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %24, !prof !2085

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._fence, ptr %1, i64 0, i32 13
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load ptr, ptr @s_i_d, align 8
  %14 = load ptr, ptr @sched_luids, align 8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !940
  %17 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %14, i32 noundef %16) #24
  %18 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %13, i32 noundef %17) #24
  %19 = getelementptr inbounds %struct._sel_insn_data, ptr %18, i64 0, i32 13
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %12, %7
  br label %28

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct._fence, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !1737
  %27 = tail call fastcc i32 @estimate_insn_cost(ptr noundef %4, ptr noundef %26) #24, !range !1738
  br label %28

28:                                               ; preds = %12, %24, %23
  %29 = phi i32 [ 0, %23 ], [ %27, %24 ], [ 1, %12 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @estimate_insn_cost(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !2083 !PGOFuncName !2086 {
  %3 = load ptr, ptr @estimate_insn_cost.temp, align 8, !tbaa !955
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8, !prof !2087

5:                                                ; preds = %2
  %6 = load i64, ptr @dfa_state_size, align 8, !tbaa !1561
  %7 = tail call ptr @xmalloc(i64 noundef %6) #23
  store ptr %7, ptr @estimate_insn_cost.temp, align 8, !tbaa !955
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %3, %2 ]
  %10 = load i64, ptr @dfa_state_size, align 8, !tbaa !1561
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %1, i64 %10, i1 false)
  %11 = tail call i32 @state_transition(ptr noundef %9, ptr noundef %0) #23
  %12 = icmp slt i32 %11, 0
  %13 = tail call i32 @llvm.umax.i32(i32 %11, i32 1)
  %14 = select i1 %12, i32 0, i32 %13, !prof !1739
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @state_transition(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_dfa_new_cycle(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !1004 !PGOFuncName !2088 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct._fence, ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !1684
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7, !prof !2089

7:                                                ; preds = %2
  %8 = load ptr, ptr @s_i_d, align 8
  %9 = load ptr, ptr @sched_luids, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !940
  %12 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %9, i32 noundef %11) #24
  %13 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %8, i32 noundef %12) #24
  %14 = getelementptr inbounds %struct._sel_insn_data, ptr %13, i64 0, i32 10
  %15 = load i32, ptr %14, align 8, !tbaa !1692
  br label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct._fence, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !1609
  %19 = add nsw i32 %18, -1
  br label %20

20:                                               ; preds = %16, %7
  %21 = phi i32 [ %15, %7 ], [ %19, %16 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !tbaa !981
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 19), align 8, !tbaa !2090
  %23 = icmp eq ptr %22, null
  br i1 %23, label %52, label %24, !prof !1136

24:                                               ; preds = %20
  %25 = load ptr, ptr @curr_state, align 8, !tbaa !955
  %26 = getelementptr inbounds %struct._fence, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !1737
  %28 = load i64, ptr @dfa_state_size, align 8, !tbaa !1561
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %27, i64 %28, i1 false)
  %29 = getelementptr inbounds %struct._fence, ptr %1, i64 0, i32 2
  %30 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 19), align 8, !tbaa !2090
  %31 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %32 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %33 = load i32, ptr %29, align 8, !tbaa !1609
  %34 = call i32 %30(ptr noundef %31, i32 noundef %32, ptr noundef %0, i32 noundef %21, i32 noundef %33, ptr noundef nonnull %3) #23
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %52, label %43

36:                                               ; preds = %43
  %37 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 19), align 8, !tbaa !2090
  %38 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %39 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %40 = load i32, ptr %29, align 8, !tbaa !1609
  %41 = call i32 %37(ptr noundef %38, i32 noundef %39, ptr noundef %0, i32 noundef %21, i32 noundef %40, ptr noundef nonnull %3) #23
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43, !llvm.loop !2091

43:                                               ; preds = %24, %36
  %44 = load ptr, ptr %26, align 8, !tbaa !1737
  %45 = load ptr, ptr @curr_state, align 8, !tbaa !955
  %46 = load i64, ptr @dfa_state_size, align 8, !tbaa !1561
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %44, ptr align 1 %45, i64 %46, i1 false)
  call fastcc void @advance_one_cycle(ptr noundef nonnull %1) #24
  %47 = load ptr, ptr @curr_state, align 8, !tbaa !955
  %48 = load ptr, ptr %26, align 8, !tbaa !1737
  %49 = load i64, ptr @dfa_state_size, align 8, !tbaa !1561
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %47, ptr align 1 %48, i64 %49, i1 false)
  %50 = load i32, ptr %3, align 4, !tbaa !981
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %36, label %52, !llvm.loop !2091

52:                                               ; preds = %36, %43, %24, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @advance_one_cycle(ptr nocapture noundef %0) unnamed_addr #0 !prof !2092 !PGOFuncName !2093 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1737
  tail call void @advance_state(ptr noundef %4) #23
  %5 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !1609
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !1609
  %8 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 3
  store i32 0, ptr %8, align 4, !tbaa !1673
  %9 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 13
  %10 = load i8, ptr %9, align 8
  %11 = or i8 %10, 4
  store i8 %11, ptr %9, align 8
  %12 = load i32, ptr @issue_rate, align 4, !tbaa !981
  store i32 %12, ptr @can_issue_more, align 4, !tbaa !981
  %13 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 11
  store i32 %12, ptr %13, align 8, !tbaa !1612
  %14 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !2094
  %16 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %2) #24, !range !1380
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %56, label %18, !prof !1056

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 5
  br label %20

20:                                               ; preds = %18, %51
  %21 = phi ptr [ %15, %18 ], [ %52, %51 ]
  %22 = phi i32 [ 0, %18 ], [ %53, %51 ]
  %23 = load ptr, ptr @s_i_d, align 8
  %24 = load ptr, ptr @sched_luids, align 8
  %25 = load ptr, ptr %2, align 8, !tbaa !955
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !940
  %28 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %24, i32 noundef %27) #24
  %29 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %23, i32 noundef %28) #24
  %30 = getelementptr inbounds %struct._sel_insn_data, ptr %29, i64 0, i32 11
  %31 = load i32, ptr %30, align 4, !tbaa !1694
  %32 = icmp sgt i32 %31, %6
  br i1 %32, label %51, label %44, !prof !2095

33:                                               ; preds = %44
  %34 = load ptr, ptr @s_i_d, align 8
  %35 = load ptr, ptr @sched_luids, align 8
  %36 = load ptr, ptr %2, align 8, !tbaa !955
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !940
  %39 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %35, i32 noundef %38) #24
  %40 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %34, i32 noundef %39) #24
  %41 = getelementptr inbounds %struct._sel_insn_data, ptr %40, i64 0, i32 11
  %42 = load i32, ptr %41, align 4, !tbaa !1694
  %43 = icmp sgt i32 %42, %6
  br i1 %43, label %51, label %44, !prof !2096, !llvm.loop !2097

44:                                               ; preds = %20, %33
  %45 = phi ptr [ %36, %33 ], [ %25, %20 ]
  %46 = load ptr, ptr %19, align 8, !tbaa !1610
  tail call void @remove_from_deps(ptr noundef %46, ptr noundef nonnull %45) #23
  %47 = load ptr, ptr %14, align 8, !tbaa !2094
  tail call fastcc void @VEC_rtx_base_unordered_remove(ptr noundef %47, i32 noundef %22) #24
  %48 = load ptr, ptr %14, align 8, !tbaa !2094
  %49 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %48, i32 noundef %22, ptr noundef nonnull %2) #24, !range !1380
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %33, !prof !2098, !llvm.loop !2097

51:                                               ; preds = %33, %20
  %52 = phi ptr [ %21, %20 ], [ %48, %33 ]
  %53 = add i32 %22, 1
  %54 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %52, i32 noundef %53, ptr noundef nonnull %2) #24, !range !1380
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %20, !prof !2099, !llvm.loop !2097

56:                                               ; preds = %51, %44, %1
  %57 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %79, !prof !2100

59:                                               ; preds = %56
  %60 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %5, align 8, !tbaa !1609
  %64 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.74, i32 noundef %63) #24
  %65 = shl nsw i32 %64, 1
  %66 = or disjoint i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = alloca i8, i64 %67, align 16
  %69 = load i32, ptr %5, align 8, !tbaa !1609
  %70 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %68, i64 noundef %67, ptr noundef nonnull @.str.74, i32 noundef %69) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %68) #23
  %71 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %72 = call i32 @fputs(ptr nonnull %68, ptr %71)
  br label %77

73:                                               ; preds = %59
  %74 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %75 = load i32, ptr %5, align 8, !tbaa !1609
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.74, i32 noundef %75) #24
  br label %77

77:                                               ; preds = %73, %62
  %78 = load ptr, ptr %3, align 8, !tbaa !1737
  call fastcc void @debug_state(ptr noundef %78) #24
  br label %79

79:                                               ; preds = %77, %56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: optsize
declare void @advance_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_from_deps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_base_unordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !prof !2101 !PGOFuncName !2102 {
  %3 = load i32, ptr %0, align 8, !tbaa !1421
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = add i32 %3, -1
  store i32 %6, ptr %0, align 8, !tbaa !1421
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !955
  store ptr %9, ptr %5, align 8, !tbaa !955
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @debug_state(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !998 !PGOFuncName !2103 {
  %2 = load i64, ptr @dfa_state_size, align 8, !tbaa !1561
  %3 = trunc i64 %2 to i32
  %4 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.75, i32 noundef %3) #24
  %8 = shl nsw i32 %7, 1
  %9 = or disjoint i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = alloca i8, i64 %10, align 16
  %12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %11, i64 noundef %10, ptr noundef nonnull @.str.75, i32 noundef %3) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %11) #23
  %13 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %14 = call i32 @fputs(ptr nonnull %11, ptr %13)
  br label %18

15:                                               ; preds = %1
  %16 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.75, i32 noundef %3) #24
  br label %18

18:                                               ; preds = %15, %6
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %49, label %20

20:                                               ; preds = %18
  %21 = and i64 %2, 4294967295
  br label %22

22:                                               ; preds = %20, %46
  %23 = phi i64 [ 0, %20 ], [ %47, %46 ]
  %24 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %0, i64 %23
  %28 = load i8, ptr %27, align 1, !tbaa !940
  %29 = zext i8 %28 to i32
  %30 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.76, i32 noundef %29) #24
  %31 = shl nsw i32 %30, 1
  %32 = or disjoint i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  %35 = load i8, ptr %27, align 1, !tbaa !940
  %36 = zext i8 %35 to i32
  %37 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %34, i64 noundef %33, ptr noundef nonnull @.str.76, i32 noundef %36) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %34) #23
  %38 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %39 = call i32 @fputs(ptr nonnull %34, ptr %38)
  br label %46

40:                                               ; preds = %22
  %41 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %42 = getelementptr inbounds i8, ptr %0, i64 %23
  %43 = load i8, ptr %42, align 1, !tbaa !940
  %44 = zext i8 %43 to i32
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.76, i32 noundef %44) #24
  br label %46

46:                                               ; preds = %26, %40
  %47 = add nuw nsw i64 %23, 1
  %48 = icmp eq i64 %47, %21
  br i1 %48, label %49, label %22, !llvm.loop !2104

49:                                               ; preds = %46, %18
  %50 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = alloca [3 x i8], align 16
  store i16 10, ptr %53, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %53) #23
  %54 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %55 = call i32 @fputs(ptr nonnull %53, ptr %54)
  br label %59

56:                                               ; preds = %49
  %57 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %58 = call i32 @fputc(i32 10, ptr %57)
  br label %59

59:                                               ; preds = %56, %52
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @vinsn_cond_branch_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_cond_jump(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !998 !PGOFuncName !2105 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !940
  %6 = load ptr, ptr %1, align 8, !tbaa !1622
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !940
  %9 = icmp eq ptr %5, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4902, ptr noundef nonnull @.str.1) #23
  %11 = load ptr, ptr %1, align 8, !tbaa !1622
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi ptr [ %6, %2 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !940
  store ptr %0, ptr %1, align 8, !tbaa !1622
  %16 = tail call ptr @find_fallthru_edge(ptr noundef %5) #23
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !989
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4913, ptr noundef nonnull @.str.1) #23
  br label %21

21:                                               ; preds = %12, %20
  %22 = tail call ptr @sel_split_edge(ptr noundef nonnull %16) #23
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !2106
  %25 = icmp eq ptr %24, %18
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !2106
  %29 = icmp eq ptr %28, %22
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4918, ptr noundef nonnull @.str.1) #23
  br label %31

31:                                               ; preds = %26, %30
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !940
  %34 = getelementptr inbounds %struct.rtl_bb_info, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !959
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4920, ptr noundef nonnull @.str.1) #23
  br label %38

38:                                               ; preds = %31, %37
  %39 = icmp eq ptr %13, %0
  br i1 %39, label %55, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi ptr [ %13, %40 ], [ %53, %42 ]
  %44 = load i32, ptr %41, align 8, !tbaa !945
  %45 = load ptr, ptr @s_i_d, align 8
  %46 = load ptr, ptr @sched_luids, align 8
  %47 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !940
  %49 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %46, i32 noundef %48) #24
  %50 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %45, i32 noundef %49) #24
  %51 = getelementptr inbounds %struct._expr, ptr %50, i64 0, i32 6
  store i32 %44, ptr %51, align 4, !tbaa !1322
  tail call void @df_insn_change_bb(ptr noundef %43, ptr noundef nonnull %22) #23
  %52 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !940
  %54 = icmp eq ptr %53, %0
  br i1 %54, label %55, label %42, !llvm.loop !2107

55:                                               ; preds = %42, %38
  %56 = load ptr, ptr %14, align 8, !tbaa !940
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !940
  %59 = getelementptr inbounds %struct.rtl_bb_info, ptr %58, i64 0, i32 1
  store ptr %56, ptr %59, align 8, !tbaa !959
  %60 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !940
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %62, align 8, !tbaa !940
  %63 = load ptr, ptr %60, align 8, !tbaa !940
  store ptr %63, ptr %14, align 8, !tbaa !940
  %64 = load ptr, ptr %57, align 8, !tbaa !940
  %65 = load ptr, ptr %64, align 8, !tbaa !1175
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 13
  br i1 %68, label %69, label %73

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 1
  %71 = load i32, ptr %70, align 8, !tbaa !940
  %72 = icmp eq i32 %71, 10
  br i1 %72, label %76, label %73

73:                                               ; preds = %69, %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4937, ptr noundef nonnull @.str.1) #23
  %74 = load ptr, ptr %57, align 8, !tbaa !940
  %75 = load ptr, ptr %74, align 8, !tbaa !1175
  br label %76

76:                                               ; preds = %69, %73
  %77 = phi ptr [ %65, %69 ], [ %75, %73 ]
  store ptr %77, ptr %60, align 8, !tbaa !940
  %78 = load ptr, ptr %57, align 8, !tbaa !940
  %79 = load ptr, ptr %78, align 8, !tbaa !1175
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !940
  %82 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %81, ptr %82, align 8, !tbaa !940
  %83 = load ptr, ptr %57, align 8, !tbaa !940
  %84 = load ptr, ptr %83, align 8, !tbaa !1175
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %13, ptr %85, align 8, !tbaa !940
  %86 = load ptr, ptr %82, align 8, !tbaa !940
  %87 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %15, ptr %87, align 8, !tbaa !940
  %88 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %5) #23
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %76
  %91 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef nonnull %22) #23
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90, %76
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4944, ptr noundef nonnull @.str.1) #23
  br label %94

94:                                               ; preds = %90, %93
  %95 = load i32, ptr @global_level, align 4, !tbaa !981
  %96 = load ptr, ptr @sel_region_bb_info, align 8
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %98 = load i32, ptr %97, align 8, !tbaa !945
  %99 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %96, i32 noundef %98) #24
  %100 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %99, i64 0, i32 2
  store i32 %95, ptr %100, align 8, !tbaa !1304
  %101 = load ptr, ptr @sel_global_bb_info, align 8
  %102 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %101, i32 noundef %98) #24
  %103 = load ptr, ptr %102, align 8, !tbaa !974
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4950, ptr noundef nonnull @.str.1) #23
  br label %106

106:                                              ; preds = %94, %105
  %107 = tail call ptr @get_clear_regset_from_pool() #23
  %108 = load ptr, ptr @sel_global_bb_info, align 8
  %109 = load i32, ptr %97, align 8, !tbaa !945
  %110 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %108, i32 noundef %109) #24
  store ptr %107, ptr %110, align 8, !tbaa !974
  %111 = tail call ptr @sel_bb_head(ptr noundef nonnull %22) #23
  tail call fastcc void @update_data_sets(ptr noundef %111) #24
  tail call fastcc void @update_data_sets(ptr noundef nonnull %0) #24
  %112 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %113 = icmp sgt i32 %112, 3
  br i1 %113, label %114, label %132

114:                                              ; preds = %106
  %115 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %114
  %118 = load i32, ptr %3, align 8, !tbaa !940
  %119 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.77, i32 noundef %118) #24
  %120 = shl nsw i32 %119, 1
  %121 = or disjoint i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = alloca i8, i64 %122, align 16
  %124 = load i32, ptr %3, align 8, !tbaa !940
  %125 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %123, i64 noundef %122, ptr noundef nonnull @.str.77, i32 noundef %124) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %123) #23
  %126 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %127 = call i32 @fputs(ptr nonnull %123, ptr %126)
  br label %132

128:                                              ; preds = %114
  %129 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %130 = load i32, ptr %3, align 8, !tbaa !940
  %131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef nonnull @.str.77, i32 noundef %130) #24
  br label %132

132:                                              ; preds = %117, %128, %106
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @prepare_place_to_insert(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1004 !PGOFuncName !2108 {
  %2 = getelementptr inbounds %struct._bnd, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1699
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5, !prof !1682

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._list_node, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !940
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 7
  br i1 %10, label %11, label %31, !prof !2109

11:                                               ; preds = %5, %15
  %12 = phi ptr [ %13, %15 ], [ %3, %5 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !1409
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._list_node, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !940
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 7
  br i1 %20, label %11, label %31, !llvm.loop !2110

21:                                               ; preds = %11, %1
  %22 = load ptr, ptr %0, align 8, !tbaa !1622
  %23 = tail call ptr @get_nop_from_pool(ptr noundef %22) #23
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !940
  %26 = load ptr, ptr %0, align 8, !tbaa !1622
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !940
  %29 = icmp eq ptr %25, %28
  br i1 %29, label %31, label %30, !prof !1605

30:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5185, ptr noundef nonnull @.str.1) #23
  br label %31

31:                                               ; preds = %15, %5, %30, %21
  %32 = phi ptr [ %23, %21 ], [ %23, %30 ], [ %7, %5 ], [ %7, %15 ]
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @move_exprs_to_boundary(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1004 !PGOFuncName !2111 {
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.bitmap_iterator, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #25
  %10 = load i32, ptr @stat_bookkeeping_copies, align 4, !tbaa !981
  %11 = tail call i32 @get_max_uid() #23
  store i32 %11, ptr @max_uid_before_move_op, align 4, !tbaa !981
  %12 = load ptr, ptr @current_copies, align 8, !tbaa !955
  tail call void @bitmap_clear(ptr noundef %12) #23
  %13 = load ptr, ptr @current_originators, align 8, !tbaa !955
  tail call void @bitmap_clear(ptr noundef %13) #23
  %14 = load ptr, ptr %0, align 8, !tbaa !1622
  %15 = tail call fastcc ptr @get_dest_from_orig_ops(ptr noundef %2) #24
  %16 = call fastcc zeroext i8 @move_op(ptr noundef %14, ptr noundef %2, ptr noundef %1, ptr noundef %15, ptr noundef %3, ptr noundef nonnull %5) #24
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19, !prof !1137

18:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5216, ptr noundef nonnull @.str.1) #23
  br label %19

19:                                               ; preds = %4, %18
  %20 = load i32, ptr @stat_bookkeeping_copies, align 4, !tbaa !981
  %21 = icmp sgt i32 %20, %10
  br i1 %21, label %22, label %25, !prof !1137

22:                                               ; preds = %19
  %23 = load i32, ptr @stat_insns_needed_bookkeeping, align 4, !tbaa !981
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr @stat_insns_needed_bookkeeping, align 4, !tbaa !981
  br label %25

25:                                               ; preds = %22, %19
  %26 = load ptr, ptr @current_copies, align 8, !tbaa !955
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %7, ptr noundef %26, ptr noundef nonnull %6) #24
  %27 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %6) #24, !range !987
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %84, label %29, !prof !1566

29:                                               ; preds = %25, %81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #25
  %30 = load ptr, ptr @s_i_d, align 8
  %31 = load ptr, ptr @sched_luids, align 8
  %32 = load i32, ptr %6, align 4, !tbaa !981
  %33 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %31, i32 noundef %32) #24
  %34 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %30, i32 noundef %33) #24
  %35 = getelementptr inbounds %struct._sel_insn_data, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !2112
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  %40 = load ptr, ptr @s_i_d, align 8
  %41 = load ptr, ptr @sched_luids, align 8
  %42 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %41, i32 noundef %32) #24
  %43 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %40, i32 noundef %42) #24
  %44 = getelementptr inbounds %struct._sel_insn_data, ptr %43, i64 0, i32 6
  store ptr %39, ptr %44, align 8, !tbaa !2112
  br label %45

45:                                               ; preds = %38, %29
  %46 = phi ptr [ %41, %38 ], [ %31, %29 ]
  %47 = phi ptr [ %40, %38 ], [ %30, %29 ]
  %48 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %46, i32 noundef %32) #24
  %49 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %47, i32 noundef %48) #24
  %50 = getelementptr inbounds %struct._sel_insn_data, ptr %49, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !2112
  %52 = load ptr, ptr @current_originators, align 8, !tbaa !955
  tail call void @bitmap_copy(ptr noundef %51, ptr noundef %52) #23
  %53 = load ptr, ptr @current_originators, align 8, !tbaa !955
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %9, ptr noundef %53, ptr noundef nonnull %8) #24
  %54 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %9, ptr noundef nonnull %8) #24, !range !987
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %45
  %57 = load ptr, ptr @s_i_d, align 8
  %58 = load ptr, ptr @sched_luids, align 8
  br label %59

59:                                               ; preds = %56, %76
  %60 = phi ptr [ %58, %56 ], [ %77, %76 ]
  %61 = phi ptr [ %57, %56 ], [ %78, %76 ]
  %62 = load i32, ptr %8, align 4, !tbaa !981
  %63 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %60, i32 noundef %62) #24
  %64 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %61, i32 noundef %63) #24
  %65 = getelementptr inbounds %struct._sel_insn_data, ptr %64, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !2112
  %67 = icmp eq ptr %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %59
  %69 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %60, i32 noundef %32) #24
  %70 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %61, i32 noundef %69) #24
  %71 = getelementptr inbounds %struct._sel_insn_data, ptr %70, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !2112
  %73 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %72, ptr noundef nonnull %66) #23
  %74 = load ptr, ptr @s_i_d, align 8
  %75 = load ptr, ptr @sched_luids, align 8
  br label %76

76:                                               ; preds = %59, %68
  %77 = phi ptr [ %60, %59 ], [ %75, %68 ]
  %78 = phi ptr [ %61, %59 ], [ %74, %68 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %9, ptr noundef nonnull %8) #24
  %79 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %9, ptr noundef nonnull %8) #24, !range !987
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %59, !llvm.loop !2113

81:                                               ; preds = %76, %45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  call fastcc void @bmp_iter_next(ptr noundef nonnull %7, ptr noundef nonnull %6) #24
  %82 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %6) #24, !range !987
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %29, !prof !1414, !llvm.loop !2114

84:                                               ; preds = %81, %25
  %85 = load i8, ptr %5, align 1, !tbaa !940
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #25
  ret i8 %85
}

; Function Attrs: optsize
declare ptr @sel_move_insn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @return_nop_to_pool(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_temp_moveop_nops(i8 noundef zeroext %0) unnamed_addr #0 !prof !1004 !PGOFuncName !2115 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load ptr, ptr @vec_temp_moveop_nops, align 8
  %4 = call fastcc i32 @VEC_insn_t_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #24, !range !1380
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6, !prof !2116

6:                                                ; preds = %1, %14
  %7 = phi i32 [ %15, %14 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !955
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !940
  %11 = load ptr, ptr @nop_pattern, align 8, !tbaa !955
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %14, label %13, !prof !1148

13:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4972, ptr noundef nonnull @.str.1) #23
  br label %14

14:                                               ; preds = %6, %13
  tail call void @return_nop_to_pool(ptr noundef nonnull %8, i8 noundef zeroext %0) #23
  %15 = add nuw nsw i32 %7, 1
  %16 = load ptr, ptr @vec_temp_moveop_nops, align 8
  %17 = call fastcc i32 @VEC_insn_t_base_iterate(ptr noundef %16, i32 noundef %15, ptr noundef nonnull %2) #24, !range !1380
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %6, !prof !2117, !llvm.loop !2118

19:                                               ; preds = %14, %1
  %20 = phi ptr [ %3, %1 ], [ %16, %14 ]
  %21 = tail call fastcc i32 @VEC_insn_t_base_length(ptr noundef %20) #24
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23, !prof !1147

23:                                               ; preds = %19
  tail call fastcc void @VEC_insn_t_base_block_remove(ptr noundef %20, i32 noundef %21) #24
  br label %24

24:                                               ; preds = %23, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: optsize
declare ptr @find_fallthru_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sel_split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_insn_change_bb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @move_op(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 !prof !1004 !PGOFuncName !2119 {
  %7 = alloca %struct.moveop_static_params, align 8
  %8 = alloca %struct.cmpd_local_params, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #25
  store ptr %3, ptr %7, align 8, !tbaa !1014
  %9 = getelementptr inbounds %struct.moveop_static_params, ptr %7, i64 0, i32 1
  store ptr %4, ptr %9, align 8, !tbaa !1006
  %10 = load ptr, ptr %2, align 8, !tbaa !1057
  %11 = load ptr, ptr %10, align 8, !tbaa !1058
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !940
  %14 = getelementptr inbounds %struct.moveop_static_params, ptr %7, i64 0, i32 2
  store i32 %13, ptr %14, align 8, !tbaa !1008
  %15 = getelementptr inbounds %struct.moveop_static_params, ptr %7, i64 0, i32 3
  store i8 0, ptr %15, align 4, !tbaa !1156
  store ptr null, ptr %8, align 8, !tbaa !1027
  %16 = load ptr, ptr @code_motion_visited_blocks, align 8, !tbaa !955
  tail call void @bitmap_clear(ptr noundef %16) #23
  store ptr @move_op_hooks, ptr @code_motion_path_driver_info, align 8, !tbaa !955
  %17 = call fastcc i32 @code_motion_path_driver(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %7) #24
  %18 = load i8, ptr %15, align 4, !tbaa !1156
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20, !prof !1138

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct._expr, ptr %2, i64 0, i32 12
  %22 = load i8, ptr %21, align 1
  %23 = or i8 %22, 4
  store i8 %23, ptr %21, align 1
  br label %24

24:                                               ; preds = %20, %6
  %25 = trunc i32 %17 to i8
  %26 = load i32, ptr %14, align 8, !tbaa !1008
  %27 = icmp eq i32 %26, -1
  %28 = zext i1 %27 to i8
  store i8 %28, ptr %5, align 1, !tbaa !940
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #25
  ret i8 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_dest_from_orig_ops(ptr noundef %0) unnamed_addr #0 !prof !1004 !PGOFuncName !2120 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._list_iterator, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !955
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef nonnull %2, i8 noundef zeroext 0) #24
  %5 = load ptr, ptr %3, align 8, !tbaa !1054
  %6 = load ptr, ptr %5, align 8, !tbaa !955
  %7 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %6, ptr noundef nonnull %4) #24, !range !987
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %32, label %9, !prof !1565

9:                                                ; preds = %1, %26
  %10 = phi ptr [ %27, %26 ], [ null, %1 ]
  %11 = phi i1 [ true, %26 ], [ false, %1 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !955
  %13 = load ptr, ptr %12, align 8, !tbaa !1057
  %14 = getelementptr inbounds %struct.vinsn_def, ptr %13, i64 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1050
  br i1 %11, label %16, label %26, !prof !1137

16:                                               ; preds = %9
  %17 = icmp eq ptr %10, %15
  br i1 %17, label %26, label %18

18:                                               ; preds = %16
  %19 = icmp ne ptr %10, null
  %20 = icmp ne ptr %15, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = call i32 @rtx_equal_p(ptr noundef nonnull %10, ptr noundef nonnull %15) #23
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %18
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5640, ptr noundef nonnull @.str.1) #23
  br label %26

26:                                               ; preds = %9, %25, %22, %16
  %27 = phi ptr [ %10, %16 ], [ %10, %22 ], [ %10, %25 ], [ %15, %9 ]
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %28 = load ptr, ptr %3, align 8, !tbaa !1054
  %29 = load ptr, ptr %28, align 8, !tbaa !955
  %30 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %29, ptr noundef nonnull %4) #24, !range !987
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %9, !prof !1566, !llvm.loop !2121

32:                                               ; preds = %26, %1
  %33 = phi ptr [ null, %1 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  ret ptr %33
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_insn_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !2122 !PGOFuncName !2123 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !2124

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1195
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !2125

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_insn_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !955
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !955
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_insn_t_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !2122 !PGOFuncName !2126 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !2124

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1195
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_insn_t_base_block_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !prof !1190 !PGOFuncName !2127 {
  %3 = load i32, ptr %0, align 8, !tbaa !1195
  %4 = getelementptr inbounds %struct.VEC_insn_t_base, ptr %0, i64 0, i32 2
  %5 = sub i32 %3, %1
  store i32 %5, ptr %0, align 8, !tbaa !1195
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = zext i32 %5 to i64
  %9 = shl nuw nsw i64 %8, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %7, i64 %9, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @advance_state_on_fence(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1004 !PGOFuncName !2128 {
  %3 = tail call fastcc i32 @recog_memoized(ptr noundef %1) #24
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %39, !prof !2129

5:                                                ; preds = %2
  %6 = load i64, ptr @dfa_state_size, align 8, !tbaa !1561
  %7 = alloca i8, i64 %6, align 16
  %8 = load ptr, ptr @s_i_d, align 8
  %9 = load ptr, ptr @sched_luids, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !940
  %12 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %9, i32 noundef %11) #24
  %13 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %8, i32 noundef %12) #24
  %14 = getelementptr inbounds %struct._sel_insn_data, ptr %13, i64 0, i32 13
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18, !prof !2130

18:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5269, ptr noundef nonnull @.str.1) #23
  %19 = load i64, ptr @dfa_state_size, align 8, !tbaa !1561
  br label %20

20:                                               ; preds = %5, %18
  %21 = phi i64 [ %6, %5 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !1737
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %7, ptr align 1 %23, i64 %21, i1 false)
  %24 = tail call i32 @state_transition(ptr noundef %23, ptr noundef nonnull %1) #23
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %27, label %26, !prof !2130

26:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5274, ptr noundef nonnull @.str.1) #23
  br label %27

27:                                               ; preds = %20, %26
  %28 = load ptr, ptr %22, align 8, !tbaa !1737
  %29 = load i64, ptr @dfa_state_size, align 8, !tbaa !1561
  %30 = call i32 @bcmp(ptr nonnull %7, ptr %28, i64 %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %57, label %32, !prof !1740

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !1673
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 4, !tbaa !1673
  %36 = load i32, ptr @issue_rate, align 4, !tbaa !981
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %57, label %38, !prof !2130

38:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5282, ptr noundef nonnull @.str.1) #23
  br label %57

39:                                               ; preds = %2
  %40 = load ptr, ptr @s_i_d, align 8
  %41 = load ptr, ptr @sched_luids, align 8
  %42 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !940
  %44 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %41, i32 noundef %43) #24
  %45 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %40, i32 noundef %44) #24
  %46 = getelementptr inbounds %struct._sel_insn_data, ptr %45, i64 0, i32 13
  %47 = load i8, ptr %46, align 4
  %48 = lshr i8 %47, 1
  %49 = and i8 %48, 1
  %50 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 13
  %51 = load i8, ptr %50, align 8
  %52 = and i8 %51, 4
  %53 = icmp eq i8 %52, 0
  %54 = icmp ne i8 %49, 0
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %57, !prof !2131

56:                                               ; preds = %39
  tail call fastcc void @advance_one_cycle(ptr noundef nonnull %0) #24
  br label %57

57:                                               ; preds = %27, %38, %32, %39, %56
  %58 = phi i8 [ 1, %56 ], [ %49, %39 ], [ 0, %32 ], [ 0, %38 ], [ 0, %27 ]
  %59 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %64, !prof !1137

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !1737
  tail call fastcc void @debug_state(ptr noundef %63) #24
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, ptr %1, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 7
  br i1 %67, label %72, label %68, !prof !1137

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 13
  %70 = load i8, ptr %69, align 8
  %71 = and i8 %70, -5
  store i8 %71, ptr %69, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, ptr @can_issue_more, align 4, !tbaa !981
  %74 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 11
  store i32 %73, ptr %74, align 8, !tbaa !1612
  ret i8 %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1004 !PGOFuncName !2132 {
  tail call fastcc void @VEC_rtx_gc_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !955
  tail call fastcc void @VEC_rtx_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: optsize
declare i32 @maximal_insn_latency(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_insn_1(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1004 !PGOFuncName !2133 {
  %2 = load ptr, ptr %0, align 8, !tbaa !955
  %3 = tail call fastcc i32 @VEC_rtx_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !2134

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !955
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !1004 !PGOFuncName !2135 {
  %3 = load i32, ptr %0, align 8, !tbaa !1421
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1421
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !955
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !1004 !PGOFuncName !2136 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !2089

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !2137
  %6 = load i32, ptr %0, align 8, !tbaa !1421
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @advance_deps_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ilist_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vinsn_t_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !1634 !PGOFuncName !2138 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !2139

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1439
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vinsn_t_base_block_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !prof !2140 !PGOFuncName !2141 {
  %3 = load i32, ptr %0, align 8, !tbaa !1439
  %4 = getelementptr inbounds %struct.VEC_vinsn_t_base, ptr %0, i64 0, i32 2
  %5 = sub i32 %3, %1
  store i32 %5, ptr %0, align 8, !tbaa !1439
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = zext i32 %5 to i64
  %9 = shl nuw nsw i64 %8, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %7, i64 %9, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @move_fence_to_fences(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extract_new_fences_from(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1411 !PGOFuncName !2142 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.succ_iterator, align 8
  %7 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !955
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #25
  %8 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 4
  call fastcc void @_list_iter_start(ptr noundef nonnull %7, ptr noundef nonnull %9, i8 noundef zeroext 0) #24
  %10 = load ptr, ptr %7, align 8, !tbaa !1054
  %11 = load ptr, ptr %10, align 8, !tbaa !955
  %12 = call fastcc zeroext i8 @_list_iter_cond_x(ptr noundef %11, ptr noundef nonnull %4) #24, !range !987
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %19, !prof !1413

14:                                               ; preds = %3
  call fastcc void @_list_iter_next(ptr noundef nonnull %7) #24
  %15 = load ptr, ptr %7, align 8, !tbaa !1054
  %16 = load ptr, ptr %15, align 8, !tbaa !955
  %17 = call fastcc zeroext i8 @_list_iter_cond_x(ptr noundef %16, ptr noundef nonnull %4) #24, !range !987
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %21, !prof !2143, !llvm.loop !2144

19:                                               ; preds = %3
  %20 = load ptr, ptr %4, align 8
  br label %30

21:                                               ; preds = %14, %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 650, ptr noundef nonnull @.str.1) #23
  call fastcc void @_list_iter_next(ptr noundef nonnull %7) #24
  %22 = load ptr, ptr %7, align 8, !tbaa !1054
  %23 = load ptr, ptr %22, align 8, !tbaa !955
  %24 = call fastcc zeroext i8 @_list_iter_cond_x(ptr noundef %23, ptr noundef nonnull %4) #24, !range !987
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %21, !prof !1414, !llvm.loop !2144

26:                                               ; preds = %21, %14
  %27 = load ptr, ptr %4, align 8
  %28 = icmp ne ptr %27, null
  %29 = select i1 %13, i1 %28, i1 false
  br i1 %29, label %32, label %30, !prof !2145

30:                                               ; preds = %19, %26
  %31 = phi ptr [ %20, %19 ], [ %27, %26 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 653, ptr noundef nonnull @.str.1) #23
  br label %32

32:                                               ; preds = %26, %30
  %33 = phi ptr [ %27, %26 ], [ %31, %30 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !940
  %36 = tail call zeroext i8 @sel_bb_end_p(ptr noundef %33) #23
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %45, label %38, !prof !2146

38:                                               ; preds = %32
  %39 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %35) #24, !range !987
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %108, label %41, !prof !2147

41:                                               ; preds = %38
  %42 = tail call fastcc ptr @single_succ(ptr noundef %35) #24
  %43 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %42) #24, !range !987
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %108, label %45

45:                                               ; preds = %41, %32
  %46 = tail call zeroext i8 @sel_bb_end_p(ptr noundef nonnull %33) #23
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48, !prof !2148

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @single_succ(ptr noundef %35) #24
  %50 = tail call ptr @sel_bb_head(ptr noundef %49) #23
  br label %54

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !940
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi ptr [ %50, %48 ], [ %53, %51 ]
  %56 = load ptr, ptr @s_i_d, align 8
  %57 = load ptr, ptr @sched_luids, align 8
  %58 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !940
  %60 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %57, i32 noundef %59) #24
  %61 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %56, i32 noundef %60) #24
  %62 = getelementptr inbounds %struct._sel_insn_data, ptr %61, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !1154
  %64 = icmp slt i32 %63, 1
  %65 = icmp sgt i32 %63, %2
  %66 = or i1 %64, %65
  br i1 %66, label %188, label %67, !prof !2149

67:                                               ; preds = %54
  %68 = getelementptr inbounds %struct._expr, ptr %61, i64 0, i32 5
  %69 = load i32, ptr %68, align 8, !tbaa !1095
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %188, !prof !2148

71:                                               ; preds = %67
  store ptr %55, ptr %8, align 8, !tbaa !1590
  tail call void @move_fence_to_fences(ptr noundef %0, ptr noundef %1) #23
  %72 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %188, !prof !2150

74:                                               ; preds = %71
  %75 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %98, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !940
  %80 = load i32, ptr %58, align 8, !tbaa !940
  %81 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !940
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 9
  %84 = load i32, ptr %83, align 8, !tbaa !945
  %85 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.81, i32 noundef %79, i32 noundef %80, i32 noundef %84) #24
  %86 = shl nsw i32 %85, 1
  %87 = or disjoint i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = alloca i8, i64 %88, align 16
  %90 = load i32, ptr %78, align 8, !tbaa !940
  %91 = load i32, ptr %58, align 8, !tbaa !940
  %92 = load ptr, ptr %81, align 8, !tbaa !940
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 9
  %94 = load i32, ptr %93, align 8, !tbaa !945
  %95 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %89, i64 noundef %88, ptr noundef nonnull @.str.81, i32 noundef %90, i32 noundef %91, i32 noundef %94) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %89) #23
  %96 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %97 = call i32 @fputs(ptr nonnull %89, ptr %96)
  br label %188

98:                                               ; preds = %74
  %99 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %100 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !940
  %102 = load i32, ptr %58, align 8, !tbaa !940
  %103 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !940
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 9
  %106 = load i32, ptr %105, align 8, !tbaa !945
  %107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.81, i32 noundef %101, i32 noundef %102, i32 noundef %106) #24
  br label %188

108:                                              ; preds = %41, %38
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull %33, i32 noundef 9) #24
  %109 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %33) #24
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %188, label %111, !prof !2151

111:                                              ; preds = %108, %185
  %112 = load ptr, ptr @s_i_d, align 8
  %113 = load ptr, ptr @sched_luids, align 8
  %114 = load ptr, ptr %5, align 8, !tbaa !955
  %115 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !940
  %117 = call fastcc i32 @VEC_int_base_index(ptr noundef %113, i32 noundef %116) #24
  %118 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %112, i32 noundef %117) #24
  %119 = getelementptr inbounds %struct._sel_insn_data, ptr %118, i64 0, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !1154
  %121 = icmp slt i32 %120, 1
  %122 = icmp sgt i32 %120, %2
  %123 = or i1 %121, %122
  br i1 %123, label %185, label %124, !prof !2152

124:                                              ; preds = %111
  %125 = load i8, ptr @pipelining_p, align 1, !tbaa !940
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %131, !prof !2147

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct._expr, ptr %118, i64 0, i32 5
  %129 = load i32, ptr %128, align 8, !tbaa !1095
  %130 = icmp slt i32 %129, 1
  br i1 %130, label %131, label %185, !prof !2147

131:                                              ; preds = %127, %124
  %132 = call zeroext i8 @in_same_ebb_p(ptr noundef %33, ptr noundef nonnull %114) #23
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %137, !prof !2153

134:                                              ; preds = %131
  %135 = call fastcc zeroext i8 @in_fallthru_bb_p(ptr noundef %33, ptr noundef nonnull %114) #24, !range !987
  %136 = icmp ne i8 %135, 0
  br label %137

137:                                              ; preds = %134, %131
  %138 = phi i1 [ true, %131 ], [ %136, %134 ]
  %139 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %176, !prof !2153

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %143 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %166, label %145

145:                                              ; preds = %141
  %146 = load i32, ptr %142, align 8, !tbaa !940
  %147 = load i32, ptr %115, align 8, !tbaa !940
  %148 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !940
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %149, i64 0, i32 9
  %151 = load i32, ptr %150, align 8, !tbaa !945
  %152 = select i1 %138, ptr @.str.83, ptr @.str.84
  %153 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.82, i32 noundef %146, i32 noundef %147, i32 noundef %151, ptr noundef nonnull %152) #24
  %154 = shl nsw i32 %153, 1
  %155 = or disjoint i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = alloca i8, i64 %156, align 16
  %158 = load i32, ptr %142, align 8, !tbaa !940
  %159 = load i32, ptr %115, align 8, !tbaa !940
  %160 = load ptr, ptr %148, align 8, !tbaa !940
  %161 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 9
  %162 = load i32, ptr %161, align 8, !tbaa !945
  %163 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %157, i64 noundef %156, ptr noundef nonnull @.str.82, i32 noundef %158, i32 noundef %159, i32 noundef %162, ptr noundef nonnull %152) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %157) #23
  %164 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %165 = call i32 @fputs(ptr nonnull %157, ptr %164)
  br label %176

166:                                              ; preds = %141
  %167 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %168 = load i32, ptr %142, align 8, !tbaa !940
  %169 = load i32, ptr %115, align 8, !tbaa !940
  %170 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !940
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 9
  %173 = load i32, ptr %172, align 8, !tbaa !945
  %174 = select i1 %138, ptr @.str.83, ptr @.str.84
  %175 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef nonnull @.str.82, i32 noundef %168, i32 noundef %169, i32 noundef %173, ptr noundef nonnull %174) #24
  br label %176

176:                                              ; preds = %145, %166, %137
  br i1 %138, label %177, label %178, !prof !2147

177:                                              ; preds = %176
  call void @add_dirty_fence_to_fences(ptr noundef %1, ptr noundef nonnull %114, ptr noundef nonnull %8) #23
  br label %185

178:                                              ; preds = %176
  %179 = load ptr, ptr @forced_ebb_heads, align 8, !tbaa !955
  %180 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !940
  %182 = getelementptr inbounds %struct.basic_block_def, ptr %181, i64 0, i32 9
  %183 = load i32, ptr %182, align 8, !tbaa !945
  %184 = call zeroext i8 @bitmap_set_bit(ptr noundef %179, i32 noundef %183) #23
  call void @add_clean_fence_to_fences(ptr noundef %1, ptr noundef nonnull %114, ptr noundef nonnull %8) #23
  br label %185

185:                                              ; preds = %177, %178, %127, %111
  call fastcc void @_succ_iter_next(ptr noundef nonnull %6) #24
  %186 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef %33) #24
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %188, label %111, !prof !2154, !llvm.loop !2155

188:                                              ; preds = %185, %108, %54, %67, %77, %98, %71
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: optsize
declare void @flist_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @_list_iter_cond_x(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 !prof !2156 !PGOFuncName !2157 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4, !prof !2158

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !940
  store ptr %6, ptr %1, align 8, !tbaa !955
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i8 [ 1, %4 ], [ 0, %2 ]
  ret i8 %8
}

; Function Attrs: optsize
declare zeroext i8 @in_same_ebb_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @in_fallthru_bb_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !998 !PGOFuncName !2159 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !940
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !940
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @find_fallthru_edge(ptr noundef %4) #23
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @find_fallthru_edge(ptr noundef %4) #23
  %13 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 1
  br label %14

14:                                               ; preds = %14, %11
  %15 = phi ptr [ %13, %11 ], [ %19, %14 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !955
  %17 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %16) #23
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  br i1 %18, label %20, label %14, !llvm.loop !2160

20:                                               ; preds = %14
  %21 = load ptr, ptr %5, align 8, !tbaa !940
  %22 = icmp eq ptr %16, %21
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %8, %2, %20
  %25 = phi i8 [ %23, %20 ], [ 1, %2 ], [ 0, %8 ]
  ret i8 %25
}

; Function Attrs: optsize
declare void @add_dirty_fence_to_fences(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_clean_fence_to_fences(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_data_for_scheduled_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simplify_changed_insns() unnamed_addr #0 !prof !1069 !PGOFuncName !2161 {
  %1 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %60, !prof !1073

3:                                                ; preds = %0, %55
  %4 = phi i32 [ %56, %55 ], [ %1, %0 ]
  %5 = phi i64 [ %57, %55 ], [ 0, %0 ]
  %6 = load ptr, ptr @cfun, align 8, !tbaa !955
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1074
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !1076
  %11 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !955
  %12 = load ptr, ptr @ebb_head, align 8, !tbaa !955
  %13 = getelementptr inbounds i32, ptr %12, i64 %5
  %14 = load i32, ptr %13, align 4, !tbaa !981
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %11, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !981
  %18 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %10, i32 noundef %17) #24
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !940
  %21 = load ptr, ptr %20, align 8, !tbaa !940
  %22 = icmp eq ptr %21, null
  br i1 %22, label %55, label %23, !prof !1056

23:                                               ; preds = %3, %49
  %24 = phi ptr [ %51, %49 ], [ %21, %3 ]
  %25 = load ptr, ptr %19, align 8, !tbaa !940
  %26 = getelementptr inbounds %struct.rtl_bb_info, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !959
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !940
  %30 = icmp eq ptr %24, %29
  br i1 %30, label %53, label %31, !prof !2162

31:                                               ; preds = %23
  %32 = load i32, ptr %24, align 8
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -7
  %35 = icmp ult i32 %34, 4
  br i1 %35, label %36, label %49, !prof !2163

36:                                               ; preds = %31
  %37 = load ptr, ptr @s_i_d, align 8
  %38 = load ptr, ptr @sched_luids, align 8
  %39 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !940
  %41 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %38, i32 noundef %40) #24
  %42 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %37, i32 noundef %41) #24
  %43 = getelementptr inbounds %struct._expr, ptr %42, i64 0, i32 12
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, 2
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47, !prof !1136

47:                                               ; preds = %36
  %48 = tail call zeroext i8 @validate_simplify_insn(ptr noundef nonnull %24) #23
  br label %49

49:                                               ; preds = %31, %36, %47
  %50 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !940
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %23, !prof !2164, !llvm.loop !2165

53:                                               ; preds = %49, %23
  %54 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  br label %55

55:                                               ; preds = %53, %3
  %56 = phi i32 [ %54, %53 ], [ %4, %3 ]
  %57 = add nuw nsw i64 %5, 1
  %58 = sext i32 %56 to i64
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %3, label %60, !prof !2166, !llvm.loop !2167

60:                                               ; preds = %55, %0
  ret void
}

; Function Attrs: optsize
declare void @sched_finish_ready_list() local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_nop_pool() local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_expr_t_heap_free() unnamed_addr #12 !prof !1069 !PGOFuncName !2168 {
  %1 = load ptr, ptr @vec_av_set, align 8, !tbaa !955
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1071

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #24
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @vec_av_set, align 8, !tbaa !955
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @vinsn_vec_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !2169 !PGOFuncName !2170 {
  %2 = load ptr, ptr %0, align 8, !tbaa !955
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !2171

4:                                                ; preds = %1
  tail call fastcc void @VEC_vinsn_t_heap_free(ptr noundef nonnull %0) #24
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_region_target_finish(i8 noundef zeroext %0) unnamed_addr #0 !prof !1069 !PGOFuncName !2172 {
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  %3 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %67, !prof !1073

5:                                                ; preds = %1, %62
  %6 = phi i64 [ %63, %62 ], [ 0, %1 ]
  %7 = trunc i64 %6 to i32
  %8 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %7) #23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %62, !prof !2173

10:                                               ; preds = %5
  %11 = load ptr, ptr @cfun, align 8, !tbaa !955
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1074
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !1076
  %16 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !955
  %17 = load ptr, ptr @ebb_head, align 8, !tbaa !955
  %18 = getelementptr inbounds i32, ptr %17, i64 %6
  %19 = load i32, ptr %18, align 4, !tbaa !981
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %16, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !981
  %23 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %15, i32 noundef %22) #24
  %24 = tail call zeroext i8 @sel_is_loop_preheader_p(ptr noundef %23) #23
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %62, !prof !1070

26:                                               ; preds = %10
  %27 = load ptr, ptr @cfun, align 8, !tbaa !955
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !1074
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !1076
  %32 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !955
  %33 = load ptr, ptr @ebb_head, align 8, !tbaa !955
  %34 = getelementptr inbounds i32, ptr %33, i64 %6
  %35 = load i32, ptr %34, align 4, !tbaa !981
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %32, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !981
  %39 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %31, i32 noundef %38) #24
  tail call fastcc void @find_ebb_boundaries(ptr noundef %39, ptr noundef %2) #24
  %40 = load ptr, ptr @current_sched_info, align 8, !tbaa !955
  %41 = getelementptr inbounds %struct.haifa_sched_info, ptr %40, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !2174
  %43 = getelementptr inbounds %struct.haifa_sched_info, ptr %40, i64 0, i32 11
  %44 = load ptr, ptr %43, align 8, !tbaa !2176
  %45 = tail call i32 @no_real_insns_p(ptr noundef %42, ptr noundef %44) #23
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %62, !prof !1070

47:                                               ; preds = %26
  %48 = icmp eq i8 %0, 0
  br i1 %48, label %50, label %49, !prof !1070

49:                                               ; preds = %47
  tail call fastcc void @reset_sched_cycles_in_current_ebb() #24
  br label %50

50:                                               ; preds = %49, %47
  %51 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 4), align 8, !tbaa !1080
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53, !prof !1070

53:                                               ; preds = %50
  %54 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %55 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  tail call void %51(ptr noundef %54, i32 noundef %55, i32 noundef -1) #23
  br label %56

56:                                               ; preds = %53, %50
  tail call fastcc void @put_TImodes() #24
  %57 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 5), align 8, !tbaa !2177
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59, !prof !1070

59:                                               ; preds = %56
  %60 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %61 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  tail call void %57(ptr noundef %60, i32 noundef %61) #23
  tail call void @sched_init_luids(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #23
  br label %62

62:                                               ; preds = %56, %59, %26, %10, %5
  %63 = add nuw nsw i64 %6, 1
  %64 = load i32, ptr @current_nr_blocks, align 4, !tbaa !981
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %5, label %67, !prof !2166, !llvm.loop !2178

67:                                               ; preds = %62, %1
  tail call void @bitmap_obstack_free(ptr noundef %2) #23
  ret void
}

; Function Attrs: optsize
declare void @sel_finish_global_and_expr() local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_nop_vinsn() local_unnamed_addr #2

; Function Attrs: optsize
declare void @finish_deps_global() local_unnamed_addr #2

; Function Attrs: optsize
declare void @sched_finish_luids() local_unnamed_addr #2

; Function Attrs: optsize
declare void @sel_finish_bbs() local_unnamed_addr #2

; Function Attrs: optsize
declare void @sel_unregister_cfg_hooks() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @validate_simplify_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_vinsn_t_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !2179 !PGOFuncName !2180 {
  %2 = load ptr, ptr %0, align 8, !tbaa !955
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !2181

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !955
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_ebb_boundaries(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1069 !PGOFuncName !2182 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %17, !prof !1071

7:                                                ; preds = %2
  %8 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = alloca [55 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %11, ptr noundef nonnull align 1 dereferenceable(28) @.str.85, i64 28, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %11) #23
  %12 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %13 = call i32 @fputs(ptr nonnull %11, ptr %12)
  br label %17

14:                                               ; preds = %7
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %16 = tail call i64 @fwrite(ptr nonnull @.str.85, i64 27, i64 1, ptr %15)
  br label %17

17:                                               ; preds = %10, %14, %2
  br label %18

18:                                               ; preds = %17, %50
  %19 = phi ptr [ %51, %50 ], [ %0, %17 ]
  %20 = load ptr, ptr @block_to_bb, align 8, !tbaa !955
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !945
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %20, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !981
  %26 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %25) #23
  %27 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %47, !prof !2183

29:                                               ; preds = %18
  %30 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %21, align 8, !tbaa !945
  %34 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.86, i32 noundef %33) #24
  %35 = shl nsw i32 %34, 1
  %36 = or disjoint i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  %39 = load i32, ptr %21, align 8, !tbaa !945
  %40 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %38, i64 noundef %37, ptr noundef nonnull @.str.86, i32 noundef %39) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %38) #23
  %41 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %42 = call i32 @fputs(ptr nonnull %38, ptr %41)
  br label %47

43:                                               ; preds = %29
  %44 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %45 = load i32, ptr %21, align 8, !tbaa !945
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.86, i32 noundef %45) #24
  br label %47

47:                                               ; preds = %18, %43, %32
  %48 = call zeroext i8 @bb_ends_ebb_p(ptr noundef nonnull %19) #23
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %53, !prof !2184

50:                                               ; preds = %47
  %51 = call fastcc ptr @bb_next_bb(ptr noundef nonnull %19) #24
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %18, !prof !2173, !llvm.loop !2185

53:                                               ; preds = %47, %50
  %54 = phi ptr [ %19, %47 ], [ null, %50 ]
  %55 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %67, !prof !1071

57:                                               ; preds = %53
  %58 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = alloca [3 x i8], align 16
  store i16 10, ptr %61, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %61) #23
  %62 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %63 = call i32 @fputs(ptr nonnull %61, ptr %62)
  br label %67

64:                                               ; preds = %57
  %65 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %66 = call i32 @fputc(i32 10, ptr %65)
  br label %67

67:                                               ; preds = %60, %64, %53
  call void @get_ebb_head_tail(ptr noundef %0, ptr noundef %54, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %68 = load ptr, ptr %3, align 8, !tbaa !955
  %69 = load ptr, ptr @current_sched_info, align 8, !tbaa !955
  %70 = getelementptr inbounds %struct.haifa_sched_info, ptr %69, i64 0, i32 10
  store ptr %68, ptr %70, align 8, !tbaa !2174
  %71 = load ptr, ptr %4, align 8, !tbaa !955
  %72 = getelementptr inbounds %struct.haifa_sched_info, ptr %69, i64 0, i32 11
  store ptr %71, ptr %72, align 8, !tbaa !2176
  %73 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1, i32 0, i32 0, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !940
  %75 = getelementptr inbounds %struct.haifa_sched_info, ptr %69, i64 0, i32 8
  store ptr %74, ptr %75, align 8, !tbaa !2186
  %76 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 2
  %77 = load ptr, ptr %76, align 8, !tbaa !940
  %78 = getelementptr inbounds %struct.haifa_sched_info, ptr %69, i64 0, i32 9
  store ptr %77, ptr %78, align 8, !tbaa !2187
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare i32 @no_real_insns_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reset_sched_cycles_in_current_ebb() unnamed_addr #0 !prof !998 !PGOFuncName !2188 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 4), align 8, !tbaa !1080
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %6 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  tail call void %2(ptr noundef %5, i32 noundef %6, i32 noundef -1) #23
  br label %7

7:                                                ; preds = %4, %0
  %8 = load ptr, ptr @curr_state, align 8, !tbaa !955
  tail call void @state_reset(ptr noundef %8) #23
  %9 = load ptr, ptr @curr_state, align 8, !tbaa !955
  tail call void @advance_state(ptr noundef %9) #23
  %10 = load ptr, ptr @current_sched_info, align 8, !tbaa !955
  %11 = getelementptr inbounds %struct.haifa_sched_info, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !940
  %13 = getelementptr inbounds %struct.haifa_sched_info, ptr %10, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !2187
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %192, label %16

16:                                               ; preds = %7, %182
  %17 = phi ptr [ %183, %182 ], [ %10, %7 ]
  %18 = phi ptr [ %188, %182 ], [ %12, %7 ]
  %19 = phi i32 [ %186, %182 ], [ 0, %7 ]
  %20 = phi i32 [ %185, %182 ], [ -1, %7 ]
  %21 = phi i32 [ %184, %182 ], [ 0, %7 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #25
  %22 = load i32, ptr %18, align 8
  %23 = and i32 %22, 65535
  %24 = add nsw i32 %23, -7
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %26, label %182

26:                                               ; preds = %16
  %27 = call fastcc i32 @recog_memoized(ptr noundef nonnull %18) #24
  %28 = icmp sgt i32 %27, -1
  %29 = load ptr, ptr @s_i_d, align 8
  %30 = load ptr, ptr @sched_luids, align 8
  %31 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !940
  %33 = call fastcc i32 @VEC_int_base_index(ptr noundef %30, i32 noundef %32) #24
  %34 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %29, i32 noundef %33) #24
  %35 = getelementptr inbounds %struct._sel_insn_data, ptr %34, i64 0, i32 10
  %36 = load i32, ptr %35, align 8, !tbaa !1692
  %37 = sub nsw i32 %36, %19
  br i1 %28, label %44, label %38

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct._sel_insn_data, ptr %34, i64 0, i32 13
  %40 = load i8, ptr %39, align 4
  %41 = lshr i8 %40, 1
  %42 = and i8 %41, 1
  %43 = zext nneg i8 %42 to i32
  br label %50

44:                                               ; preds = %26
  %45 = load ptr, ptr @curr_state, align 8, !tbaa !955
  %46 = call fastcc i32 @estimate_insn_cost(ptr noundef nonnull %18, ptr noundef %45) #24, !range !1738
  %47 = load ptr, ptr @s_i_d, align 8
  %48 = load ptr, ptr @sched_luids, align 8
  %49 = load i32, ptr %31, align 8, !tbaa !940
  br label %50

50:                                               ; preds = %38, %44
  %51 = phi i32 [ %49, %44 ], [ %32, %38 ]
  %52 = phi ptr [ %48, %44 ], [ %30, %38 ]
  %53 = phi ptr [ %47, %44 ], [ %29, %38 ]
  %54 = phi i32 [ %46, %44 ], [ %43, %38 ]
  %55 = call fastcc i32 @VEC_int_base_index(ptr noundef %52, i32 noundef %51) #24
  %56 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %53, i32 noundef %55) #24
  %57 = getelementptr inbounds %struct._sel_insn_data, ptr %56, i64 0, i32 13
  %58 = load i8, ptr %57, align 4
  %59 = and i8 %58, 4
  %60 = icmp eq i8 %59, 0
  %61 = icmp sle i32 %37, %54
  %62 = select i1 %60, i1 true, i1 %61
  %63 = select i1 %62, i32 %54, i32 %37
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %99

65:                                               ; preds = %50, %93
  %66 = phi i32 [ %68, %93 ], [ %63, %50 ]
  %67 = phi i32 [ %70, %93 ], [ 0, %50 ]
  %68 = add nsw i32 %66, -1
  %69 = load ptr, ptr @curr_state, align 8, !tbaa !955
  call void @advance_state(ptr noundef %69) #23
  %70 = add nuw nsw i32 %67, 1
  %71 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %85

73:                                               ; preds = %65
  %74 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = alloca [67 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(34) %77, ptr noundef nonnull align 1 dereferenceable(34) @.str.87, i64 34, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %77) #23
  %78 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %79 = call i32 @fputs(ptr nonnull %77, ptr %78)
  br label %83

80:                                               ; preds = %73
  %81 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %82 = call i64 @fwrite(ptr nonnull @.str.87, i64 33, i64 1, ptr %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = load ptr, ptr @curr_state, align 8, !tbaa !955
  call fastcc void @debug_state(ptr noundef %84) #24
  br label %85

85:                                               ; preds = %83, %65
  %86 = icmp sgt i32 %66, 1
  %87 = and i1 %28, %86
  %88 = and i1 %62, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load ptr, ptr @curr_state, align 8, !tbaa !955
  %91 = call fastcc i32 @estimate_insn_cost(ptr noundef nonnull %18, ptr noundef %90) #24, !range !1738
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89, %85
  %94 = icmp eq i32 %68, 0
  br i1 %94, label %95, label %65, !llvm.loop !2189

95:                                               ; preds = %89, %93
  %96 = phi i32 [ %70, %89 ], [ %63, %93 ]
  %97 = phi i32 [ %68, %89 ], [ -1, %93 ]
  %98 = add nsw i32 %96, %21
  br label %99

99:                                               ; preds = %50, %95
  %100 = phi i32 [ %97, %95 ], [ 0, %50 ]
  %101 = phi i32 [ %98, %95 ], [ %21, %50 ]
  %102 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %104, label %122

104:                                              ; preds = %99
  %105 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr %31, align 8, !tbaa !940
  %109 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.88, i32 noundef %108, i32 noundef %100) #24
  %110 = shl nsw i32 %109, 1
  %111 = or disjoint i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = alloca i8, i64 %112, align 16
  %114 = load i32, ptr %31, align 8, !tbaa !940
  %115 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %113, i64 noundef %112, ptr noundef nonnull @.str.88, i32 noundef %114, i32 noundef %100) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %113) #23
  %116 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %117 = call i32 @fputs(ptr nonnull %113, ptr %116)
  br label %122

118:                                              ; preds = %104
  %119 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %120 = load i32, ptr %31, align 8, !tbaa !940
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef nonnull @.str.88, i32 noundef %120, i32 noundef %100) #24
  br label %122

122:                                              ; preds = %107, %118, %99
  %123 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 19), align 8, !tbaa !2090
  %124 = icmp eq ptr %123, null
  br i1 %124, label %155, label %125

125:                                              ; preds = %122
  %126 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %127 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %128 = call i32 %123(ptr noundef %126, i32 noundef %127, ptr noundef nonnull %18, i32 noundef %20, i32 noundef %101, ptr noundef nonnull %1) #23
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %155, label %130

130:                                              ; preds = %125, %149
  %131 = phi i32 [ %133, %149 ], [ %101, %125 ]
  %132 = load ptr, ptr @curr_state, align 8, !tbaa !955
  call void @advance_state(ptr noundef %132) #23
  %133 = add nsw i32 %131, 1
  %134 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %136, label %149

136:                                              ; preds = %130
  %137 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = alloca [61 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %140, ptr noundef nonnull align 1 dereferenceable(31) @.str.89, i64 31, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %140) #23
  %141 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %142 = call i32 @fputs(ptr nonnull %140, ptr %141)
  br label %146

143:                                              ; preds = %136
  %144 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %145 = call i64 @fwrite(ptr nonnull @.str.89, i64 30, i64 1, ptr %144)
  br label %146

146:                                              ; preds = %143, %139
  %147 = load ptr, ptr @curr_state, align 8, !tbaa !955
  call fastcc void @debug_state(ptr noundef %147) #24
  %148 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  br label %149

149:                                              ; preds = %146, %130
  %150 = phi i32 [ %148, %146 ], [ %134, %130 ]
  %151 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 19), align 8, !tbaa !2090
  %152 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %153 = call i32 %151(ptr noundef %152, i32 noundef %150, ptr noundef nonnull %18, i32 noundef %20, i32 noundef %133, ptr noundef nonnull %1) #23
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %130, !llvm.loop !2190

155:                                              ; preds = %149, %125, %122
  %156 = phi i32 [ %101, %122 ], [ %101, %125 ], [ %133, %149 ]
  br i1 %28, label %157, label %167

157:                                              ; preds = %155
  %158 = load ptr, ptr @curr_state, align 8, !tbaa !955
  %159 = call i32 @state_transition(ptr noundef %158, ptr noundef nonnull %18) #23
  %160 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %161 = icmp sgt i32 %160, 1
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load ptr, ptr @curr_state, align 8, !tbaa !955
  call fastcc void @debug_state(ptr noundef %163) #24
  br label %164

164:                                              ; preds = %162, %157
  %165 = icmp slt i32 %159, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %164
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7071, ptr noundef nonnull @.str.1) #23
  br label %167

167:                                              ; preds = %166, %164, %155
  %168 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 3), align 8, !tbaa !1749
  %169 = icmp eq ptr %168, null
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %172 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %173 = call i32 %168(ptr noundef %171, i32 noundef %172, ptr noundef nonnull %18, i32 noundef 0) #23
  br label %174

174:                                              ; preds = %170, %167
  %175 = load ptr, ptr @s_i_d, align 8
  %176 = load ptr, ptr @sched_luids, align 8
  %177 = load i32, ptr %31, align 8, !tbaa !940
  %178 = call fastcc i32 @VEC_int_base_index(ptr noundef %176, i32 noundef %177) #24
  %179 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %175, i32 noundef %178) #24
  %180 = getelementptr inbounds %struct._sel_insn_data, ptr %179, i64 0, i32 10
  store i32 %156, ptr %180, align 8, !tbaa !1692
  %181 = load ptr, ptr @current_sched_info, align 8, !tbaa !955
  br label %182

182:                                              ; preds = %16, %174
  %183 = phi ptr [ %181, %174 ], [ %17, %16 ]
  %184 = phi i32 [ %156, %174 ], [ %21, %16 ]
  %185 = phi i32 [ %156, %174 ], [ %20, %16 ]
  %186 = phi i32 [ %36, %174 ], [ %19, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #25
  %187 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %188 = load ptr, ptr %187, align 8, !tbaa !940
  %189 = getelementptr inbounds %struct.haifa_sched_info, ptr %183, i64 0, i32 9
  %190 = load ptr, ptr %189, align 8, !tbaa !2187
  %191 = icmp eq ptr %188, %190
  br i1 %191, label %192, label %16, !llvm.loop !2191

192:                                              ; preds = %182, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @put_TImodes() unnamed_addr #0 !prof !1069 !PGOFuncName !2192 {
  %1 = load ptr, ptr @current_sched_info, align 8, !tbaa !955
  %2 = getelementptr inbounds %struct.haifa_sched_info, ptr %1, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !940
  %4 = getelementptr inbounds %struct.haifa_sched_info, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !2187
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %76, label %7, !prof !1550

7:                                                ; preds = %0, %68
  %8 = phi ptr [ %71, %68 ], [ %3, %0 ]
  %9 = phi i32 [ %69, %68 ], [ -1, %0 ]
  %10 = load i32, ptr %8, align 8
  %11 = and i32 %10, 65535
  %12 = add nsw i32 %11, -7
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %68, !prof !2193

14:                                               ; preds = %7
  %15 = load ptr, ptr @s_i_d, align 8
  %16 = load ptr, ptr @sched_luids, align 8
  %17 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !940
  %19 = call fastcc i32 @VEC_int_base_index(ptr noundef %16, i32 noundef %18) #24
  %20 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %15, i32 noundef %19) #24
  %21 = getelementptr inbounds %struct._sel_insn_data, ptr %20, i64 0, i32 10
  %22 = load i32, ptr %21, align 8, !tbaa !1692
  %23 = icmp eq i32 %9, -1
  %24 = sub nsw i32 %22, %9
  %25 = select i1 %23, i32 1, i32 %24, !prof !2194
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %28, label %27, !prof !1136

27:                                               ; preds = %14
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7102, ptr noundef nonnull @.str.1) #23
  br label %28

28:                                               ; preds = %14, %27
  %29 = load i32, ptr @issue_rate, align 4, !tbaa !981
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %46, !prof !1136

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !940
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65534
  %36 = icmp eq i32 %35, 24
  br i1 %36, label %46, label %37, !prof !2195

37:                                               ; preds = %31
  %38 = load i32, ptr @reload_completed, align 4, !tbaa !981
  %39 = icmp ne i32 %38, 0
  %40 = icmp sgt i32 %25, 0
  %41 = and i1 %40, %39
  br i1 %41, label %42, label %46, !prof !2196

42:                                               ; preds = %37
  %43 = load i32, ptr %8, align 8
  %44 = and i32 %43, -16711681
  %45 = or disjoint i32 %44, 1179648
  store i32 %45, ptr %8, align 8
  br label %46

46:                                               ; preds = %31, %37, %42, %28
  %47 = phi i32 [ %9, %28 ], [ %9, %31 ], [ %22, %42 ], [ %22, %37 ]
  %48 = load i32, ptr @sched_verbose, align 4, !tbaa !981
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %68, !prof !1137

50:                                               ; preds = %46
  %51 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !940
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %17, align 8, !tbaa !940
  %55 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.90, i32 noundef %54, i32 noundef %25) #24
  %56 = shl nsw i32 %55, 1
  %57 = or disjoint i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = alloca i8, i64 %58, align 16
  %60 = load i32, ptr %17, align 8, !tbaa !940
  %61 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %59, i64 noundef %58, ptr noundef nonnull @.str.90, i32 noundef %60, i32 noundef %25) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %59) #23
  %62 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %63 = call i32 @fputs(ptr nonnull %59, ptr %62)
  br label %68

64:                                               ; preds = %50
  %65 = load ptr, ptr @sched_dump, align 8, !tbaa !955
  %66 = load i32, ptr %17, align 8, !tbaa !940
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.90, i32 noundef %66, i32 noundef %25) #24
  br label %68

68:                                               ; preds = %7, %46, %64, %53
  %69 = phi i32 [ %9, %7 ], [ %47, %53 ], [ %47, %64 ], [ %47, %46 ]
  %70 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  %71 = load ptr, ptr %70, align 8, !tbaa !940
  %72 = load ptr, ptr @current_sched_info, align 8, !tbaa !955
  %73 = getelementptr inbounds %struct.haifa_sched_info, ptr %72, i64 0, i32 9
  %74 = load ptr, ptr %73, align 8, !tbaa !2187
  %75 = icmp eq ptr %71, %74
  br i1 %75, label %76, label %7, !prof !2197, !llvm.loop !2198

76:                                               ; preds = %68, %0
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bb_ends_ebb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bb_next_bb(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1329 !PGOFuncName !2199 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1093
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #24
  switch i32 %4, label %22 [
    i32 0, label %5
    i32 1, label %8
    i32 2, label %10
  ], !prof !2200

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !2106
  br label %25

8:                                                ; preds = %1
  %9 = tail call fastcc ptr @single_succ(ptr noundef nonnull %0) #24
  br label %25

10:                                               ; preds = %1
  %11 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %3, i32 noundef 0) #24
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !1094
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !2201

16:                                               ; preds = %10
  %17 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %3, i32 noundef 1) #24
  br label %18

18:                                               ; preds = %10, %16
  %19 = phi ptr [ %17, %16 ], [ %11, %10 ]
  %20 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !989
  br label %25

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !2106
  br label %25

25:                                               ; preds = %22, %18, %8, %5
  %26 = phi ptr [ %24, %22 ], [ %21, %18 ], [ %9, %8 ], [ %7, %5 ]
  ret ptr %26
}

; Function Attrs: optsize
declare void @get_ebb_head_tail(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @state_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @alloc_sched_pools() local_unnamed_addr #2

; Function Attrs: optsize
declare void @setup_sched_dump() local_unnamed_addr #2

; Function Attrs: optsize
declare void @sched_rgn_init(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sched_init() local_unnamed_addr #2

; Function Attrs: optsize
declare void @sched_init_bbs() local_unnamed_addr #2

; Function Attrs: optsize
declare void @sched_extend_target() local_unnamed_addr #2

; Function Attrs: optsize
declare void @setup_nop_and_exit_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare void @sel_extend_global_bb_info() local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_lv_sets() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_hard_regs_data() unnamed_addr #0 !prof !1101 !PGOFuncName !2202 {
  store i64 0, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 4), align 8, !tbaa !1880
  br label %1

1:                                                ; preds = %0, %14
  %2 = phi i64 [ 0, %0 ], [ %15, %14 ]
  %3 = trunc i64 %2 to i32
  %4 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %3) #23
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10, !prof !2203

6:                                                ; preds = %1
  %7 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %2
  %8 = load i8, ptr %7, align 1, !tbaa !940
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10, !prof !2204

10:                                               ; preds = %6, %1
  %11 = shl nuw nsw i64 1, %2
  %12 = load i64, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 4), align 8, !tbaa !1880
  %13 = or i64 %12, %11
  store i64 %13, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 4), align 8, !tbaa !1880
  br label %14

14:                                               ; preds = %6, %10
  %15 = add nuw nsw i64 %2, 1
  %16 = icmp eq i64 %15, 53
  br i1 %16, label %17, label %1, !prof !2205, !llvm.loop !2206

17:                                               ; preds = %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(87) getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 1, i64 0), i8 0, i64 87, i1 false), !tbaa !940
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 2, i64 0), i8 0, i64 424, i1 false), !tbaa !1561
  store i64 65280, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 5), align 8, !tbaa !1969
  ret void
}

; Function Attrs: optsize
declare void @free_bb_note_pool() local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_lv_sets() local_unnamed_addr #2

; Function Attrs: optsize
declare void @sel_finish_global_bb_info() local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_regset_pool() local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_nop_and_exit_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare void @sched_rgn_finish() local_unnamed_addr #2

; Function Attrs: optsize
declare void @sched_deps_finish() local_unnamed_addr #2

; Function Attrs: optsize
declare void @sched_finish() local_unnamed_addr #2

; Function Attrs: optsize
declare void @sel_finish_pipelining() local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_sched_pools() local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind optsize }
attributes #24 = { optsize }
attributes #25 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!938}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937}
!35 = !{ptr @compute_live, ptr @sel_bb_head_p, i64 1348576}
!36 = !{ptr @compute_live, ptr @VEC_sel_global_bb_info_def_base_index, i64 908462}
!37 = !{ptr @compute_live, ptr @in_current_region_p, i64 347388}
!38 = !{ptr @compute_live, ptr @fancy_abort, i64 2}
!39 = !{ptr @compute_live, ptr @VEC_int_base_index, i64 1190642}
!40 = !{ptr @compute_live, ptr @VEC_sel_insn_data_def_base_index, i64 1190642}
!41 = !{ptr @compute_live, ptr @get_regset_from_pool, i64 668987}
!42 = !{ptr @compute_live, ptr @bitmap_copy, i64 1078019}
!43 = !{ptr @compute_live, ptr @compute_live_after_bb, i64 76729}
!44 = !{ptr @compute_live, ptr @propagate_lv_set, i64 377003}
!45 = !{ptr @compute_live, ptr @return_regset_to_pool, i64 745717}
!46 = !{ptr @compute_live_after_bb, ptr @get_clear_regset_from_pool, i64 97205}
!47 = !{ptr @compute_live_after_bb, ptr @fancy_abort, i64 1}
!48 = !{ptr @compute_live_after_bb, ptr @ei_start_1, i64 97205}
!49 = !{ptr @compute_live_after_bb, ptr @ei_cond, i64 289406}
!50 = !{ptr @compute_live_after_bb, ptr @sel_bb_empty_p, i64 192201}
!51 = !{ptr @compute_live_after_bb, ptr @VEC_sel_global_bb_info_def_base_index, i64 1}
!52 = !{ptr @compute_live_after_bb, ptr @sel_bb_head, i64 192200}
!53 = !{ptr @compute_live_after_bb, ptr @compute_live, i64 192200}
!54 = !{ptr @compute_live_after_bb, ptr @bitmap_ior_into, i64 192201}
!55 = !{ptr @compute_live_after_bb, ptr @ei_next, i64 192201}
!56 = !{ptr @propagate_lv_set, ptr @fancy_abort, i64 1}
!57 = !{ptr @propagate_lv_set, ptr @df_simulate_one_insn_backwards, i64 376905}
!58 = !{ptr @move_op_orig_expr_found, ptr @VEC_int_base_index, i64 591920}
!59 = !{ptr @move_op_orig_expr_found, ptr @VEC_sel_insn_data_def_base_index, i64 591920}
!60 = !{ptr @move_op_orig_expr_found, ptr @copy_expr_onside, i64 591920}
!61 = !{ptr @move_op_orig_expr_found, ptr @track_scheduled_insns_and_blocks, i64 591920}
!62 = !{ptr @move_op_orig_expr_found, ptr @handle_emitting_transformations, i64 591920}
!63 = !{ptr @move_op_orig_expr_found, ptr @VEC_expr_history_def_base_length, i64 590468}
!64 = !{ptr @move_op_orig_expr_found, ptr @remove_insn_from_stream, i64 591920}
!65 = !{ptr @move_op_orig_expr_not_found, ptr @lhs_of_insn_equals_to_dest_p, i64 123805}
!66 = !{ptr @move_op_merge_succs, ptr @merge_expr_data, i64 1}
!67 = !{ptr @move_op_merge_succs, ptr @clear_expr, i64 1}
!68 = !{ptr @move_op_ascend, ptr @moveup_expr_cached, i64 123804}
!69 = !{ptr @move_op_ascend, ptr @fancy_abort, i64 1}
!70 = !{ptr @move_op_ascend, ptr @update_liveness_on_insn, i64 123805}
!71 = !{ptr @move_op_at_first_insn, ptr @sel_bb_head_p, i64 19053}
!72 = !{ptr @move_op_at_first_insn, ptr @sel_num_cfg_preds_gt_1, i64 19052}
!73 = !{ptr @move_op_at_first_insn, ptr @update_data_sets, i64 19052}
!74 = !{ptr @move_op_at_first_insn, ptr @generate_bookkeeping_insn, i64 1}
!75 = !{ptr @move_op_at_first_insn, ptr @update_and_record_unavailable_insns, i64 1}
!76 = !{ptr @move_op_at_first_insn, ptr @tidy_control_flow, i64 19053}
!77 = !{ptr @fur_orig_expr_found, ptr @def_list_add, i64 180657}
!78 = !{ptr @fur_orig_expr_found, ptr @get_clear_regset_from_pool, i64 180657}
!79 = !{ptr @fur_orig_expr_found, ptr @compute_live_below_insn, i64 180657}
!80 = !{ptr @fur_orig_expr_found, ptr @VEC_int_base_index, i64 541971}
!81 = !{ptr @fur_orig_expr_found, ptr @VEC_sel_insn_data_def_base_index, i64 541971}
!82 = !{ptr @fur_orig_expr_found, ptr @bitmap_and_compl_into, i64 361314}
!83 = !{ptr @fur_orig_expr_found, ptr @bitmap_ior_into, i64 180657}
!84 = !{ptr @fur_orig_expr_found, ptr @return_regset_to_pool, i64 180657}
!85 = !{ptr @fur_orig_expr_found, ptr @fancy_abort, i64 1}
!86 = !{ptr @fur_orig_expr_not_found, ptr @_list_iter_start, i64 474957}
!87 = !{ptr @fur_orig_expr_not_found, ptr @_list_iter_cond_expr, i64 474958}
!88 = !{ptr @fur_orig_expr_not_found, ptr @sched_insns_conditions_mutex_p, i64 471247}
!89 = !{ptr @fur_orig_expr_not_found, ptr @_list_iter_next, i64 1}
!90 = !{ptr @fur_orig_expr_not_found, ptr @VEC_int_base_index, i64 1413738}
!91 = !{ptr @fur_orig_expr_not_found, ptr @VEC_sel_insn_data_def_base_index, i64 1413738}
!92 = !{ptr @fur_orig_expr_not_found, ptr @bitmap_ior_into, i64 1413738}
!93 = !{ptr @fur_merge_succs, ptr @compute_live, i64 230001}
!94 = !{ptr @fur_merge_succs, ptr @bitmap_ior_into, i64 230001}
!95 = !{ptr @fur_at_first_insn, ptr @sel_bb_head_p, i64 410658}
!96 = !{ptr @fur_at_first_insn, ptr @get_av_level, i64 242240}
!97 = !{ptr @fur_at_first_insn, ptr @fancy_abort, i64 1}
!98 = !{ptr @sel_sched_region, ptr @sel_region_init, i64 138099}
!99 = !{ptr @sel_sched_region, ptr @snprintf, i64 2}
!100 = !{ptr @sel_sched_region, ptr @sel_prepare_string_for_dot_label, i64 1}
!101 = !{ptr @sel_sched_region, ptr @fputs, i64 1}
!102 = !{ptr @sel_sched_region, ptr @sched_is_disabled_for_current_region_p, i64 138098}
!103 = !{ptr @sel_sched_region, ptr @dbg_cnt, i64 138097}
!104 = !{ptr @sel_sched_region, ptr @sel_sched_region_1, i64 138096}
!105 = !{ptr @sel_sched_region, ptr @sel_region_finish, i64 138098}
!106 = !{ptr @sel_region_init, ptr @rgn_setup_region, i64 138099}
!107 = !{ptr @sel_region_init, ptr @current_region_empty_p, i64 138099}
!108 = !{ptr @sel_region_init, ptr @setup_current_loop_nest, i64 1}
!109 = !{ptr @sel_region_init, ptr @sel_setup_region_sched_flags, i64 138098}
!110 = !{ptr @sel_region_init, ptr @VEC_basic_block_heap_alloc, i64 138098}
!111 = !{ptr @sel_region_init, ptr @VEC_basic_block_base_index, i64 187027}
!112 = !{ptr @sel_region_init, ptr @VEC_basic_block_base_quick_push, i64 187026}
!113 = !{ptr @sel_region_init, ptr @sel_init_bbs, i64 138098}
!114 = !{ptr @sel_region_init, ptr @sched_init_luids, i64 138098}
!115 = !{ptr @sel_region_init, ptr @sched_deps_init, i64 138098}
!116 = !{ptr @sel_region_init, ptr @rgn_setup_sched_infos, i64 138098}
!117 = !{ptr @sel_region_init, ptr @sel_set_sched_flags, i64 138098}
!118 = !{ptr @sel_region_init, ptr @haifa_init_h_i_d, i64 138098}
!119 = !{ptr @sel_region_init, ptr @sel_compute_priorities, i64 138098}
!120 = !{ptr @sel_region_init, ptr @init_deps_global, i64 138098}
!121 = !{ptr @sel_region_init, ptr @sel_setup_sched_infos, i64 138098}
!122 = !{ptr @sel_region_init, ptr @sel_init_global_and_expr, i64 138098}
!123 = !{ptr @sel_region_init, ptr @VEC_basic_block_heap_free, i64 138098}
!124 = !{ptr @sel_region_init, ptr @bitmap_obstack_alloc_stat, i64 552392}
!125 = !{ptr @sel_region_init, ptr @sel_is_loop_preheader_p, i64 1}
!126 = !{ptr @sel_region_init, ptr @sel_register_cfg_hooks, i64 138098}
!127 = !{ptr @sel_region_init, ptr @get_max_uid, i64 138098}
!128 = !{ptr @sel_region_init, ptr @bitmap_initialize_stat, i64 138098}
!129 = !{ptr @sel_region_init, ptr @bitmap_clear, i64 138098}
!130 = !{ptr @sel_region_init, ptr @setup_nop_vinsn, i64 138098}
!131 = !{ptr @sel_sched_region_1, ptr @purge_empty_blocks, i64 138099}
!132 = !{ptr @sel_sched_region_1, ptr @init_seqno, i64 138099}
!133 = !{ptr @sel_sched_region_1, ptr @fancy_abort, i64 2}
!134 = !{ptr @sel_sched_region_1, ptr @VEC_basic_block_base_index, i64 138120}
!135 = !{ptr @sel_sched_region_1, ptr @bb_note, i64 138098}
!136 = !{ptr @sel_sched_region_1, ptr @init_fences, i64 138099}
!137 = !{ptr @sel_sched_region_1, ptr @sel_sched_region_2, i64 138099}
!138 = !{ptr @sel_sched_region_1, ptr @sel_bb_empty_p, i64 2}
!139 = !{ptr @sel_sched_region_1, ptr @bitmap_clear_bit, i64 1}
!140 = !{ptr @sel_sched_region_1, ptr @bitmap_bit_p, i64 8}
!141 = !{ptr @sel_sched_region_1, ptr @sel_is_loop_preheader_p, i64 19}
!142 = !{ptr @sel_sched_region_1, ptr @clear_outdated_rtx_info, i64 12}
!143 = !{ptr @sel_region_finish, ptr @simplify_changed_insns, i64 138099}
!144 = !{ptr @sel_region_finish, ptr @sched_finish_ready_list, i64 138099}
!145 = !{ptr @sel_region_finish, ptr @free_nop_pool, i64 138099}
!146 = !{ptr @sel_region_finish, ptr @VEC_expr_t_heap_free, i64 138098}
!147 = !{ptr @sel_region_finish, ptr @bitmap_obstack_free, i64 552396}
!148 = !{ptr @sel_region_finish, ptr @vinsn_vec_free, i64 276198}
!149 = !{ptr @sel_region_finish, ptr @VEC_basic_block_base_index, i64 414297}
!150 = !{ptr @sel_region_finish, ptr @bb_note, i64 414297}
!151 = !{ptr @sel_region_finish, ptr @_succ_iter_start, i64 138099}
!152 = !{ptr @sel_region_finish, ptr @_succ_iter_cond, i64 276198}
!153 = !{ptr @sel_region_finish, ptr @VEC_sel_global_bb_info_def_base_index, i64 138099}
!154 = !{ptr @sel_region_finish, ptr @compute_live, i64 1}
!155 = !{ptr @sel_region_finish, ptr @_succ_iter_next, i64 138099}
!156 = !{ptr @sel_region_finish, ptr @sel_region_target_finish, i64 138098}
!157 = !{ptr @sel_region_finish, ptr @sel_finish_global_and_expr, i64 138099}
!158 = !{ptr @sel_region_finish, ptr @bitmap_clear, i64 138099}
!159 = !{ptr @sel_region_finish, ptr @free_nop_vinsn, i64 138099}
!160 = !{ptr @sel_region_finish, ptr @finish_deps_global, i64 138099}
!161 = !{ptr @sel_region_finish, ptr @sched_finish_luids, i64 138099}
!162 = !{ptr @sel_region_finish, ptr @sel_finish_bbs, i64 138099}
!163 = !{ptr @sel_region_finish, ptr @sel_unregister_cfg_hooks, i64 138099}
!164 = !{ptr @maybe_skip_selective_scheduling, ptr @dbg_cnt, i64 38}
!165 = !{ptr @run_selective_scheduling, ptr @sel_global_init, i64 37}
!166 = !{ptr @run_selective_scheduling, ptr @sel_sched_region, i64 131195}
!167 = !{ptr @run_selective_scheduling, ptr @sel_global_finish, i64 37}
!168 = !{ptr @sel_global_init, ptr @calculate_dominance_info, i64 38}
!169 = !{ptr @sel_global_init, ptr @alloc_sched_pools, i64 38}
!170 = !{ptr @sel_global_init, ptr @sel_setup_sched_infos, i64 38}
!171 = !{ptr @sel_global_init, ptr @setup_sched_dump, i64 38}
!172 = !{ptr @sel_global_init, ptr @sched_rgn_init, i64 38}
!173 = !{ptr @sel_global_init, ptr @sched_init, i64 38}
!174 = !{ptr @sel_global_init, ptr @sched_init_bbs, i64 38}
!175 = !{ptr @sel_global_init, ptr @sched_extend_target, i64 38}
!176 = !{ptr @sel_global_init, ptr @sched_deps_init, i64 38}
!177 = !{ptr @sel_global_init, ptr @setup_nop_and_exit_insns, i64 38}
!178 = !{ptr @sel_global_init, ptr @sel_extend_global_bb_info, i64 38}
!179 = !{ptr @sel_global_init, ptr @init_lv_sets, i64 38}
!180 = !{ptr @sel_global_init, ptr @init_hard_regs_data, i64 38}
!181 = !{ptr @sel_global_finish, ptr @free_bb_note_pool, i64 38}
!182 = !{ptr @sel_global_finish, ptr @free_lv_sets, i64 38}
!183 = !{ptr @sel_global_finish, ptr @sel_finish_global_bb_info, i64 38}
!184 = !{ptr @sel_global_finish, ptr @free_regset_pool, i64 38}
!185 = !{ptr @sel_global_finish, ptr @free_nop_and_exit_insns, i64 38}
!186 = !{ptr @sel_global_finish, ptr @sched_rgn_finish, i64 38}
!187 = !{ptr @sel_global_finish, ptr @sched_deps_finish, i64 38}
!188 = !{ptr @sel_global_finish, ptr @sched_finish, i64 38}
!189 = !{ptr @sel_global_finish, ptr @sel_finish_pipelining, i64 1}
!190 = !{ptr @sel_global_finish, ptr @free_sched_pools, i64 38}
!191 = !{ptr @sel_global_finish, ptr @free_dominance_info, i64 38}
!192 = !{ptr @ei_cond, ptr @ei_end_p, i64 2232986}
!193 = !{ptr @ei_cond, ptr @ei_edge, i64 1463752}
!194 = !{ptr @ei_next, ptr @ei_container, i64 2927503}
!195 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 1463752}
!196 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!197 = !{ptr @ei_end_p, ptr @ei_container, i64 4465971}
!198 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 2232986}
!199 = !{ptr @ei_edge, ptr @ei_container, i64 2927503}
!200 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 1463752}
!201 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!202 = !{ptr @track_scheduled_insns_and_blocks, ptr @bitmap_set_bit, i64 591921}
!203 = !{ptr @track_scheduled_insns_and_blocks, ptr @bitmap_bit_p, i64 591920}
!204 = !{ptr @track_scheduled_insns_and_blocks, ptr @VEC_int_base_index, i64 591919}
!205 = !{ptr @track_scheduled_insns_and_blocks, ptr @VEC_sel_insn_data_def_base_index, i64 591919}
!206 = !{ptr @track_scheduled_insns_and_blocks, ptr @bitmap_clear_bit, i64 1}
!207 = !{ptr @handle_emitting_transformations, ptr @maybe_emit_renaming_copy, i64 591920}
!208 = !{ptr @handle_emitting_transformations, ptr @maybe_emit_speculative_check, i64 591920}
!209 = !{ptr @remove_insn_from_stream, ptr @need_nop_to_preserve_insn_bb, i64 591920}
!210 = !{ptr @remove_insn_from_stream, ptr @get_nop_from_pool, i64 85198}
!211 = !{ptr @remove_insn_from_stream, ptr @fancy_abort, i64 1}
!212 = !{ptr @remove_insn_from_stream, ptr @VEC_insn_t_heap_safe_push, i64 85198}
!213 = !{ptr @remove_insn_from_stream, ptr @sel_remove_insn, i64 591920}
!214 = !{ptr @maybe_emit_renaming_copy, ptr @expr_dest_reg, i64 170800}
!215 = !{ptr @maybe_emit_renaming_copy, ptr @fancy_abort, i64 3}
!216 = !{ptr @maybe_emit_renaming_copy, ptr @rhs_regno, i64 341600}
!217 = !{ptr @maybe_emit_renaming_copy, ptr @VEC_int_base_index, i64 4353}
!218 = !{ptr @maybe_emit_renaming_copy, ptr @VEC_sel_insn_data_def_base_index, i64 4353}
!219 = !{ptr @maybe_emit_renaming_copy, ptr @create_insn_rtx_with_rhs, i64 1451}
!220 = !{ptr @maybe_emit_renaming_copy, ptr @sel_gen_insn_from_rtx_after, i64 1451}
!221 = !{ptr @maybe_emit_renaming_copy, ptr @replace_dest_with_reg_in_expr, i64 1451}
!222 = !{ptr @maybe_emit_speculative_check, ptr @get_spec_check_type_for_insn, i64 591920}
!223 = !{ptr @maybe_emit_speculative_check, ptr @create_speculation_check, i64 1}
!224 = !{ptr @maybe_emit_speculative_check, ptr @VEC_int_base_index, i64 1183839}
!225 = !{ptr @maybe_emit_speculative_check, ptr @VEC_sel_insn_data_def_base_index, i64 1183839}
!226 = !{ptr @maybe_emit_speculative_check, ptr @fancy_abort, i64 2}
!227 = !{ptr @create_insn_rtx_with_rhs, ptr @copy_rtx, i64 1450}
!228 = !{ptr @create_insn_rtx_with_rhs, ptr @gen_rtx_fmt_ee_stat, i64 1450}
!229 = !{ptr @create_insn_rtx_with_rhs, ptr @create_insn_rtx_from_pattern, i64 1450}
!230 = !{ptr @replace_dest_with_reg_in_expr, ptr @create_insn_rtx_with_lhs, i64 4569}
!231 = !{ptr @replace_dest_with_reg_in_expr, ptr @create_vinsn_from_insn_rtx, i64 4569}
!232 = !{ptr @replace_dest_with_reg_in_expr, ptr @change_vinsn_in_expr, i64 4569}
!233 = !{ptr @create_insn_rtx_with_lhs, ptr @copy_rtx, i64 4569}
!234 = !{ptr @create_insn_rtx_with_lhs, ptr @gen_rtx_fmt_ee_stat, i64 4569}
!235 = !{ptr @create_insn_rtx_with_lhs, ptr @create_insn_rtx_from_pattern, i64 4569}
!236 = !{ptr @get_spec_check_type_for_insn, ptr @VEC_int_base_index, i64 591920}
!237 = !{ptr @get_spec_check_type_for_insn, ptr @VEC_sel_insn_data_def_base_index, i64 591920}
!238 = !{ptr @get_spec_check_type_for_insn, ptr @ds_get_speculation_types, i64 591920}
!239 = !{ptr @need_nop_to_preserve_insn_bb, ptr @sel_bb_head, i64 591920}
!240 = !{ptr @need_nop_to_preserve_insn_bb, ptr @sel_bb_end, i64 591920}
!241 = !{ptr @need_nop_to_preserve_insn_bb, ptr @flist_lookup, i64 502764}
!242 = !{ptr @VEC_insn_t_heap_safe_push, ptr @VEC_insn_t_heap_reserve, i64 85197}
!243 = !{ptr @VEC_insn_t_heap_safe_push, ptr @VEC_insn_t_base_quick_push, i64 85197}
!244 = !{ptr @VEC_insn_t_heap_reserve, ptr @VEC_insn_t_base_space, i64 85197}
!245 = !{ptr @VEC_insn_t_heap_reserve, ptr @vec_heap_p_reserve, i64 2}
!246 = !{ptr @moveup_expr_cached, ptr @sel_prepare_string_for_dot_label, i64 7}
!247 = !{ptr @moveup_expr_cached, ptr @fputs, i64 7}
!248 = !{ptr @moveup_expr_cached, ptr @dump_expr, i64 2}
!249 = !{ptr @moveup_expr_cached, ptr @snprintf, i64 2}
!250 = !{ptr @moveup_expr_cached, ptr @sel_bb_head, i64 1}
!251 = !{ptr @moveup_expr_cached, ptr @try_bitmap_cache, i64 3641012}
!252 = !{ptr @moveup_expr_cached, ptr @try_transformation_cache, i64 761863}
!253 = !{ptr @moveup_expr_cached, ptr @vinsn_attach, i64 757676}
!254 = !{ptr @moveup_expr_cached, ptr @moveup_expr, i64 757676}
!255 = !{ptr @moveup_expr_cached, ptr @update_bitmap_cache, i64 756086}
!256 = !{ptr @moveup_expr_cached, ptr @fancy_abort, i64 35082}
!257 = !{ptr @moveup_expr_cached, ptr @insert_in_history_vect, i64 1590}
!258 = !{ptr @moveup_expr_cached, ptr @update_transformation_cache, i64 1590}
!259 = !{ptr @moveup_expr_cached, ptr @vinsn_detach, i64 757676}
!260 = !{ptr @update_liveness_on_insn, ptr @compute_live, i64 142857}
!261 = !{ptr @try_bitmap_cache, ptr @VEC_int_base_index, i64 7282024}
!262 = !{ptr @try_bitmap_cache, ptr @VEC_sel_insn_data_def_base_index, i64 7282024}
!263 = !{ptr @try_bitmap_cache, ptr @bitmap_bit_p, i64 7282024}
!264 = !{ptr @try_bitmap_cache, ptr @sel_prepare_string_for_dot_label, i64 3}
!265 = !{ptr @try_bitmap_cache, ptr @fputs, i64 3}
!266 = !{ptr @try_transformation_cache, ptr @VEC_int_base_index, i64 761862}
!267 = !{ptr @try_transformation_cache, ptr @VEC_sel_insn_data_def_base_index, i64 761862}
!268 = !{ptr @try_transformation_cache, ptr @htab_find_with_hash, i64 761862}
!269 = !{ptr @try_transformation_cache, ptr @insert_in_history_vect, i64 4187}
!270 = !{ptr @try_transformation_cache, ptr @vinsn_copy, i64 1}
!271 = !{ptr @try_transformation_cache, ptr @change_vinsn_in_expr, i64 4187}
!272 = !{ptr @try_transformation_cache, ptr @sel_prepare_string_for_dot_label, i64 2}
!273 = !{ptr @try_transformation_cache, ptr @fputs, i64 2}
!274 = !{ptr @try_transformation_cache, ptr @dump_expr, i64 1}
!275 = !{ptr @moveup_expr, ptr @control_flow_insn_p, i64 916232}
!276 = !{ptr @moveup_expr, ptr @sel_insn_is_speculation_check, i64 158557}
!277 = !{ptr @moveup_expr, ptr @bookkeeping_can_be_created_if_moved_through_p, i64 158554}
!278 = !{ptr @moveup_expr, ptr @fallthru_bb_of_jump, i64 158553}
!279 = !{ptr @moveup_expr, ptr @in_current_region_p, i64 158440}
!280 = !{ptr @moveup_expr, ptr @any_uncondjump_p, i64 50338}
!281 = !{ptr @moveup_expr, ptr @sched_insns_conditions_mutex_p, i64 50337}
!282 = !{ptr @moveup_expr, ptr @fancy_abort, i64 3}
!283 = !{ptr @moveup_expr, ptr @moving_insn_creates_bookkeeping_block_p, i64 1}
!284 = !{ptr @moveup_expr, ptr @has_dependence_p, i64 599121}
!285 = !{ptr @moveup_expr, ptr @sel_insn_has_single_succ_p, i64 120}
!286 = !{ptr @moveup_expr, ptr @can_speculate_dep_p, i64 368325}
!287 = !{ptr @moveup_expr, ptr @speculate_expr, i64 2}
!288 = !{ptr @moveup_expr, ptr @sel_clear_has_dependence, i64 1}
!289 = !{ptr @moveup_expr, ptr @can_substitute_through_p, i64 119649}
!290 = !{ptr @moveup_expr, ptr @substitute_reg_in_expr, i64 1590}
!291 = !{ptr @update_bitmap_cache, ptr @VEC_int_base_index, i64 1512172}
!292 = !{ptr @update_bitmap_cache, ptr @VEC_sel_insn_data_def_base_index, i64 1512172}
!293 = !{ptr @update_bitmap_cache, ptr @bitmap_set_bit, i64 1161186}
!294 = !{ptr @update_bitmap_cache, ptr @bitmap_clear_bit, i64 350986}
!295 = !{ptr @update_bitmap_cache, ptr @fancy_abort, i64 1}
!296 = !{ptr @update_transformation_cache, ptr @xmalloc, i64 1589}
!297 = !{ptr @update_transformation_cache, ptr @vinsn_attach, i64 3178}
!298 = !{ptr @update_transformation_cache, ptr @VEC_int_base_index, i64 1589}
!299 = !{ptr @update_transformation_cache, ptr @VEC_sel_insn_data_def_base_index, i64 1589}
!300 = !{ptr @update_transformation_cache, ptr @htab_find_slot_with_hash, i64 1589}
!301 = !{ptr @can_substitute_through_p, ptr @VEC_int_base_index, i64 102510}
!302 = !{ptr @can_substitute_through_p, ptr @VEC_sel_insn_data_def_base_index, i64 102510}
!303 = !{ptr @substitute_reg_in_expr, ptr @VEC_int_base_index, i64 3177}
!304 = !{ptr @substitute_reg_in_expr, ptr @VEC_sel_insn_data_def_base_index, i64 3177}
!305 = !{ptr @substitute_reg_in_expr, ptr @rtx_ok_for_substitution_p, i64 1589}
!306 = !{ptr @substitute_reg_in_expr, ptr @copy_rtx, i64 1588}
!307 = !{ptr @substitute_reg_in_expr, ptr @create_copy_of_insn_rtx, i64 1588}
!308 = !{ptr @substitute_reg_in_expr, ptr @validate_replace_rtx_part_nosimplify, i64 1588}
!309 = !{ptr @substitute_reg_in_expr, ptr @create_vinsn_from_insn_rtx, i64 1587}
!310 = !{ptr @substitute_reg_in_expr, ptr @change_vinsn_in_expr, i64 1587}
!311 = !{ptr @substitute_reg_in_expr, ptr @expr_dest_regno, i64 1}
!312 = !{ptr @substitute_reg_in_expr, ptr @bitmap_bit_p, i64 1}
!313 = !{ptr @rtx_ok_for_substitution_p, ptr @count_occurrences_equiv, i64 1589}
!314 = !{ptr @count_occurrences_equiv, ptr @for_each_rtx, i64 1589}
!315 = !{ptr @count_occurrences_1, ptr @exp_equiv_p, i64 6142}
!316 = !{ptr @count_occurrences_1, ptr @rhs_regno, i64 1588}
!317 = !{ptr @update_data_sets, ptr @update_liveness_on_insn, i64 19052}
!318 = !{ptr @update_data_sets, ptr @sel_bb_head_p, i64 19052}
!319 = !{ptr @update_data_sets, ptr @get_av_level, i64 19051}
!320 = !{ptr @update_data_sets, ptr @fancy_abort, i64 1}
!321 = !{ptr @update_data_sets, ptr @VEC_sel_region_bb_info_def_base_index, i64 19051}
!322 = !{ptr @update_data_sets, ptr @compute_av_set, i64 19051}
!323 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 48924}
!324 = !{ptr @emit_insn_from_expr_after, ptr @fancy_abort, i64 1}
!325 = !{ptr @emit_insn_from_expr_after, ptr @expr_dest_regno, i64 1449}
!326 = !{ptr @emit_insn_from_expr_after, ptr @df_set_regs_ever_live, i64 1448}
!327 = !{ptr @emit_insn_from_expr_after, ptr @sel_gen_insn_from_expr_after, i64 1450}
!328 = !{ptr @compute_av_set, ptr @compute_av_set_inside_bb, i64 825133}
!329 = !{ptr @compute_av_set_inside_bb, ptr @sel_bb_end, i64 1242099}
!330 = !{ptr @compute_av_set_inside_bb, ptr @is_ineligible_successor, i64 3154902}
!331 = !{ptr @compute_av_set_inside_bb, ptr @get_av_level, i64 4256162}
!332 = !{ptr @compute_av_set_inside_bb, ptr @sel_bb_head_p, i64 1242098}
!333 = !{ptr @compute_av_set_inside_bb, ptr @VEC_sel_region_bb_info_def_base_index, i64 1104962}
!334 = !{ptr @compute_av_set_inside_bb, ptr @snprintf, i64 6}
!335 = !{ptr @compute_av_set_inside_bb, ptr @sel_prepare_string_for_dot_label, i64 5}
!336 = !{ptr @compute_av_set_inside_bb, ptr @fputs, i64 5}
!337 = !{ptr @compute_av_set_inside_bb, ptr @dump_av_set, i64 2}
!338 = !{ptr @compute_av_set_inside_bb, ptr @av_set_copy, i64 603988}
!339 = !{ptr @compute_av_set_inside_bb, ptr @_xlist_add, i64 1100979}
!340 = !{ptr @compute_av_set_inside_bb, ptr @VEC_int_base_index, i64 6025734}
!341 = !{ptr @compute_av_set_inside_bb, ptr @VEC_sel_insn_data_def_base_index, i64 6025734}
!342 = !{ptr @compute_av_set_inside_bb, ptr @av_set_add, i64 3012535}
!343 = !{ptr @compute_av_set_inside_bb, ptr @compute_av_set_at_bb_end, i64 1100199}
!344 = !{ptr @compute_av_set_inside_bb, ptr @moveup_set_expr, i64 3012420}
!345 = !{ptr @compute_av_set_inside_bb, ptr @av_set_lookup, i64 3012420}
!346 = !{ptr @compute_av_set_inside_bb, ptr @clear_expr, i64 1}
!347 = !{ptr @compute_av_set_inside_bb, ptr @copy_expr, i64 1}
!348 = !{ptr @compute_av_set_inside_bb, ptr @av_set_clear, i64 481922}
!349 = !{ptr @compute_av_set_inside_bb, ptr @_list_remove, i64 1100979}
!350 = !{ptr @is_ineligible_successor, ptr @fancy_abort, i64 2}
!351 = !{ptr @is_ineligible_successor, ptr @VEC_int_base_index, i64 12891677}
!352 = !{ptr @is_ineligible_successor, ptr @VEC_sel_insn_data_def_base_index, i64 12891677}
!353 = !{ptr @is_ineligible_successor, ptr @_xlist_is_in_p, i64 1}
!354 = !{ptr @is_ineligible_successor, ptr @flist_lookup, i64 2578334}
!355 = !{ptr @_xlist_add, ptr @_list_add, i64 4582086}
!356 = !{ptr @compute_av_set_at_bb_end, ptr @sel_bb_end_p, i64 1100204}
!357 = !{ptr @compute_av_set_at_bb_end, ptr @fancy_abort, i64 9}
!358 = !{ptr @compute_av_set_at_bb_end, ptr @compute_succs_info, i64 1100204}
!359 = !{ptr @compute_av_set_at_bb_end, ptr @snprintf, i64 4}
!360 = !{ptr @compute_av_set_at_bb_end, ptr @sel_prepare_string_for_dot_label, i64 4}
!361 = !{ptr @compute_av_set_at_bb_end, ptr @fputs, i64 4}
!362 = !{ptr @compute_av_set_at_bb_end, ptr @dump_insn_vector, i64 1}
!363 = !{ptr @compute_av_set_at_bb_end, ptr @_xlist_add, i64 1100204}
!364 = !{ptr @compute_av_set_at_bb_end, ptr @VEC_rtx_base_iterate, i64 4330647}
!365 = !{ptr @compute_av_set_at_bb_end, ptr @compute_av_set_inside_bb, i64 416967}
!366 = !{ptr @compute_av_set_at_bb_end, ptr @VEC_int_base_index, i64 416967}
!367 = !{ptr @compute_av_set_at_bb_end, ptr @av_set_split_usefulness, i64 416967}
!368 = !{ptr @compute_av_set_at_bb_end, ptr @_list_iter_start, i64 1027755}
!369 = !{ptr @compute_av_set_at_bb_end, ptr @_list_iter_cond_expr, i64 1726909}
!370 = !{ptr @compute_av_set_at_bb_end, ptr @av_set_is_in_p, i64 699154}
!371 = !{ptr @compute_av_set_at_bb_end, ptr @av_set_iter_remove, i64 7}
!372 = !{ptr @compute_av_set_at_bb_end, ptr @_list_iter_next, i64 699154}
!373 = !{ptr @compute_av_set_at_bb_end, ptr @av_set_copy, i64 416965}
!374 = !{ptr @compute_av_set_at_bb_end, ptr @av_set_union_and_clear, i64 416967}
!375 = !{ptr @compute_av_set_at_bb_end, ptr @VEC_sel_global_bb_info_def_base_index, i64 1713485}
!376 = !{ptr @compute_av_set_at_bb_end, ptr @VEC_sel_region_bb_info_def_base_index, i64 20}
!377 = !{ptr @compute_av_set_at_bb_end, ptr @mark_unavailable_targets, i64 1713477}
!378 = !{ptr @compute_av_set_at_bb_end, ptr @av_set_clear, i64 1027754}
!379 = !{ptr @compute_av_set_at_bb_end, ptr @av_set_substract_cond_branches, i64 1027754}
!380 = !{ptr @compute_av_set_at_bb_end, ptr @_list_remove, i64 1100204}
!381 = !{ptr @compute_av_set_at_bb_end, ptr @free_succs_info, i64 1100204}
!382 = !{ptr @compute_av_set_at_bb_end, ptr @dump_av_set, i64 1}
!383 = !{ptr @moveup_set_expr, ptr @_list_iter_start, i64 3012427}
!384 = !{ptr @moveup_set_expr, ptr @_list_iter_cond_expr, i64 6529634}
!385 = !{ptr @moveup_set_expr, ptr @moveup_expr_cached, i64 3517207}
!386 = !{ptr @moveup_set_expr, ptr @av_set_iter_remove, i64 2078231}
!387 = !{ptr @moveup_set_expr, ptr @merge_with_other_exprs, i64 5776}
!388 = !{ptr @moveup_set_expr, ptr @fancy_abort, i64 1}
!389 = !{ptr @moveup_set_expr, ptr @_list_iter_next, i64 3517207}
!390 = !{ptr @_list_remove, ptr @pool_free, i64 4177757}
!391 = !{ptr @_list_add, ptr @_list_alloc, i64 4582086}
!392 = !{ptr @_list_alloc, ptr @pool_alloc, i64 4582086}
!393 = !{ptr @vinsn_vec_add, ptr @vinsn_attach, i64 1450}
!394 = !{ptr @vinsn_vec_add, ptr @VEC_vinsn_t_heap_safe_push, i64 1450}
!395 = !{ptr @VEC_vinsn_t_heap_safe_push, ptr @VEC_vinsn_t_heap_reserve, i64 1450}
!396 = !{ptr @VEC_vinsn_t_heap_safe_push, ptr @VEC_vinsn_t_base_quick_push, i64 1450}
!397 = !{ptr @VEC_vinsn_t_heap_reserve, ptr @VEC_vinsn_t_base_space, i64 1450}
!398 = !{ptr @VEC_vinsn_t_heap_reserve, ptr @vec_heap_p_reserve, i64 1405}
!399 = !{ptr @compute_live_below_insn, ptr @_succ_iter_start, i64 180657}
!400 = !{ptr @compute_live_below_insn, ptr @_succ_iter_cond, i64 361314}
!401 = !{ptr @compute_live_below_insn, ptr @compute_live, i64 180657}
!402 = !{ptr @compute_live_below_insn, ptr @bitmap_ior_into, i64 180657}
!403 = !{ptr @compute_live_below_insn, ptr @_succ_iter_next, i64 180657}
!404 = !{ptr @_succ_iter_start, ptr @fancy_abort, i64 2}
!405 = !{ptr @_succ_iter_start, ptr @ei_start_1, i64 672030}
!406 = !{ptr @_succ_iter_cond, ptr @VEC_edge_base_iterate, i64 1344213}
!407 = !{ptr @_succ_iter_cond, ptr @_eligible_successor_edge_p, i64 2183039}
!408 = !{ptr @_succ_iter_cond, ptr @VEC_edge_heap_free, i64 42007}
!409 = !{ptr @_succ_iter_cond, ptr @ei_cond, i64 1787156}
!410 = !{ptr @_succ_iter_cond, ptr @in_current_region_p, i64 1}
!411 = !{ptr @_succ_iter_cond, ptr @ei_next, i64 447304}
!412 = !{ptr @_succ_iter_cond, ptr @sel_bb_head, i64 950964}
!413 = !{ptr @_succ_iter_cond, ptr @bb_note, i64 28951}
!414 = !{ptr @_succ_iter_cond, ptr @fancy_abort, i64 4}
!415 = !{ptr @_eligible_successor_edge_p, ptr @in_current_region_p, i64 2543101}
!416 = !{ptr @_eligible_successor_edge_p, ptr @fancy_abort, i64 1}
!417 = !{ptr @_eligible_successor_edge_p, ptr @sel_bb_empty_p, i64 1271551}
!418 = !{ptr @_eligible_successor_edge_p, ptr @sel_bb_empty_or_nop_p, i64 1271550}
!419 = !{ptr @_eligible_successor_edge_p, ptr @VEC_edge_base_index, i64 2}
!420 = !{ptr @_eligible_successor_edge_p, ptr @VEC_edge_base_length, i64 1}
!421 = !{ptr @_succ_iter_next, ptr @fancy_abort, i64 1}
!422 = !{ptr @_succ_iter_next, ptr @ei_next, i64 625830}
!423 = !{ptr @sel_bb_empty_or_nop_p, ptr @sel_bb_head, i64 1271550}
!424 = !{ptr @sel_bb_empty_or_nop_p, ptr @sel_bb_end, i64 1}
!425 = !{ptr @current_region_empty_p, ptr @VEC_basic_block_base_index, i64 137021}
!426 = !{ptr @current_region_empty_p, ptr @sel_bb_empty_p, i64 137021}
!427 = !{ptr @VEC_basic_block_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 138099}
!428 = !{ptr @sel_compute_priorities, ptr @sched_rgn_compute_dependencies, i64 138099}
!429 = !{ptr @sel_compute_priorities, ptr @compute_priorities, i64 138099}
!430 = !{ptr @sel_compute_priorities, ptr @debug_rgn_dependencies, i64 1}
!431 = !{ptr @sel_compute_priorities, ptr @free_rgn_deps, i64 138099}
!432 = !{ptr @VEC_basic_block_heap_free, ptr @free, i64 138098}
!433 = !{ptr @init_seqno, ptr @sbitmap_alloc, i64 138099}
!434 = !{ptr @init_seqno, ptr @sbitmap_ones, i64 1}
!435 = !{ptr @init_seqno, ptr @bmp_iter_set_init, i64 1}
!436 = !{ptr @init_seqno, ptr @bmp_iter_set, i64 21}
!437 = !{ptr @init_seqno, ptr @fancy_abort, i64 11}
!438 = !{ptr @init_seqno, ptr @RESET_BIT, i64 20}
!439 = !{ptr @init_seqno, ptr @bmp_iter_next, i64 20}
!440 = !{ptr @init_seqno, ptr @sbitmap_zero, i64 138098}
!441 = !{ptr @init_seqno, ptr @VEC_basic_block_base_index, i64 138098}
!442 = !{ptr @init_seqno, ptr @init_seqno_1, i64 138099}
!443 = !{ptr @init_seqno, ptr @free, i64 276198}
!444 = !{ptr @sel_sched_region_2, ptr @find_min_max_seqno, i64 401182}
!445 = !{ptr @sel_sched_region_2, ptr @schedule_on_fences, i64 401182}
!446 = !{ptr @sel_sched_region_2, ptr @calculate_new_fences, i64 401182}
!447 = !{ptr @sel_sched_region_2, ptr @update_seqnos_and_stage, i64 401182}
!448 = !{ptr @sel_sched_region_2, ptr @snprintf, i64 2}
!449 = !{ptr @sel_sched_region_2, ptr @sel_prepare_string_for_dot_label, i64 1}
!450 = !{ptr @sel_sched_region_2, ptr @fputs, i64 1}
!451 = !{ptr @init_seqno_1, ptr @bb_note, i64 187028}
!452 = !{ptr @init_seqno_1, ptr @SET_BIT, i64 187028}
!453 = !{ptr @init_seqno_1, ptr @bitmap_clear_bit, i64 1}
!454 = !{ptr @init_seqno_1, ptr @_succ_iter_start, i64 187028}
!455 = !{ptr @init_seqno_1, ptr @_succ_iter_cond, i64 235958}
!456 = !{ptr @init_seqno_1, ptr @in_current_region_p, i64 48930}
!457 = !{ptr @init_seqno_1, ptr @fancy_abort, i64 2}
!458 = !{ptr @init_seqno_1, ptr @init_seqno_1, i64 48929}
!459 = !{ptr @init_seqno_1, ptr @_succ_iter_next, i64 48930}
!460 = !{ptr @init_seqno_1, ptr @VEC_int_base_index, i64 590468}
!461 = !{ptr @init_seqno_1, ptr @VEC_sel_insn_data_def_base_index, i64 590468}
!462 = !{ptr @find_min_max_seqno, ptr @VEC_int_base_index, i64 401185}
!463 = !{ptr @find_min_max_seqno, ptr @VEC_sel_insn_data_def_base_index, i64 401185}
!464 = !{ptr @schedule_on_fences, ptr @sel_prepare_string_for_dot_label, i64 2}
!465 = !{ptr @schedule_on_fences, ptr @fputs, i64 2}
!466 = !{ptr @schedule_on_fences, ptr @dump_flist, i64 1}
!467 = !{ptr @schedule_on_fences, ptr @VEC_int_base_index, i64 401184}
!468 = !{ptr @schedule_on_fences, ptr @VEC_sel_insn_data_def_base_index, i64 401184}
!469 = !{ptr @schedule_on_fences, ptr @fancy_abort, i64 1}
!470 = !{ptr @schedule_on_fences, ptr @fill_insns, i64 401184}
!471 = !{ptr @schedule_on_fences, ptr @vinsn_vec_clear, i64 802368}
!472 = !{ptr @calculate_new_fences, ptr @flist_tail_init, i64 401184}
!473 = !{ptr @calculate_new_fences, ptr @VEC_int_base_index, i64 131920}
!474 = !{ptr @calculate_new_fences, ptr @VEC_sel_insn_data_def_base_index, i64 131920}
!475 = !{ptr @calculate_new_fences, ptr @fancy_abort, i64 2}
!476 = !{ptr @calculate_new_fences, ptr @snprintf, i64 2}
!477 = !{ptr @calculate_new_fences, ptr @sel_prepare_string_for_dot_label, i64 1}
!478 = !{ptr @calculate_new_fences, ptr @fputs, i64 1}
!479 = !{ptr @calculate_new_fences, ptr @move_fence_to_fences, i64 131920}
!480 = !{ptr @calculate_new_fences, ptr @extract_new_fences_from, i64 131165}
!481 = !{ptr @calculate_new_fences, ptr @flist_clear, i64 401184}
!482 = !{ptr @update_seqnos_and_stage, ptr @VEC_int_base_index, i64 2045024}
!483 = !{ptr @update_seqnos_and_stage, ptr @VEC_sel_insn_data_def_base_index, i64 2045024}
!484 = !{ptr @update_seqnos_and_stage, ptr @fancy_abort, i64 3}
!485 = !{ptr @update_seqnos_and_stage, ptr @_list_iter_start, i64 401184}
!486 = !{ptr @update_seqnos_and_stage, ptr @_list_iter_cond_x, i64 993104}
!487 = !{ptr @update_seqnos_and_stage, ptr @free_data_for_scheduled_insn, i64 591919}
!488 = !{ptr @update_seqnos_and_stage, ptr @_list_iter_next, i64 591920}
!489 = !{ptr @update_seqnos_and_stage, ptr @_list_clear, i64 401184}
!490 = !{ptr @fill_insns, ptr @snprintf, i64 2}
!491 = !{ptr @fill_insns, ptr @sel_prepare_string_for_dot_label, i64 1}
!492 = !{ptr @fill_insns, ptr @fputs, i64 1}
!493 = !{ptr @fill_insns, ptr @blist_add, i64 401184}
!494 = !{ptr @fill_insns, ptr @set_target_context, i64 401184}
!495 = !{ptr @fill_insns, ptr @compute_av_set_on_boundaries, i64 709492}
!496 = !{ptr @fill_insns, ptr @remove_insns_that_need_bookkeeping, i64 709492}
!497 = !{ptr @fill_insns, ptr @remove_insns_for_debug, i64 709492}
!498 = !{ptr @fill_insns, ptr @find_best_expr, i64 1160509}
!499 = !{ptr @fill_insns, ptr @stall_for_cycles, i64 707717}
!500 = !{ptr @fill_insns, ptr @av_set_clear, i64 709491}
!501 = !{ptr @fill_insns, ptr @av_set_is_in_p, i64 799945}
!502 = !{ptr @fill_insns, ptr @schedule_expr_on_boundary, i64 452792}
!503 = !{ptr @fill_insns, ptr @update_fence_and_insn, i64 452792}
!504 = !{ptr @fill_insns, ptr @update_boundaries, i64 452792}
!505 = !{ptr @fill_insns, ptr @_xlist_add, i64 583956}
!506 = !{ptr @fill_insns, ptr @sel_bb_end_p, i64 452792}
!507 = !{ptr @fill_insns, ptr @fancy_abort, i64 1}
!508 = !{ptr @fill_insns, ptr @_xlist_is_in_p, i64 131165}
!509 = !{ptr @fill_insns, ptr @blist_remove, i64 263085}
!510 = !{ptr @fill_insns, ptr @reset_target_context, i64 401184}
!511 = !{ptr @vinsn_vec_clear, ptr @VEC_vinsn_t_base_length, i64 802368}
!512 = !{ptr @vinsn_vec_clear, ptr @VEC_vinsn_t_base_iterate, i64 2899}
!513 = !{ptr @vinsn_vec_clear, ptr @vinsn_detach, i64 1451}
!514 = !{ptr @vinsn_vec_clear, ptr @VEC_vinsn_t_base_block_remove, i64 1448}
!515 = !{ptr @compute_av_set_on_boundaries, ptr @sel_prepare_string_for_dot_label, i64 4}
!516 = !{ptr @compute_av_set_on_boundaries, ptr @fputs, i64 4}
!517 = !{ptr @compute_av_set_on_boundaries, ptr @dump_blist, i64 1}
!518 = !{ptr @compute_av_set_on_boundaries, ptr @sel_bb_head_p, i64 806082}
!519 = !{ptr @compute_av_set_on_boundaries, ptr @VEC_int_base_index, i64 806082}
!520 = !{ptr @compute_av_set_on_boundaries, ptr @VEC_sel_insn_data_def_base_index, i64 806082}
!521 = !{ptr @compute_av_set_on_boundaries, ptr @fancy_abort, i64 2}
!522 = !{ptr @compute_av_set_on_boundaries, ptr @av_set_clear, i64 1612162}
!523 = !{ptr @compute_av_set_on_boundaries, ptr @compute_av_set, i64 806081}
!524 = !{ptr @compute_av_set_on_boundaries, ptr @av_set_copy, i64 1612162}
!525 = !{ptr @compute_av_set_on_boundaries, ptr @moveup_set_inside_insn_group, i64 806081}
!526 = !{ptr @compute_av_set_on_boundaries, ptr @av_set_union_and_clear, i64 806081}
!527 = !{ptr @compute_av_set_on_boundaries, ptr @dump_av_set, i64 1}
!528 = !{ptr @remove_insns_that_need_bookkeeping, ptr @_list_iter_start, i64 806081}
!529 = !{ptr @remove_insns_that_need_bookkeeping, ptr @_list_iter_cond_expr, i64 1938509}
!530 = !{ptr @remove_insns_that_need_bookkeeping, ptr @control_flow_insn_p, i64 1132428}
!531 = !{ptr @remove_insns_that_need_bookkeeping, ptr @VEC_basic_block_base_index, i64 93454}
!532 = !{ptr @remove_insns_that_need_bookkeeping, ptr @dominated_by_p, i64 93454}
!533 = !{ptr @remove_insns_that_need_bookkeeping, ptr @snprintf, i64 2}
!534 = !{ptr @remove_insns_that_need_bookkeeping, ptr @sel_prepare_string_for_dot_label, i64 1}
!535 = !{ptr @remove_insns_that_need_bookkeeping, ptr @fputs, i64 1}
!536 = !{ptr @remove_insns_that_need_bookkeeping, ptr @fprintf, i64 1}
!537 = !{ptr @remove_insns_that_need_bookkeeping, ptr @av_set_iter_remove, i64 3}
!538 = !{ptr @remove_insns_that_need_bookkeeping, ptr @_list_iter_next, i64 1132428}
!539 = !{ptr @remove_insns_for_debug, ptr @dbg_cnt, i64 806081}
!540 = !{ptr @remove_insns_for_debug, ptr @fancy_abort, i64 1}
!541 = !{ptr @remove_insns_for_debug, ptr @_list_iter_start, i64 1}
!542 = !{ptr @remove_insns_for_debug, ptr @_list_iter_cond_expr, i64 21}
!543 = !{ptr @remove_insns_for_debug, ptr @av_set_iter_remove, i64 12}
!544 = !{ptr @remove_insns_for_debug, ptr @_list_iter_next, i64 20}
!545 = !{ptr @find_best_expr, ptr @fill_ready_list, i64 1182361}
!546 = !{ptr @find_best_expr, ptr @invoke_reorder_hooks, i64 715938}
!547 = !{ptr @find_best_expr, ptr @invoke_dfa_lookahead_guard, i64 715937}
!548 = !{ptr @find_best_expr, ptr @calculate_privileged_insns, i64 715937}
!549 = !{ptr @find_best_expr, ptr @choose_best_insn, i64 715937}
!550 = !{ptr @find_best_expr, ptr @find_expr_for_ready, i64 591851}
!551 = !{ptr @find_best_expr, ptr @invoke_aftermath_hooks, i64 591920}
!552 = !{ptr @find_best_expr, ptr @dump_expr, i64 1}
!553 = !{ptr @stall_for_cycles, ptr @advance_one_cycle, i64 872211}
!554 = !{ptr @schedule_expr_on_boundary, ptr @find_sequential_best_exprs, i64 591920}
!555 = !{ptr @schedule_expr_on_boundary, ptr @vinsn_cond_branch_p, i64 591920}
!556 = !{ptr @schedule_expr_on_boundary, ptr @sel_insn_is_speculation_check, i64 1}
!557 = !{ptr @schedule_expr_on_boundary, ptr @prepare_place_to_insert, i64 591920}
!558 = !{ptr @schedule_expr_on_boundary, ptr @move_exprs_to_boundary, i64 591920}
!559 = !{ptr @schedule_expr_on_boundary, ptr @clear_expr, i64 591920}
!560 = !{ptr @schedule_expr_on_boundary, ptr @vinsn_copy, i64 1}
!561 = !{ptr @schedule_expr_on_boundary, ptr @change_vinsn_in_expr, i64 1}
!562 = !{ptr @schedule_expr_on_boundary, ptr @sel_move_insn, i64 590469}
!563 = !{ptr @schedule_expr_on_boundary, ptr @emit_insn_from_expr_after, i64 1451}
!564 = !{ptr @schedule_expr_on_boundary, ptr @return_nop_to_pool, i64 269264}
!565 = !{ptr @schedule_expr_on_boundary, ptr @remove_temp_moveop_nops, i64 591920}
!566 = !{ptr @schedule_expr_on_boundary, ptr @av_set_clear, i64 591920}
!567 = !{ptr @schedule_expr_on_boundary, ptr @VEC_int_base_index, i64 1451}
!568 = !{ptr @schedule_expr_on_boundary, ptr @VEC_sel_insn_data_def_base_index, i64 1451}
!569 = !{ptr @schedule_expr_on_boundary, ptr @vinsn_vec_add, i64 1451}
!570 = !{ptr @schedule_expr_on_boundary, ptr @loop_latch_edge, i64 1}
!571 = !{ptr @update_fence_and_insn, ptr @advance_state_on_fence, i64 591920}
!572 = !{ptr @update_fence_and_insn, ptr @VEC_rtx_gc_safe_push, i64 591920}
!573 = !{ptr @update_fence_and_insn, ptr @VEC_int_base_index, i64 4143441}
!574 = !{ptr @update_fence_and_insn, ptr @VEC_sel_insn_data_def_base_index, i64 4143441}
!575 = !{ptr @update_fence_and_insn, ptr @maximal_insn_latency, i64 591852}
!576 = !{ptr @update_fence_and_insn, ptr @advance_one_cycle, i64 2256}
!577 = !{ptr @update_fence_and_insn, ptr @sel_prepare_string_for_dot_label, i64 2}
!578 = !{ptr @update_fence_and_insn, ptr @fputs, i64 2}
!579 = !{ptr @update_fence_and_insn, ptr @dump_insn_1, i64 1}
!580 = !{ptr @update_boundaries, ptr @advance_deps_context, i64 591920}
!581 = !{ptr @update_boundaries, ptr @_succ_iter_start, i64 591920}
!582 = !{ptr @update_boundaries, ptr @_succ_iter_cond, i64 1045741}
!583 = !{ptr @update_boundaries, ptr @ilist_copy, i64 453821}
!584 = !{ptr @update_boundaries, ptr @_xlist_add, i64 453821}
!585 = !{ptr @update_boundaries, ptr @sel_bb_end_p, i64 385809}
!586 = !{ptr @update_boundaries, ptr @is_ineligible_successor, i64 1}
!587 = !{ptr @update_boundaries, ptr @snprintf, i64 2}
!588 = !{ptr @update_boundaries, ptr @sel_prepare_string_for_dot_label, i64 1}
!589 = !{ptr @update_boundaries, ptr @fputs, i64 1}
!590 = !{ptr @update_boundaries, ptr @blist_add, i64 453821}
!591 = !{ptr @update_boundaries, ptr @_succ_iter_next, i64 453821}
!592 = !{ptr @update_boundaries, ptr @blist_remove, i64 591920}
!593 = !{ptr @moveup_set_inside_insn_group, ptr @sel_prepare_string_for_dot_label, i64 1}
!594 = !{ptr @moveup_set_inside_insn_group, ptr @fputs, i64 1}
!595 = !{ptr @fill_ready_list, ptr @fancy_abort, i64 1}
!596 = !{ptr @fill_ready_list, ptr @process_pipelined_exprs, i64 1182361}
!597 = !{ptr @fill_ready_list, ptr @process_spec_exprs, i64 1182361}
!598 = !{ptr @fill_ready_list, ptr @process_use_exprs, i64 1182361}
!599 = !{ptr @fill_ready_list, ptr @fill_vec_av_set, i64 1182293}
!600 = !{ptr @fill_ready_list, ptr @convert_vec_av_set_to_ready, i64 715938}
!601 = !{ptr @invoke_reorder_hooks, ptr @ready_element, i64 2}
!602 = !{ptr @invoke_reorder_hooks, ptr @ready_lastpos, i64 1}
!603 = !{ptr @invoke_reorder_hooks, ptr @VEC_expr_t_base_address, i64 1}
!604 = !{ptr @invoke_reorder_hooks, ptr @fancy_abort, i64 6}
!605 = !{ptr @invoke_dfa_lookahead_guard, ptr @sel_prepare_string_for_dot_label, i64 3}
!606 = !{ptr @invoke_dfa_lookahead_guard, ptr @fputs, i64 3}
!607 = !{ptr @invoke_dfa_lookahead_guard, ptr @ready_element, i64 820610}
!608 = !{ptr @invoke_dfa_lookahead_guard, ptr @fancy_abort, i64 2}
!609 = !{ptr @invoke_dfa_lookahead_guard, ptr @find_expr_for_ready, i64 820610}
!610 = !{ptr @invoke_dfa_lookahead_guard, ptr @dump_vinsn, i64 1}
!611 = !{ptr @invoke_dfa_lookahead_guard, ptr @snprintf, i64 2}
!612 = !{ptr @calculate_privileged_insns, ptr @find_expr_for_ready, i64 1536546}
!613 = !{ptr @calculate_privileged_insns, ptr @snprintf, i64 2}
!614 = !{ptr @calculate_privileged_insns, ptr @sel_prepare_string_for_dot_label, i64 1}
!615 = !{ptr @calculate_privileged_insns, ptr @fputs, i64 1}
!616 = !{ptr @choose_best_insn, ptr @max_issue, i64 1}
!617 = !{ptr @choose_best_insn, ptr @find_expr_for_ready, i64 874212}
!618 = !{ptr @choose_best_insn, ptr @get_expr_cost, i64 874212}
!619 = !{ptr @choose_best_insn, ptr @snprintf, i64 2}
!620 = !{ptr @choose_best_insn, ptr @sel_prepare_string_for_dot_label, i64 1}
!621 = !{ptr @choose_best_insn, ptr @fputs, i64 1}
!622 = !{ptr @find_expr_for_ready, ptr @VEC_expr_t_base_index, i64 3704536}
!623 = !{ptr @find_expr_for_ready, ptr @fancy_abort, i64 1}
!624 = !{ptr @invoke_aftermath_hooks, ptr @fancy_abort, i64 1}
!625 = !{ptr @invoke_aftermath_hooks, ptr @sel_dfa_new_cycle, i64 591920}
!626 = !{ptr @process_pipelined_exprs, ptr @_list_iter_start, i64 1182361}
!627 = !{ptr @process_pipelined_exprs, ptr @_list_iter_cond_expr, i64 2805134}
!628 = !{ptr @process_pipelined_exprs, ptr @av_set_iter_remove, i64 1}
!629 = !{ptr @process_pipelined_exprs, ptr @_list_iter_next, i64 1622773}
!630 = !{ptr @process_spec_exprs, ptr @_list_iter_start, i64 2}
!631 = !{ptr @process_spec_exprs, ptr @_list_iter_cond_expr, i64 42}
!632 = !{ptr @process_spec_exprs, ptr @ds_weak, i64 12}
!633 = !{ptr @process_spec_exprs, ptr @av_set_iter_remove, i64 21}
!634 = !{ptr @process_spec_exprs, ptr @_list_iter_next, i64 40}
!635 = !{ptr @process_use_exprs, ptr @_list_iter_start, i64 1182362}
!636 = !{ptr @process_use_exprs, ptr @_list_iter_cond_expr, i64 2805070}
!637 = !{ptr @process_use_exprs, ptr @recog_memoized, i64 1622761}
!638 = !{ptr @process_use_exprs, ptr @av_set_iter_remove, i64 10}
!639 = !{ptr @process_use_exprs, ptr @_list_iter_next, i64 1622708}
!640 = !{ptr @process_use_exprs, ptr @fancy_abort, i64 4}
!641 = !{ptr @fill_vec_av_set, ptr @VEC_expr_t_base_length, i64 6811022}
!642 = !{ptr @fill_vec_av_set, ptr @VEC_expr_t_base_block_remove, i64 577840}
!643 = !{ptr @fill_vec_av_set, ptr @fancy_abort, i64 2}
!644 = !{ptr @fill_vec_av_set, ptr @_list_iter_start, i64 1182293}
!645 = !{ptr @fill_vec_av_set, ptr @_list_iter_cond_expr, i64 2804918}
!646 = !{ptr @fill_vec_av_set, ptr @VEC_expr_t_heap_safe_push, i64 1622625}
!647 = !{ptr @fill_vec_av_set, ptr @sel_target_adjust_priority, i64 1622625}
!648 = !{ptr @fill_vec_av_set, ptr @_list_iter_next, i64 1622625}
!649 = !{ptr @fill_vec_av_set, ptr @VEC_expr_t_base_address, i64 1898231}
!650 = !{ptr @fill_vec_av_set, ptr @spec_qsort, i64 1898231}
!651 = !{ptr @fill_vec_av_set, ptr @VEC_expr_t_base_index, i64 1622625}
!652 = !{ptr @fill_vec_av_set, ptr @VEC_expr_t_base_unordered_remove, i64 802019}
!653 = !{ptr @fill_vec_av_set, ptr @vinsn_vec_has_expr_p, i64 3245250}
!654 = !{ptr @fill_vec_av_set, ptr @find_best_reg_for_expr, i64 180655}
!655 = !{ptr @fill_vec_av_set, ptr @snprintf, i64 12}
!656 = !{ptr @fill_vec_av_set, ptr @sel_prepare_string_for_dot_label, i64 7}
!657 = !{ptr @fill_vec_av_set, ptr @fputs, i64 7}
!658 = !{ptr @fill_vec_av_set, ptr @sel_insn_is_speculation_check, i64 1330051}
!659 = !{ptr @fill_vec_av_set, ptr @tick_check_p, i64 1075705}
!660 = !{ptr @fill_vec_av_set, ptr @xrecalloc, i64 730}
!661 = !{ptr @fill_vec_av_set, ptr @VEC_expr_t_base_iterate, i64 21}
!662 = !{ptr @fill_vec_av_set, ptr @dump_expr, i64 20}
!663 = !{ptr @convert_vec_av_set_to_ready, ptr @VEC_expr_t_base_length, i64 715939}
!664 = !{ptr @convert_vec_av_set_to_ready, ptr @fancy_abort, i64 1}
!665 = !{ptr @convert_vec_av_set_to_ready, ptr @sched_extend_ready_list, i64 140382}
!666 = !{ptr @convert_vec_av_set_to_ready, ptr @VEC_expr_t_base_iterate, i64 1536549}
!667 = !{ptr @recog_memoized, ptr @recog, i64 135}
!668 = !{ptr @VEC_expr_t_heap_safe_push, ptr @VEC_expr_t_heap_reserve, i64 1622627}
!669 = !{ptr @VEC_expr_t_heap_safe_push, ptr @VEC_expr_t_base_quick_push, i64 1622627}
!670 = !{ptr @sel_target_adjust_priority, ptr @fancy_abort, i64 1}
!671 = !{ptr @sel_target_adjust_priority, ptr @snprintf, i64 2}
!672 = !{ptr @sel_target_adjust_priority, ptr @sel_prepare_string_for_dot_label, i64 1}
!673 = !{ptr @sel_target_adjust_priority, ptr @fputs, i64 1}
!674 = !{ptr @sel_rank_for_schedule, ptr @sel_insn_is_speculation_check, i64 1373798}
!675 = !{ptr @sel_rank_for_schedule, ptr @control_flow_insn_p, i64 1469633}
!676 = !{ptr @vinsn_vec_has_expr_p, ptr @VEC_vinsn_t_base_iterate, i64 3252948}
!677 = !{ptr @vinsn_vec_has_expr_p, ptr @vinsn_equal_p, i64 7694}
!678 = !{ptr @vinsn_vec_has_expr_p, ptr @bitmap_intersect_p, i64 1}
!679 = !{ptr @find_best_reg_for_expr, ptr @get_clear_regset_from_pool, i64 180657}
!680 = !{ptr @find_best_reg_for_expr, ptr @collect_unavailable_regs_from_bnds, i64 180657}
!681 = !{ptr @find_best_reg_for_expr, ptr @verify_target_availability, i64 180656}
!682 = !{ptr @find_best_reg_for_expr, ptr @reg_set_to_hard_reg_set, i64 180655}
!683 = !{ptr @find_best_reg_for_expr, ptr @choose_best_reg, i64 180655}
!684 = !{ptr @find_best_reg_for_expr, ptr @choose_best_pseudo_reg, i64 1}
!685 = !{ptr @find_best_reg_for_expr, ptr @try_replace_dest_reg, i64 1669}
!686 = !{ptr @find_best_reg_for_expr, ptr @sel_vinsn_cost, i64 1963}
!687 = !{ptr @find_best_reg_for_expr, ptr @vinsn_writes_one_of_regs_p, i64 1}
!688 = !{ptr @find_best_reg_for_expr, ptr @_list_clear, i64 180657}
!689 = !{ptr @find_best_reg_for_expr, ptr @return_regset_to_pool, i64 180657}
!690 = !{ptr @VEC_expr_t_heap_reserve, ptr @VEC_expr_t_base_space, i64 1622627}
!691 = !{ptr @VEC_expr_t_heap_reserve, ptr @vec_heap_p_reserve, i64 139062}
!692 = !{ptr @collect_unavailable_regs_from_bnds, ptr @av_set_is_in_p, i64 180657}
!693 = !{ptr @collect_unavailable_regs_from_bnds, ptr @find_sequential_best_exprs, i64 180656}
!694 = !{ptr @collect_unavailable_regs_from_bnds, ptr @find_used_regs, i64 180656}
!695 = !{ptr @collect_unavailable_regs_from_bnds, ptr @av_set_clear, i64 180656}
!696 = !{ptr @verify_target_availability, ptr @expr_dest_regno, i64 180655}
!697 = !{ptr @verify_target_availability, ptr @bitmap_bit_p, i64 180655}
!698 = !{ptr @verify_target_availability, ptr @fancy_abort, i64 1}
!699 = !{ptr @choose_best_reg, ptr @choose_best_reg_1, i64 180657}
!700 = !{ptr @choose_best_reg, ptr @rhs_regno, i64 1964}
!701 = !{ptr @choose_best_reg, ptr @fancy_abort, i64 1}
!702 = !{ptr @try_replace_dest_reg, ptr @VEC_int_base_index, i64 3338}
!703 = !{ptr @try_replace_dest_reg, ptr @VEC_sel_insn_data_def_base_index, i64 3338}
!704 = !{ptr @try_replace_dest_reg, ptr @fancy_abort, i64 1}
!705 = !{ptr @try_replace_dest_reg, ptr @rhs_regno, i64 5005}
!706 = !{ptr @try_replace_dest_reg, ptr @replace_src_with_reg_ok_p, i64 1668}
!707 = !{ptr @try_replace_dest_reg, ptr @replace_dest_with_reg_ok_p, i64 1667}
!708 = !{ptr @try_replace_dest_reg, ptr @expr_dest_regno, i64 1667}
!709 = !{ptr @try_replace_dest_reg, ptr @replace_dest_with_reg_in_expr, i64 1666}
!710 = !{ptr @_list_clear, ptr @_list_remove, i64 772577}
!711 = !{ptr @find_sequential_best_exprs, ptr @_list_iter_start, i64 772577}
!712 = !{ptr @find_sequential_best_exprs, ptr @_list_iter_cond_expr, i64 1112989}
!713 = !{ptr @find_sequential_best_exprs, ptr @equal_after_moveup_path_p, i64 1106953}
!714 = !{ptr @find_sequential_best_exprs, ptr @expr_dest_regno, i64 338930}
!715 = !{ptr @find_sequential_best_exprs, ptr @replace_dest_with_reg_in_expr, i64 1440}
!716 = !{ptr @find_sequential_best_exprs, ptr @av_set_add, i64 766541}
!717 = !{ptr @find_sequential_best_exprs, ptr @_list_iter_next, i64 340412}
!718 = !{ptr @find_sequential_best_exprs, ptr @sel_prepare_string_for_dot_label, i64 2}
!719 = !{ptr @find_sequential_best_exprs, ptr @fputs, i64 2}
!720 = !{ptr @find_sequential_best_exprs, ptr @dump_av_set, i64 1}
!721 = !{ptr @find_used_regs, ptr @bitmap_clear, i64 180657}
!722 = !{ptr @find_used_regs, ptr @code_motion_path_driver, i64 180657}
!723 = !{ptr @find_used_regs, ptr @fancy_abort, i64 3}
!724 = !{ptr @find_used_regs, ptr @_list_iter_start, i64 361314}
!725 = !{ptr @find_used_regs, ptr @_list_iter_cond_expr, i64 361314}
!726 = !{ptr @find_used_regs, ptr @_list_iter_next, i64 361314}
!727 = !{ptr @find_used_regs, ptr @_list_iter_cond_def, i64 361314}
!728 = !{ptr @find_used_regs, ptr @VEC_int_base_index, i64 180657}
!729 = !{ptr @find_used_regs, ptr @VEC_sel_insn_data_def_base_index, i64 180657}
!730 = !{ptr @find_used_regs, ptr @mark_unavailable_hard_regs, i64 180656}
!731 = !{ptr @find_used_regs, ptr @bitmap_ior_into, i64 1}
!732 = !{ptr @equal_after_moveup_path_p, ptr @copy_expr_onside, i64 1115669}
!733 = !{ptr @equal_after_moveup_path_p, ptr @vinsn_equal_p, i64 344542}
!734 = !{ptr @equal_after_moveup_path_p, ptr @clear_expr, i64 1115669}
!735 = !{ptr @code_motion_path_driver, ptr @snprintf, i64 4}
!736 = !{ptr @code_motion_path_driver, ptr @sel_prepare_string_for_dot_label, i64 4}
!737 = !{ptr @code_motion_path_driver, ptr @fputs, i64 4}
!738 = !{ptr @code_motion_path_driver, ptr @dump_insn, i64 1}
!739 = !{ptr @code_motion_path_driver, ptr @dump_av_set, i64 1}
!740 = !{ptr @code_motion_path_driver, ptr @fancy_abort, i64 4}
!741 = !{ptr @code_motion_path_driver, ptr @is_ineligible_successor, i64 1021630}
!742 = !{ptr @code_motion_path_driver, ptr @sel_bb_head_p, i64 1021629}
!743 = !{ptr @code_motion_path_driver, ptr @get_av_level, i64 1282918}
!744 = !{ptr @code_motion_path_driver, ptr @bitmap_bit_p, i64 261290}
!745 = !{ptr @code_motion_path_driver, ptr @av_set_copy, i64 1021627}
!746 = !{ptr @code_motion_path_driver, ptr @get_av_set, i64 261291}
!747 = !{ptr @code_motion_path_driver, ptr @av_set_intersect, i64 261291}
!748 = !{ptr @code_motion_path_driver, ptr @av_set_leave_one_nonspec, i64 1021626}
!749 = !{ptr @code_motion_path_driver, ptr @_xlist_add, i64 1262778}
!750 = !{ptr @code_motion_path_driver, ptr @sel_bb_end, i64 1350964}
!751 = !{ptr @code_motion_path_driver, ptr @VEC_int_base_index, i64 1484068}
!752 = !{ptr @code_motion_path_driver, ptr @VEC_sel_insn_data_def_base_index, i64 1484068}
!753 = !{ptr @code_motion_path_driver, ptr @av_set_lookup, i64 1484068}
!754 = !{ptr @code_motion_path_driver, ptr @sel_bb_end_p, i64 601484}
!755 = !{ptr @code_motion_path_driver, ptr @undo_transformations, i64 791780}
!756 = !{ptr @code_motion_path_driver, ptr @code_motion_path_driver_cleanup, i64 2}
!757 = !{ptr @code_motion_path_driver, ptr @code_motion_process_successors, i64 329338}
!758 = !{ptr @code_motion_path_driver, ptr @_list_remove, i64 1262776}
!759 = !{ptr @code_motion_path_driver, ptr @av_set_clear, i64 1021624}
!760 = !{ptr @code_motion_path_driver, ptr @bitmap_set_bit, i64 1021624}
!761 = !{ptr @mark_unavailable_hard_regs, ptr @fancy_abort, i64 2}
!762 = !{ptr @mark_unavailable_hard_regs, ptr @rhs_regno, i64 182989}
!763 = !{ptr @mark_unavailable_hard_regs, ptr @get_reg_class, i64 180655}
!764 = !{ptr @mark_unavailable_hard_regs, ptr @bitmap_bit_p, i64 1}
!765 = !{ptr @mark_unavailable_hard_regs, ptr @init_regs_for_mode, i64 25}
!766 = !{ptr @mark_unavailable_hard_regs, ptr @hard_reg_set_iter_init, i64 2332}
!767 = !{ptr @mark_unavailable_hard_regs, ptr @hard_reg_set_iter_set, i64 18587}
!768 = !{ptr @mark_unavailable_hard_regs, ptr @sel_hard_regno_rename_ok, i64 16254}
!769 = !{ptr @mark_unavailable_hard_regs, ptr @hard_reg_set_iter_next, i64 16255}
!770 = !{ptr @undo_transformations, ptr @_list_iter_start, i64 1197526}
!771 = !{ptr @undo_transformations, ptr @_list_iter_cond_expr, i64 2400978}
!772 = !{ptr @undo_transformations, ptr @sched_insns_conditions_mutex_p, i64 601855}
!773 = !{ptr @undo_transformations, ptr @VEC_int_base_index, i64 601854}
!774 = !{ptr @undo_transformations, ptr @VEC_sel_insn_data_def_base_index, i64 601854}
!775 = !{ptr @undo_transformations, ptr @bitmap_intersect_p, i64 601854}
!776 = !{ptr @undo_transformations, ptr @identical_copy_p, i64 259}
!777 = !{ptr @undo_transformations, ptr @snprintf, i64 2}
!778 = !{ptr @undo_transformations, ptr @sel_prepare_string_for_dot_label, i64 1}
!779 = !{ptr @undo_transformations, ptr @fputs, i64 1}
!780 = !{ptr @undo_transformations, ptr @av_set_iter_remove, i64 258}
!781 = !{ptr @undo_transformations, ptr @_list_iter_next, i64 1203452}
!782 = !{ptr @undo_transformations, ptr @find_in_history_vect, i64 601597}
!783 = !{ptr @undo_transformations, ptr @VEC_expr_history_def_base_index, i64 7452}
!784 = !{ptr @undo_transformations, ptr @fancy_abort, i64 2}
!785 = !{ptr @undo_transformations, ptr @copy_expr, i64 7450}
!786 = !{ptr @undo_transformations, ptr @vinsn_equal_p, i64 7450}
!787 = !{ptr @undo_transformations, ptr @change_vinsn_in_expr, i64 7449}
!788 = !{ptr @undo_transformations, ptr @substitute_reg_in_expr, i64 1}
!789 = !{ptr @undo_transformations, ptr @av_set_add, i64 7449}
!790 = !{ptr @undo_transformations, ptr @clear_expr, i64 7450}
!791 = !{ptr @undo_transformations, ptr @av_set_union_and_clear, i64 598763}
!792 = !{ptr @code_motion_process_successors, ptr @VEC_edge_base_length, i64 724368}
!793 = !{ptr @code_motion_process_successors, ptr @_succ_iter_start, i64 249055}
!794 = !{ptr @code_motion_process_successors, ptr @_succ_iter_cond, i64 724367}
!795 = !{ptr @code_motion_process_successors, ptr @code_motion_path_driver, i64 247109}
!796 = !{ptr @code_motion_process_successors, ptr @_succ_iter_next, i64 475312}
!797 = !{ptr @identical_copy_p, ptr @rhs_regno, i64 2}
!798 = !{ptr @get_reg_class, ptr @extract_insn, i64 180657}
!799 = !{ptr @get_reg_class, ptr @constrain_operands, i64 180657}
!800 = !{ptr @get_reg_class, ptr @_fatal_insn_not_found, i64 1}
!801 = !{ptr @get_reg_class, ptr @preprocess_constraints, i64 180657}
!802 = !{ptr @get_reg_class, ptr @asm_noperands, i64 180657}
!803 = !{ptr @get_reg_class, ptr @rhs_regno, i64 5}
!804 = !{ptr @init_regs_for_mode, ptr @ix86_hard_regno_mode_ok, i64 330}
!805 = !{ptr @sel_hard_regno_rename_ok, ptr @init_hard_regno_rename, i64 46}
!806 = !{ptr @choose_best_reg_1, ptr @_list_iter_start, i64 180657}
!807 = !{ptr @choose_best_reg_1, ptr @_list_iter_cond_def, i64 361314}
!808 = !{ptr @choose_best_reg_1, ptr @fancy_abort, i64 3}
!809 = !{ptr @choose_best_reg_1, ptr @rhs_regno, i64 180657}
!810 = !{ptr @choose_best_reg_1, ptr @_list_iter_next, i64 180657}
!811 = !{ptr @choose_best_reg_1, ptr @hard_reg_set_iter_init, i64 180657}
!812 = !{ptr @choose_best_reg_1, ptr @hard_reg_set_iter_set, i64 1254952}
!813 = !{ptr @choose_best_reg_1, ptr @hard_reg_set_iter_next, i64 1074295}
!814 = !{ptr @choose_best_reg_1, ptr @gen_rtx_REG, i64 1964}
!815 = !{ptr @replace_src_with_reg_ok_p, ptr @VEC_int_base_index, i64 1669}
!816 = !{ptr @replace_src_with_reg_ok_p, ptr @VEC_sel_insn_data_def_base_index, i64 1669}
!817 = !{ptr @replace_src_with_reg_ok_p, ptr @fancy_abort, i64 2}
!818 = !{ptr @replace_src_with_reg_ok_p, ptr @get_dest_and_mode, i64 1669}
!819 = !{ptr @replace_src_with_reg_ok_p, ptr @rhs_regno, i64 3336}
!820 = !{ptr @replace_src_with_reg_ok_p, ptr @validate_change, i64 1668}
!821 = !{ptr @replace_src_with_reg_ok_p, ptr @verify_changes, i64 1668}
!822 = !{ptr @replace_src_with_reg_ok_p, ptr @cancel_changes, i64 1668}
!823 = !{ptr @replace_dest_with_reg_ok_p, ptr @VEC_int_base_index, i64 1669}
!824 = !{ptr @replace_dest_with_reg_ok_p, ptr @VEC_sel_insn_data_def_base_index, i64 1669}
!825 = !{ptr @replace_dest_with_reg_ok_p, ptr @fancy_abort, i64 2}
!826 = !{ptr @replace_dest_with_reg_ok_p, ptr @validate_change, i64 1669}
!827 = !{ptr @replace_dest_with_reg_ok_p, ptr @verify_changes, i64 1669}
!828 = !{ptr @replace_dest_with_reg_ok_p, ptr @cancel_changes, i64 1669}
!829 = !{ptr @get_expr_cost, ptr @recog_memoized, i64 755524}
!830 = !{ptr @get_expr_cost, ptr @estimate_insn_cost, i64 755523}
!831 = !{ptr @estimate_insn_cost, ptr @xmalloc, i64 2}
!832 = !{ptr @estimate_insn_cost, ptr @state_transition, i64 755524}
!833 = !{ptr @sel_dfa_new_cycle, ptr @VEC_int_base_index, i64 453820}
!834 = !{ptr @sel_dfa_new_cycle, ptr @VEC_sel_insn_data_def_base_index, i64 453820}
!835 = !{ptr @sel_dfa_new_cycle, ptr @advance_one_cycle, i64 10}
!836 = !{ptr @advance_one_cycle, ptr @advance_state, i64 874465}
!837 = !{ptr @advance_one_cycle, ptr @VEC_rtx_base_iterate, i64 9204369}
!838 = !{ptr @advance_one_cycle, ptr @VEC_int_base_index, i64 8329904}
!839 = !{ptr @advance_one_cycle, ptr @VEC_sel_insn_data_def_base_index, i64 8329904}
!840 = !{ptr @advance_one_cycle, ptr @remove_from_deps, i64 1568117}
!841 = !{ptr @advance_one_cycle, ptr @VEC_rtx_base_unordered_remove, i64 1568117}
!842 = !{ptr @advance_one_cycle, ptr @snprintf, i64 2}
!843 = !{ptr @advance_one_cycle, ptr @sel_prepare_string_for_dot_label, i64 1}
!844 = !{ptr @advance_one_cycle, ptr @fputs, i64 1}
!845 = !{ptr @advance_one_cycle, ptr @debug_state, i64 1}
!846 = !{ptr @prepare_place_to_insert, ptr @get_nop_from_pool, i64 269265}
!847 = !{ptr @prepare_place_to_insert, ptr @fancy_abort, i64 1}
!848 = !{ptr @move_exprs_to_boundary, ptr @get_max_uid, i64 591920}
!849 = !{ptr @move_exprs_to_boundary, ptr @bitmap_clear, i64 1183840}
!850 = !{ptr @move_exprs_to_boundary, ptr @get_dest_from_orig_ops, i64 591920}
!851 = !{ptr @move_exprs_to_boundary, ptr @move_op, i64 591920}
!852 = !{ptr @move_exprs_to_boundary, ptr @fancy_abort, i64 1}
!853 = !{ptr @move_exprs_to_boundary, ptr @bmp_iter_set_init, i64 591921}
!854 = !{ptr @move_exprs_to_boundary, ptr @bmp_iter_set, i64 591942}
!855 = !{ptr @move_exprs_to_boundary, ptr @VEC_int_base_index, i64 35}
!856 = !{ptr @move_exprs_to_boundary, ptr @VEC_sel_insn_data_def_base_index, i64 35}
!857 = !{ptr @move_exprs_to_boundary, ptr @bitmap_copy, i64 1}
!858 = !{ptr @move_exprs_to_boundary, ptr @bitmap_ior_into, i64 13}
!859 = !{ptr @move_exprs_to_boundary, ptr @bmp_iter_next, i64 21}
!860 = !{ptr @remove_temp_moveop_nops, ptr @VEC_insn_t_base_iterate, i64 677118}
!861 = !{ptr @remove_temp_moveop_nops, ptr @fancy_abort, i64 1}
!862 = !{ptr @remove_temp_moveop_nops, ptr @return_nop_to_pool, i64 85198}
!863 = !{ptr @remove_temp_moveop_nops, ptr @VEC_insn_t_base_length, i64 591920}
!864 = !{ptr @remove_temp_moveop_nops, ptr @VEC_insn_t_base_block_remove, i64 85198}
!865 = !{ptr @move_op, ptr @bitmap_clear, i64 591920}
!866 = !{ptr @move_op, ptr @code_motion_path_driver, i64 591920}
!867 = !{ptr @get_dest_from_orig_ops, ptr @_list_iter_start, i64 591920}
!868 = !{ptr @get_dest_from_orig_ops, ptr @_list_iter_cond_expr, i64 1183840}
!869 = !{ptr @get_dest_from_orig_ops, ptr @_list_iter_next, i64 591920}
!870 = !{ptr @advance_state_on_fence, ptr @recog_memoized, i64 591920}
!871 = !{ptr @advance_state_on_fence, ptr @VEC_int_base_index, i64 591920}
!872 = !{ptr @advance_state_on_fence, ptr @VEC_sel_insn_data_def_base_index, i64 591920}
!873 = !{ptr @advance_state_on_fence, ptr @fancy_abort, i64 3}
!874 = !{ptr @advance_state_on_fence, ptr @state_transition, i64 591852}
!875 = !{ptr @advance_state_on_fence, ptr @bcmp, i64 591852}
!876 = !{ptr @advance_state_on_fence, ptr @advance_one_cycle, i64 1}
!877 = !{ptr @advance_state_on_fence, ptr @debug_state, i64 1}
!878 = !{ptr @VEC_rtx_gc_safe_push, ptr @VEC_rtx_gc_reserve, i64 591920}
!879 = !{ptr @VEC_rtx_gc_safe_push, ptr @VEC_rtx_base_quick_push, i64 591920}
!880 = !{ptr @VEC_rtx_gc_reserve, ptr @VEC_rtx_base_space, i64 591920}
!881 = !{ptr @VEC_rtx_gc_reserve, ptr @vec_gc_p_reserve, i64 174942}
!882 = !{ptr @extract_new_fences_from, ptr @_list_iter_start, i64 131165}
!883 = !{ptr @extract_new_fences_from, ptr @_list_iter_cond_x, i64 262330}
!884 = !{ptr @extract_new_fences_from, ptr @_list_iter_next, i64 131165}
!885 = !{ptr @extract_new_fences_from, ptr @fancy_abort, i64 3}
!886 = !{ptr @extract_new_fences_from, ptr @sel_bb_end_p, i64 213406}
!887 = !{ptr @extract_new_fences_from, ptr @single_succ_p, i64 48924}
!888 = !{ptr @extract_new_fences_from, ptr @single_succ, i64 2}
!889 = !{ptr @extract_new_fences_from, ptr @single_pred_p, i64 1}
!890 = !{ptr @extract_new_fences_from, ptr @sel_bb_head, i64 1}
!891 = !{ptr @extract_new_fences_from, ptr @VEC_int_base_index, i64 131165}
!892 = !{ptr @extract_new_fences_from, ptr @VEC_sel_insn_data_def_base_index, i64 131165}
!893 = !{ptr @extract_new_fences_from, ptr @move_fence_to_fences, i64 82238}
!894 = !{ptr @extract_new_fences_from, ptr @snprintf, i64 4}
!895 = !{ptr @extract_new_fences_from, ptr @sel_prepare_string_for_dot_label, i64 2}
!896 = !{ptr @extract_new_fences_from, ptr @fputs, i64 2}
!897 = !{ptr @extract_new_fences_from, ptr @_succ_iter_start, i64 48924}
!898 = !{ptr @extract_new_fences_from, ptr @_succ_iter_cond, i64 97848}
!899 = !{ptr @extract_new_fences_from, ptr @in_same_ebb_p, i64 48921}
!900 = !{ptr @extract_new_fences_from, ptr @in_fallthru_bb_p, i64 1}
!901 = !{ptr @extract_new_fences_from, ptr @add_dirty_fence_to_fences, i64 48920}
!902 = !{ptr @extract_new_fences_from, ptr @bitmap_set_bit, i64 1}
!903 = !{ptr @extract_new_fences_from, ptr @add_clean_fence_to_fences, i64 1}
!904 = !{ptr @extract_new_fences_from, ptr @_succ_iter_next, i64 48924}
!905 = !{ptr @simplify_changed_insns, ptr @VEC_basic_block_base_index, i64 187023}
!906 = !{ptr @simplify_changed_insns, ptr @VEC_int_base_index, i64 587291}
!907 = !{ptr @simplify_changed_insns, ptr @VEC_sel_insn_data_def_base_index, i64 587291}
!908 = !{ptr @simplify_changed_insns, ptr @validate_simplify_insn, i64 1}
!909 = !{ptr @VEC_expr_t_heap_free, ptr @free, i64 138098}
!910 = !{ptr @vinsn_vec_free, ptr @VEC_vinsn_t_heap_free, i64 1407}
!911 = !{ptr @sel_region_target_finish, ptr @bitmap_obstack_alloc_stat, i64 138099}
!912 = !{ptr @sel_region_target_finish, ptr @bitmap_bit_p, i64 187023}
!913 = !{ptr @sel_region_target_finish, ptr @VEC_basic_block_base_index, i64 276195}
!914 = !{ptr @sel_region_target_finish, ptr @sel_is_loop_preheader_p, i64 138098}
!915 = !{ptr @sel_region_target_finish, ptr @find_ebb_boundaries, i64 138097}
!916 = !{ptr @sel_region_target_finish, ptr @no_real_insns_p, i64 138097}
!917 = !{ptr @sel_region_target_finish, ptr @reset_sched_cycles_in_current_ebb, i64 1}
!918 = !{ptr @sel_region_target_finish, ptr @put_TImodes, i64 138096}
!919 = !{ptr @sel_region_target_finish, ptr @sched_init_luids, i64 1}
!920 = !{ptr @sel_region_target_finish, ptr @bitmap_obstack_free, i64 138099}
!921 = !{ptr @VEC_vinsn_t_heap_free, ptr @free, i64 1405}
!922 = !{ptr @find_ebb_boundaries, ptr @sel_prepare_string_for_dot_label, i64 2}
!923 = !{ptr @find_ebb_boundaries, ptr @fputs, i64 2}
!924 = !{ptr @find_ebb_boundaries, ptr @bitmap_set_bit, i64 148244}
!925 = !{ptr @find_ebb_boundaries, ptr @bb_ends_ebb_p, i64 148244}
!926 = !{ptr @find_ebb_boundaries, ptr @bb_next_bb, i64 38780}
!927 = !{ptr @find_ebb_boundaries, ptr @get_ebb_head_tail, i64 138099}
!928 = !{ptr @put_TImodes, ptr @VEC_int_base_index, i64 591917}
!929 = !{ptr @put_TImodes, ptr @VEC_sel_insn_data_def_base_index, i64 591917}
!930 = !{ptr @put_TImodes, ptr @fancy_abort, i64 1}
!931 = !{ptr @put_TImodes, ptr @snprintf, i64 2}
!932 = !{ptr @put_TImodes, ptr @sel_prepare_string_for_dot_label, i64 1}
!933 = !{ptr @put_TImodes, ptr @fputs, i64 1}
!934 = !{ptr @bb_next_bb, ptr @VEC_edge_base_length, i64 48924}
!935 = !{ptr @bb_next_bb, ptr @single_succ, i64 1}
!936 = !{ptr @bb_next_bb, ptr @VEC_edge_base_index, i64 77445}
!937 = !{ptr @init_hard_regs_data, ptr @df_regs_ever_live_p, i64 1963}
!938 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!939 = !{!"function_entry_count", i64 745717}
!940 = !{!941, !941, i64 0}
!941 = !{!"omnipotent char", !942, i64 0}
!942 = !{!"Simple C/C++ TBAA"}
!943 = !{!"branch_weights", i32 142858, i32 602861}
!944 = !{!"branch_weights", i32 180657, i32 422205}
!945 = !{!946, !949, i64 80}
!946 = !{!"basic_block_def", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !941, i64 32, !947, i64 48, !947, i64 56, !941, i64 64, !948, i64 72, !949, i64 80, !949, i64 84, !949, i64 88, !949, i64 92, !949, i64 96}
!947 = !{!"any pointer", !941, i64 0}
!948 = !{!"long", !941, i64 0}
!949 = !{!"int", !941, i64 0}
!950 = !{!951, !941, i64 8}
!951 = !{!"", !947, i64 0, !941, i64 8}
!952 = !{!"branch_weights", i32 1, i32 422205}
!953 = !{!"branch_weights", i32 1, i32 180657}
!954 = !{!"branch_weights", i32 23873, i32 156785}
!955 = !{!947, !947, i64 0}
!956 = !{!"branch_weights", i32 0, i32 -2147483648}
!957 = !{!"branch_weights", i32 156785, i32 422205}
!958 = !{!"branch_weights", i32 1, i32 166730}
!959 = !{!960, !947, i64 8}
!960 = !{!"rtl_bb_info", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !949, i64 32}
!961 = !{!"branch_weights", i32 97206, i32 210273}
!962 = !{!"branch_weights", i32 140749, i32 166730}
!963 = distinct !{!963, !964}
!964 = !{!"llvm.loop.mustprogress"}
!965 = !{!966, !947, i64 72}
!966 = !{!"_sel_insn_data", !967, i64 0, !949, i64 64, !949, i64 68, !947, i64 72, !947, i64 80, !947, i64 88, !947, i64 96, !947, i64 104, !968, i64 112, !947, i64 296, !949, i64 304, !949, i64 308, !949, i64 312, !949, i64 316, !949, i64 316, !949, i64 316}
!967 = !{!"_expr", !947, i64 0, !949, i64 8, !949, i64 12, !949, i64 16, !949, i64 20, !949, i64 24, !949, i64 28, !949, i64 32, !949, i64 36, !949, i64 40, !947, i64 48, !941, i64 56, !949, i64 57, !949, i64 57, !949, i64 57, !949, i64 57}
!968 = !{!"deps", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !949, i64 32, !949, i64 36, !949, i64 40, !947, i64 48, !947, i64 56, !947, i64 64, !947, i64 72, !949, i64 80, !947, i64 88, !949, i64 96, !947, i64 104, !969, i64 112, !969, i64 144, !949, i64 176, !949, i64 180}
!969 = !{!"bitmap_head_def", !947, i64 0, !947, i64 8, !949, i64 16, !947, i64 24}
!970 = !{!"branch_weights", i32 1, i32 166729}
!971 = !{!"branch_weights", i32 166729, i32 210273}
!972 = distinct !{!972, !964}
!973 = !{!"branch_weights", i32 134703, i32 32028}
!974 = !{!951, !947, i64 0}
!975 = !{!"function_entry_count", i64 3182224}
!976 = !{!"sel-sched.c:VEC_sel_global_bb_info_def_base_index"}
!977 = !{!"function_entry_count", i64 55802042}
!978 = !{!"sel-sched.c:VEC_sel_insn_data_def_base_index"}
!979 = !{!"function_entry_count", i64 56219008}
!980 = !{!"sel-sched.c:VEC_int_base_index"}
!981 = !{!949, !949, i64 0}
!982 = !{!"function_entry_count", i64 97205}
!983 = !{!"sel-sched.c:compute_live_after_bb"}
!984 = !{!"branch_weights", i32 1, i32 97206}
!985 = !{i64 0, i64 4, !981, i64 8, i64 8, !955}
!986 = !{i64 0, i64 8, !955}
!987 = !{i8 0, i8 2}
!988 = !{!"branch_weights", i32 1, i32 97205}
!989 = !{!990, !947, i64 8}
!990 = !{!"edge_def", !947, i64 0, !947, i64 8, !941, i64 16, !947, i64 24, !947, i64 32, !949, i64 40, !949, i64 44, !949, i64 48, !949, i64 52, !948, i64 56}
!991 = !{!"branch_weights", i32 192203, i32 1}
!992 = !{!"branch_weights", i32 97205, i32 94998}
!993 = distinct !{!993, !964}
!994 = !{!"function_entry_count", i64 377001}
!995 = !{!"sel-sched.c:propagate_lv_set"}
!996 = !{!"branch_weights", i32 -531594283, i32 9982}
!997 = !{!"branch_weights", i32 96, i32 376907}
!998 = !{!"function_entry_count", i64 0}
!999 = !{!966, !949, i64 20}
!1000 = !{!966, !949, i64 16}
!1001 = !{!"function_entry_count", i64 610972}
!1002 = !{!"sel-sched.c:move_op_on_enter"}
!1003 = !{!"branch_weights", i32 610973, i32 1}
!1004 = !{!"function_entry_count", i64 591920}
!1005 = !{!"sel-sched.c:move_op_orig_expr_found"}
!1006 = !{!1007, !947, i64 8}
!1007 = !{!"moveop_static_params", !947, i64 0, !947, i64 8, !949, i64 16, !941, i64 20}
!1008 = !{!1007, !949, i64 16}
!1009 = !{!"branch_weights", i32 6698166, i32 -1571092282}
!1010 = !{!967, !947, i64 48}
!1011 = !{!"branch_weights", i32 -2147483648, i32 0}
!1012 = !{!"function_entry_count", i64 123805}
!1013 = !{!"sel-sched.c:move_op_orig_expr_not_found"}
!1014 = !{!1007, !947, i64 0}
!1015 = !{!"function_entry_count", i64 19052}
!1016 = !{!"sel-sched.c:move_op_merge_succs"}
!1017 = !{!"branch_weights", i32 19053, i32 1}
!1018 = !{!1019, !947, i64 16}
!1019 = !{!"cmpd_local_params", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !947, i64 32, !949, i64 40}
!1020 = !{!1019, !947, i64 24}
!1021 = !{!967, !949, i64 24}
!1022 = !{!"sel-sched.c:move_op_after_merge_succs"}
!1023 = !{!"sel-sched.c:move_op_ascend"}
!1024 = !{!"branch_weights", i32 1, i32 123806}
!1025 = !{!"sel-sched.c:move_op_at_first_insn"}
!1026 = !{!"branch_weights", i32 509052, i32 101922}
!1027 = !{!1019, !947, i64 0}
!1028 = !{!"branch_weights", i32 490000, i32 19053}
!1029 = !{!"branch_weights", i32 1, i32 19053}
!1030 = !{!1019, !947, i64 8}
!1031 = !{!"branch_weights", i32 591921, i32 19053}
!1032 = !{!"function_entry_count", i64 410658}
!1033 = !{!"sel-sched.c:fur_on_enter"}
!1034 = !{!1035, !947, i64 8}
!1035 = !{!"fur_static_params", !947, i64 0, !947, i64 8, !941, i64 16}
!1036 = !{!"branch_weights", i32 410659, i32 1}
!1037 = !{!1035, !941, i64 16}
!1038 = !{!1019, !947, i64 32}
!1039 = !{!"function_entry_count", i64 180657}
!1040 = !{!"sel-sched.c:fur_orig_expr_found"}
!1041 = !{!"branch_weights", i32 1, i32 180658}
!1042 = !{!966, !947, i64 0}
!1043 = !{!1044, !947, i64 32}
!1044 = !{!"vinsn_def", !947, i64 0, !1045, i64 8, !949, i64 56, !949, i64 60, !949, i64 64, !949, i64 68, !941, i64 72}
!1045 = !{!"idata_def", !949, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !947, i64 32, !947, i64 40}
!1046 = !{!1044, !947, i64 40}
!1047 = !{!1035, !947, i64 0}
!1048 = !{!1044, !949, i64 8}
!1049 = !{!"branch_weights", i32 180658, i32 1}
!1050 = !{!1044, !947, i64 16}
!1051 = !{!"function_entry_count", i64 474958}
!1052 = !{!"sel-sched.c:fur_orig_expr_not_found"}
!1053 = !{!"branch_weights", i32 -770185239, i32 7421, i32 7421}
!1054 = !{!1055, !947, i64 0}
!1055 = !{!"", !947, i64 0, !941, i64 8, !941, i64 9}
!1056 = !{!"branch_weights", i32 1, i32 127}
!1057 = !{!967, !947, i64 0}
!1058 = !{!1044, !947, i64 0}
!1059 = !{!"branch_weights", i32 474959, i32 1}
!1060 = !{!"branch_weights", i32 127, i32 60794625}
!1061 = distinct !{!1061, !964}
!1062 = !{!1044, !947, i64 48}
!1063 = !{!"function_entry_count", i64 460002}
!1064 = !{!"sel-sched.c:fur_merge_succs"}
!1065 = !{!"branch_weights", i32 230002, i32 230002}
!1066 = !{!"sel-sched.c:fur_at_first_insn"}
!1067 = !{!"branch_weights", i32 168420, i32 242240}
!1068 = !{!"branch_weights", i32 242240, i32 1}
!1069 = !{!"function_entry_count", i64 138099}
!1070 = !{!"branch_weights", i32 138100, i32 1}
!1071 = !{!"branch_weights", i32 1, i32 138100}
!1072 = !{!"sel-sched.c:sel_region_init"}
!1073 = !{!"branch_weights", i32 138099, i32 1}
!1074 = !{!1075, !947, i64 8}
!1075 = !{!"function", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !947, i64 32, !947, i64 40, !947, i64 48, !947, i64 56, !947, i64 64, !947, i64 72, !947, i64 80, !947, i64 88, !947, i64 96, !949, i64 104, !949, i64 108, !949, i64 112, !949, i64 116, !949, i64 120, !949, i64 124, !947, i64 128, !949, i64 136, !949, i64 137, !949, i64 138, !949, i64 138, !949, i64 138, !949, i64 138, !949, i64 138, !949, i64 138, !949, i64 138, !949, i64 139, !949, i64 139, !949, i64 139, !949, i64 139, !949, i64 139, !949, i64 139, !949, i64 139}
!1076 = !{!1077, !947, i64 16}
!1077 = !{!"control_flow_graph", !947, i64 0, !947, i64 8, !947, i64 16, !949, i64 24, !949, i64 28, !949, i64 32, !947, i64 40, !949, i64 48, !941, i64 52, !941, i64 60, !949, i64 68, !949, i64 72}
!1078 = !{!"branch_weights", i32 48930, i32 138099}
!1079 = distinct !{!1079, !964}
!1080 = !{!1081, !947, i64 400}
!1081 = !{!"gcc_target", !1082, i64 0, !1084, i64 368, !1085, i64 664, !949, i64 744, !947, i64 752, !947, i64 760, !947, i64 768, !947, i64 776, !947, i64 784, !947, i64 792, !947, i64 800, !947, i64 808, !947, i64 816, !947, i64 824, !947, i64 832, !947, i64 840, !947, i64 848, !947, i64 856, !947, i64 864, !947, i64 872, !947, i64 880, !947, i64 888, !947, i64 896, !947, i64 904, !947, i64 912, !947, i64 920, !947, i64 928, !947, i64 936, !947, i64 944, !947, i64 952, !947, i64 960, !947, i64 968, !947, i64 976, !947, i64 984, !947, i64 992, !947, i64 1000, !947, i64 1008, !947, i64 1016, !947, i64 1024, !947, i64 1032, !947, i64 1040, !947, i64 1048, !947, i64 1056, !948, i64 1064, !948, i64 1072, !947, i64 1080, !947, i64 1088, !947, i64 1096, !947, i64 1104, !947, i64 1112, !947, i64 1120, !947, i64 1128, !947, i64 1136, !947, i64 1144, !947, i64 1152, !947, i64 1160, !947, i64 1168, !1086, i64 1176, !947, i64 1232, !947, i64 1240, !947, i64 1248, !947, i64 1256, !947, i64 1264, !947, i64 1272, !947, i64 1280, !947, i64 1288, !947, i64 1296, !947, i64 1304, !947, i64 1312, !947, i64 1320, !947, i64 1328, !947, i64 1336, !947, i64 1344, !947, i64 1352, !947, i64 1360, !947, i64 1368, !947, i64 1376, !947, i64 1384, !947, i64 1392, !947, i64 1400, !947, i64 1408, !947, i64 1416, !947, i64 1424, !947, i64 1432, !947, i64 1440, !947, i64 1448, !947, i64 1456, !948, i64 1464, !1087, i64 1472, !947, i64 1664, !947, i64 1672, !947, i64 1680, !947, i64 1688, !947, i64 1696, !947, i64 1704, !947, i64 1712, !947, i64 1720, !947, i64 1728, !947, i64 1736, !947, i64 1744, !947, i64 1752, !947, i64 1760, !947, i64 1768, !947, i64 1776, !1088, i64 1784, !1089, i64 1792, !1090, i64 1896, !1091, i64 1968, !947, i64 2016, !941, i64 2024, !941, i64 2025, !941, i64 2026, !941, i64 2027, !941, i64 2028, !941, i64 2029, !941, i64 2030, !941, i64 2031, !941, i64 2032, !941, i64 2033, !941, i64 2034, !941, i64 2035}
!1082 = !{!"asm_out", !947, i64 0, !947, i64 8, !947, i64 16, !1083, i64 24, !1083, i64 56, !947, i64 88, !947, i64 96, !947, i64 104, !947, i64 112, !947, i64 120, !947, i64 128, !947, i64 136, !947, i64 144, !947, i64 152, !947, i64 160, !947, i64 168, !947, i64 176, !947, i64 184, !947, i64 192, !947, i64 200, !947, i64 208, !947, i64 216, !947, i64 224, !947, i64 232, !947, i64 240, !947, i64 248, !947, i64 256, !947, i64 264, !947, i64 272, !947, i64 280, !947, i64 288, !947, i64 296, !947, i64 304, !947, i64 312, !947, i64 320, !947, i64 328, !947, i64 336, !947, i64 344, !947, i64 352, !947, i64 360}
!1083 = !{!"asm_int_op", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24}
!1084 = !{!"sched", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !947, i64 32, !947, i64 40, !947, i64 48, !947, i64 56, !947, i64 64, !947, i64 72, !947, i64 80, !947, i64 88, !947, i64 96, !947, i64 104, !947, i64 112, !947, i64 120, !947, i64 128, !947, i64 136, !947, i64 144, !947, i64 152, !947, i64 160, !947, i64 168, !947, i64 176, !947, i64 184, !947, i64 192, !947, i64 200, !947, i64 208, !947, i64 216, !947, i64 224, !947, i64 232, !947, i64 240, !947, i64 248, !947, i64 256, !947, i64 264, !947, i64 272, !947, i64 280, !947, i64 288}
!1085 = !{!"vectorize", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !947, i64 32, !947, i64 40, !947, i64 48, !947, i64 56, !947, i64 64, !947, i64 72}
!1086 = !{!"addr_space", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !947, i64 32, !947, i64 40, !947, i64 48}
!1087 = !{!"calls", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !947, i64 32, !947, i64 40, !947, i64 48, !947, i64 56, !947, i64 64, !947, i64 72, !947, i64 80, !947, i64 88, !947, i64 96, !947, i64 104, !947, i64 112, !947, i64 120, !947, i64 128, !947, i64 136, !947, i64 144, !947, i64 152, !947, i64 160, !947, i64 168, !947, i64 176, !947, i64 184}
!1088 = !{!"c", !947, i64 0}
!1089 = !{!"cxx", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !947, i64 32, !947, i64 40, !947, i64 48, !947, i64 56, !947, i64 64, !947, i64 72, !947, i64 80, !947, i64 88, !947, i64 96}
!1090 = !{!"emutls", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !947, i64 32, !947, i64 40, !947, i64 48, !947, i64 56, !941, i64 64, !941, i64 65}
!1091 = !{!"target_option_hooks", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !947, i64 32, !947, i64 40}
!1092 = !{!"sel-sched.c:sel_sched_region_1"}
!1093 = !{!946, !947, i64 8}
!1094 = !{!990, !949, i64 48}
!1095 = !{!966, !949, i64 24}
!1096 = distinct !{!1096, !964}
!1097 = distinct !{!1097, !964}
!1098 = !{!"sel-sched.c:sel_region_finish"}
!1099 = !{!"branch_weights", i32 138100, i32 138100}
!1100 = distinct !{!1100, !964}
!1101 = !{!"function_entry_count", i64 38}
!1102 = !{!1077, !949, i64 24}
!1103 = !{!"branch_weights", i32 1, i32 39}
!1104 = !{!"branch_weights", i32 155, i32 1}
!1105 = !{!"branch_weights", i32 552245, i32 155}
!1106 = distinct !{!1106, !964}
!1107 = !{!"sel-sched.c:sel_global_init"}
!1108 = !{!"sel-sched.c:sel_global_finish"}
!1109 = !{!1075, !947, i64 32}
!1110 = !{!"branch_weights", i32 39, i32 1}
!1111 = !{!"function_entry_count", i64 769234}
!1112 = !{!"sel-sched.c:ei_start_1"}
!1113 = !{!"function_entry_count", i64 2232986}
!1114 = !{!"sel-sched.c:ei_cond"}
!1115 = !{!"branch_weights", i32 1463753, i32 769235}
!1116 = !{!"function_entry_count", i64 1463752}
!1117 = !{!"sel-sched.c:ei_next"}
!1118 = !{!"branch_weights", i32 1, i32 1463753}
!1119 = !{!"branch_weights", i32 1463753, i32 1}
!1120 = !{!1121, !949, i64 0}
!1121 = !{!"", !949, i64 0, !947, i64 8}
!1122 = !{!"sel-sched.c:ei_end_p"}
!1123 = !{!"branch_weights", i32 1, i32 2232987}
!1124 = !{!"sel-sched.c:ei_edge"}
!1125 = !{!"function_entry_count", i64 4522693}
!1126 = !{!"sel-sched.c:VEC_edge_base_length"}
!1127 = !{!"branch_weights", i32 1, i32 4522694}
!1128 = !{!1129, !949, i64 0}
!1129 = !{!"VEC_edge_base", !949, i64 0, !949, i64 4, !941, i64 8}
!1130 = !{!"function_entry_count", i64 10320980}
!1131 = !{!"sel-sched.c:ei_container"}
!1132 = !{!"branch_weights", i32 1, i32 10320981}
!1133 = !{!"function_entry_count", i64 1561600}
!1134 = !{!"sel-sched.c:VEC_edge_base_index"}
!1135 = !{!"sel-sched.c:track_scheduled_insns_and_blocks"}
!1136 = !{!"branch_weights", i32 591921, i32 1}
!1137 = !{!"branch_weights", i32 1, i32 591921}
!1138 = !{!"branch_weights", i32 590471, i32 1451}
!1139 = !{!"branch_weights", i32 1, i32 590471}
!1140 = !{!"sel-sched.c:handle_emitting_transformations"}
!1141 = !{!"function_entry_count", i64 590470}
!1142 = !{!"sel-sched.c:VEC_expr_history_def_base_length"}
!1143 = !{!"branch_weights", i32 590471, i32 1}
!1144 = !{!1145, !949, i64 0}
!1145 = !{!"VEC_expr_history_def_base", !949, i64 0, !949, i64 4, !941, i64 8}
!1146 = !{!"sel-sched.c:remove_insn_from_stream"}
!1147 = !{!"branch_weights", i32 506724, i32 85198}
!1148 = !{!"branch_weights", i32 85198, i32 1}
!1149 = !{!"sel-sched.c:maybe_emit_renaming_copy"}
!1150 = !{!"branch_weights", i32 170801, i32 421121}
!1151 = !{!"branch_weights", i32 1, i32 170801}
!1152 = !{!"branch_weights", i32 170801, i32 1}
!1153 = !{!"branch_weights", i32 169351, i32 1451}
!1154 = !{!966, !949, i64 68}
!1155 = !{!966, !949, i64 32}
!1156 = !{!1007, !941, i64 20}
!1157 = !{!"sel-sched.c:maybe_emit_speculative_check"}
!1158 = !{!966, !949, i64 36}
!1159 = !{!"function_entry_count", i64 718735}
!1160 = !{!"sel-sched.c:rhs_regno"}
!1161 = !{!"function_entry_count", i64 1450}
!1162 = !{!"sel-sched.c:create_insn_rtx_with_rhs"}
!1163 = !{!"function_entry_count", i64 4569}
!1164 = !{!"sel-sched.c:replace_dest_with_reg_in_expr"}
!1165 = !{!967, !941, i64 56}
!1166 = !{!"sel-sched.c:create_insn_rtx_with_lhs"}
!1167 = !{!1044, !947, i64 24}
!1168 = !{!"sel-sched.c:get_spec_check_type_for_insn"}
!1169 = !{!967, !949, i64 36}
!1170 = !{!1081, !947, i64 640}
!1171 = !{!1172, !949, i64 24}
!1172 = !{!"spec_info_def", !949, i64 0, !947, i64 8, !949, i64 16, !949, i64 20, !949, i64 24}
!1173 = !{!"sel-sched.c:create_speculation_check"}
!1174 = !{!1081, !947, i64 600}
!1175 = !{!960, !947, i64 0}
!1176 = !{!1081, !947, i64 608}
!1177 = !{!966, !949, i64 312}
!1178 = !{!"sel-sched.c:need_nop_to_preserve_insn_bb"}
!1179 = !{!"branch_weights", i32 6, i32 591916}
!1180 = !{!"branch_weights", i32 1, i32 591916}
!1181 = !{!"branch_weights", i32 1, i32 591915}
!1182 = distinct !{!1182, !964}
!1183 = !{!"branch_weights", i32 127, i32 75765121}
!1184 = distinct !{!1184, !964}
!1185 = !{!"branch_weights", i32 85412, i32 506505}
!1186 = distinct !{!1186, !964}
!1187 = !{!"branch_weights", i32 85193, i32 220}
!1188 = !{!"branch_weights", i32 1, i32 506724}
!1189 = distinct !{!1189, !964}
!1190 = !{!"function_entry_count", i64 85197}
!1191 = !{!"sel-sched.c:VEC_insn_t_heap_safe_push"}
!1192 = !{!"sel-sched.c:VEC_insn_t_heap_reserve"}
!1193 = !{!"branch_weights", i32 2, i32 85197}
!1194 = !{!"sel-sched.c:VEC_insn_t_base_quick_push"}
!1195 = !{!1196, !949, i64 0}
!1196 = !{!"VEC_insn_t_base", !949, i64 0, !949, i64 4, !941, i64 8}
!1197 = !{!"sel-sched.c:VEC_insn_t_base_space"}
!1198 = !{!1196, !949, i64 4}
!1199 = !{!"function_entry_count", i64 3641012}
!1200 = !{!"sel-sched.c:moveup_expr_cached"}
!1201 = !{!"branch_weights", i32 1, i32 3641013}
!1202 = !{!"branch_weights", i32 761863, i32 2879151}
!1203 = !{!"branch_weights", i32 757677, i32 4187}
!1204 = !{!967, !949, i64 32}
!1205 = !{!"branch_weights", i32 1, i32 405101, i32 280824, i32 70165, i32 1590}
!1206 = !{!"branch_weights", i32 1, i32 405101}
!1207 = !{!"branch_weights", i32 1, i32 280824}
!1208 = !{!"branch_weights", i32 1, i32 70165}
!1209 = !{!"branch_weights", i32 1, i32 1590}
!1210 = !{!"function_entry_count", i64 142857}
!1211 = !{!"sel-sched.c:update_liveness_on_insn"}
!1212 = !{!"sel-sched.c:try_bitmap_cache"}
!1213 = !{!966, !947, i64 80}
!1214 = !{!966, !947, i64 88}
!1215 = !{!"branch_weights", i32 1131664, i32 2509350}
!1216 = !{!"branch_weights", i32 836217, i32 1673134}
!1217 = !{!"branch_weights", i32 1, i32 1673134}
!1218 = !{!"branch_weights", i32 1, i32 836217}
!1219 = !{!"branch_weights", i32 761863, i32 369802}
!1220 = !{!"branch_weights", i32 369802, i32 1}
!1221 = !{!"branch_weights", i32 1, i32 369802}
!1222 = !{!"function_entry_count", i64 761862}
!1223 = !{!"sel-sched.c:try_transformation_cache"}
!1224 = !{!966, !947, i64 104}
!1225 = !{!1044, !949, i64 60}
!1226 = !{!1227, !949, i64 20}
!1227 = !{!"transformed_insns", !947, i64 0, !947, i64 8, !949, i64 16, !949, i64 20, !949, i64 24, !949, i64 24}
!1228 = !{!1227, !947, i64 0}
!1229 = !{!1227, !947, i64 8}
!1230 = !{!"branch_weights", i32 4187, i32 1}
!1231 = !{!"branch_weights", i32 4040, i32 148}
!1232 = !{!"branch_weights", i32 1, i32 4187}
!1233 = !{!1227, !949, i64 16}
!1234 = !{!"function_entry_count", i64 757676}
!1235 = !{!"sel-sched.c:moveup_expr"}
!1236 = !{!"branch_weights", i32 -156357443, i32 1786337396}
!1237 = !{!"branch_weights", i32 69880, i32 158557}
!1238 = !{!"branch_weights", i32 158557, i32 1}
!1239 = !{!"branch_weights", i32 113, i32 158445}
!1240 = !{!"branch_weights", i32 108106, i32 50340}
!1241 = !{!"branch_weights", i32 50340, i32 1}
!1242 = !{!"branch_weights", i32 1, i32 50340}
!1243 = !{!"branch_weights", i32 614, i32 69267}
!1244 = !{!"branch_weights", i32 69267, i32 1}
!1245 = !{!"branch_weights", i32 69880, i32 1}
!1246 = !{!"branch_weights", i32 529242, i32 1}
!1247 = !{!"branch_weights", i32 1, i32 599121}
!1248 = !{!"branch_weights", i32 280824, i32 318298}
!1249 = !{!1044, !941, i64 72}
!1250 = !{!"branch_weights", i32 280711, i32 114}
!1251 = !{!"branch_weights", i32 1, i32 114}
!1252 = !{!"branch_weights", i32 -2046092624, i32 629622546}
!1253 = !{!"branch_weights", i32 248676, i32 1}
!1254 = !{!"branch_weights", i32 225766, i32 22911}
!1255 = !{!"branch_weights", i32 172658, i32 53109}
!1256 = !{!"branch_weights", i32 172658, i32 1}
!1257 = !{!"branch_weights", i32 136708, i32 35951}
!1258 = !{!"branch_weights", i32 70165, i32 119652}
!1259 = !{!"branch_weights", i32 1939798225, i32 16211}
!1260 = !{!"branch_weights", i32 119652, i32 1}
!1261 = !{!"branch_weights", i32 118063, i32 1590}
!1262 = !{!"branch_weights", i32 1590, i32 1}
!1263 = !{!"branch_weights", i32 71749, i32 6}
!1264 = !{!"branch_weights", i32 1, i32 6}
!1265 = !{!"branch_weights", i32 70165, i32 1590}
!1266 = !{!"function_entry_count", i64 756087}
!1267 = !{!"sel-sched.c:update_bitmap_cache"}
!1268 = !{!"branch_weights", i32 5871, i32 -1916355132, i32 1648896149, i32 411977428}
!1269 = !{!"function_entry_count", i64 1589}
!1270 = !{!"sel-sched.c:update_transformation_cache"}
!1271 = !{!"sel-sched.c:moving_insn_creates_bookkeeping_block_p"}
!1272 = !{!946, !947, i64 0}
!1273 = distinct !{!1273, !964}
!1274 = distinct !{!1274, !964}
!1275 = !{!"function_entry_count", i64 368326}
!1276 = !{!"sel-sched.c:can_speculate_dep_p"}
!1277 = !{!"branch_weights", i32 368327, i32 1}
!1278 = !{!1172, !949, i64 0}
!1279 = !{!1172, !949, i64 16}
!1280 = !{!"function_entry_count", i64 119651}
!1281 = !{!"sel-sched.c:can_substitute_through_p"}
!1282 = !{!"branch_weights", i32 -1228495927, i32 512738733}
!1283 = !{!"branch_weights", i32 51370, i32 51144}
!1284 = !{!"branch_weights", i32 1, i32 51144}
!1285 = !{!"branch_weights", i32 50342, i32 803}
!1286 = !{!"branch_weights", i32 1590, i32 48753}
!1287 = !{!"sel-sched.c:substitute_reg_in_expr"}
!1288 = !{!"sel-sched.c:find_block_for_bookkeeping"}
!1289 = !{!1077, !947, i64 8}
!1290 = !{!990, !947, i64 0}
!1291 = distinct !{!1291, !964}
!1292 = !{!"sel-sched.c:block_valid_for_bookkeeping_p"}
!1293 = !{!"sel-sched.c:rtx_ok_for_substitution_p"}
!1294 = !{!"sel-sched.c:count_occurrences_equiv"}
!1295 = !{!1296, !947, i64 0}
!1296 = !{!"rtx_search_arg", !947, i64 0, !949, i64 8}
!1297 = !{!1296, !949, i64 8}
!1298 = !{!"function_entry_count", i64 6142}
!1299 = !{!"sel-sched.c:count_occurrences_1"}
!1300 = !{!"branch_weights", i32 4554, i32 1590}
!1301 = !{!"branch_weights", i32 1, i32 4554}
!1302 = !{!"sel-sched.c:generate_bookkeeping_insn"}
!1303 = !{!"sel-sched.c:update_data_sets"}
!1304 = !{!1305, !949, i64 16}
!1305 = !{!"", !947, i64 0, !947, i64 8, !949, i64 16}
!1306 = !{!"sel-sched.c:update_and_record_unavailable_insns"}
!1307 = !{!1305, !947, i64 8}
!1308 = distinct !{!1308, !964}
!1309 = !{!"sel-sched.c:find_place_for_bookkeeping"}
!1310 = distinct !{!1310, !964}
!1311 = !{!"sel-sched.c:find_seqno_for_bookkeeping"}
!1312 = !{!"sel-sched.c:emit_bookkeeping_insn"}
!1313 = !{!"sel-sched.c:create_block_for_bookkeeping"}
!1314 = !{!1315, !947, i64 16}
!1315 = !{!"loop", !949, i64 0, !949, i64 4, !947, i64 8, !947, i64 16, !1316, i64 24, !949, i64 32, !949, i64 36, !947, i64 40, !947, i64 48, !947, i64 56, !947, i64 64, !947, i64 72, !1317, i64 80, !1317, i64 96, !941, i64 112, !941, i64 113, !949, i64 116, !947, i64 120, !947, i64 128, !941, i64 136, !947, i64 144}
!1316 = !{!"lpt_decision", !949, i64 0, !949, i64 4}
!1317 = !{!"", !948, i64 0, !948, i64 8}
!1318 = !{!1315, !947, i64 8}
!1319 = !{!1305, !947, i64 0}
!1320 = distinct !{!1320, !964}
!1321 = distinct !{!1321, !964}
!1322 = !{!966, !949, i64 28}
!1323 = distinct !{!1323, !964}
!1324 = distinct !{!1324, !964}
!1325 = !{!"sel-sched.c:single_pred_p"}
!1326 = !{!"sel-sched.c:single_pred_edge"}
!1327 = !{!"function_entry_count", i64 1605939}
!1328 = !{!"sel-sched.c:VEC_sel_region_bb_info_def_base_index"}
!1329 = !{!"function_entry_count", i64 48924}
!1330 = !{!"sel-sched.c:single_succ_p"}
!1331 = !{!"sel-sched.c:single_succ"}
!1332 = !{!"sel-sched.c:VEC_basic_block_base_replace"}
!1333 = !{!"sel-sched.c:single_succ_edge"}
!1334 = !{!"sel-sched.c:emit_insn_from_expr_after"}
!1335 = !{!"branch_weights", i32 1451, i32 1}
!1336 = !{!"branch_weights", i32 1, i32 1451}
!1337 = !{!"function_entry_count", i64 825133}
!1338 = !{!"sel-sched.c:compute_av_set"}
!1339 = !{!"function_entry_count", i64 1242099}
!1340 = !{!"sel-sched.c:compute_av_set_inside_bb"}
!1341 = !{!"branch_weights", i32 1242100, i32 1}
!1342 = !{!"branch_weights", i32 141119, i32 1100982}
!1343 = !{!"branch_weights", i32 1, i32 141119}
!1344 = !{!"branch_weights", i32 1, i32 1100204}
!1345 = !{!"branch_weights", i32 1, i32 3013300}
!1346 = !{!"branch_weights", i32 1100982, i32 1912319}
!1347 = !{!"branch_weights", i32 1912319, i32 1}
!1348 = !{!"branch_weights", i32 778, i32 3012523}
!1349 = !{!966, !949, i64 64}
!1350 = !{!"branch_weights", i32 1, i32 778}
!1351 = !{!"branch_weights", i32 1100204, i32 1913096}
!1352 = distinct !{!1352, !964}
!1353 = !{!"branch_weights", i32 117, i32 662}
!1354 = !{!"branch_weights", i32 1, i32 117}
!1355 = !{!"branch_weights", i32 1, i32 1100981}
!1356 = !{!"branch_weights", i32 96, i32 3012428}
!1357 = !{!"branch_weights", i32 3012428, i32 1}
!1358 = !{!"branch_weights", i32 1100981, i32 1911542}
!1359 = distinct !{!1359, !964}
!1360 = !{!"branch_weights", i32 619059, i32 481924}
!1361 = !{!"branch_weights", i32 19053, i32 462872}
!1362 = !{!"branch_weights", i32 1, i32 1100982}
!1363 = !{!"function_entry_count", i64 4176047}
!1364 = !{!"sel-sched.c:is_ineligible_successor"}
!1365 = !{!"branch_weights", i32 1, i32 4176048}
!1366 = !{!"branch_weights", i32 4176048, i32 1}
!1367 = !{!"branch_weights", i32 1597711, i32 2578338}
!1368 = !{!"branch_weights", i32 1, i32 2578338}
!1369 = !{!"branch_weights", i32 2578338, i32 1}
!1370 = !{!"function_entry_count", i64 4582086}
!1371 = !{!"sel-sched.c:_xlist_add"}
!1372 = !{!"function_entry_count", i64 1100204}
!1373 = !{!"sel-sched.c:compute_av_set_at_bb_end"}
!1374 = !{!"branch_weights", i32 1, i32 1100205}
!1375 = !{!1376, !947, i64 8}
!1376 = !{!"succs_info", !1377, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !949, i64 32, !949, i64 36, !949, i64 40}
!1377 = !{!"short", !941, i64 0}
!1378 = !{!1376, !949, i64 40}
!1379 = !{!1376, !949, i64 36}
!1380 = !{i32 0, i32 2}
!1381 = !{!"branch_weights", i32 683238, i32 416967}
!1382 = !{!1376, !947, i64 16}
!1383 = !{!1376, !949, i64 32}
!1384 = !{!"branch_weights", i32 416967, i32 1}
!1385 = distinct !{!1385, !964}
!1386 = !{!"branch_weights", i32 1, i32 416967}
!1387 = !{!"branch_weights", i32 416967, i32 0}
!1388 = distinct !{!1388, !964}
!1389 = distinct !{!1389, !964}
!1390 = !{!"branch_weights", i32 1100000, i32 206}
!1391 = !{!1376, !947, i64 24}
!1392 = !{!"branch_weights", i32 1, i32 1099999}
!1393 = !{!"branch_weights", i32 1099999, i32 613461}
!1394 = distinct !{!1394, !964}
!1395 = !{!"branch_weights", i32 1027756, i32 72450}
!1396 = !{!"branch_weights", i32 328621, i32 699135}
!1397 = !{!"branch_weights", i32 1, i32 699135}
!1398 = !{!967, !949, i64 8}
!1399 = !{!"branch_weights", i32 699135, i32 0}
!1400 = distinct !{!1400, !964}
!1401 = !{!"function_entry_count", i64 3012427}
!1402 = !{!"sel-sched.c:moveup_set_expr"}
!1403 = !{!"branch_weights", i32 1, i32 3012427}
!1404 = !{!"branch_weights", i32 1, i32 993235, i32 439966, i32 2078234, i32 5776}
!1405 = !{!"branch_weights", i32 3012427, i32 504781}
!1406 = distinct !{!1406, !964}
!1407 = !{!"function_entry_count", i64 4177757}
!1408 = !{!"sel-sched.c:_list_remove"}
!1409 = !{!1410, !947, i64 0}
!1410 = !{!"_list_node", !947, i64 0, !941, i64 8}
!1411 = !{!"function_entry_count", i64 131165}
!1412 = !{!"sel-sched.c:_xlist_is_in_p"}
!1413 = !{!"branch_weights", i32 131165, i32 1}
!1414 = !{!"branch_weights", i32 1, i32 0}
!1415 = distinct !{!1415, !964}
!1416 = !{!"sel-sched.c:_list_add"}
!1417 = !{!"sel-sched.c:_list_alloc"}
!1418 = !{!"function_entry_count", i64 6785570}
!1419 = !{!"sel-sched.c:VEC_rtx_base_iterate"}
!1420 = !{!"branch_weights", i32 1, i32 6785571}
!1421 = !{!1422, !949, i64 0}
!1422 = !{!"VEC_rtx_base", !949, i64 0, !949, i64 4, !941, i64 8}
!1423 = !{!"branch_weights", i32 3710903, i32 3074669}
!1424 = !{!"function_entry_count", i64 12504580}
!1425 = !{!"sel-sched.c:_list_iter_start"}
!1426 = !{!1055, !941, i64 8}
!1427 = !{!1055, !941, i64 9}
!1428 = !{!"function_entry_count", i64 24146834}
!1429 = !{!"sel-sched.c:_list_iter_cond_expr"}
!1430 = !{!"branch_weights", i32 10363316, i32 13783520}
!1431 = !{!"function_entry_count", i64 13620316}
!1432 = !{!"sel-sched.c:_list_iter_next"}
!1433 = !{!"branch_weights", i32 11541826, i32 2078492}
!1434 = !{!"sel-sched.c:vinsn_vec_add"}
!1435 = !{!"sel-sched.c:VEC_vinsn_t_heap_safe_push"}
!1436 = !{!"sel-sched.c:VEC_vinsn_t_heap_reserve"}
!1437 = !{!"branch_weights", i32 1407, i32 45}
!1438 = !{!"sel-sched.c:VEC_vinsn_t_base_quick_push"}
!1439 = !{!1440, !949, i64 0}
!1440 = !{!"VEC_vinsn_t_base", !949, i64 0, !949, i64 4, !941, i64 8}
!1441 = !{!"sel-sched.c:VEC_vinsn_t_base_space"}
!1442 = !{!1440, !949, i64 4}
!1443 = !{!"sel-sched.c:compute_live_below_insn"}
!1444 = !{!"branch_weights", i32 180657, i32 1}
!1445 = distinct !{!1445, !964}
!1446 = !{!"function_entry_count", i64 1395681}
!1447 = !{!"sel-sched.c:_succ_iter_start"}
!1448 = !{!"branch_weights", i32 4779, i32 -1822405516, i32 4777, i32 -1086009387, i32 328685188, i32 659994125}
!1449 = !{!1450, !1377, i64 48}
!1450 = !{!"", !941, i64 0, !947, i64 8, !947, i64 16, !1121, i64 24, !947, i64 40, !1377, i64 48, !1377, i64 50, !949, i64 52, !947, i64 56}
!1451 = !{!1450, !947, i64 40}
!1452 = !{!1450, !1377, i64 50}
!1453 = !{!1450, !949, i64 52}
!1454 = !{!1450, !947, i64 56}
!1455 = !{!"branch_weights", i32 1, i32 1395682}
!1456 = !{!"branch_weights", i32 672030, i32 723653}
!1457 = !{!1450, !941, i64 0}
!1458 = !{!1450, !949, i64 24}
!1459 = !{!1450, !947, i64 32}
!1460 = !{!"function_entry_count", i64 2745165}
!1461 = !{!"sel-sched.c:_succ_iter_cond"}
!1462 = !{!"branch_weights", i32 1447305, i32 1297862}
!1463 = !{!"branch_weights", i32 1297862, i32 1}
!1464 = !{!"branch_weights", i32 723653, i32 723653}
!1465 = !{!"branch_weights", i32 1, i32 723653}
!1466 = !{!"branch_weights", i32 1111961306, i32 1035522342}
!1467 = distinct !{!1467, !964}
!1468 = !{!"branch_weights", i32 1, i32 672029}
!1469 = !{!1450, !947, i64 8}
!1470 = !{!"branch_weights", i32 3021, i32 -453269003}
!1471 = !{!"branch_weights", i32 645719, i32 625833}
!1472 = !{!"branch_weights", i32 672029, i32 599522}
!1473 = !{!"branch_weights", i32 2147481993, i32 1655}
!1474 = !{!"branch_weights", i32 1111974800, i32 1035508848}
!1475 = !{!1450, !947, i64 16}
!1476 = !{!"branch_weights", i32 9778, i32 -1235069297}
!1477 = !{!"branch_weights", i32 19053, i32 606781}
!1478 = !{!"branch_weights", i32 625833, i32 1}
!1479 = !{!"function_entry_count", i64 1271550}
!1480 = !{!"sel-sched.c:_eligible_successor_edge_p"}
!1481 = !{!"branch_weights", i32 1, i32 1271551}
!1482 = !{!"branch_weights", i32 1271551, i32 1}
!1483 = !{!"branch_weights", i32 875721, i32 395831}
!1484 = !{!"branch_weights", i32 395831, i32 1}
!1485 = !{!"branch_weights", i32 1, i32 395831}
!1486 = !{!946, !947, i64 24}
!1487 = !{!"function_entry_count", i64 1349484}
!1488 = !{!"sel-sched.c:_succ_iter_next"}
!1489 = !{!"branch_weights", i32 723653, i32 625833}
!1490 = !{!"branch_weights", i32 1, i32 625833}
!1491 = !{!"sel-sched.c:VEC_edge_base_iterate"}
!1492 = !{!"sel-sched.c:VEC_edge_heap_free"}
!1493 = !{!"sel-sched.c:get_all_loop_exits"}
!1494 = distinct !{!1494, !964}
!1495 = distinct !{!1495, !964}
!1496 = distinct !{!1496, !964}
!1497 = distinct !{!1497, !964}
!1498 = !{!"sel-sched.c:sel_bb_empty_or_nop_p"}
!1499 = !{!"branch_weights", i32 139, i32 1271413}
!1500 = !{!"branch_weights", i32 139, i32 1}
!1501 = !{!"sel-sched.c:inner_loop_header_p"}
!1502 = !{!"sel-sched.c:loop_outer"}
!1503 = !{!1315, !947, i64 40}
!1504 = !{!"sel-sched.c:get_loop_exit_edges_unique_dests"}
!1505 = !{!1506, !949, i64 0}
!1506 = !{!"loops", !949, i64 0, !947, i64 8, !947, i64 16, !947, i64 24}
!1507 = !{!1315, !947, i64 128}
!1508 = !{!1509, !947, i64 16}
!1509 = !{!"loop_exit", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24}
!1510 = !{!1509, !947, i64 0}
!1511 = distinct !{!1511, !964}
!1512 = distinct !{!1512, !964}
!1513 = !{!"sel-sched.c:VEC_edge_heap_safe_push"}
!1514 = !{!"sel-sched.c:VEC_edge_base_ordered_remove"}
!1515 = !{!"sel-sched.c:loop_depth"}
!1516 = !{!"sel-sched.c:VEC_loop_p_base_length"}
!1517 = !{!1518, !949, i64 0}
!1518 = !{!"VEC_loop_p_base", !949, i64 0, !949, i64 4, !941, i64 8}
!1519 = !{!"sel-sched.c:VEC_loop_p_base_index"}
!1520 = !{!"sel-sched.c:VEC_edge_heap_reserve"}
!1521 = !{!"sel-sched.c:VEC_edge_base_quick_push"}
!1522 = !{!"sel-sched.c:VEC_edge_base_space"}
!1523 = !{!1129, !949, i64 4}
!1524 = !{!"sel-sched.c:current_region_empty_p"}
!1525 = !{!"branch_weights", i32 127, i32 1}
!1526 = !{!"branch_weights", i32 17676673, i32 127}
!1527 = distinct !{!1527, !964}
!1528 = !{!"sel-sched.c:setup_current_loop_nest"}
!1529 = !{!1315, !947, i64 64}
!1530 = !{!"sel-sched.c:sel_setup_region_sched_flags"}
!1531 = !{!"branch_weights", i32 -1910998784, i32 17262}
!1532 = !{!1533, !949, i64 8}
!1533 = !{!"param_info", !947, i64 0, !949, i64 8, !941, i64 12, !949, i64 16, !949, i64 20, !947, i64 24}
!1534 = !{!"sel-sched.c:VEC_basic_block_heap_alloc"}
!1535 = !{!"function_entry_count", i64 187028}
!1536 = !{!"sel-sched.c:VEC_basic_block_base_quick_push"}
!1537 = !{!1538, !949, i64 0}
!1538 = !{!"VEC_basic_block_base", !949, i64 0, !949, i64 4, !941, i64 8}
!1539 = !{!"function_entry_count", i64 1572298}
!1540 = !{!"sel-sched.c:VEC_basic_block_base_index"}
!1541 = !{!"sel-sched.c:sel_compute_priorities"}
!1542 = !{!"sel-sched.c:VEC_basic_block_heap_free"}
!1543 = !{!"sel-sched.c:bitmap_initialize_stat"}
!1544 = !{!969, !947, i64 24}
!1545 = !{!"sel-sched.c:init_seqno"}
!1546 = distinct !{!1546, !964}
!1547 = !{!1548, !947, i64 0}
!1548 = !{!"simple_bitmap_def", !947, i64 0, !949, i64 8, !949, i64 12, !941, i64 16}
!1549 = !{!"sel-sched.c:sel_sched_region_2"}
!1550 = !{!"branch_weights", i32 1, i32 138099}
!1551 = !{!"branch_weights", i32 138099, i32 263086}
!1552 = distinct !{!1552, !964}
!1553 = !{!"sel-sched.c:bmp_iter_set_init"}
!1554 = !{!969, !947, i64 0}
!1555 = !{!1556, !947, i64 0}
!1556 = !{!"", !947, i64 0, !947, i64 8, !949, i64 16, !948, i64 24}
!1557 = !{!1556, !947, i64 8}
!1558 = !{!1559, !949, i64 16}
!1559 = !{!"bitmap_element_def", !947, i64 0, !947, i64 8, !949, i64 16, !941, i64 24}
!1560 = !{!1556, !949, i64 16}
!1561 = !{!948, !948, i64 0}
!1562 = !{!1556, !948, i64 24}
!1563 = !{!"sel-sched.c:bmp_iter_set"}
!1564 = distinct !{!1564, !964}
!1565 = !{!"branch_weights", i32 1, i32 591920}
!1566 = !{!"branch_weights", i32 591920, i32 1}
!1567 = distinct !{!1567, !964}
!1568 = !{!1559, !947, i64 0}
!1569 = !{!"sel-sched.c:RESET_BIT"}
!1570 = !{!"sel-sched.c:bmp_iter_next"}
!1571 = !{!"sel-sched.c:init_seqno_1"}
!1572 = !{!"branch_weights", i32 187029, i32 1}
!1573 = !{!"branch_weights", i32 138099, i32 48930}
!1574 = !{!"branch_weights", i32 1, i32 48930}
!1575 = !{!"branch_weights", i32 48930, i32 1}
!1576 = !{!"branch_weights", i32 48930, i32 0}
!1577 = distinct !{!1577, !964}
!1578 = !{!"branch_weights", i32 1, i32 187028}
!1579 = !{!"branch_weights", i32 187028, i32 403443}
!1580 = distinct !{!1580, !964}
!1581 = !{!"sel-sched.c:SET_BIT"}
!1582 = !{!"function_entry_count", i64 401184}
!1583 = !{!"sel-sched.c:find_min_max_seqno"}
!1584 = !{!"branch_weights", i32 401184, i32 1}
!1585 = distinct !{!1585, !964}
!1586 = !{!"sel-sched.c:schedule_on_fences"}
!1587 = !{!"branch_weights", i32 1, i32 401185}
!1588 = !{!"branch_weights", i32 1, i32 401184}
!1589 = !{!"branch_weights", i32 401185, i32 1}
!1590 = !{!1591, !947, i64 0}
!1591 = !{!"_fence", !947, i64 0, !947, i64 8, !949, i64 16, !949, i64 20, !947, i64 24, !947, i64 32, !947, i64 40, !947, i64 48, !947, i64 56, !949, i64 64, !947, i64 72, !949, i64 80, !947, i64 88, !949, i64 96, !949, i64 96, !949, i64 96, !949, i64 96}
!1592 = distinct !{!1592, !964}
!1593 = distinct !{!1593, !964}
!1594 = !{!"sel-sched.c:calculate_new_fences"}
!1595 = !{!1591, !947, i64 24}
!1596 = !{!"branch_weights", i32 270020, i32 131166}
!1597 = !{!"branch_weights", i32 131921, i32 138100}
!1598 = !{!"branch_weights", i32 32980, i32 -2119573516}
!1599 = !{!"branch_weights", i32 1, i32 131921}
!1600 = distinct !{!1600, !964}
!1601 = !{!1602, !947, i64 0}
!1602 = !{!"flist_tail_def", !947, i64 0, !947, i64 8}
!1603 = !{!"sel-sched.c:update_seqnos_and_stage"}
!1604 = !{!"branch_weights", i32 131921, i32 269265}
!1605 = !{!"branch_weights", i32 269265, i32 1}
!1606 = !{!"branch_weights", i32 401184, i32 190737}
!1607 = distinct !{!1607, !964}
!1608 = !{!"sel-sched.c:fill_insns"}
!1609 = !{!1591, !949, i64 16}
!1610 = !{!1591, !947, i64 32}
!1611 = !{!1591, !947, i64 40}
!1612 = !{!1591, !949, i64 80}
!1613 = !{!"branch_weights", i32 806082, i32 1}
!1614 = !{!"branch_weights", i32 1, i32 806082}
!1615 = !{!"branch_weights", i32 -1571359833, i32 6831610}
!1616 = !{!"branch_weights", i32 376281, i32 214162}
!1617 = !{!"branch_weights", i32 0, i32 -1571359833}
!1618 = !{!"branch_weights", i32 1770, i32 2147481878}
!1619 = !{!1620, !947, i64 24}
!1620 = !{!"_bnd", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !947, i64 32}
!1621 = !{!"branch_weights", i32 453822, i32 591921}
!1622 = !{!1620, !947, i64 0}
!1623 = !{!"branch_weights", i32 591921, i32 453822}
!1624 = distinct !{!1624, !964}
!1625 = !{!"branch_weights", i32 404898, i32 187024}
!1626 = !{!"branch_weights", i32 175761, i32 229138}
!1627 = !{!"branch_weights", i32 -1013453356, i32 28642}
!1628 = !{!"branch_weights", i32 9833264, i32 2137650384}
!1629 = distinct !{!1629, !964}
!1630 = !{!"branch_weights", i32 131921, i32 131166}
!1631 = !{!"branch_weights", i32 131166, i32 1}
!1632 = !{!"branch_weights", i32 263086, i32 0}
!1633 = distinct !{!1633, !964}
!1634 = !{!"function_entry_count", i64 802368}
!1635 = !{!"sel-sched.c:vinsn_vec_clear"}
!1636 = !{!"branch_weights", i32 800922, i32 1448}
!1637 = !{!"branch_weights", i32 1, i32 1447}
!1638 = !{!"branch_weights", i32 1447, i32 4}
!1639 = distinct !{!1639, !964}
!1640 = !{!"function_entry_count", i64 806081}
!1641 = !{!"sel-sched.c:compute_av_set_on_boundaries"}
!1642 = !{!"branch_weights", i32 1, i32 806081}
!1643 = !{!"branch_weights", i32 619059, i32 187024}
!1644 = !{!"branch_weights", i32 187024, i32 1}
!1645 = !{!"branch_weights", i32 1, i32 619059}
!1646 = distinct !{!1646, !964}
!1647 = !{!1620, !947, i64 16}
!1648 = !{!"branch_weights", i32 806081, i32 1}
!1649 = distinct !{!1649, !964}
!1650 = !{!"sel-sched.c:remove_insns_that_need_bookkeeping"}
!1651 = !{!"branch_weights", i32 942232, i32 190198}
!1652 = !{!"branch_weights", i32 1, i32 942232}
!1653 = !{!"branch_weights", i32 -1208554783, i32 339833760}
!1654 = !{!"branch_weights", i32 93456, i32 1}
!1655 = !{!967, !949, i64 28}
!1656 = !{!"branch_weights", i32 1, i32 93456}
!1657 = !{!"branch_weights", i32 806081, i32 326348}
!1658 = distinct !{!1658, !964}
!1659 = !{!"sel-sched.c:remove_insns_for_debug"}
!1660 = distinct !{!1660, !964}
!1661 = !{!"function_entry_count", i64 1182361}
!1662 = !{!"sel-sched.c:find_best_expr"}
!1663 = !{!"branch_weights", i32 -988513069, i32 -2140862753}
!1664 = !{!"branch_weights", i32 715940, i32 1}
!1665 = !{!"branch_weights", i32 124087, i32 591854}
!1666 = !{!"branch_weights", i32 628, i32 2147483020}
!1667 = !{!"branch_weights", i32 590442, i32 591921}
!1668 = !{!"branch_weights", i32 2255, i32 589667}
!1669 = !{!"branch_weights", i32 1, i32 1182362}
!1670 = !{!"function_entry_count", i64 590441}
!1671 = !{!"sel-sched.c:stall_for_cycles"}
!1672 = !{!"branch_weights", i32 141148, i32 449295}
!1673 = !{!1591, !949, i64 20}
!1674 = !{!"branch_weights", i32 4779, i32 2147478869}
!1675 = !{!"branch_weights", i32 590441, i32 281771}
!1676 = distinct !{!1676, !964}
!1677 = !{!"branch_weights", i32 590442, i32 1}
!1678 = !{!"sel-sched.c:schedule_expr_on_boundary"}
!1679 = !{!"branch_weights", i32 405143, i32 186779}
!1680 = !{!"branch_weights", i32 186779, i32 1}
!1681 = !{!"branch_weights", i32 5261943, i32 2142221705}
!1682 = !{!"branch_weights", i32 269265, i32 322657}
!1683 = !{!"sel-sched.c:update_fence_and_insn"}
!1684 = !{!1591, !947, i64 72}
!1685 = !{!966, !947, i64 296}
!1686 = !{!1591, !947, i64 88}
!1687 = !{!1591, !949, i64 64}
!1688 = !{!"branch_weights", i32 589293, i32 2629}
!1689 = !{!1591, !947, i64 56}
!1690 = !{!966, !941, i64 56}
!1691 = !{!966, !949, i64 40}
!1692 = !{!966, !949, i64 304}
!1693 = !{!"branch_weights", i32 68, i32 591854}
!1694 = !{!966, !949, i64 308}
!1695 = !{!"branch_weights", i32 10432607, i32 -1568121357}
!1696 = !{!"sel-sched.c:update_boundaries"}
!1697 = !{!1620, !947, i64 32}
!1698 = !{!"branch_weights", i32 138099, i32 453822}
!1699 = !{!1620, !947, i64 8}
!1700 = !{!"branch_weights", i32 1, i32 453822}
!1701 = !{!"branch_weights", i32 385810, i32 68013}
!1702 = !{!"branch_weights", i32 336886, i32 48925}
!1703 = !{!"branch_weights", i32 1, i32 336886}
!1704 = !{!"branch_weights", i32 453822, i32 0}
!1705 = distinct !{!1705, !964}
!1706 = !{!"sel-sched.c:moveup_set_inside_insn_group"}
!1707 = !{!"sel-sched.c:fill_ready_list"}
!1708 = !{!"branch_weights", i32 1182362, i32 1}
!1709 = !{!"branch_weights", i32 1182295, i32 68}
!1710 = !{!"branch_weights", i32 466356, i32 715940}
!1711 = !{!1712, !949, i64 16}
!1712 = !{!"ready_list", !947, i64 0, !949, i64 8, !949, i64 12, !949, i64 16, !949, i64 20}
!1713 = !{!"function_entry_count", i64 715939}
!1714 = !{!"sel-sched.c:invoke_reorder_hooks"}
!1715 = !{!"branch_weights", i32 514988, i32 200953}
!1716 = !{!1081, !947, i64 432}
!1717 = !{!"branch_weights", i32 514988, i32 1}
!1718 = !{!1081, !947, i64 440}
!1719 = !{!"branch_weights", i32 200953, i32 1}
!1720 = !{!"branch_weights", i32 334806, i32 2147148842}
!1721 = !{!1712, !947, i64 0}
!1722 = distinct !{!1722, !964}
!1723 = distinct !{!1723, !964}
!1724 = !{!"sel-sched.c:invoke_dfa_lookahead_guard"}
!1725 = !{!1081, !947, i64 512}
!1726 = !{!"branch_weights", i32 1, i32 715940}
!1727 = !{!"branch_weights", i32 715939, i32 1}
!1728 = !{!"branch_weights", i32 820611, i32 1}
!1729 = !{!"branch_weights", i32 1, i32 820611}
!1730 = !{!"branch_weights", i32 104672, i32 715939}
!1731 = distinct !{!1731, !964}
!1732 = !{!"sel-sched.c:calculate_privileged_insns"}
!1733 = !{!"branch_weights", i32 715940, i32 104672}
!1734 = distinct !{!1734, !964}
!1735 = !{!"sel-sched.c:choose_best_insn"}
!1736 = !{!"branch_weights", i32 124086, i32 1}
!1737 = !{!1591, !947, i64 8}
!1738 = !{i32 0, i32 -2147483648}
!1739 = !{!"branch_weights", i32 591854, i32 163672}
!1740 = !{!"branch_weights", i32 1, i32 591854}
!1741 = !{!"branch_weights", i32 631439, i32 124086}
!1742 = distinct !{!1742, !964}
!1743 = !{!"function_entry_count", i64 3704536}
!1744 = !{!"sel-sched.c:find_expr_for_ready"}
!1745 = !{!1712, !949, i64 12}
!1746 = !{!"branch_weights", i32 3704537, i32 1}
!1747 = !{!"sel-sched.c:invoke_aftermath_hooks"}
!1748 = !{!"branch_weights", i32 -1880266296, i32 4079}
!1749 = !{!1081, !947, i64 392}
!1750 = !{!"sel-sched.c:process_pipelined_exprs"}
!1751 = !{!"branch_weights", i32 1, i32 1182361}
!1752 = !{!"branch_weights", i32 1622774, i32 1}
!1753 = !{!"branch_weights", i32 1182361, i32 440413}
!1754 = distinct !{!1754, !964}
!1755 = !{!"sel-sched.c:process_spec_exprs"}
!1756 = !{!967, !949, i64 12}
!1757 = !{!1172, !949, i64 20}
!1758 = distinct !{!1758, !964}
!1759 = distinct !{!1759, !964}
!1760 = !{!"sel-sched.c:process_use_exprs"}
!1761 = !{!"branch_weights", i32 1, i32 1182294}
!1762 = !{!"branch_weights", i32 68, i32 1622628}
!1763 = !{!"branch_weights", i32 68, i32 1}
!1764 = !{!"branch_weights", i32 1182294, i32 440401}
!1765 = distinct !{!1765, !964}
!1766 = !{!"branch_weights", i32 2147481832, i32 1816}
!1767 = distinct !{!1767, !964}
!1768 = distinct !{!1768, !964}
!1769 = !{!"function_entry_count", i64 1182294}
!1770 = !{!"sel-sched.c:fill_vec_av_set"}
!1771 = !{!"branch_weights", i32 1, i32 1182295}
!1772 = !{!"branch_weights", i32 604455, i32 577841}
!1773 = !{!"branch_weights", i32 1182295, i32 1}
!1774 = !{!967, !949, i64 20}
!1775 = !{!"branch_weights", i32 1622628, i32 1}
!1776 = !{!"branch_weights", i32 1182294, i32 440334}
!1777 = distinct !{!1777, !964}
!1778 = !{!"branch_weights", i32 451523, i32 730773}
!1779 = !{!"branch_weights", i32 1182294, i32 1}
!1780 = !{!"branch_weights", i32 2298, i32 -1241298467, i32 676397992}
!1781 = !{!"branch_weights", i32 183616, i32 110628}
!1782 = !{!"branch_weights", i32 180658, i32 2959}
!1783 = !{!"branch_weights", i32 178989, i32 1670}
!1784 = !{!"branch_weights", i32 1, i32 292574}
!1785 = !{!"branch_weights", i32 1330055, i32 1}
!1786 = !{!967, !949, i64 40}
!1787 = !{!1315, !949, i64 4}
!1788 = !{!967, !949, i64 16}
!1789 = !{!"branch_weights", i32 1327541, i32 2515}
!1790 = !{!"branch_weights", i32 1327541, i32 1}
!1791 = !{!"branch_weights", i32 254347, i32 1073195}
!1792 = !{!"branch_weights", i32 235333, i32 19015}
!1793 = !{!"branch_weights", i32 1, i32 254347}
!1794 = !{!"branch_weights", i32 1075709, i32 1}
!1795 = !{!"branch_weights", i32 255099, i32 820611}
!1796 = !{!"branch_weights", i32 254370, i32 730}
!1797 = !{!"branch_weights", i32 240124, i32 14976}
!1798 = !{!"branch_weights", i32 1, i32 255099}
!1799 = !{!"branch_weights", i32 440334, i32 1182294}
!1800 = distinct !{!1800, !964}
!1801 = distinct !{!1801, !964}
!1802 = !{!"sel-sched.c:convert_vec_av_set_to_ready"}
!1803 = !{!"branch_weights", i32 140382, i32 575559}
!1804 = !{!"branch_weights", i32 1, i32 715939}
!1805 = !{!"branch_weights", i32 715939, i32 104672}
!1806 = distinct !{!1806, !964}
!1807 = !{!"function_entry_count", i64 2970138}
!1808 = !{!"sel-sched.c:recog_memoized"}
!1809 = !{!"branch_weights", i32 135, i32 2970005}
!1810 = !{!"function_entry_count", i64 8104803}
!1811 = !{!"sel-sched.c:VEC_expr_t_base_length"}
!1812 = !{!"branch_weights", i32 276199, i32 7828606}
!1813 = !{!1814, !949, i64 0}
!1814 = !{!"VEC_expr_t_base", !949, i64 0, !949, i64 4, !941, i64 8}
!1815 = !{!"function_entry_count", i64 577840}
!1816 = !{!"sel-sched.c:VEC_expr_t_base_block_remove"}
!1817 = !{!"function_entry_count", i64 1622627}
!1818 = !{!"sel-sched.c:VEC_expr_t_heap_safe_push"}
!1819 = !{!"sel-sched.c:sel_target_adjust_priority"}
!1820 = !{!1081, !947, i64 376}
!1821 = !{!"branch_weights", i32 1, i32 1622628}
!1822 = !{!"function_entry_count", i64 1898233}
!1823 = !{!"sel-sched.c:VEC_expr_t_base_address"}
!1824 = !{!"branch_weights", i32 1, i32 1898234}
!1825 = !{!"function_entry_count", i64 686901}
!1826 = !{!"sel-sched.c:sel_rank_for_schedule"}
!1827 = !{!"branch_weights", i32 1, i32 686902}
!1828 = !{!"branch_weights", i32 1563, i32 2147482085}
!1829 = !{!"branch_weights", i32 686902, i32 1}
!1830 = !{!"branch_weights", i32 10732, i32 -608761378}
!1831 = !{!"branch_weights", i32 685944, i32 959}
!1832 = !{!"branch_weights", i32 959, i32 1}
!1833 = !{!"branch_weights", i32 590104, i32 95841}
!1834 = !{!"branch_weights", i32 95841, i32 1}
!1835 = !{!"branch_weights", i32 1, i32 590104}
!1836 = !{!"branch_weights", i32 53289, i32 536816}
!1837 = !{!"branch_weights", i32 53289, i32 1}
!1838 = !{!"branch_weights", i32 53148, i32 142}
!1839 = !{!"branch_weights", i32 53087, i32 62}
!1840 = !{!"branch_weights", i32 124, i32 19}
!1841 = !{!"function_entry_count", i64 5327163}
!1842 = !{!"sel-sched.c:VEC_expr_t_base_index"}
!1843 = !{!"function_entry_count", i64 802017}
!1844 = !{!"sel-sched.c:VEC_expr_t_base_unordered_remove"}
!1845 = !{!"function_entry_count", i64 3245254}
!1846 = !{!"sel-sched.c:vinsn_vec_has_expr_p"}
!1847 = !{!"branch_weights", i32 3237560, i32 7695}
!1848 = !{!"branch_weights", i32 7695, i32 1}
!1849 = !{!"branch_weights", i32 7695, i32 0}
!1850 = distinct !{!1850, !964}
!1851 = !{!"sel-sched.c:find_best_reg_for_expr"}
!1852 = !{!1853, !948, i64 0}
!1853 = !{!"reg_rename", !948, i64 0, !948, i64 8, !941, i64 16}
!1854 = !{!"branch_weights", i32 178695, i32 1964}
!1855 = !{!"branch_weights", i32 1964, i32 1}
!1856 = !{!"branch_weights", i32 295, i32 1670}
!1857 = !{!"function_entry_count", i64 1536549}
!1858 = !{!"sel-sched.c:VEC_expr_t_base_iterate"}
!1859 = !{!"branch_weights", i32 1, i32 1536550}
!1860 = !{!"branch_weights", i32 820611, i32 715940}
!1861 = !{!"sel-sched.c:VEC_expr_t_heap_reserve"}
!1862 = !{!"branch_weights", i32 139062, i32 1483567}
!1863 = !{!"sel-sched.c:VEC_expr_t_base_quick_push"}
!1864 = !{!"sel-sched.c:VEC_expr_t_base_space"}
!1865 = !{!"branch_weights", i32 138100, i32 1484529}
!1866 = !{!1814, !949, i64 4}
!1867 = !{!"function_entry_count", i64 3255845}
!1868 = !{!"sel-sched.c:VEC_vinsn_t_base_iterate"}
!1869 = !{!"branch_weights", i32 3197621, i32 58226}
!1870 = !{!"branch_weights", i32 9145, i32 49082}
!1871 = !{!"sel-sched.c:collect_unavailable_regs_from_bnds"}
!1872 = distinct !{!1872, !964}
!1873 = !{!"sel-sched.c:verify_target_availability"}
!1874 = !{!"branch_weights", i32 11887, i32 2147471761}
!1875 = distinct !{!1875, !964}
!1876 = !{!"branch_weights", i32 -827146657, i32 19195}
!1877 = !{!1878, !949, i64 12}
!1878 = !{!"reg_info_t", !949, i64 0, !949, i64 4, !949, i64 8, !949, i64 12, !949, i64 16, !949, i64 20, !949, i64 24}
!1879 = !{!"sel-sched.c:choose_best_reg"}
!1880 = !{!1881, !948, i64 1904}
!1881 = !{!"hard_regs_data", !941, i64 0, !941, i64 696, !941, i64 784, !941, i64 1208, !948, i64 1904, !948, i64 1912}
!1882 = !{!"branch_weights", i32 1, i32 1964}
!1883 = !{!"sel-sched.c:choose_best_pseudo_reg"}
!1884 = !{!1885, !947, i64 0}
!1885 = !{!"_def", !947, i64 0, !941, i64 8}
!1886 = !{!1853, !941, i64 16}
!1887 = distinct !{!1887, !964}
!1888 = !{!"function_entry_count", i64 1669}
!1889 = !{!"sel-sched.c:try_replace_dest_reg"}
!1890 = !{!"branch_weights", i32 1, i32 1669}
!1891 = !{!"branch_weights", i32 1670, i32 1}
!1892 = !{!"branch_weights", i32 1, i32 1670}
!1893 = !{!"branch_weights", i32 1669, i32 1}
!1894 = distinct !{!1894, !964}
!1895 = !{!"sel-sched.c:vinsn_writes_one_of_regs_p"}
!1896 = distinct !{!1896, !964}
!1897 = distinct !{!1897, !964}
!1898 = !{!"function_entry_count", i64 581841}
!1899 = !{!"sel-sched.c:_list_clear"}
!1900 = !{!"branch_weights", i32 1, i32 581841}
!1901 = !{!"branch_weights", i32 581841, i32 190737}
!1902 = distinct !{!1902, !964}
!1903 = !{!"function_entry_count", i64 772577}
!1904 = !{!"sel-sched.c:find_sequential_best_exprs"}
!1905 = !{!"branch_weights", i32 343093, i32 772578}
!1906 = !{!"branch_weights", i32 180658, i32 591921}
!1907 = !{!"branch_weights", i32 169351, i32 1}
!1908 = !{!"branch_weights", i32 127, i32 142805633}
!1909 = distinct !{!1909, !964}
!1910 = !{!"branch_weights", i32 4624, i32 -722264836}
!1911 = !{!"sel-sched.c:find_used_regs"}
!1912 = distinct !{!1912, !964}
!1913 = distinct !{!1913, !964}
!1914 = !{!"function_entry_count", i64 1115669}
!1915 = !{!"sel-sched.c:equal_after_moveup_path_p"}
!1916 = !{!"branch_weights", i32 771128, i32 344543}
!1917 = !{!"function_entry_count", i64 1021630}
!1918 = !{!"sel-sched.c:code_motion_path_driver"}
!1919 = !{!"branch_weights", i32 1, i32 1021631}
!1920 = !{!1921, !947, i64 64}
!1921 = !{!"code_motion_path_driver_info_def", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !947, i64 32, !947, i64 40, !947, i64 48, !949, i64 56, !947, i64 64}
!1922 = !{!"branch_weights", i32 1021631, i32 1}
!1923 = !{!"branch_weights", i32 760340, i32 261292}
!1924 = !{!"branch_weights", i32 261292, i32 1}
!1925 = !{!1921, !947, i64 0}
!1926 = !{!"branch_weights", i32 261292, i32 760340}
!1927 = !{!"branch_weights", i32 598764, i32 173814}
!1928 = !{!"branch_weights", i32 1, i32 772578}
!1929 = !{!1921, !947, i64 8}
!1930 = !{!"branch_weights", i32 671245, i32 101334}
!1931 = !{!1921, !947, i64 16}
!1932 = !{!"branch_weights", i32 1, i32 598764}
!1933 = !{!"branch_weights", i32 249054, i32 349711}
!1934 = !{!"branch_weights", i32 0, i32 598764}
!1935 = !{!"branch_weights", i32 249054, i32 1}
!1936 = !{!"branch_weights", i32 66689, i32 182366}
!1937 = !{!"branch_weights", i32 422867, i32 598764}
!1938 = !{!1921, !947, i64 40}
!1939 = !{!"branch_weights", i32 474959, i32 123806}
!1940 = !{!"branch_weights", i32 598764, i32 0}
!1941 = distinct !{!1941, !964}
!1942 = !{!1921, !947, i64 48}
!1943 = !{!"branch_weights", i32 919710, i32 101922}
!1944 = !{!"function_entry_count", i64 722628}
!1945 = !{!"sel-sched.c:_list_iter_cond_def"}
!1946 = !{!"branch_weights", i32 361315, i32 361315}
!1947 = !{!"sel-sched.c:mark_unavailable_hard_regs"}
!1948 = !{!"branch_weights", i32 2336, i32 178323}
!1949 = !{!"branch_weights", i32 2336, i32 1}
!1950 = !{!1951, !941, i64 477}
!1951 = !{!"rtl_data", !1952, i64 0, !1953, i64 40, !1954, i64 96, !1955, i64 112, !1957, i64 208, !1958, i64 248, !949, i64 312, !947, i64 320, !947, i64 328, !947, i64 336, !947, i64 344, !947, i64 352, !947, i64 360, !947, i64 368, !947, i64 376, !947, i64 384, !947, i64 392, !948, i64 400, !947, i64 408, !947, i64 416, !947, i64 424, !949, i64 432, !949, i64 436, !949, i64 440, !949, i64 444, !949, i64 448, !949, i64 452, !947, i64 456, !941, i64 464, !941, i64 465, !941, i64 466, !941, i64 467, !941, i64 468, !941, i64 469, !941, i64 470, !941, i64 471, !941, i64 472, !941, i64 473, !941, i64 474, !941, i64 475, !941, i64 476, !941, i64 477, !941, i64 478, !941, i64 479, !941, i64 480, !941, i64 481, !941, i64 482, !941, i64 483, !941, i64 484, !941, i64 485}
!1952 = !{!"expr_status", !949, i64 0, !949, i64 4, !949, i64 8, !947, i64 16, !947, i64 24, !947, i64 32}
!1953 = !{!"emit_status", !949, i64 0, !949, i64 4, !947, i64 8, !947, i64 16, !947, i64 24, !949, i64 32, !949, i64 36, !949, i64 40, !949, i64 44, !947, i64 48}
!1954 = !{!"varasm_status", !947, i64 0, !949, i64 8}
!1955 = !{!"incoming_args", !949, i64 0, !949, i64 4, !949, i64 8, !947, i64 16, !1956, i64 24, !947, i64 88}
!1956 = !{!"ix86_args", !949, i64 0, !949, i64 4, !949, i64 8, !949, i64 12, !949, i64 16, !949, i64 20, !949, i64 24, !949, i64 28, !949, i64 32, !949, i64 36, !949, i64 40, !949, i64 44, !949, i64 48, !949, i64 52, !949, i64 56, !949, i64 60}
!1957 = !{!"function_subsections", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !947, i64 32}
!1958 = !{!"rtl_eh", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !947, i64 32, !947, i64 40, !941, i64 48}
!1959 = !{!"branch_weights", i32 2336, i32 5459233}
!1960 = !{!1885, !941, i64 8}
!1961 = !{!"branch_weights", i32 178323, i32 1}
!1962 = !{!"branch_weights", i32 1, i32 2336}
!1963 = !{!"branch_weights", i32 1, i32 2335}
!1964 = !{!"branch_weights", i32 0, i32 0}
!1965 = distinct !{!1965, !964, !1966, !1967}
!1966 = !{!"llvm.loop.isvectorized", i32 1}
!1967 = !{!"llvm.loop.unroll.runtime.disable"}
!1968 = distinct !{!1968, !964, !1966, !1967}
!1969 = !{!1881, !948, i64 1912}
!1970 = !{!1853, !948, i64 8}
!1971 = !{!"branch_weights", i32 25, i32 2312}
!1972 = !{!"branch_weights", i32 1, i32 16283}
!1973 = !{!"branch_weights", i32 16283, i32 16283}
!1974 = distinct !{!1974, !964}
!1975 = !{!"branch_weights", i32 2335, i32 13948}
!1976 = distinct !{!1976, !964}
!1977 = !{!"function_entry_count", i64 598763}
!1978 = !{!"sel-sched.c:undo_transformations"}
!1979 = !{!"branch_weights", i32 1, i32 598763}
!1980 = !{!"branch_weights", i32 601856, i32 1}
!1981 = !{!"branch_weights", i32 601598, i32 259}
!1982 = !{!"branch_weights", i32 259, i32 1}
!1983 = !{!"branch_weights", i32 1, i32 259}
!1984 = !{!"branch_weights", i32 598763, i32 3093}
!1985 = distinct !{!1985, !964}
!1986 = !{!"branch_weights", i32 7452, i32 594147}
!1987 = !{!1988, !949, i64 28}
!1988 = !{!"expr_history_def_1", !949, i64 0, !947, i64 8, !947, i64 16, !949, i64 24, !949, i64 28}
!1989 = !{!"branch_weights", i32 1, i32 1, i32 7452}
!1990 = !{!1988, !949, i64 24}
!1991 = !{!1988, !947, i64 8}
!1992 = !{!"branch_weights", i32 7452, i32 1}
!1993 = !{!1988, !947, i64 16}
!1994 = !{!"branch_weights", i32 1, i32 7452}
!1995 = !{!"branch_weights", i32 598763, i32 2835}
!1996 = distinct !{!1996, !964}
!1997 = !{!"sel-sched.c:code_motion_path_driver_cleanup"}
!1998 = !{!"function_entry_count", i64 249053}
!1999 = !{!"sel-sched.c:code_motion_process_successors"}
!2000 = !{!1921, !949, i64 56}
!2001 = !{!"branch_weights", i32 249054, i32 230002}
!2002 = !{!1921, !947, i64 24}
!2003 = !{!"branch_weights", i32 0, i32 2147475027, i32 8621}
!2004 = !{!"branch_weights", i32 479055, i32 1}
!2005 = !{!"branch_weights", i32 127, i32 31878657}
!2006 = !{!"branch_weights", i32 249053, i32 230002}
!2007 = distinct !{!2007, !964}
!2008 = !{!"branch_weights", i32 1, i32 249054}
!2009 = !{!1921, !947, i64 32}
!2010 = !{!"branch_weights", i32 230002, i32 19053}
!2011 = !{!"function_entry_count", i64 258}
!2012 = !{!"sel-sched.c:identical_copy_p"}
!2013 = !{!"function_entry_count", i64 7451}
!2014 = !{!"sel-sched.c:VEC_expr_history_def_base_index"}
!2015 = !{!"sel-sched.c:get_reg_class"}
!2016 = !{!2017, !941, i64 1086}
!2017 = !{!"recog_data", !941, i64 0, !941, i64 240, !941, i64 480, !941, i64 720, !941, i64 840, !941, i64 960, !941, i64 1072, !941, i64 1086, !941, i64 1087, !941, i64 1088, !941, i64 1089, !947, i64 1120}
!2018 = !{!2019, !949, i64 16}
!2019 = !{!"operand_alternative", !947, i64 0, !949, i64 8, !949, i64 12, !949, i64 16, !949, i64 20, !949, i64 24, !949, i64 24, !949, i64 24, !949, i64 24, !949, i64 24, !949, i64 24, !949, i64 24, !949, i64 24}
!2020 = !{!"branch_weights", i32 1, i32 361315}
!2021 = !{!2019, !949, i64 8}
!2022 = !{!"branch_weights", i32 180657, i32 180658}
!2023 = distinct !{!2023, !964}
!2024 = distinct !{!2024, !964}
!2025 = !{!2017, !941, i64 1087}
!2026 = !{!"branch_weights", i32 178322, i32 1}
!2027 = !{!"branch_weights", i32 178322, i32 180658}
!2028 = distinct !{!2028, !964}
!2029 = !{!"branch_weights", i32 358980, i32 1}
!2030 = !{!"function_entry_count", i64 24}
!2031 = !{!"sel-sched.c:init_regs_for_mode"}
!2032 = !{!"branch_weights", i32 1273, i32 344}
!2033 = !{!"branch_weights", i32 361, i32 913}
!2034 = !{!"branch_weights", i32 361, i32 1}
!2035 = !{!"branch_weights", i32 18, i32 344}
!2036 = distinct !{!2036, !964}
!2037 = !{!"branch_weights", i32 193, i32 152}
!2038 = !{!"branch_weights", i32 25, i32 1248}
!2039 = distinct !{!2039, !964}
!2040 = !{!"function_entry_count", i64 182992}
!2041 = !{!"sel-sched.c:hard_reg_set_iter_init"}
!2042 = !{!2043, !947, i64 0}
!2043 = !{!"", !947, i64 0, !1377, i64 8, !1377, i64 10, !948, i64 16}
!2044 = !{!2043, !1377, i64 8}
!2045 = !{!2043, !1377, i64 10}
!2046 = !{!2043, !948, i64 16}
!2047 = !{!"function_entry_count", i64 1271627}
!2048 = !{!"sel-sched.c:hard_reg_set_iter_set"}
!2049 = !{!"branch_weights", i32 181029, i32 1}
!2050 = !{!"branch_weights", i32 181030, i32 1090599}
!2051 = !{!"branch_weights", i32 64, i32 1090535}
!2052 = !{!"branch_weights", i32 0, i32 64}
!2053 = distinct !{!2053, !964}
!2054 = !{!"branch_weights", i32 1, i32 181029}
!2055 = distinct !{!2055, !964}
!2056 = !{!"branch_weights", i32 1841767812, i32 305715836}
!2057 = !{!"function_entry_count", i64 16282}
!2058 = !{!"sel-sched.c:sel_hard_regno_rename_ok"}
!2059 = !{!"branch_weights", i32 46, i32 16238}
!2060 = !{!"function_entry_count", i64 1088635}
!2061 = !{!"sel-sched.c:hard_reg_set_iter_next"}
!2062 = !{!"function_entry_count", i64 45}
!2063 = !{!"sel-sched.c:init_hard_regno_rename"}
!2064 = !{!"branch_weights", i32 61437, i32 5579044}
!2065 = !{!"branch_weights", i32 46, i32 2340}
!2066 = distinct !{!2066, !964}
!2067 = !{!"sel-sched.c:choose_best_reg_1"}
!2068 = !{!"branch_weights", i32 127, i32 23124097}
!2069 = distinct !{!2069, !964}
!2070 = !{!"branch_weights", i32 92, i32 2147483556}
!2071 = distinct !{!2071, !964}
!2072 = !{!"branch_weights", i32 1, i32 178694}
!2073 = !{!"branch_weights", i32 2001, i32 1072317}
!2074 = !{!"branch_weights", i32 1, i32 2000}
!2075 = distinct !{!2075, !964}
!2076 = !{!"branch_weights", i32 1964, i32 38}
!2077 = !{!"branch_weights", i32 38, i32 1}
!2078 = !{!"branch_weights", i32 178694, i32 895623}
!2079 = distinct !{!2079, !964}
!2080 = !{!"branch_weights", i32 23346091, i32 2124137557}
!2081 = !{!"sel-sched.c:replace_src_with_reg_ok_p"}
!2082 = !{!"sel-sched.c:replace_dest_with_reg_ok_p"}
!2083 = !{!"function_entry_count", i64 755524}
!2084 = !{!"sel-sched.c:get_expr_cost"}
!2085 = !{!"branch_weights", i32 1, i32 755525}
!2086 = !{!"sel-sched.c:estimate_insn_cost"}
!2087 = !{!"branch_weights", i32 2, i32 755524}
!2088 = !{!"sel-sched.c:sel_dfa_new_cycle"}
!2089 = !{!"branch_weights", i32 138100, i32 453822}
!2090 = !{!1081, !947, i64 520}
!2091 = distinct !{!2091, !964}
!2092 = !{!"function_entry_count", i64 874465}
!2093 = !{!"sel-sched.c:advance_one_cycle"}
!2094 = !{!1591, !947, i64 48}
!2095 = !{!"branch_weights", i32 1041557, i32 269461}
!2096 = !{!"branch_weights", i32 269461, i32 0}
!2097 = distinct !{!2097, !964}
!2098 = !{!"branch_weights", i32 874465, i32 706013}
!2099 = !{!"branch_weights", i32 127, i32 111931393}
!2100 = !{!"branch_weights", i32 1, i32 874466}
!2101 = !{!"function_entry_count", i64 269460}
!2102 = !{!"sel-sched.c:VEC_rtx_base_unordered_remove"}
!2103 = !{!"sel-sched.c:debug_state"}
!2104 = distinct !{!2104, !964}
!2105 = !{!"sel-sched.c:move_cond_jump"}
!2106 = !{!946, !947, i64 56}
!2107 = distinct !{!2107, !964}
!2108 = !{!"sel-sched.c:prepare_place_to_insert"}
!2109 = !{!"branch_weights", i32 1, i32 322657}
!2110 = distinct !{!2110, !964}
!2111 = !{!"sel-sched.c:move_exprs_to_boundary"}
!2112 = !{!966, !947, i64 96}
!2113 = distinct !{!2113, !964}
!2114 = distinct !{!2114, !964}
!2115 = !{!"sel-sched.c:remove_temp_moveop_nops"}
!2116 = !{!"branch_weights", i32 506723, i32 85198}
!2117 = !{!"branch_weights", i32 85198, i32 0}
!2118 = distinct !{!2118, !964}
!2119 = !{!"sel-sched.c:move_op"}
!2120 = !{!"sel-sched.c:get_dest_from_orig_ops"}
!2121 = distinct !{!2121, !964}
!2122 = !{!"function_entry_count", i64 677117}
!2123 = !{!"sel-sched.c:VEC_insn_t_base_iterate"}
!2124 = !{!"branch_weights", i32 11, i32 677108}
!2125 = !{!"branch_weights", i32 85198, i32 591911}
!2126 = !{!"sel-sched.c:VEC_insn_t_base_length"}
!2127 = !{!"sel-sched.c:VEC_insn_t_base_block_remove"}
!2128 = !{!"sel-sched.c:advance_state_on_fence"}
!2129 = !{!"branch_weights", i32 591854, i32 68}
!2130 = !{!"branch_weights", i32 591854, i32 1}
!2131 = !{!"branch_weights", i32 61, i32 4217}
!2132 = !{!"sel-sched.c:VEC_rtx_gc_safe_push"}
!2133 = !{!"sel-sched.c:VEC_rtx_gc_reserve"}
!2134 = !{!"branch_weights", i32 174943, i32 416979}
!2135 = !{!"sel-sched.c:VEC_rtx_base_quick_push"}
!2136 = !{!"sel-sched.c:VEC_rtx_base_space"}
!2137 = !{!1422, !949, i64 4}
!2138 = !{!"sel-sched.c:VEC_vinsn_t_base_length"}
!2139 = !{!"branch_weights", i32 794398, i32 7972}
!2140 = !{!"function_entry_count", i64 1447}
!2141 = !{!"sel-sched.c:VEC_vinsn_t_base_block_remove"}
!2142 = !{!"sel-sched.c:extract_new_fences_from"}
!2143 = !{!"branch_weights", i32 131164, i32 1}
!2144 = distinct !{!2144, !964}
!2145 = !{!"branch_weights", i32 2147467276, i32 16372}
!2146 = !{!"branch_weights", i32 82242, i32 48925}
!2147 = !{!"branch_weights", i32 48925, i32 1}
!2148 = !{!"branch_weights", i32 82242, i32 1}
!2149 = !{!"branch_weights", i32 82242, i32 -913094014}
!2150 = !{!"branch_weights", i32 1, i32 82242}
!2151 = !{!"branch_weights", i32 1, i32 48924}
!2152 = !{!"branch_weights", i32 97851, i32 -1901311671}
!2153 = !{!"branch_weights", i32 1, i32 48925}
!2154 = !{!"branch_weights", i32 48924, i32 1}
!2155 = distinct !{!2155, !964}
!2156 = !{!"function_entry_count", i64 1255434}
!2157 = !{!"sel-sched.c:_list_iter_cond_x"}
!2158 = !{!"branch_weights", i32 532350, i32 723086}
!2159 = !{!"sel-sched.c:in_fallthru_bb_p"}
!2160 = distinct !{!2160, !964}
!2161 = !{!"sel-sched.c:simplify_changed_insns"}
!2162 = !{!"branch_weights", i32 187024, i32 864058}
!2163 = !{!"branch_weights", i32 -1102399082, i32 1467781344}
!2164 = !{!"branch_weights", i32 127, i32 134538241}
!2165 = distinct !{!2165, !964}
!2166 = !{!"branch_weights", i32 48925, i32 138099}
!2167 = distinct !{!2167, !964}
!2168 = !{!"sel-sched.c:VEC_expr_t_heap_free"}
!2169 = !{!"function_entry_count", i64 276198}
!2170 = !{!"sel-sched.c:vinsn_vec_free"}
!2171 = !{!"branch_weights", i32 274793, i32 1407}
!2172 = !{!"sel-sched.c:sel_region_target_finish"}
!2173 = !{!"branch_weights", i32 138100, i32 48925}
!2174 = !{!2175, !947, i64 80}
!2175 = !{!"haifa_sched_info", !947, i64 0, !947, i64 8, !947, i64 16, !947, i64 24, !947, i64 32, !947, i64 40, !947, i64 48, !947, i64 56, !947, i64 64, !947, i64 72, !947, i64 80, !947, i64 88, !949, i64 96, !949, i64 100, !947, i64 104, !947, i64 112, !947, i64 120, !949, i64 128}
!2176 = !{!2175, !947, i64 88}
!2177 = !{!1081, !947, i64 408}
!2178 = distinct !{!2178, !964}
!2179 = !{!"function_entry_count", i64 1406}
!2180 = !{!"sel-sched.c:VEC_vinsn_t_heap_free"}
!2181 = !{!"branch_weights", i32 1, i32 1407}
!2182 = !{!"sel-sched.c:find_ebb_boundaries"}
!2183 = !{!"branch_weights", i32 1, i32 187024}
!2184 = !{!"branch_weights", i32 48925, i32 138100}
!2185 = distinct !{!2185, !964}
!2186 = !{!2175, !947, i64 64}
!2187 = !{!2175, !947, i64 72}
!2188 = !{!"sel-sched.c:reset_sched_cycles_in_current_ebb"}
!2189 = distinct !{!2189, !964}
!2190 = distinct !{!2190, !964}
!2191 = distinct !{!2191, !964}
!2192 = !{!"sel-sched.c:put_TImodes"}
!2193 = !{!"branch_weights", i32 -1360748288, i32 242522773}
!2194 = !{!"branch_weights", i32 138107, i32 453815}
!2195 = !{!"branch_weights", i32 319045, i32 -1558317630}
!2196 = !{!"branch_weights", i32 -1913735205, i32 355426822}
!2197 = !{!"branch_weights", i32 138099, i32 502746}
!2198 = distinct !{!2198, !964}
!2199 = !{!"sel-sched.c:bb_next_bb"}
!2200 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 48925}
!2201 = !{!"branch_weights", i32 28527, i32 20399}
!2202 = !{!"sel-sched.c:init_hard_regs_data"}
!2203 = !{!"branch_weights", i32 1731, i32 285}
!2204 = !{!"branch_weights", i32 40, i32 1692}
!2205 = !{!"branch_weights", i32 39, i32 1976}
!2206 = distinct !{!2206, !964}
